"""Simple api sample."""
from flask import Flask, jsonify

app = Flask(__name__)
# need to use unicode text like Japanese text.
app.config['JSON_AS_ASCII'] = False


@app.route('/health_check', methods=['GET'])
def health_check():
    """health_check."""
    app.logger.debug('health_check')
    res_json = {
        'status': 200
    }
    return jsonify(res_json)
