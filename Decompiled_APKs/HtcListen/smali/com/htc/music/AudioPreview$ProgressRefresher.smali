.class Lcom/htc/music/AudioPreview$ProgressRefresher;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProgressRefresher"
.end annotation


# instance fields
.field mRemaining:J

.field final synthetic this$0:Lcom/htc/music/AudioPreview;


# direct methods
.method constructor <init>(Lcom/htc/music/AudioPreview;)V
    .locals 2

    iput-object p1, p0, Lcom/htc/music/AudioPreview$ProgressRefresher;->this$0:Lcom/htc/music/AudioPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/AudioPreview$ProgressRefresher;->mRemaining:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const-wide/16 v4, 0x0

    const-wide/16 v10, 0x3e8

    iget-object v6, p0, Lcom/htc/music/AudioPreview$ProgressRefresher;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;
    invoke-static {v6}, Lcom/htc/music/AudioPreview;->access$600(Lcom/htc/music/AudioPreview;)Lcom/htc/music/AudioPreview$PreviewPlayer;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/music/AudioPreview$ProgressRefresher;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mSeeking:Z
    invoke-static {v6}, Lcom/htc/music/AudioPreview;->access$1100(Lcom/htc/music/AudioPreview;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/htc/music/AudioPreview$ProgressRefresher;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mDuration:I
    invoke-static {v6}, Lcom/htc/music/AudioPreview;->access$1200(Lcom/htc/music/AudioPreview;)I

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/music/AudioPreview$ProgressRefresher;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;
    invoke-static {v6}, Lcom/htc/music/AudioPreview;->access$600(Lcom/htc/music/AudioPreview;)Lcom/htc/music/AudioPreview$PreviewPlayer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/music/AudioPreview$PreviewPlayer;->getCurrentPosition()I

    move-result v6

    int-to-long v0, v6

    iget-object v6, p0, Lcom/htc/music/AudioPreview$ProgressRefresher;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mDuration:I
    invoke-static {v6}, Lcom/htc/music/AudioPreview;->access$1200(Lcom/htc/music/AudioPreview;)I

    move-result v6

    int-to-long v6, v6

    sub-long v2, v6, v0

    iget-object v6, p0, Lcom/htc/music/AudioPreview$ProgressRefresher;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mCurrentTime:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/htc/music/AudioPreview;->access$1300(Lcom/htc/music/AudioPreview;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/AudioPreview$ProgressRefresher;->this$0:Lcom/htc/music/AudioPreview;

    invoke-virtual {v7}, Lcom/htc/music/AudioPreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    div-long v8, v0, v10

    invoke-static {v7, v8, v9}, Lcom/htc/music/util/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/htc/music/AudioPreview$ProgressRefresher;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mTotalTime:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/htc/music/AudioPreview;->access$1400(Lcom/htc/music/AudioPreview;)Landroid/widget/TextView;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/music/AudioPreview$ProgressRefresher;->this$0:Lcom/htc/music/AudioPreview;

    invoke-virtual {v8}, Lcom/htc/music/AudioPreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    cmp-long v9, v2, v4

    if-lez v9, :cond_1

    :goto_0
    div-long v4, v2, v10

    invoke-static {v8, v4, v5}, Lcom/htc/music/util/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/htc/music/AudioPreview$ProgressRefresher;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v4}, Lcom/htc/music/AudioPreview;->access$1500(Lcom/htc/music/AudioPreview;)Landroid/widget/SeekBar;

    move-result-object v4

    long-to-int v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    rem-long v4, v0, v10

    sub-long v4, v10, v4

    iput-wide v4, p0, Lcom/htc/music/AudioPreview$ProgressRefresher;->mRemaining:J

    :cond_0
    iget-object v4, p0, Lcom/htc/music/AudioPreview$ProgressRefresher;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/music/AudioPreview;->access$1600(Lcom/htc/music/AudioPreview;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/htc/music/AudioPreview$ProgressRefresher;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/music/AudioPreview;->access$1600(Lcom/htc/music/AudioPreview;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/htc/music/AudioPreview$ProgressRefresher;

    iget-object v6, p0, Lcom/htc/music/AudioPreview$ProgressRefresher;->this$0:Lcom/htc/music/AudioPreview;

    invoke-direct {v5, v6}, Lcom/htc/music/AudioPreview$ProgressRefresher;-><init>(Lcom/htc/music/AudioPreview;)V

    iget-wide v6, p0, Lcom/htc/music/AudioPreview$ProgressRefresher;->mRemaining:J

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    move-wide v2, v4

    goto :goto_0
.end method
