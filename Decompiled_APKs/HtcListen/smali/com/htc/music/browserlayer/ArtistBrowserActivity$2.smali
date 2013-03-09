.class Lcom/htc/music/browserlayer/ArtistBrowserActivity$2;
.super Landroid/os/Handler;
.source "ArtistBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/ArtistBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$2;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$2;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;
    invoke-static {v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->access$200(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$2;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$2;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;
    invoke-static {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->access$200(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v1

    const/4 v2, 0x0

    #calls: Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v0, v1, v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->access$300(Lcom/htc/music/browserlayer/ArtistBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    :cond_0
    return-void
.end method
