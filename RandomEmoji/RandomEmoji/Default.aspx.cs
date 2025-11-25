using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RandomEmoji
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Random rand = new Random();
            string[] emoji = { "😂", "🫠", "😉", "🥲", "😋", "🫣", "🤫", "🤔", "🫡", "🤨", "😮‍💨", "🫨", "🙂‍↔️", "🙂‍↕️", "🥵", "🥳", "🤓", "🥺", "🥹", "😭", "😍", "🥰", "🤩", "🤗", "😈", "💀", "🤡", "👻", "🤖", "💔", "❤️‍🔥", "❤️‍🩹", "❤️", "🩷", "💚", "💙", "🩵", "💜", "🖤", "🩶", "🤍", "💯", "💥", "💬", "👋", "🫰", "🫵", "👍", "👏", "🫶", "👌", "🙌", "🙏", "💪", "🫀", "👀", "🫦", "🤦‍♀️", "🗣️", "🫂", "🍑", "🎂", "☕", "🏠", "✈️", "🚀", "☀️", "⭐", "⚡", "🔥", "✨", "🎉", "🎀", "🏆", "⚽", "🎮", "👑", "💎", "📢", "🎶", "📱", "📞", "💡", "📚", "🗓️", "📈", "📍", "🪬", "🗿", "⚠️", "🔞", "➡️", "⬇️", "‼️", "❗", "✅", "✔️", "❌", "🚩", "💃" };


            for (int i = 0; i < 5; i++)
            {
                int index = rand.Next(emoji.Length);
                EmojiLabel.Text += emoji[index] + " ";
            }
        }
    }
}