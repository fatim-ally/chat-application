# ① Define the bot interface
# ② Implement the EinsteinBot
# ③ Implement the RonaldoBot
# ④ Initialize based on user choice


from src.core.cli import get_args        # ⑧
from src.core.initializer import get_bot
from src.services.chat_service import run_chat

def main():
    args = get_args()
    bot = get_bot(args.bot)  #We’re hiding the if-else logic (bot type selection) inside get_bot() which calls constructor for respective bot
    run_chat(bot, args.user)

if __name__ == "__main__":
    main()
