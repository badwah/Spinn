namespace Spinn.Frontend.Models
{
    public class InfiniteMenuItem
    {
        public string Title { get; set; }
        public string Url { get; set; }
        public InfiniteMenuItem NextMenuItem { get; set; }
        public string NextMenuItemTitle { get { return NextMenuItem != null ? NextMenuItem.Title : string.Empty; } }
    }
}