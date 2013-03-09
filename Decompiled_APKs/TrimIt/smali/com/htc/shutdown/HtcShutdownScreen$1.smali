.class Lcom/htc/shutdown/HtcShutdownScreen$1;
.super Ljava/lang/Object;
.source "HtcShutdownScreen.java"

# interfaces
.implements Lcom/htc/shutdown/AnimationView$OnAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/shutdown/HtcShutdownScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/shutdown/HtcShutdownScreen;


# direct methods
.method constructor <init>(Lcom/htc/shutdown/HtcShutdownScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/htc/shutdown/HtcShutdownScreen$1;->this$0:Lcom/htc/shutdown/HtcShutdownScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFinished()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/htc/shutdown/HtcShutdownScreen$1;->this$0:Lcom/htc/shutdown/HtcShutdownScreen;

    #getter for: Lcom/htc/shutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/htc/shutdown/HtcShutdownScreen;->access$100(Lcom/htc/shutdown/HtcShutdownScreen;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/htc/shutdown/HtcShutdownScreen$1;->this$0:Lcom/htc/shutdown/HtcShutdownScreen;

    #getter for: Lcom/htc/shutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/htc/shutdown/HtcShutdownScreen;->access$100(Lcom/htc/shutdown/HtcShutdownScreen;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 263
    iget-object v0, p0, Lcom/htc/shutdown/HtcShutdownScreen$1;->this$0:Lcom/htc/shutdown/HtcShutdownScreen;

    const/4 v1, 0x0

    #setter for: Lcom/htc/shutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, v1}, Lcom/htc/shutdown/HtcShutdownScreen;->access$102(Lcom/htc/shutdown/HtcShutdownScreen;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/htc/shutdown/HtcShutdownScreen$1;->this$0:Lcom/htc/shutdown/HtcShutdownScreen;

    #getter for: Lcom/htc/shutdown/HtcShutdownScreen;->mShutdownListener:Lcom/htc/shutdown/HtcShutdownScreen$OnShutdownListener;
    invoke-static {v0}, Lcom/htc/shutdown/HtcShutdownScreen;->access$000(Lcom/htc/shutdown/HtcShutdownScreen;)Lcom/htc/shutdown/HtcShutdownScreen$OnShutdownListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/htc/shutdown/HtcShutdownScreen$1;->this$0:Lcom/htc/shutdown/HtcShutdownScreen;

    #getter for: Lcom/htc/shutdown/HtcShutdownScreen;->mShutdownListener:Lcom/htc/shutdown/HtcShutdownScreen$OnShutdownListener;
    invoke-static {v0}, Lcom/htc/shutdown/HtcShutdownScreen;->access$000(Lcom/htc/shutdown/HtcShutdownScreen;)Lcom/htc/shutdown/HtcShutdownScreen$OnShutdownListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/shutdown/HtcShutdownScreen$OnShutdownListener;->onCompleted()V

    .line 269
    :cond_1
    return-void
.end method

.method public onAnimationReady()V
    .locals 2

    .prologue
    .line 247
    const-string v0, "HtcShutdownScreen"

    const-string v1, "onAnimationReady"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/htc/shutdown/HtcShutdownScreen$1;->this$0:Lcom/htc/shutdown/HtcShutdownScreen;

    #getter for: Lcom/htc/shutdown/HtcShutdownScreen;->mShutdownListener:Lcom/htc/shutdown/HtcShutdownScreen$OnShutdownListener;
    invoke-static {v0}, Lcom/htc/shutdown/HtcShutdownScreen;->access$000(Lcom/htc/shutdown/HtcShutdownScreen;)Lcom/htc/shutdown/HtcShutdownScreen$OnShutdownListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/htc/shutdown/HtcShutdownScreen$1;->this$0:Lcom/htc/shutdown/HtcShutdownScreen;

    #getter for: Lcom/htc/shutdown/HtcShutdownScreen;->mShutdownListener:Lcom/htc/shutdown/HtcShutdownScreen$OnShutdownListener;
    invoke-static {v0}, Lcom/htc/shutdown/HtcShutdownScreen;->access$000(Lcom/htc/shutdown/HtcShutdownScreen;)Lcom/htc/shutdown/HtcShutdownScreen$OnShutdownListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/shutdown/HtcShutdownScreen$OnShutdownListener;->onReady()V

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/htc/shutdown/HtcShutdownScreen$1;->this$0:Lcom/htc/shutdown/HtcShutdownScreen;

    #getter for: Lcom/htc/shutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/htc/shutdown/HtcShutdownScreen;->access$100(Lcom/htc/shutdown/HtcShutdownScreen;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/htc/shutdown/HtcShutdownScreen$1;->this$0:Lcom/htc/shutdown/HtcShutdownScreen;

    #getter for: Lcom/htc/shutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/htc/shutdown/HtcShutdownScreen;->access$100(Lcom/htc/shutdown/HtcShutdownScreen;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :cond_1
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v0

    goto :goto_0
.end method
