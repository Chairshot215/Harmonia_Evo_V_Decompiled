.class Lcom/htc/music/HtcMusic$3;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/HtcMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/HtcMusic;


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/HtcMusic$3;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 9

    if-eqz p3, :cond_0

    iget-object v4, p0, Lcom/htc/music/HtcMusic$3;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v4, v4, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/htc/music/HtcMusic$3;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mProgressPos:I
    invoke-static {v4}, Lcom/htc/music/HtcMusic;->access$300(Lcom/htc/music/HtcMusic;)I

    move-result v4

    sub-int/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v5, 0x33

    if-lt v4, v5, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/16 v4, 0x3e8

    if-eq p2, v4, :cond_2

    if-nez p2, :cond_4

    :cond_2
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_3

    iget-object v4, p0, Lcom/htc/music/HtcMusic$3;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J
    invoke-static {v4}, Lcom/htc/music/HtcMusic;->access$200(Lcom/htc/music/HtcMusic;)J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0xfa

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    :cond_3
    iget-object v4, p0, Lcom/htc/music/HtcMusic$3;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v5, p0, Lcom/htc/music/HtcMusic$3;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mDuration:J
    invoke-static {v5}, Lcom/htc/music/HtcMusic;->access$600(Lcom/htc/music/HtcMusic;)J

    move-result-wide v5

    int-to-long v7, p2

    mul-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    #setter for: Lcom/htc/music/HtcMusic;->mPosOverride:J
    invoke-static {v4, v5, v6}, Lcom/htc/music/HtcMusic;->access$502(Lcom/htc/music/HtcMusic;J)J

    :try_start_0
    iget-object v4, p0, Lcom/htc/music/HtcMusic$3;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v4, v4, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    iget-object v5, p0, Lcom/htc/music/HtcMusic$3;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mPosOverride:J
    invoke-static {v5}, Lcom/htc/music/HtcMusic;->access$500(Lcom/htc/music/HtcMusic;)J

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lcom/htc/music/IMediaPlaybackService;->seek(J)J

    iget-object v4, p0, Lcom/htc/music/HtcMusic$3;->this$0:Lcom/htc/music/HtcMusic;

    #setter for: Lcom/htc/music/HtcMusic;->mProgressPos:I
    invoke-static {v4, p2}, Lcom/htc/music/HtcMusic;->access$302(Lcom/htc/music/HtcMusic;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v4, p0, Lcom/htc/music/HtcMusic$3;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->refreshNow()J
    invoke-static {v4}, Lcom/htc/music/HtcMusic;->access$700(Lcom/htc/music/HtcMusic;)J

    iget-object v4, p0, Lcom/htc/music/HtcMusic$3;->this$0:Lcom/htc/music/HtcMusic;

    const-wide/16 v5, -0x1

    #setter for: Lcom/htc/music/HtcMusic;->mPosOverride:J
    invoke-static {v4, v5, v6}, Lcom/htc/music/HtcMusic;->access$502(Lcom/htc/music/HtcMusic;J)J

    iget-object v4, p0, Lcom/htc/music/HtcMusic$3;->this$0:Lcom/htc/music/HtcMusic;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    #setter for: Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J
    invoke-static {v4, v5, v6}, Lcom/htc/music/HtcMusic;->access$202(Lcom/htc/music/HtcMusic;J)J

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    iget-object v0, p0, Lcom/htc/music/HtcMusic$3;->this$0:Lcom/htc/music/HtcMusic;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J
    invoke-static {v0, v1, v2}, Lcom/htc/music/HtcMusic;->access$202(Lcom/htc/music/HtcMusic;J)J

    iget-object v0, p0, Lcom/htc/music/HtcMusic$3;->this$0:Lcom/htc/music/HtcMusic;

    const/4 v1, 0x0

    #setter for: Lcom/htc/music/HtcMusic;->mProgressPos:I
    invoke-static {v0, v1}, Lcom/htc/music/HtcMusic;->access$302(Lcom/htc/music/HtcMusic;I)I

    iget-object v0, p0, Lcom/htc/music/HtcMusic$3;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$400(Lcom/htc/music/HtcMusic;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/HtcMusic$3;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$400(Lcom/htc/music/HtcMusic;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 7

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget-object v2, p0, Lcom/htc/music/HtcMusic$3;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mProgressPos:I
    invoke-static {v2}, Lcom/htc/music/HtcMusic;->access$300(Lcom/htc/music/HtcMusic;)I

    move-result v2

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0x32

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lcom/htc/music/HtcMusic$3;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v3, p0, Lcom/htc/music/HtcMusic$3;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mDuration:J
    invoke-static {v3}, Lcom/htc/music/HtcMusic;->access$600(Lcom/htc/music/HtcMusic;)J

    move-result-wide v3

    int-to-long v5, v1

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    #setter for: Lcom/htc/music/HtcMusic;->mPosOverride:J
    invoke-static {v2, v3, v4}, Lcom/htc/music/HtcMusic;->access$502(Lcom/htc/music/HtcMusic;J)J

    :try_start_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic$3;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v2, v2, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/HtcMusic$3;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v2, v2, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    iget-object v3, p0, Lcom/htc/music/HtcMusic$3;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mPosOverride:J
    invoke-static {v3}, Lcom/htc/music/HtcMusic;->access$500(Lcom/htc/music/HtcMusic;)J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lcom/htc/music/IMediaPlaybackService;->seek(J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic$3;->this$0:Lcom/htc/music/HtcMusic;

    const-wide/16 v3, -0x1

    #setter for: Lcom/htc/music/HtcMusic;->mPosOverride:J
    invoke-static {v2, v3, v4}, Lcom/htc/music/HtcMusic;->access$502(Lcom/htc/music/HtcMusic;J)J

    iget-object v2, p0, Lcom/htc/music/HtcMusic$3;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/music/HtcMusic;->access$400(Lcom/htc/music/HtcMusic;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/HtcMusic$3;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/music/HtcMusic;->access$400(Lcom/htc/music/HtcMusic;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    return-void

    :cond_1
    :try_start_1
    const-string v2, "[HtcMusic]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStopTrackingTouch()...mService is null, mProgressPos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/HtcMusic$3;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mProgressPos:I
    invoke-static {v4}, Lcom/htc/music/HtcMusic;->access$300(Lcom/htc/music/HtcMusic;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", progress = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_2
    const-string v2, "[HtcMusic]"

    const-string v3, "onStopTrackingTouch, mHandler is null!!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/music/HtcMusic$3;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->refreshNow()J
    invoke-static {v2}, Lcom/htc/music/HtcMusic;->access$700(Lcom/htc/music/HtcMusic;)J

    goto :goto_1
.end method
