.class public Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;
.super Ljava/lang/Object;
.source "PhotoCache.java"


# static fields
.field private static final CACHE_RESERVED_RATIO:F = 0.7f

.field private static final LOG_TAG:Ljava/lang/String; = "TMUS_PhotoCache"

.field private static final PRESERVED_BLOCKS:I = 0xa


# instance fields
.field private final CACHE_RESERVED_SIZE:J

.field mCacheFile:Ljava/io/File;

.field mCachePath:Ljava/lang/String;

.field mCacheSize:J

.field mCurrentCacheSize:J

.field private modifiedTimeAscendingComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 4
    .parameter "cachepath"
    .parameter "size"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache$1;

    invoke-direct {v0, p0}, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache$1;-><init>(Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;)V

    iput-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->modifiedTimeAscendingComparator:Ljava/util/Comparator;

    .line 31
    iput-object p1, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->mCachePath:Ljava/lang/String;

    .line 32
    iput-wide p2, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->mCacheSize:J

    .line 34
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->mCachePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->mCacheFile:Ljava/io/File;

    .line 35
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->mCacheFile:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->GetFileSize(Ljava/io/File;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->mCurrentCacheSize:J

    .line 37
    iget-wide v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->mCacheSize:J

    long-to-float v0, v0

    const v1, 0x3f333333

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->CACHE_RESERVED_SIZE:J

    .line 39
    iget-wide v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->mCacheSize:J

    iget-wide v2, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->mCurrentCacheSize:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 40
    iget-wide v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->CACHE_RESERVED_SIZE:J

    invoke-direct {p0, v0, v1}, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->reduceCacheSize(J)V

    .line 41
    :cond_0
    return-void
.end method

.method private GetFileSize(Ljava/io/File;)J
    .locals 10
    .parameter "file"

    .prologue
    const-wide/16 v7, 0x0

    .line 53
    const-wide/16 v5, 0x0

    .line 55
    .local v5, size:J
    if-nez p1, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-wide v7

    .line 57
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 58
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v7

    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 63
    .local v2, files:[Ljava/io/File;
    if-eqz v2, :cond_0

    .line 66
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    .line 67
    .local v1, currentFile:Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->GetFileSize(Ljava/io/File;)J

    move-result-wide v7

    add-long/2addr v5, v7

    .line 66
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v1           #currentFile:Ljava/io/File;
    :cond_3
    move-wide v7, v5

    .line 69
    goto :goto_0
.end method

.method private declared-synchronized ensureCacheSize(J)V
    .locals 8
    .parameter "ecpectedFileSize"

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->getFsFreeSpace()J

    move-result-wide v2

    .line 168
    .local v2, freeSpace:J
    invoke-direct {p0}, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->getAvailSize()J

    move-result-wide v0

    .line 169
    .local v0, cacheAvail:J
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 171
    .local v4, realAvailSize:J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    cmp-long v6, v4, p1

    if-lez v6, :cond_0

    .line 176
    :goto_0
    monitor-exit p0

    return-void

    .line 175
    :cond_0
    :try_start_1
    iget-wide v6, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->CACHE_RESERVED_SIZE:J

    invoke-direct {p0, v6, v7}, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->reduceCacheSize(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 167
    .end local v0           #cacheAvail:J
    .end local v2           #freeSpace:J
    .end local v4           #realAvailSize:J
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method private getAvailSize()J
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 146
    iget-wide v4, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->mCacheSize:J

    iget-wide v6, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->mCurrentCacheSize:J

    sub-long v0, v4, v6

    .line 148
    .local v0, availSize:J
    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    .line 151
    .end local v0           #availSize:J
    :cond_0
    return-wide v0
.end method

.method private getFsFreeSpace()J
    .locals 4

    .prologue
    .line 155
    new-instance v1, Landroid/os/StatFs;

    iget-object v2, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->mCachePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 156
    .local v1, data_partition:Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    .line 159
    .local v0, blocks:I
    const/16 v2, 0xa

    if-le v2, v0, :cond_0

    .line 160
    const-wide/16 v2, 0x0

    .line 162
    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    mul-int/2addr v2, v0

    int-to-long v2, v2

    goto :goto_0
.end method

.method private declared-synchronized increaseCurrentSize(J)V
    .locals 2
    .parameter "addSize"

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->mCurrentCacheSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->mCurrentCacheSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    monitor-exit p0

    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private reduceCacheSize(J)V
    .locals 27
    .parameter "limitSize"

    .prologue
    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 76
    .local v18, start:J
    const/4 v5, 0x0

    .line 77
    .local v5, deletedCount:I
    const-wide/16 v6, 0x0

    .line 78
    .local v6, deletedSize:J
    const-wide/16 v20, 0x0

    .line 82
    .local v20, totalSize:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->mCacheFile:Ljava/io/File;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    .line 84
    .local v10, files:[Ljava/io/File;
    if-eqz v10, :cond_5

    .line 85
    move-object v3, v10

    .local v3, arr$:[Ljava/io/File;
    array-length v12, v3

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_0
    if-ge v11, v12, :cond_0

    aget-object v4, v3, v11

    .line 86
    .local v4, currentFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v22

    add-long v20, v20, v22

    .line 85
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 88
    .end local v4           #currentFile:Ljava/io/File;
    :cond_0
    const-string v22, "TMUS_PhotoCache"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Need to clear cache. Cache size before clear: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->mCurrentCacheSize:J

    move-wide/from16 v22, v0

    cmp-long v22, v20, v22

    if-eqz v22, :cond_1

    .line 93
    const-string v22, "TMUS_PhotoCache"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "mCurrentCacheSize="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->mCurrentCacheSize:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->mCurrentCacheSize:J

    .line 100
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->modifiedTimeAscendingComparator:Ljava/util/Comparator;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v10, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 102
    move-object v3, v10

    array-length v12, v3

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v12, :cond_2

    aget-object v4, v3, v11

    .line 104
    .restart local v4       #currentFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v13

    .line 105
    .local v13, length:J
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    add-long/2addr v6, v13

    .line 108
    add-int/lit8 v5, v5, 0x1

    .line 110
    sub-long v22, v20, v6

    cmp-long v22, v22, p1

    if-gez v22, :cond_4

    .line 126
    .end local v3           #arr$:[Ljava/io/File;
    .end local v4           #currentFile:Ljava/io/File;
    .end local v11           #i$:I
    .end local v12           #len$:I
    .end local v13           #length:J
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->mCurrentCacheSize:J

    move-wide/from16 v22, v0

    sub-long v22, v22, v6

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->mCurrentCacheSize:J

    .line 127
    const-wide/16 v22, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->mCurrentCacheSize:J

    move-wide/from16 v24, v0

    cmp-long v22, v22, v24

    if-lez v22, :cond_3

    .line 128
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->mCurrentCacheSize:J

    .line 130
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 131
    .local v8, end:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->mCacheSize:J

    move-wide/from16 v22, v0

    sub-long v24, v20, v6

    sub-long v15, v22, v24

    .line 133
    .local v15, realAvail:J
    const-string v22, "TMUS_PhotoCache"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Finish clear cache. duration: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sub-long v24, v8, v18

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v22, "TMUS_PhotoCache"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->mCachePath:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " delete "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " files, deleted size: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " , realAvail: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " , currentFilesSize: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->mCurrentCacheSize:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .end local v10           #files:[Ljava/io/File;
    :goto_3
    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void

    .line 102
    .end local v8           #end:J
    .end local v15           #realAvail:J
    .restart local v3       #arr$:[Ljava/io/File;
    .restart local v4       #currentFile:Ljava/io/File;
    .restart local v10       #files:[Ljava/io/File;
    .restart local v11       #i$:I
    .restart local v12       #len$:I
    .restart local v13       #length:J
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 116
    .end local v3           #arr$:[Ljava/io/File;
    .end local v4           #currentFile:Ljava/io/File;
    .end local v11           #i$:I
    .end local v12           #len$:I
    .end local v13           #length:J
    :cond_5
    :try_start_1
    const-string v22, "TMUS_PhotoCache"

    const-string v23, "Failed to list file in reduceCacheSize()"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 119
    .end local v10           #files:[Ljava/io/File;
    :catch_0
    move-exception v17

    .line 121
    .local v17, se:Ljava/lang/SecurityException;
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/lang/SecurityException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->mCurrentCacheSize:J

    move-wide/from16 v22, v0

    sub-long v22, v22, v6

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->mCurrentCacheSize:J

    .line 127
    const-wide/16 v22, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->mCurrentCacheSize:J

    move-wide/from16 v24, v0

    cmp-long v22, v22, v24

    if-lez v22, :cond_6

    .line 128
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->mCurrentCacheSize:J

    .line 130
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 131
    .restart local v8       #end:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->mCacheSize:J

    move-wide/from16 v22, v0

    sub-long v24, v20, v6

    sub-long v15, v22, v24

    .line 133
    .restart local v15       #realAvail:J
    const-string v22, "TMUS_PhotoCache"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Finish clear cache. duration: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sub-long v24, v8, v18

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v22, "TMUS_PhotoCache"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->mCachePath:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " delete "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " files, deleted size: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " , realAvail: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " , currentFilesSize: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->mCurrentCacheSize:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_3

    .line 126
    .end local v8           #end:J
    .end local v15           #realAvail:J
    .end local v17           #se:Ljava/lang/SecurityException;
    :catchall_0
    move-exception v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->mCurrentCacheSize:J

    move-wide/from16 v23, v0

    sub-long v23, v23, v6

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->mCurrentCacheSize:J

    .line 127
    const-wide/16 v23, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->mCurrentCacheSize:J

    move-wide/from16 v25, v0

    cmp-long v23, v23, v25

    if-lez v23, :cond_7

    .line 128
    const-wide/16 v23, 0x0

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->mCurrentCacheSize:J

    .line 130
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 131
    .restart local v8       #end:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->mCacheSize:J

    move-wide/from16 v23, v0

    sub-long v25, v20, v6

    sub-long v15, v23, v25

    .line 133
    .restart local v15       #realAvail:J
    const-string v23, "TMUS_PhotoCache"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Finish clear cache. duration: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sub-long v25, v8, v18

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v23, "TMUS_PhotoCache"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->mCachePath:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " delete "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " files, deleted size: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " , realAvail: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " , currentFilesSize: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->mCurrentCacheSize:J

    move-wide/from16 v25, v0

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    throw v22
.end method


# virtual methods
.method public GetCachePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->mCachePath:Ljava/lang/String;

    return-object v0
.end method

.method public WriteToCache(J)V
    .locals 0
    .parameter "size"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->ensureCacheSize(J)V

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;->increaseCurrentSize(J)V

    .line 46
    return-void
.end method
