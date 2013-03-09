.class Lcom/htc/android/worldclock/Stopwatch$10;
.super Ljava/lang/Object;
.source "Stopwatch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/Stopwatch;->updateButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/Stopwatch;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/Stopwatch;)V
    .locals 0
    .parameter

    .prologue
    .line 561
    iput-object p1, p0, Lcom/htc/android/worldclock/Stopwatch$10;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const-wide/16 v8, 0x64

    .line 564
    iget-object v4, p0, Lcom/htc/android/worldclock/Stopwatch$10;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    const/4 v5, 0x1

    #setter for: Lcom/htc/android/worldclock/Stopwatch;->mState:I
    invoke-static {v4, v5}, Lcom/htc/android/worldclock/Stopwatch;->access$802(Lcom/htc/android/worldclock/Stopwatch;I)I

    .line 566
    iget-object v4, p0, Lcom/htc/android/worldclock/Stopwatch$10;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    #getter for: Lcom/htc/android/worldclock/Stopwatch;->mPauseStart:J
    invoke-static {v4}, Lcom/htc/android/worldclock/Stopwatch;->access$1700(Lcom/htc/android/worldclock/Stopwatch;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/htc/android/worldclock/Stopwatch$10;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    #getter for: Lcom/htc/android/worldclock/Stopwatch;->mStart:J
    invoke-static {v6}, Lcom/htc/android/worldclock/Stopwatch;->access$900(Lcom/htc/android/worldclock/Stopwatch;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    rem-long/2addr v4, v8

    sub-long v0, v8, v4

    .line 567
    .local v0, delay:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 569
    .local v2, now:J
    iget-object v4, p0, Lcom/htc/android/worldclock/Stopwatch$10;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    iget-object v5, p0, Lcom/htc/android/worldclock/Stopwatch$10;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    #getter for: Lcom/htc/android/worldclock/Stopwatch;->mPauseStart:J
    invoke-static {v5}, Lcom/htc/android/worldclock/Stopwatch;->access$1700(Lcom/htc/android/worldclock/Stopwatch;)J

    move-result-wide v5

    sub-long v5, v2, v5

    long-to-int v5, v5

    int-to-long v5, v5

    invoke-static {v4, v5, v6}, Lcom/htc/android/worldclock/Stopwatch;->access$914(Lcom/htc/android/worldclock/Stopwatch;J)J

    .line 570
    iget-object v4, p0, Lcom/htc/android/worldclock/Stopwatch$10;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    iget-object v5, p0, Lcom/htc/android/worldclock/Stopwatch$10;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    #getter for: Lcom/htc/android/worldclock/Stopwatch;->mStart:J
    invoke-static {v5}, Lcom/htc/android/worldclock/Stopwatch;->access$900(Lcom/htc/android/worldclock/Stopwatch;)J

    move-result-wide v5

    sub-long v5, v2, v5

    #setter for: Lcom/htc/android/worldclock/Stopwatch;->mProgress:J
    invoke-static {v4, v5, v6}, Lcom/htc/android/worldclock/Stopwatch;->access$1102(Lcom/htc/android/worldclock/Stopwatch;J)J

    .line 572
    iget-object v4, p0, Lcom/htc/android/worldclock/Stopwatch$10;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    iget-object v5, p0, Lcom/htc/android/worldclock/Stopwatch$10;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    #getter for: Lcom/htc/android/worldclock/Stopwatch;->mLapPauseStart:J
    invoke-static {v5}, Lcom/htc/android/worldclock/Stopwatch;->access$1600(Lcom/htc/android/worldclock/Stopwatch;)J

    move-result-wide v5

    sub-long v5, v2, v5

    long-to-int v5, v5

    int-to-long v5, v5

    invoke-static {v4, v5, v6}, Lcom/htc/android/worldclock/Stopwatch;->access$414(Lcom/htc/android/worldclock/Stopwatch;J)J

    .line 573
    iget-object v4, p0, Lcom/htc/android/worldclock/Stopwatch$10;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    iget-object v5, p0, Lcom/htc/android/worldclock/Stopwatch$10;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    #getter for: Lcom/htc/android/worldclock/Stopwatch;->mLapStart:J
    invoke-static {v5}, Lcom/htc/android/worldclock/Stopwatch;->access$400(Lcom/htc/android/worldclock/Stopwatch;)J

    move-result-wide v5

    sub-long v5, v2, v5

    #setter for: Lcom/htc/android/worldclock/Stopwatch;->mLapProgress:J
    invoke-static {v4, v5, v6}, Lcom/htc/android/worldclock/Stopwatch;->access$1002(Lcom/htc/android/worldclock/Stopwatch;J)J

    .line 574
    iget-object v4, p0, Lcom/htc/android/worldclock/Stopwatch$10;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    invoke-virtual {v4}, Lcom/htc/android/worldclock/Stopwatch;->updateButton()V

    .line 575
    iget-object v4, p0, Lcom/htc/android/worldclock/Stopwatch$10;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    #calls: Lcom/htc/android/worldclock/Stopwatch;->makeTask(J)V
    invoke-static {v4, v0, v1}, Lcom/htc/android/worldclock/Stopwatch;->access$700(Lcom/htc/android/worldclock/Stopwatch;J)V

    .line 576
    iget-object v4, p0, Lcom/htc/android/worldclock/Stopwatch$10;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    #calls: Lcom/htc/android/worldclock/Stopwatch;->acquireWakeLock()V
    invoke-static {v4}, Lcom/htc/android/worldclock/Stopwatch;->access$1200(Lcom/htc/android/worldclock/Stopwatch;)V

    .line 577
    return-void
.end method
