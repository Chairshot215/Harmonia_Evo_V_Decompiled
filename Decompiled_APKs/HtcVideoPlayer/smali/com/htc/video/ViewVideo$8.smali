.class Lcom/htc/video/ViewVideo$8;
.super Landroid/content/BroadcastReceiver;
.source "ViewVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/video/ViewVideo;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/video/ViewVideo;


# direct methods
.method constructor <init>(Lcom/htc/video/ViewVideo;)V
    .locals 0
    .parameter

    .prologue
    .line 958
    iput-object p1, p0, Lcom/htc/video/ViewVideo$8;->this$0:Lcom/htc/video/ViewVideo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 961
    iget-object v1, p0, Lcom/htc/video/ViewVideo$8;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mDMP:Z
    invoke-static {v1}, Lcom/htc/video/ViewVideo;->access$2700(Lcom/htc/video/ViewVideo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 972
    :cond_0
    :goto_0
    return-void

    .line 965
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 966
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 969
    :cond_2
    const-string v1, "ViewVideo"

    const-string v2, "[onCreate]: sd card no longer available"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    iget-object v1, p0, Lcom/htc/video/ViewVideo$8;->this$0:Lcom/htc/video/ViewVideo;

    invoke-virtual {v1}, Lcom/htc/video/ViewVideo;->finish()V

    goto :goto_0
.end method
