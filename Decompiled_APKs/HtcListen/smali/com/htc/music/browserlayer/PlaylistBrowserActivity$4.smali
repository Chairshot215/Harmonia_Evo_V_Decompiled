.class Lcom/htc/music/browserlayer/PlaylistBrowserActivity$4;
.super Landroid/os/Handler;
.source "PlaylistBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/PlaylistBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$4;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const-string v0, "[PlaylistBrowserActivity]"

    const-string v1, "Got delay finish message"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$4;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    iget-boolean v0, v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->menuOpened:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$4;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$4;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->menuOpened:Z

    goto :goto_0
.end method
