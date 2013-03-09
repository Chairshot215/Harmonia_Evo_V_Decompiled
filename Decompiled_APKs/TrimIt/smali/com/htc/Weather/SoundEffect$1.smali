.class Lcom/htc/Weather/SoundEffect$1;
.super Landroid/os/Handler;
.source "SoundEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/Weather/SoundEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCurrentVolume:F

.field final synthetic this$0:Lcom/htc/Weather/SoundEffect;


# direct methods
.method constructor <init>(Lcom/htc/Weather/SoundEffect;)V
    .locals 1
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/htc/Weather/SoundEffect$1;->this$0:Lcom/htc/Weather/SoundEffect;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 159
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/Weather/SoundEffect$1;->mCurrentVolume:F

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 162
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 204
    :goto_0
    return-void

    .line 164
    :pswitch_0
    const-string v0, "WeatherSound"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "case MSG_START: state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/Weather/SoundEffect;->access$000()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/htc/Weather/SoundEffect;->access$002(I)I

    .line 167
    iget-object v0, p0, Lcom/htc/Weather/SoundEffect$1;->this$0:Lcom/htc/Weather/SoundEffect;

    #calls: Lcom/htc/Weather/SoundEffect;->start()V
    invoke-static {v0}, Lcom/htc/Weather/SoundEffect;->access$100(Lcom/htc/Weather/SoundEffect;)V

    goto :goto_0

    .line 171
    :pswitch_1
    const-string v0, "WeatherSound"

    const-string v1, "case MSG_FADEOUT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/htc/Weather/SoundEffect$1;->this$0:Lcom/htc/Weather/SoundEffect;

    #getter for: Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/htc/Weather/SoundEffect;->access$200(Lcom/htc/Weather/SoundEffect;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 174
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/htc/Weather/SoundEffect;->access$002(I)I

    .line 175
    iget v0, p0, Lcom/htc/Weather/SoundEffect$1;->mCurrentVolume:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 176
    iget v0, p0, Lcom/htc/Weather/SoundEffect$1;->mCurrentVolume:F

    const v1, 0x3dcccccd

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/htc/Weather/SoundEffect$1;->mCurrentVolume:F

    .line 177
    iget-object v0, p0, Lcom/htc/Weather/SoundEffect$1;->this$0:Lcom/htc/Weather/SoundEffect;

    iget v1, p0, Lcom/htc/Weather/SoundEffect$1;->mCurrentVolume:F

    #calls: Lcom/htc/Weather/SoundEffect;->setVolume(F)V
    invoke-static {v0, v1}, Lcom/htc/Weather/SoundEffect;->access$300(Lcom/htc/Weather/SoundEffect;F)V

    .line 178
    iget-object v0, p0, Lcom/htc/Weather/SoundEffect$1;->this$0:Lcom/htc/Weather/SoundEffect;

    #getter for: Lcom/htc/Weather/SoundEffect;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/Weather/SoundEffect;->access$400(Lcom/htc/Weather/SoundEffect;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 180
    :cond_0
    const-string v0, "WeatherSound"

    const-string v1, "case FADEOUT end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/htc/Weather/SoundEffect$1;->this$0:Lcom/htc/Weather/SoundEffect;

    #getter for: Lcom/htc/Weather/SoundEffect;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/Weather/SoundEffect;->access$400(Lcom/htc/Weather/SoundEffect;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 182
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/Weather/SoundEffect$1;->mCurrentVolume:F

    goto :goto_0

    .line 185
    :cond_1
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/htc/Weather/SoundEffect;->access$002(I)I

    goto :goto_0

    .line 190
    :pswitch_2
    const-string v0, "WeatherSound"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "case MSG_RELEASE: state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/Weather/SoundEffect;->access$000()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/htc/Weather/SoundEffect$1;->this$0:Lcom/htc/Weather/SoundEffect;

    #getter for: Lcom/htc/Weather/SoundEffect;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/Weather/SoundEffect;->access$400(Lcom/htc/Weather/SoundEffect;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 192
    const/16 v0, 0xd

    invoke-static {v0}, Lcom/htc/Weather/SoundEffect;->access$002(I)I

    .line 194
    iget-object v0, p0, Lcom/htc/Weather/SoundEffect$1;->this$0:Lcom/htc/Weather/SoundEffect;

    #getter for: Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/htc/Weather/SoundEffect;->access$200(Lcom/htc/Weather/SoundEffect;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 195
    iget-object v0, p0, Lcom/htc/Weather/SoundEffect$1;->this$0:Lcom/htc/Weather/SoundEffect;

    #getter for: Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/htc/Weather/SoundEffect;->access$200(Lcom/htc/Weather/SoundEffect;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 196
    iget-object v0, p0, Lcom/htc/Weather/SoundEffect$1;->this$0:Lcom/htc/Weather/SoundEffect;

    #getter for: Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/htc/Weather/SoundEffect;->access$200(Lcom/htc/Weather/SoundEffect;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 197
    iget-object v0, p0, Lcom/htc/Weather/SoundEffect$1;->this$0:Lcom/htc/Weather/SoundEffect;

    const/4 v1, 0x0

    #setter for: Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, v1}, Lcom/htc/Weather/SoundEffect;->access$202(Lcom/htc/Weather/SoundEffect;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/htc/Weather/SoundEffect$1;->this$0:Lcom/htc/Weather/SoundEffect;

    #calls: Lcom/htc/Weather/SoundEffect;->checkNeedRestart()V
    invoke-static {v0}, Lcom/htc/Weather/SoundEffect;->access$500(Lcom/htc/Weather/SoundEffect;)V

    goto/16 :goto_0

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
