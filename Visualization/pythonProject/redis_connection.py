import redis


def main():
    # Create a Redis client
    client = redis.StrictRedis(host='localhost', port=6379, db=0)

    try:
        # Fetch all keys in the Redis database
        programs_unique_identifiers = client.keys('*')
        print('Identifiers in Redis Database:', programs_unique_identifiers)
        # Initialize an empty list to store the extracted key-value pairs
        extracted_data = []
        for key in programs_unique_identifiers:
            # Retrieve the list associated with the key
            data_list = client.lrange(key, 0, -1)

            # Parse the list into key-value pairs
            key_value_pairs = [(data_list[i].decode(), data_list[i + 1].decode()) for i in range(0, len(data_list), 2)]

            # Add the key-value pairs to the extracted_data list
            extracted_data.extend(key_value_pairs)
        for key, value in extracted_data:
            print(f"Key: {key}, Value: {value}")

    except redis.ConnectionError as e:
        print('Redis Connection Failed:', e)
    except Exception as e:
        print('Error:', e)
    finally:
        # Close the Redis connection
        client.connection_pool.disconnect()


if __name__ == "__main__":
    main()
