.class Lcom/htc/music/browserlayer/PlaylistBrowserActivity$1;
.super Ljava/lang/Object;
.source "PlaylistBrowserActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    iput-object p2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$1;->val$action:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$1;->val$intent:Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7

    const/4 v6, 0x0

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$1;->val$action:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "playlist"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x2

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->list:[I
    invoke-static {v2}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->access$000(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;)[I

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->list:[I
    invoke-static {v3}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->access$000(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;)[I

    move-result-object v3

    new-instance v4, Lcom/htc/music/NpCategory;

    invoke-direct {v4, v6}, Lcom/htc/music/NpCategory;-><init>(S)V

    invoke-static {v2, v3, v6, v4}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V

    :goto_0
    if-nez v1, :cond_3

    const-string v2, "[PlaylistBrowserActivity]"

    const-string v3, "Send delay finish message"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mDelayFinishHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->access$100(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    const v3, 0x7f070055

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    int-to-long v3, v0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/htc/music/util/MusicUtils;->playPlaylist(Landroid/content/Context;JLcom/htc/music/NpCategory;)Z

    move-result v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-virtual {v2, v6}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->setVisible(Z)V

    iget-object v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->finish()V

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
