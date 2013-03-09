.class Lcom/htc/video/ViewVideo$3$1;
.super Ljava/lang/Object;
.source "ViewVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/video/ViewVideo$3;->onRenewRight()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/video/ViewVideo$3;


# direct methods
.method constructor <init>(Lcom/htc/video/ViewVideo$3;)V
    .locals 0
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/htc/video/ViewVideo$3$1;->this$1:Lcom/htc/video/ViewVideo$3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 325
    iget-object v1, p0, Lcom/htc/video/ViewVideo$3$1;->this$1:Lcom/htc/video/ViewVideo$3;

    iget-object v1, v1, Lcom/htc/video/ViewVideo$3;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mVideoData:Lcom/htc/video/VideoUtility/VideoData;
    invoke-static {v1}, Lcom/htc/video/ViewVideo;->access$200(Lcom/htc/video/ViewVideo;)Lcom/htc/video/VideoUtility/VideoData;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 327
    iget-object v1, p0, Lcom/htc/video/ViewVideo$3$1;->this$1:Lcom/htc/video/ViewVideo$3;

    iget-object v1, v1, Lcom/htc/video/ViewVideo$3;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mVideoData:Lcom/htc/video/VideoUtility/VideoData;
    invoke-static {v1}, Lcom/htc/video/ViewVideo;->access$200(Lcom/htc/video/ViewVideo;)Lcom/htc/video/VideoUtility/VideoData;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/video/ViewVideo$3$1;->this$1:Lcom/htc/video/ViewVideo$3;

    iget-object v2, v2, Lcom/htc/video/ViewVideo$3;->this$0:Lcom/htc/video/ViewVideo;

    invoke-virtual {v1, v2, v4}, Lcom/htc/video/VideoUtility/VideoData;->getDrmState(Landroid/content/Context;Z)I

    move-result v0

    .line 328
    .local v0, state:I
    iget-object v1, p0, Lcom/htc/video/ViewVideo$3$1;->this$1:Lcom/htc/video/ViewVideo$3;

    iget-object v1, v1, Lcom/htc/video/ViewVideo$3;->this$0:Lcom/htc/video/ViewVideo;

    iget-object v2, p0, Lcom/htc/video/ViewVideo$3$1;->this$1:Lcom/htc/video/ViewVideo$3;

    iget-object v2, v2, Lcom/htc/video/ViewVideo$3;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mDrmPlayedUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/htc/video/ViewVideo;->access$300(Lcom/htc/video/ViewVideo;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/video/ViewVideo$3$1;->this$1:Lcom/htc/video/ViewVideo$3;

    iget-object v3, v3, Lcom/htc/video/ViewVideo$3;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mDrmUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/htc/video/ViewVideo;->access$400(Lcom/htc/video/ViewVideo;)Landroid/net/Uri;

    move-result-object v3

    #calls: Lcom/htc/video/ViewVideo;->showingDrmMessage(ILandroid/net/Uri;Landroid/net/Uri;)V
    invoke-static {v1, v0, v2, v3}, Lcom/htc/video/ViewVideo;->access$500(Lcom/htc/video/ViewVideo;ILandroid/net/Uri;Landroid/net/Uri;)V

    .line 329
    iget-object v1, p0, Lcom/htc/video/ViewVideo$3$1;->this$1:Lcom/htc/video/ViewVideo$3;

    iget-object v1, v1, Lcom/htc/video/ViewVideo$3;->this$0:Lcom/htc/video/ViewVideo;

    #setter for: Lcom/htc/video/ViewVideo;->mShowDlg:Z
    invoke-static {v1, v4}, Lcom/htc/video/ViewVideo;->access$602(Lcom/htc/video/ViewVideo;Z)Z

    .line 331
    .end local v0           #state:I
    :cond_0
    return-void
.end method
