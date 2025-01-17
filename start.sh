if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Siyad7356/ClassicCinemasBot /ClassicCinemasBot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /ClassicCinemasBot
fi
cd /ClassicCinemasBot
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py
