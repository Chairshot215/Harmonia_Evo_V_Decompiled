.class Lcom/htc/music/browserlayer/EditPlaylistActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "EditPlaylistActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/EditPlaylistActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/EditPlaylistActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$1;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$1;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->showSpinner(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$1;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    iget-boolean v1, v1, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAsyncQuerying:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$1;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->showSpinner(Z)V

    goto :goto_0

    :cond_2
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$1;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->finish()V

    goto :goto_0
.end method
