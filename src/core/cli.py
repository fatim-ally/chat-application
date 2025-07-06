import argparse  # ⑤

def get_args():
    parser = argparse.ArgumentParser(description="Expert ChatBot CLI")
    parser.add_argument("--bot", type=str, required=True, help="Bot name (einstein, ronaldo, hamilton)")
    parser.add_argument("--user", type=str, required=True, help="User name")
    return parser.parse_args()
