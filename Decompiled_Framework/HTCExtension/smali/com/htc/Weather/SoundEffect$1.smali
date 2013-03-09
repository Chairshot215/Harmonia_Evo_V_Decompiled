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

    iput-object p1, p0, Lcom/htc/Weather/SoundEffect$1;->this$0:Lcom/htc/Weather/SoundEffect;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/Weather/SoundEffect$1;->mCurrentVolume:F

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/htc/Weather/SoundEffect$1;->this$0:Lcom/htc/Weather/SoundEffect;

    const/16 v1, 0xb

    #setter for: Lcom/htc/Weather/SoundEffect;->state:I
    invoke-static {v0, v1}, Lcom/htc/Weather/SoundEffect;->access$002(Lcom/htc/Weather/SoundEffect;I)I

    iget-object v0, p0, Lcom/htc/Weather/SoundEffect$1;->this$0:Lcom/htc/Weather/SoundEffect;

    #calls: Lcom/htc/Weather/SoundEffect;->start()V
    invoke-static {v0}, Lcom/htc/Weather/SoundEffect;->access$100(Lcom/htc/Weather/SoundEffect;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/htc/Weather/SoundEffect$1;->this$0:Lcom/htc/Weather/SoundEffect;

    #getter for: Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/htc/Weather/SoundEffect;->access$200(Lcom/htc/Weather/SoundEffect;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/Weather/SoundEffect$1;->this$0:Lcom/htc/Weather/SoundEffect;

    const/16 v1, 0xc

    #setter for: Lcom/htc/Weather/SoundEffect;->state:I
    invoke-static {v0, v1}, Lcom/htc/Weather/SoundEffect;->access$002(Lcom/htc/Weather/SoundEffect;I)I

    iget v0, p0, Lcom/htc/Weather/SoundEffect$1;->mCurrentVolume:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/Weather/SoundEffect$1;->mCurrentVolume:F

    const v1, 0x3dcccccd

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/htc/Weather/SoundEffect$1;->mCurrentVolume:F

    iget-object v0, p0, Lcom/htc/Weather/SoundEffect$1;->this$0:Lcom/htc/Weather/SoundEffect;

    iget v1, p0, Lcom/htc/Weather/SoundEffect$1;->mCurrentVolume:F

    #calls: Lcom/htc/Weather/SoundEffect;->setVolume(F)V
    invoke-static {v0, v1}, Lcom/htc/Weather/SoundEffect;->access$300(Lcom/htc/Weather/SoundEffect;F)V

    iget-object v0, p0, Lcom/htc/Weather/SoundEffect$1;->this$0:Lcom/htc/Weather/SoundEffect;

    #getter for: Lcom/htc/Weather/SoundEffect;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/Weather/SoundEffect;->access$400(Lcom/htc/Weather/SoundEffect;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/htc/Weather/SoundEffect$1;->this$0:Lcom/htc/Weather/SoundEffect;

    #getter for: Lcom/htc/Weather/SoundEffect;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/Weather/SoundEffect;->access$400(Lcom/htc/Weather/SoundEffect;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/htc/Weather/SoundEffect$1;->this$0:Lcom/htc/Weather/SoundEffect;

    #getter for: Lcom/htc/Weather/SoundEffect;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/Weather/SoundEffect;->access$400(Lcom/htc/Weather/SoundEffect;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/Weather/SoundEffect$1;->mCurrentVolume:F

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/Weather/SoundEffect$1;->this$0:Lcom/htc/Weather/SoundEffect;

    const/16 v1, 0xa

    #setter for: Lcom/htc/Weather/SoundEffect;->state:I
    invoke-static {v0, v1}, Lcom/htc/Weather/SoundEffect;->access$002(Lcom/htc/Weather/SoundEffect;I)I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/htc/Weather/SoundEffect$1;->this$0:Lcom/htc/Weather/SoundEffect;

    #getter for: Lcom/htc/Weather/SoundEffect;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/Weather/SoundEffect;->access$400(Lcom/htc/Weather/SoundEffect;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/htc/Weather/SoundEffect$1;->this$0:Lcom/htc/Weather/SoundEffect;

    #calls: Lcom/htc/Weather/SoundEffect;->forceReleaseMediaPlayer()V
    invoke-static {v0}, Lcom/htc/Weather/SoundEffect;->access$500(Lcom/htc/Weather/SoundEffect;)V

    iget-object v0, p0, Lcom/htc/Weather/SoundEffect$1;->this$0:Lcom/htc/Weather/SoundEffect;

    #calls: Lcom/htc/Weather/SoundEffect;->checkNeedRestart()V
    invoke-static {v0}, Lcom/htc/Weather/SoundEffect;->access$600(Lcom/htc/Weather/SoundEffect;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
