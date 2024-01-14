const users = [{ id: "01", name: "Faizan" }];

function addUsers(user) {
    users.push(user);
}
function updateUsers(id, data) {
    const userIndex = users.findIndex((user) => user.id == id);
    users[userIndex] = data;
}

module.exports = {
    users, addUsers, updateUsers
}
