.class Lcom/android/mms/ui/SlideView$2;
.super Ljava/lang/Object;
.source "SlideView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideView;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/mms/ui/SlideView$2;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4
    .parameter "mp"

    .prologue
    const/4 v3, 0x0

    .line 130
    iget-object v1, p0, Lcom/android/mms/ui/SlideView$2;->this$0:Lcom/android/mms/ui/SlideView;

    const/4 v2, 0x1

    #setter for: Lcom/android/mms/ui/SlideView;->mIsPrepared:Z
    invoke-static {v1, v2}, Lcom/android/mms/ui/SlideView;->access$102(Lcom/android/mms/ui/SlideView;Z)Z

    .line 131
    iget-object v1, p0, Lcom/android/mms/ui/SlideView$2;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->mSeekWhenPrepared:I
    invoke-static {v1}, Lcom/android/mms/ui/SlideView;->access$200(Lcom/android/mms/ui/SlideView;)I

    move-result v1

    if-lez v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/android/mms/ui/SlideView$2;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/android/mms/ui/SlideView;->access$300(Lcom/android/mms/ui/SlideView;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SlideView$2;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->mSeekWhenPrepared:I
    invoke-static {v2}, Lcom/android/mms/ui/SlideView;->access$200(Lcom/android/mms/ui/SlideView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 133
    iget-object v1, p0, Lcom/android/mms/ui/SlideView$2;->this$0:Lcom/android/mms/ui/SlideView;

    #setter for: Lcom/android/mms/ui/SlideView;->mSeekWhenPrepared:I
    invoke-static {v1, v3}, Lcom/android/mms/ui/SlideView;->access$202(Lcom/android/mms/ui/SlideView;I)I

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideView$2;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z
    invoke-static {v1}, Lcom/android/mms/ui/SlideView;->access$400(Lcom/android/mms/ui/SlideView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    iget-object v1, p0, Lcom/android/mms/ui/SlideView$2;->this$0:Lcom/android/mms/ui/SlideView;

    #calls: Lcom/android/mms/ui/SlideView;->stopMusicPlayer()V
    invoke-static {v1}, Lcom/android/mms/ui/SlideView;->access$500(Lcom/android/mms/ui/SlideView;)V

    .line 137
    iget-object v1, p0, Lcom/android/mms/ui/SlideView$2;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/android/mms/ui/SlideView;->access$300(Lcom/android/mms/ui/SlideView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 138
    iget-object v1, p0, Lcom/android/mms/ui/SlideView$2;->this$0:Lcom/android/mms/ui/SlideView;

    #setter for: Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z
    invoke-static {v1, v3}, Lcom/android/mms/ui/SlideView;->access$402(Lcom/android/mms/ui/SlideView;Z)Z

    .line 139
    iget-object v1, p0, Lcom/android/mms/ui/SlideView$2;->this$0:Lcom/android/mms/ui/SlideView;

    #setter for: Lcom/android/mms/ui/SlideView;->mStopWhenPrepared:Z
    invoke-static {v1, v3}, Lcom/android/mms/ui/SlideView;->access$602(Lcom/android/mms/ui/SlideView;Z)Z

    .line 140
    iget-object v1, p0, Lcom/android/mms/ui/SlideView$2;->this$0:Lcom/android/mms/ui/SlideView;

    #calls: Lcom/android/mms/ui/SlideView;->displayAudioInfo()V
    invoke-static {v1}, Lcom/android/mms/ui/SlideView;->access$700(Lcom/android/mms/ui/SlideView;)V

    .line 142
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SlideView$2;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->mStopWhenPrepared:Z
    invoke-static {v1}, Lcom/android/mms/ui/SlideView;->access$600(Lcom/android/mms/ui/SlideView;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 143
    iget-object v1, p0, Lcom/android/mms/ui/SlideView$2;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/android/mms/ui/SlideView;->access$300(Lcom/android/mms/ui/SlideView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideView$2;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/android/mms/ui/SlideView;->access$300(Lcom/android/mms/ui/SlideView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideView$2;->this$0:Lcom/android/mms/ui/SlideView;

    const/4 v2, 0x0

    #setter for: Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1, v2}, Lcom/android/mms/ui/SlideView;->access$302(Lcom/android/mms/ui/SlideView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 150
    iget-object v1, p0, Lcom/android/mms/ui/SlideView$2;->this$0:Lcom/android/mms/ui/SlideView;

    #setter for: Lcom/android/mms/ui/SlideView;->mStopWhenPrepared:Z
    invoke-static {v1, v3}, Lcom/android/mms/ui/SlideView;->access$602(Lcom/android/mms/ui/SlideView;Z)Z

    .line 151
    iget-object v1, p0, Lcom/android/mms/ui/SlideView$2;->this$0:Lcom/android/mms/ui/SlideView;

    #calls: Lcom/android/mms/ui/SlideView;->hideAudioInfo()V
    invoke-static {v1}, Lcom/android/mms/ui/SlideView;->access$800(Lcom/android/mms/ui/SlideView;)V

    .line 153
    :cond_2
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "SlideView"

    const-string v2, "IllegalArgumentException. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
