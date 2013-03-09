.class Lcom/muvee/video/trimer/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/video/trimer/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/muvee/video/trimer/MainActivity;


# direct methods
.method constructor <init>(Lcom/muvee/video/trimer/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/muvee/video/trimer/MainActivity$2;->this$0:Lcom/muvee/video/trimer/MainActivity;

    .line 1358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity$2;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;
    invoke-static {v0}, Lcom/muvee/video/trimer/MainActivity;->access$4(Lcom/muvee/video/trimer/MainActivity;)Lcom/muvee/video/trimer/view/TrimBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/video/trimer/view/TrimBar;->getState()Lcom/muvee/video/trimer/view/TrimBar$State;

    move-result-object v0

    sget-object v1, Lcom/muvee/video/trimer/view/TrimBar$State;->PLAY:Lcom/muvee/video/trimer/view/TrimBar$State;

    if-ne v0, v1, :cond_1

    .line 1362
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity$2;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/muvee/video/trimer/MainActivity;->access$5(Lcom/muvee/video/trimer/MainActivity;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 1371
    :goto_0
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity$2;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mHandler3:Landroid/os/Handler;
    invoke-static {v0}, Lcom/muvee/video/trimer/MainActivity;->access$6(Lcom/muvee/video/trimer/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1372
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity$2;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mHandler3:Landroid/os/Handler;
    invoke-static {v0}, Lcom/muvee/video/trimer/MainActivity;->access$6(Lcom/muvee/video/trimer/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity$2;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mVideoViewRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/muvee/video/trimer/MainActivity;->access$7(Lcom/muvee/video/trimer/MainActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1373
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity$2;->this$0:Lcom/muvee/video/trimer/MainActivity;

    const/4 v1, 0x0

    #setter for: Lcom/muvee/video/trimer/MainActivity;->mHandler3:Landroid/os/Handler;
    invoke-static {v0, v1}, Lcom/muvee/video/trimer/MainActivity;->access$8(Lcom/muvee/video/trimer/MainActivity;Landroid/os/Handler;)V

    .line 1375
    :cond_0
    return-void

    .line 1367
    :cond_1
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity$2;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/muvee/video/trimer/MainActivity;->access$5(Lcom/muvee/video/trimer/MainActivity;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    goto :goto_0
.end method
