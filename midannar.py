from bottle import *
import urllib.request, json

with urllib.request.urlopen("http://apis.is/petrol") as url:
    gogn = json.loads(url.read().decode())
nofn = []
for i in gogn['results']:
    nofn.append(i['company'])

nofn = sorted(set(nofn))

@route('/company/<id>')
def at(id):
    return template('at.tpl', data=gogn, id=id)

@route('/')
def index():
    return template('index.tpl', data=gogn, nofn=nofn)
@route('/css/<filename:re:.*\.css>')
def send_css(filename):
    return static_file(filename, root='css')

@route('/img/<filename>')
def send_image(filename):
    return static_file(filename, root='./static_file')
@error(404)
def error404(error):
        return 'Nothing here, sorry'
run(host="0.0.0.0", port=os.environ.get('PORT'))
