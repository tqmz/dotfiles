" vim: set ft=python : "
" source: http://wpr.cz/ccx/paste/2012-02-13/0.txt (ccxCZ) "

if has('python')
	python << EOF
def SCPaste():
	import vim

	import os.path
	import time
	import re
	from pprint import pprint

	import paramiko

	client = paramiko.SSHClient()
	client.load_system_host_keys()
	client.load_host_keys(os.path.expanduser('~/.ssh/known_hosts'))
	#client.set_missing_host_key_policy(paramiko.WarningPolicy)

	if any(vim.current.range):
		raw = '\n'.join(vim.current.range)
		range = True
	else:
		raw = '\n'.join(vim.current.buffer)
		range = False

	vim.command('let linenumbers=&l:number')
	vim.command('setlocal number')
	if range:
		vim.command('%s,%s TOhtml'%(
			vim.current.range.start + 1,
			vim.current.range.end + 1,
			))
	else:
		vim.command('TOhtml')
	html = '\n'.join(vim.current.buffer)
	vim.command('set buftype=nofile bufhidden=delete | close')
	vim.command('let &l:number=linenumbers')

	print '*** Connecting...'
	client.connect('wpr.cz')
	sftp = client.open_sftp()
	sftp.chdir('www/paste')
	d = time.strftime('%Y-%m-%d')
	next = None
	try:
		sftp.mkdir(d)
		next = '0'
	except IOError:
		pass # dir already exists
	sftp.chdir(d)
	if not next:
		re_num = re.compile('^[0-9]+')
		l = filter(None, ( re_num.match(f) for f in sftp.listdir('.') ))
		if l:
			next = str(1 + max( ((int(m.group(0)) for m in l)) ))
		else:
			next = '0'

	f = sftp.open(next+'.txt', 'w')
	f.write(raw)
	f.close()

	html = html.replace('<body>', '<body>\n<a href="%s.txt">raw</a><hr>'%next)

	f = sftp.open(next+'.html', 'w')
	f.write(html)
	f.close()

	print "http://wpr.cz/ccx/paste/%s/%s.html"%(d, next)

	sftp.close()
	client.close()
EOF
endif

command! -range=% SCPaste <line1>,<line2> python SCPaste()
