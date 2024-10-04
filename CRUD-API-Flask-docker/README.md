## 1. **Write a Simple CRUD API using Flask**

Create a file `app.py`

### 2. **Dockerize the Flask App**

Create a `Dockerfile` to containerize your Flask app

### 3. **Automate Deployment using a Shell Script or Ansible**

#### Using a Shell Script

You can automate the deployment using a simple shell script that installs Docker, builds the image, and runs the container.

Create a `deploy.sh` script

#### Steps to execute:
1. **Make the script executable**:

    ```bash
    chmod +x deploy.sh
    ```

2. **Run the script**:

    ```bash
    ./deploy.sh
    ```

#### Steps to execute:
1. **Run the Ansible playbook**:

    ```bash
    ansible-playbook -i inventory deploy.yml
    ```

---

### 4. **Test the API**

After deployment, you can test the API using `curl` or Postman:

- **Create a user**:
  
  ```bash
  curl -X POST -H "Content-Type: application/json" \
  -d '{"name": "John Doe", "email": "john@example.com"}' \
  http://<server_ip>:5000/users
  ```

- **Get all users**:
  
  ```bash
  curl http://<server_ip>:5000/users
  ```

- **Update a user**:
  
  ```bash
  curl -X PUT -H "Content-Type: application/json" \
  -d '{"name": "John Updated", "email": "johnupdated@example.com"}' \
  http://<server_ip>:5000/users/1
  ```

- **Delete a user**:
  
  ```bash
  curl -X DELETE http://<server_ip>:5000/users/1
  ```

---

This approach creates a simple CRUD API using Flask and Docker, with deployment automated either via a shell script or Ansible.
