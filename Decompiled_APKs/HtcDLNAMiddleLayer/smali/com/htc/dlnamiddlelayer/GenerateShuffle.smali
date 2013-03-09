.class public Lcom/htc/dlnamiddlelayer/GenerateShuffle;
.super Ljava/lang/Thread;
.source "GenerateShuffle.java"


# instance fields
.field private bCancel:Z

.field private bInit:Z

.field private bStart:Z

.field private bStop:Z

.field private mCaller:Lcom/htc/dlnamiddlelayer/PlaylistBase;

.field private mLock:Ljava/lang/Object;

.field private nNewValue:I

.field private nOldValue:I

.field private shuffleArray:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 9
    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->shuffleArray:[I

    .line 10
    iput-boolean v0, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->bInit:Z

    .line 11
    iput v0, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->nNewValue:I

    .line 12
    iput v0, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->nOldValue:I

    .line 14
    iput-boolean v0, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->bStop:Z

    .line 15
    iput-boolean v0, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->bCancel:Z

    .line 17
    iput-boolean v0, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->bStart:Z

    .line 19
    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->mCaller:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->bCancel:Z

    if-nez v0, :cond_0

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->bCancel:Z

    .line 131
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "GenShuflle is cancel..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    return-void
.end method

.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 52
    :goto_0
    iget-boolean v7, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->bStop:Z

    if-nez v7, :cond_8

    .line 54
    const/4 v0, 0x0

    .line 56
    .local v0, bIsSwitchFirstValue:Z
    iget-object v7, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->shuffleArray:[I

    if-nez v7, :cond_0

    .line 124
    .end local v0           #bIsSwitchFirstValue:Z
    :goto_1
    return-void

    .line 59
    .restart local v0       #bIsSwitchFirstValue:Z
    :cond_0
    iget-boolean v7, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->bInit:Z

    if-eqz v7, :cond_1

    .line 61
    const/4 v2, 0x1

    .local v2, i:I
    :goto_2
    iget-object v7, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->shuffleArray:[I

    array-length v7, v7

    if-ge v2, v7, :cond_1

    .line 62
    iget-object v7, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->shuffleArray:[I

    aput v2, v7, v2

    .line 61
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 65
    .end local v2           #i:I
    :cond_1
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    .line 66
    .local v5, random:Ljava/util/Random;
    iget-object v8, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 68
    :try_start_0
    iget-object v7, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->shuffleArray:[I

    array-length v2, v7

    .restart local v2       #i:I
    :goto_3
    if-le v2, v11, :cond_5

    iget-boolean v7, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->bCancel:Z

    if-nez v7, :cond_5

    iget-boolean v7, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->bStop:Z

    if-nez v7, :cond_5

    .line 70
    const/4 v3, 0x0

    .line 71
    .local v3, j:I
    :goto_4
    if-nez v3, :cond_2

    .line 73
    invoke-virtual {v5, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    goto :goto_4

    .line 76
    :cond_2
    add-int/lit8 v4, v2, -0x1

    .line 78
    .local v4, k:I
    iget-object v7, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->shuffleArray:[I

    aget v6, v7, v3

    .line 79
    .local v6, tmp:I
    iget-object v7, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->shuffleArray:[I

    iget-object v9, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->shuffleArray:[I

    aget v9, v9, v4

    aput v9, v7, v3

    .line 80
    iget-object v7, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->shuffleArray:[I

    aput v6, v7, v4

    .line 82
    if-eqz v0, :cond_4

    .line 68
    :cond_3
    :goto_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 86
    :cond_4
    iget-object v7, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->shuffleArray:[I

    aget v7, v7, v4

    iget-object v9, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->shuffleArray:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    if-ne v7, v9, :cond_3

    .line 88
    iget-object v7, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->shuffleArray:[I

    iget v9, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->nOldValue:I

    aput v9, v7, v4

    .line 89
    const/4 v0, 0x1

    goto :goto_5

    .line 93
    .end local v3           #j:I
    .end local v4           #k:I
    .end local v6           #tmp:I
    :cond_5
    if-nez v0, :cond_6

    .line 96
    iget-object v7, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->shuffleArray:[I

    const/4 v9, 0x0

    iget v10, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->nOldValue:I

    aput v10, v7, v9

    .line 98
    :cond_6
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    iget-boolean v7, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->bCancel:Z

    if-nez v7, :cond_7

    iget-boolean v7, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->bStop:Z

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->mCaller:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    if-eqz v7, :cond_7

    .line 107
    iget-object v7, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->mCaller:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-virtual {v7}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->notifyShuffleGenerated()V

    .line 110
    :cond_7
    monitor-enter p0

    .line 113
    :try_start_1
    iget-boolean v7, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->bStop:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v7, :cond_9

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 123
    .end local v0           #bIsSwitchFirstValue:Z
    .end local v2           #i:I
    .end local v5           #random:Ljava/util/Random;
    :cond_8
    const-string v7, "DLNAMiddlelayer"

    const-string v8, "GenShuffle exit"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 98
    .restart local v0       #bIsSwitchFirstValue:Z
    .restart local v5       #random:Ljava/util/Random;
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7

    .line 114
    .restart local v2       #i:I
    :cond_9
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 120
    :goto_6
    :try_start_5
    monitor-exit p0

    goto/16 :goto_0

    :catchall_1
    move-exception v7

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v7

    .line 116
    :catch_0
    move-exception v1

    .line 118
    .local v1, ex:Ljava/lang/InterruptedException;
    const/4 v7, 0x1

    :try_start_6
    iput-boolean v7, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->bStop:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_6
.end method

.method public setShuffleArray([IZILcom/htc/dlnamiddlelayer/PlaylistBase;)V
    .locals 4
    .parameter "array"
    .parameter "init"
    .parameter "firstValue"
    .parameter "aCaller"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->shuffleArray:[I

    .line 26
    iput-boolean p2, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->bInit:Z

    .line 27
    iput p3, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->nNewValue:I

    .line 28
    iput-object p4, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->mCaller:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    .line 31
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 33
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->bInit:Z

    if-eqz v0, :cond_0

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->nOldValue:I

    .line 37
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->shuffleArray:[I

    const/4 v2, 0x0

    iget v3, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->nNewValue:I

    aput v3, v0, v2

    .line 45
    :goto_0
    monitor-exit v1

    .line 48
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->shuffleArray:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    iput v0, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->nOldValue:I

    .line 43
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->shuffleArray:[I

    const/4 v2, 0x0

    iget v3, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->nNewValue:I

    aput v3, v0, v2

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startThread()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 149
    iput-boolean v1, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->bCancel:Z

    .line 151
    iget-boolean v0, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->bStart:Z

    if-nez v0, :cond_0

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->bStart:Z

    .line 154
    iput-boolean v1, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->bStop:Z

    .line 155
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->start()V

    .line 165
    :goto_0
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "GenShuflle start..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void

    .line 159
    :cond_0
    monitor-enter p0

    .line 161
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 162
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopThread()V
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->bStop:Z

    if-nez v0, :cond_0

    .line 139
    monitor-enter p0

    .line 141
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->bStop:Z

    .line 142
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 143
    monitor-exit p0

    .line 145
    :cond_0
    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
