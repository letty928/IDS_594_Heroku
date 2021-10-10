from app.application import application
import os

if __name__ == "__main__":
    application.run(host="0.0.0.0", port=os.environ['PORT'])