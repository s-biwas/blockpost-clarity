# Post Board Smart Contract 📝

This is a simple smart contract designed to function as a post board, allowing users to write posts and retrieve the total number of posts made.

## Overview 🚀

The contract comprises several functionalities:

- **`write-post`**: Allows users to create a post by sending a message. The function transfers a specified price (`u1000000`) from the transaction sender (`tx-sender`) to the contract owner (`contract-owner`) and records the post message associated with the sender's address.
- **`get-total-posts`**: Retrieves the total number of posts made on the board.
- **`get-post`**: Retrieves a specific post made by a user given their address.

## Constants 🧱

- **`contract-owner`**: Represents the deployer of the contract. By default, `contract-owner` is set to the `tx-sender`.
- **`price`**: Represents the cost of writing a post (`u1000000`).

## Variables 📊

- **`total-posts`**: A variable storing the total count of posts made on the board (`uint u0`).

## Data Map 🗺️

- **`posts`**: A map that associates a user's address with their post message. The message is of type `string-utf8 500`, allowing up to 500 characters per post.

## Functions ⚙️

- **`write-post`**: Allows users to create a post by transferring the specified price and recording their post message in the `posts` map. Increments the `total-posts` count upon successful post creation.
- **`get-total-posts`**: Returns the total number of posts made on the board.
- **`get-post`**: Retrieves a specific post made by a user, identified by their address.

## Instructions 📌

1. Deploy the smart contract.
2. To create a post, call the `write-post` function with a message (maximum 500 characters) as an argument.
3. Use `get-total-posts` to retrieve the total number of posts made.
4. Use `get-post` and provide a user's address to retrieve their specific post.

## Notes ℹ️

- The `write-post` function requires the transaction sender to pay the specified `price` to create a post.
- Ensure messages passed to `write-post` do not exceed 500 characters.
