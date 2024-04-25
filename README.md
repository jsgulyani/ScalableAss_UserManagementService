# ScalableAss_UserManagementService
User management and authentication service Scalable service assignment 1 group 1

Service for user management and Authentication
Operations:
/users-     //to fetch  all users
/users/:id  // to fetch user by ID
/user       // to create new user
/user/:id   // to updated existing user
/auth       // to authenticate user

for test requestes plese refer postman collection in same project

-----GoLang Execution----
Step-1 redirect to project path
step-2 go run .

------Docker-------
#  make sure correct directory and run below 2 commands
#CMD1#  docker build -t lms-userservice .
#CMD2#  docker run -e PORT=8081 -p 8081:8081 lms-userservice

# optinoaly run below command insted oc CMD2 to start on port 9000
#  docker run -e PORT=9000 -p 9000:9000 lms-userservice

------MiniKube-----
Commands Only:
1-redirect to project path in windows power shell
2- minikube docker-env
3-minikube -p minikube docker-env --shell powershell | Invoke-Expression
4- docker build -t lms-userservice-mk2 .
5-kubectl run lms-us-mkk22 --image=lms-userservice-mk2 --image-pull-policy=Never --port=8080
6- kubectl port-forward lms-us-mkk2 8082:8080
