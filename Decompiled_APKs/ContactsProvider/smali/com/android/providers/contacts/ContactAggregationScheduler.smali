.class public Lcom/android/providers/contacts/ContactAggregationScheduler;
.super Ljava/lang/Object;
.source "ContactAggregationScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/ContactAggregationScheduler$Aggregator;
    }
.end annotation


# static fields
.field public static final AGGREGATION_DELAY:I = 0x3e8

.field public static final DELAYED_EXECUTION_TIMEOUT:I = 0x1f4

.field public static final MAX_AGGREGATION_DELAY:I = 0x2710

.field private static final START_AGGREGATION_MESSAGE_ID:I = 0x1

.field public static final STATUS_INTERRUPTED:I = 0x3

.field public static final STATUS_RUNNING:I = 0x2

.field public static final STATUS_SCHEDULED:I = 0x1

.field public static final STATUS_STAND_BY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ContactAggregator"


# instance fields
.field private mAggregator:Lcom/android/providers/contacts/ContactAggregationScheduler$Aggregator;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mInitialRequestTimestamp:J

.field private mLastAggregationEndedTimestamp:J

.field private mMessageHandler:Landroid/os/Handler;

.field private mRescheduleWhenComplete:Z

.field private mStatus:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/contacts/ContactAggregationScheduler;->mStatus:I

    return-void
.end method


# virtual methods
.method currentTime()J
    .locals 2

    .prologue
    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 173
    monitor-enter p0

    .line 174
    const/4 v0, 0x2

    :try_start_0
    iput v0, p0, Lcom/android/providers/contacts/ContactAggregationScheduler;->mStatus:I

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactAggregationScheduler;->mRescheduleWhenComplete:Z

    .line 176
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :try_start_1
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregationScheduler;->mAggregator:Lcom/android/providers/contacts/ContactAggregationScheduler$Aggregator;

    invoke-interface {v0}, Lcom/android/providers/contacts/ContactAggregationScheduler$Aggregator;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 180
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactAggregationScheduler;->currentTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/ContactAggregationScheduler;->mLastAggregationEndedTimestamp:J

    .line 181
    monitor-enter p0

    .line 182
    :try_start_2
    iget v0, p0, Lcom/android/providers/contacts/ContactAggregationScheduler;->mStatus:I

    if-ne v0, v3, :cond_0

    .line 183
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/contacts/ContactAggregationScheduler;->mStatus:I

    .line 185
    :cond_0
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactAggregationScheduler;->mRescheduleWhenComplete:Z

    if-eqz v0, :cond_1

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactAggregationScheduler;->mRescheduleWhenComplete:Z

    .line 187
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactAggregationScheduler;->schedule()V

    .line 191
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 193
    return-void

    .line 176
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 189
    :cond_1
    :try_start_4
    const-string v0, "ContactAggregator"

    const-string v1, "No more aggregation requests"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 191
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 180
    :catchall_2
    move-exception v0

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactAggregationScheduler;->currentTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/providers/contacts/ContactAggregationScheduler;->mLastAggregationEndedTimestamp:J

    .line 181
    monitor-enter p0

    .line 182
    :try_start_5
    iget v1, p0, Lcom/android/providers/contacts/ContactAggregationScheduler;->mStatus:I

    if-ne v1, v3, :cond_2

    .line 183
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/providers/contacts/ContactAggregationScheduler;->mStatus:I

    .line 185
    :cond_2
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactAggregationScheduler;->mRescheduleWhenComplete:Z

    if-eqz v1, :cond_3

    .line 186
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/providers/contacts/ContactAggregationScheduler;->mRescheduleWhenComplete:Z

    .line 187
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactAggregationScheduler;->schedule()V

    .line 191
    :goto_1
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    .line 189
    :cond_3
    :try_start_6
    const-string v1, "ContactAggregator"

    const-string v2, "No more aggregation requests"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 191
    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0
.end method

.method runDelayed()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 207
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregationScheduler;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 210
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregationScheduler;->mMessageHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 212
    return-void
.end method

.method runNow()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 198
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregationScheduler;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 201
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregationScheduler;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 202
    return-void
.end method

.method public declared-synchronized schedule()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x2710

    .line 120
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/providers/contacts/ContactAggregationScheduler;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 167
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 123
    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactAggregationScheduler;->currentTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/ContactAggregationScheduler;->mInitialRequestTimestamp:J

    .line 124
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/providers/contacts/ContactAggregationScheduler;->mStatus:I

    .line 125
    iget-wide v0, p0, Lcom/android/providers/contacts/ContactAggregationScheduler;->mInitialRequestTimestamp:J

    iget-wide v2, p0, Lcom/android/providers/contacts/ContactAggregationScheduler;->mLastAggregationEndedTimestamp:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactAggregationScheduler;->runDelayed()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 129
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactAggregationScheduler;->runNow()V

    goto :goto_0

    .line 139
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/providers/contacts/ContactAggregationScheduler;->mStatus:I

    .line 140
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactAggregationScheduler;->runDelayed()V

    goto :goto_0

    .line 148
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactAggregationScheduler;->currentTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/providers/contacts/ContactAggregationScheduler;->mInitialRequestTimestamp:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactAggregationScheduler;->runDelayed()V

    goto :goto_0

    .line 158
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactAggregationScheduler;->currentTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/providers/contacts/ContactAggregationScheduler;->mInitialRequestTimestamp:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-gez v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregationScheduler;->mAggregator:Lcom/android/providers/contacts/ContactAggregationScheduler$Aggregator;

    invoke-interface {v0}, Lcom/android/providers/contacts/ContactAggregationScheduler$Aggregator;->interrupt()V

    .line 160
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/providers/contacts/ContactAggregationScheduler;->mStatus:I

    .line 163
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactAggregationScheduler;->mRescheduleWhenComplete:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public setAggregator(Lcom/android/providers/contacts/ContactAggregationScheduler$Aggregator;)V
    .locals 0
    .parameter "aggregator"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/providers/contacts/ContactAggregationScheduler;->mAggregator:Lcom/android/providers/contacts/ContactAggregationScheduler$Aggregator;

    .line 86
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 89
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ContactAggregator"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactAggregationScheduler;->mHandlerThread:Landroid/os/HandlerThread;

    .line 90
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregationScheduler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 91
    new-instance v0, Lcom/android/providers/contacts/ContactAggregationScheduler$1;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregationScheduler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/providers/contacts/ContactAggregationScheduler$1;-><init>(Lcom/android/providers/contacts/ContactAggregationScheduler;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactAggregationScheduler;->mMessageHandler:Landroid/os/Handler;

    .line 105
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 108
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregationScheduler;->mAggregator:Lcom/android/providers/contacts/ContactAggregationScheduler$Aggregator;

    invoke-interface {v1}, Lcom/android/providers/contacts/ContactAggregationScheduler$Aggregator;->interrupt()V

    .line 109
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregationScheduler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 110
    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 113
    :cond_0
    return-void
.end method
