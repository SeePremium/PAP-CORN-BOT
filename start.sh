if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Seepremium/PAP-CORN-BOT.git /PAP-CORN-BOT
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /PAP-CORN-BOT
fi
cd /PAP-CORN-BOT 
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
