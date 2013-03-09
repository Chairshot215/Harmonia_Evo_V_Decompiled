.class Lcom/htc/music/AudioPreview$4;
.super Landroid/os/Handler;
.source "AudioPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/AudioPreview;


# direct methods
.method constructor <init>(Lcom/htc/music/AudioPreview;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/AudioPreview$4;->this$0:Lcom/htc/music/AudioPreview;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v1, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/AudioPreview$4;->this$0:Lcom/htc/music/AudioPreview;

    #setter for: Lcom/htc/music/AudioPreview;->mDrmConsumed:Z
    invoke-static {v0, v1}, Lcom/htc/music/AudioPreview;->access$1702(Lcom/htc/music/AudioPreview;Z)Z

    iget-object v0, p0, Lcom/htc/music/AudioPreview$4;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;
    invoke-static {v0}, Lcom/htc/music/AudioPreview;->access$600(Lcom/htc/music/AudioPreview;)Lcom/htc/music/AudioPreview$PreviewPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/AudioPreview$4;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;
    invoke-static {v0}, Lcom/htc/music/AudioPreview;->access$600(Lcom/htc/music/AudioPreview;)Lcom/htc/music/AudioPreview$PreviewPlayer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/music/AudioPreview$PreviewPlayer;->seekTo(I)V

    :cond_0
    iget-object v0, p0, Lcom/htc/music/AudioPreview$4;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/htc/music/AudioPreview;->access$1500(Lcom/htc/music/AudioPreview;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/htc/music/AudioPreview$4;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mCurrentTime:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/music/AudioPreview;->access$1300(Lcom/htc/music/AudioPreview;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/AudioPreview$4;->this$0:Lcom/htc/music/AudioPreview;

    invoke-virtual {v1}, Lcom/htc/music/AudioPreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/htc/music/util/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/htc/music/AudioPreview$4;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mTotalTime:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/music/AudioPreview;->access$1400(Lcom/htc/music/AudioPreview;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/AudioPreview$4;->this$0:Lcom/htc/music/AudioPreview;

    invoke-virtual {v2}, Lcom/htc/music/AudioPreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/AudioPreview$4;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mDuration:I
    invoke-static {v3}, Lcom/htc/music/AudioPreview;->access$1200(Lcom/htc/music/AudioPreview;)I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Lcom/htc/music/util/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/htc/music/AudioPreview$4;->this$0:Lcom/htc/music/AudioPreview;

    const/4 v1, 0x1

    #calls: Lcom/htc/music/AudioPreview;->setPlayPause(Z)V
    invoke-static {v0, v1}, Lcom/htc/music/AudioPreview;->access$1800(Lcom/htc/music/AudioPreview;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
