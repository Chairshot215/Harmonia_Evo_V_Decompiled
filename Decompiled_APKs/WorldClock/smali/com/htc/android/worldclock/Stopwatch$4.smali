.class Lcom/htc/android/worldclock/Stopwatch$4;
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
    .line 462
    iput-object p1, p0, Lcom/htc/android/worldclock/Stopwatch$4;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const-wide/16 v4, 0x0

    .line 465
    iget-object v0, p0, Lcom/htc/android/worldclock/Stopwatch$4;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    const/4 v1, 0x1

    #setter for: Lcom/htc/android/worldclock/Stopwatch;->mState:I
    invoke-static {v0, v1}, Lcom/htc/android/worldclock/Stopwatch;->access$802(Lcom/htc/android/worldclock/Stopwatch;I)I

    .line 466
    iget-object v0, p0, Lcom/htc/android/worldclock/Stopwatch$4;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    iget-object v1, p0, Lcom/htc/android/worldclock/Stopwatch$4;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    #setter for: Lcom/htc/android/worldclock/Stopwatch;->mStart:J
    invoke-static {v1, v2, v3}, Lcom/htc/android/worldclock/Stopwatch;->access$902(Lcom/htc/android/worldclock/Stopwatch;J)J

    move-result-wide v1

    #setter for: Lcom/htc/android/worldclock/Stopwatch;->mLapStart:J
    invoke-static {v0, v1, v2}, Lcom/htc/android/worldclock/Stopwatch;->access$402(Lcom/htc/android/worldclock/Stopwatch;J)J

    .line 467
    iget-object v0, p0, Lcom/htc/android/worldclock/Stopwatch$4;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    iget-object v1, p0, Lcom/htc/android/worldclock/Stopwatch$4;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    #setter for: Lcom/htc/android/worldclock/Stopwatch;->mProgress:J
    invoke-static {v1, v4, v5}, Lcom/htc/android/worldclock/Stopwatch;->access$1102(Lcom/htc/android/worldclock/Stopwatch;J)J

    move-result-wide v1

    #setter for: Lcom/htc/android/worldclock/Stopwatch;->mLapProgress:J
    invoke-static {v0, v1, v2}, Lcom/htc/android/worldclock/Stopwatch;->access$1002(Lcom/htc/android/worldclock/Stopwatch;J)J

    .line 468
    iget-object v0, p0, Lcom/htc/android/worldclock/Stopwatch$4;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/Stopwatch;->updateButton()V

    .line 469
    iget-object v0, p0, Lcom/htc/android/worldclock/Stopwatch$4;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    #calls: Lcom/htc/android/worldclock/Stopwatch;->makeTask(J)V
    invoke-static {v0, v4, v5}, Lcom/htc/android/worldclock/Stopwatch;->access$700(Lcom/htc/android/worldclock/Stopwatch;J)V

    .line 470
    iget-object v0, p0, Lcom/htc/android/worldclock/Stopwatch$4;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    #calls: Lcom/htc/android/worldclock/Stopwatch;->acquireWakeLock()V
    invoke-static {v0}, Lcom/htc/android/worldclock/Stopwatch;->access$1200(Lcom/htc/android/worldclock/Stopwatch;)V

    .line 471
    return-void
.end method
