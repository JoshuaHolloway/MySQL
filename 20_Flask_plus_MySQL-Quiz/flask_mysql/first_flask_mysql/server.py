from flask import Flask, render_template, request, redirect
from mysqlconnection import connectToMySQL
app = Flask(__name__)
@app.route("/")
def index():
    mysql = connectToMySQL('mydb') # call the function, passing in the name of our db
    friends = mysql.query_db('SELECT * FROM friends;') # call the query_db function, pass in the query as a string
    print(friends)
    return render_template("index.html",all_friends=friends)

@app.route("/create_friend", methods=["POST"])
def add_friend_to_db():

    # Columns of the table
    query = "INSERT INTO friends (first_name,last_name,occupation,created_at,updated_at) VALUES (%(fn)s, %(ln)s, %(oc)s, NOW(), NOW());"

    # Dictionary containing the stuff we want to add to the table
    data = {
        'fn': request.form['fname'],
        'ln': request.form['lname'],
        'oc': request.form['occ']
    }
    db = connectToMySQL('mydb') # pass in name of schema
    db.query_db(query, data)
    return redirect('/')

if __name__ == "__main__":
    app.run(debug=True)
