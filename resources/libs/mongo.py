from pymongo import MongoClient

client = MongoClient('mongodb+srv://qaninja:academy@cluster0.nlzkf.mongodb.net/Rocklov?retryWrites=true&w=majority')

db = client['rocklov']

def remove_user_by_email(user_email):
    users = db['users']
    users.delete_many({'email': user_email})

