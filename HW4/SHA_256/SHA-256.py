import hashlib
import random
import string

def random_string(length):
    return ''.join(random.choice(string.ascii_letters) for m in range(length))

def main():
	while True:
		string = random_string(64)
		hashed_str = hashlib.sha256(string.encode()).hexdigest()
		if hashed_str[:3] == "000":
			break
	print(string)
	print(hashed_str)

if __name__ == '__main__':
	main()
