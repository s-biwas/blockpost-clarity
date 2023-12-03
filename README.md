# Post Board Smart Contract 📝

A simple Ethereum smart contract functioning as a post board, allowing users to create posts and retrieve post-related information.

## Overview 🚀

- **`write-post`**: Allows users to create a post by sending a message and paying a specified price.
- **`get-total-posts`**: Retrieves the total number of posts made on the board.
- **`get-post`**: Retrieves a specific post made by a user.

## Constants and Variables 🧱📊

- **`contract-owner`**: Represents the deployer of the contract.
- **`price`**: Cost of writing a post (`u1000000`).
- **`total-posts`**: Total count of posts made (`uint u0`).

## Data Map and Functions 🗺️⚙️

- **`posts`**: Associates a user's address with their post message (`string-utf8 500`).
- **`write-post`**: Create a post and increment the post count.
- **`get-total-posts`**: Return the total number of posts.
- **`get-post`**: Retrieve a specific user's post.

## Instructions 📌

1. Deploy the smart contract (Use on a development network only).
2. Call `write-post` to create a post (max 500 characters).
3. Use `get-total-posts` to retrieve total posts.
4. Employ `get-post` with a user's address to fetch their post.

## Notes ℹ️

- `write-post` requires payment of the specified `price`.
- Ensure messages for `write-post` stay within 500 characters.
- **Caution**: Intended for testing; hasn't undergone security audits.


## Acknowledgements 🙏

N/A
