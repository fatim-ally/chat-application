def run_chat(bot, user):  # ⑦
    print(f"\n {user}, you are now chatting with {bot.name}. Type 'exit' to quit.\n")

    while True:
        message = input(f"{user}: ")
        if message.lower() == "exit":
            print(f"{bot.name}: Goodbye!")
            break
        response = bot.reply(message)
        print(f"{bot.name}: {response}")