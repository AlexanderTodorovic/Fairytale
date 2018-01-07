from locust import HttpLocust, TaskSet, task

class UserBehavior(TaskSet):

    @task(2)
    def index(self):
        #self.client.get("/")
        self.client.post("/", {"submit":"Good morning"})

    @task(4)
    def all(self):
        self.client.get("/all")

    @task(1)
    def page404(self):
        self.client.get("/does_not_exist")

class WebsiteUser(HttpLocust):
    task_set = UserBehavior
    min_wait = 1000
    max_wait = 2000