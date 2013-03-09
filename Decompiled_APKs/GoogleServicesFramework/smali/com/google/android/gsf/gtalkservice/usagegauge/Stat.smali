.class public Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;
.super Ljava/lang/Object;
.source "Stat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gtalkservice/usagegauge/Stat$1;,
        Lcom/google/android/gsf/gtalkservice/usagegauge/Stat$Slot;
    }
.end annotation


# instance fields
.field private current:I

.field private interval:J

.field private slotMillis:J

.field private final slots:[Lcom/google/android/gsf/gtalkservice/usagegauge/Stat$Slot;


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .parameter "interval"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/16 v0, 0x1e

    new-array v0, v0, [Lcom/google/android/gsf/gtalkservice/usagegauge/Stat$Slot;

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;->slots:[Lcom/google/android/gsf/gtalkservice/usagegauge/Stat$Slot;

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;->setInterval(J)V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;->current:I

    .line 55
    return-void
.end method

.method private getSlot()Lcom/google/android/gsf/gtalkservice/usagegauge/Stat$Slot;
    .locals 4

    .prologue
    .line 138
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;->slots:[Lcom/google/android/gsf/gtalkservice/usagegauge/Stat$Slot;

    iget v2, p0, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;->current:I

    aget-object v0, v1, v2

    .line 139
    .local v0, s:Lcom/google/android/gsf/gtalkservice/usagegauge/Stat$Slot;
    if-nez v0, :cond_0

    .line 140
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;->slots:[Lcom/google/android/gsf/gtalkservice/usagegauge/Stat$Slot;

    iget v2, p0, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;->current:I

    new-instance v0, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat$Slot;

    .end local v0           #s:Lcom/google/android/gsf/gtalkservice/usagegauge/Stat$Slot;
    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat$Slot;-><init>(Lcom/google/android/gsf/gtalkservice/usagegauge/Stat$1;)V

    aput-object v0, v1, v2

    .line 142
    :cond_0
    return-object v0
.end method

.method private getSlotBoundary(J)J
    .locals 4
    .parameter "time"

    .prologue
    .line 146
    iget-wide v0, p0, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;->slotMillis:J

    div-long v0, p1, v0

    iget-wide v2, p0, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;->slotMillis:J

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;->slotMillis:J

    add-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public get()J
    .locals 2

    .prologue
    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;->get(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized get(J)J
    .locals 11
    .parameter "now"

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;->getSlotBoundary(J)J

    move-result-wide v7

    iget-wide v9, p0, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;->interval:J

    sub-long v3, v7, v9

    .line 93
    .local v3, start:J
    const-wide/16 v5, 0x0

    .line 94
    .local v5, sum:J
    iget v1, p0, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;->current:I

    .line 95
    .local v1, index:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v7, 0x1e

    if-ge v0, v7, :cond_0

    .line 96
    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;->slots:[Lcom/google/android/gsf/gtalkservice/usagegauge/Stat$Slot;

    aget-object v2, v7, v1

    .line 97
    .local v2, slot:Lcom/google/android/gsf/gtalkservice/usagegauge/Stat$Slot;
    if-eqz v2, :cond_0

    iget-wide v7, v2, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat$Slot;->end:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v7, v7, v3

    if-gtz v7, :cond_1

    .line 106
    .end local v2           #slot:Lcom/google/android/gsf/gtalkservice/usagegauge/Stat$Slot;
    :cond_0
    monitor-exit p0

    return-wide v5

    .line 100
    .restart local v2       #slot:Lcom/google/android/gsf/gtalkservice/usagegauge/Stat$Slot;
    :cond_1
    :try_start_1
    iget-wide v7, v2, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat$Slot;->count:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-long/2addr v5, v7

    .line 101
    if-nez v1, :cond_2

    .line 102
    const/16 v1, 0x1e

    .line 104
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    .end local v0           #i:I
    .end local v1           #index:I
    .end local v2           #slot:Lcom/google/android/gsf/gtalkservice/usagegauge/Stat$Slot;
    .end local v3           #start:J
    .end local v5           #sum:J
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public incBy(J)V
    .locals 2
    .parameter "amount"

    .prologue
    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;->incBy(JJ)V

    .line 116
    return-void
.end method

.method public declared-synchronized incBy(JJ)V
    .locals 3
    .parameter "amount"
    .parameter "now"

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;->getSlot()Lcom/google/android/gsf/gtalkservice/usagegauge/Stat$Slot;

    move-result-object v0

    .line 125
    .local v0, slot:Lcom/google/android/gsf/gtalkservice/usagegauge/Stat$Slot;
    iget-wide v1, v0, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat$Slot;->end:J

    cmp-long v1, p3, v1

    if-ltz v1, :cond_1

    .line 126
    iget v1, p0, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;->current:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;->current:I

    .line 127
    iget v1, p0, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;->current:I

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_0

    .line 128
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;->current:I

    .line 130
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;->getSlot()Lcom/google/android/gsf/gtalkservice/usagegauge/Stat$Slot;

    move-result-object v0

    .line 131
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat$Slot;->count:J

    .line 132
    invoke-direct {p0, p3, p4}, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;->getSlotBoundary(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat$Slot;->end:J

    .line 134
    :cond_1
    iget-wide v1, v0, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat$Slot;->count:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat$Slot;->count:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    monitor-exit p0

    return-void

    .line 124
    .end local v0           #slot:Lcom/google/android/gsf/gtalkservice/usagegauge/Stat$Slot;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setInterval(J)V
    .locals 2
    .parameter "interval"

    .prologue
    .line 70
    iput-wide p1, p0, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;->interval:J

    .line 71
    const-wide/16 v0, 0x1e

    div-long v0, p1, v0

    iput-wide v0, p0, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;->slotMillis:J

    .line 72
    return-void
.end method
