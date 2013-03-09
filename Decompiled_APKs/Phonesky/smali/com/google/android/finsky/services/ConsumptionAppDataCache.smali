.class public Lcom/google/android/finsky/services/ConsumptionAppDataCache;
.super Ljava/lang/Object;
.source "ConsumptionAppDataCache.java"


# static fields
.field private static final CACHE_FILE_PREFIX:Ljava/lang/String;

.field static final DATE_FORMAT:Ljava/text/DateFormat;

.field private static mInstance:Lcom/google/android/finsky/services/ConsumptionAppDataCache;


# instance fields
.field private mConsumptionAppData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/services/ConsumptionAppDoc;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDataLoadState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/google/android/finsky/services/ConsumptionAppDataCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->CACHE_FILE_PREFIX:Ljava/lang/String;

    .line 47
    invoke-static {}, Ljava/text/SimpleDateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->DATE_FORMAT:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->mHandler:Landroid/os/Handler;

    .line 50
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->mConsumptionAppData:Landroid/util/SparseArray;

    .line 54
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->mDataLoadState:Landroid/util/SparseArray;

    return-void
.end method

.method public static get()Lcom/google/android/finsky/services/ConsumptionAppDataCache;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->mInstance:Lcom/google/android/finsky/services/ConsumptionAppDataCache;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/google/android/finsky/services/ConsumptionAppDataCache;

    invoke-direct {v0}, Lcom/google/android/finsky/services/ConsumptionAppDataCache;-><init>()V

    sput-object v0, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->mInstance:Lcom/google/android/finsky/services/ConsumptionAppDataCache;

    .line 63
    :cond_0
    sget-object v0, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->mInstance:Lcom/google/android/finsky/services/ConsumptionAppDataCache;

    return-object v0
.end method

.method public static getCacheFile(Landroid/content/Context;I)Ljava/io/File;
    .locals 4
    .parameter "context"
    .parameter "backend"

    .prologue
    .line 283
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "consumption"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 284
    .local v0, cacheDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 285
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->CACHE_FILE_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private getDataStateForBackend(I)I
    .locals 1
    .parameter "backendId"

    .prologue
    .line 86
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 87
    iget-object v0, p0, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->mDataLoadState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->mDataLoadState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method filter(Ljava/util/List;I)V
    .locals 25
    .parameter
    .parameter "backendId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, data:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    sget-object v21, Lcom/google/android/finsky/config/G;->consumptionAppDataFilter:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 227
    .local v8, filter:Ljava/lang/String;
    sget-object v21, Lcom/google/android/finsky/config/G;->debugOptionsEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Boolean;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-eqz v21, :cond_0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 231
    .local v6, backendFilters:[Ljava/lang/String;
    const/4 v10, 0x0

    .line 234
    .local v10, filterStrings:[Ljava/lang/String;
    move-object v4, v6

    .local v4, arr$:[Ljava/lang/String;
    array-length v13, v4

    .local v13, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_1
    if-ge v12, v13, :cond_6

    aget-object v5, v4, v12

    .line 235
    .local v5, backendFilter:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 236
    .local v19, tokens:[Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    .line 237
    const-string v21, "Bad corpus filter expression %s"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v5, v22, v23

    invoke-static/range {v21 .. v22}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 240
    :cond_3
    const/16 v21, 0x0

    aget-object v21, v19, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 241
    .local v9, filterBackendId:I
    if-eqz v9, :cond_4

    move/from16 v0, p2

    if-ne v9, v0, :cond_5

    .line 242
    :cond_4
    const/16 v21, 0x1

    aget-object v21, v19, v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 244
    :cond_5
    move/from16 v0, p2

    if-ne v9, v0, :cond_2

    .line 250
    .end local v5           #backendFilter:Ljava/lang/String;
    .end local v9           #filterBackendId:I
    .end local v19           #tokens:[Ljava/lang/String;
    :cond_6
    if-nez v10, :cond_7

    .line 251
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 256
    :cond_7
    array-length v0, v10

    move/from16 v16, v0

    .line 257
    .local v16, numFilterStrings:I
    add-int/lit8 v21, v16, -0x1

    aget-object v21, v10, v21

    const-string v22, "..."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_8

    const/16 v20, 0x1

    .line 258
    .local v20, truncate:Z
    :goto_2
    if-eqz v20, :cond_9

    .line 259
    :goto_3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, v16

    if-le v0, v1, :cond_a

    .line 260
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 257
    .end local v20           #truncate:Z
    :cond_8
    const/16 v20, 0x0

    goto :goto_2

    .line 263
    .restart local v20       #truncate:Z
    :cond_9
    add-int/lit8 v16, v16, -0x1

    .line 267
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 268
    .local v14, now:J
    const/4 v11, 0x0

    .local v11, i:I
    :goto_4
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v11, v0, :cond_b

    .line 269
    long-to-float v0, v14

    move/from16 v21, v0

    const v22, 0x4ca4cb80

    add-int/lit8 v23, v16, -0x1

    move/from16 v0, v23

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v23

    aget-object v23, v10, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v23

    mul-float v22, v22, v23

    sub-float v21, v21, v22

    move/from16 v0, v21

    float-to-long v0, v0

    move-wide/from16 v17, v0

    .line 271
    .local v17, timestamp:J
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/Bundle;

    const-string v22, "Play.LastUpdateTimeMillis"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-wide/from16 v2, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 268
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 274
    .end local v17           #timestamp:J
    :cond_b
    sget-boolean v21, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v21, :cond_0

    .line 275
    const-string v21, "Filtered data for corpus %d:"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 277
    .local v7, datum:Landroid/os/Bundle;
    const-string v21, "%s"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    new-instance v24, Lcom/google/android/finsky/services/ConsumptionAppDoc;

    move-object/from16 v0, v24

    invoke-direct {v0, v7}, Lcom/google/android/finsky/services/ConsumptionAppDoc;-><init>(Landroid/os/Bundle;)V

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/finsky/services/ConsumptionAppDoc;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5
.end method

.method public getConsumptionAppData(I)Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;
    .locals 2
    .parameter "backendId"

    .prologue
    .line 95
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 96
    new-instance v0, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    invoke-direct {v0, p1}, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;-><init>(I)V

    .line 97
    .local v0, docList:Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->hasConsumptionAppData(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->mConsumptionAppData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;->addAll(Ljava/util/Collection;)Z

    .line 100
    :cond_0
    return-object v0
.end method

.method public hasConsumptionAppData(I)Z
    .locals 2
    .parameter "backendId"

    .prologue
    .line 70
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 71
    invoke-direct {p0, p1}, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->getDataStateForBackend(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoadingData(I)Z
    .locals 2
    .parameter "backendId"

    .prologue
    const/4 v0, 0x1

    .line 78
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 79
    invoke-direct {p0, p1}, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->getDataStateForBackend(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setConsumptionAppData(Landroid/content/Context;ILjava/util/List;)V
    .locals 3
    .parameter "context"
    .parameter "backendId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p3, data:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-virtual {p0, p3, p2}, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->filter(Ljava/util/List;I)V

    .line 122
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 123
    iget-object v1, p0, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/finsky/services/ConsumptionAppDataCache$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/android/finsky/services/ConsumptionAppDataCache$1;-><init>(Lcom/google/android/finsky/services/ConsumptionAppDataCache;Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    if-eqz p3, :cond_0

    .line 136
    invoke-static {p2, p3}, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;->createFromBundles(ILjava/util/List;)Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    move-result-object v0

    .line 137
    .local v0, docList:Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->setConsumptionAppData(Landroid/content/Context;Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;Z)V

    goto :goto_0
.end method

.method public setConsumptionAppData(Landroid/content/Context;Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;Z)V
    .locals 7
    .parameter "context"
    .parameter "data"
    .parameter "updateWidgets"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 142
    invoke-virtual {p2}, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;->getBackend()I

    move-result v0

    .line 143
    .local v0, backendId:I
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    if-eq v5, v6, :cond_1

    .line 144
    iget-object v3, p0, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/finsky/services/ConsumptionAppDataCache$2;

    invoke-direct {v4, p0, p1, p2, p3}, Lcom/google/android/finsky/services/ConsumptionAppDataCache$2;-><init>(Lcom/google/android/finsky/services/ConsumptionAppDataCache;Landroid/content/Context;Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;Z)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    const/4 v2, 0x0

    .line 155
    .local v2, isDataDifferent:Z
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->hasConsumptionAppData(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 156
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->getConsumptionAppData(I)Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    move-result-object v1

    .line 158
    .local v1, cachedData:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/services/ConsumptionAppDoc;>;"
    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    move v2, v3

    .line 164
    .end local v1           #cachedData:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/services/ConsumptionAppDoc;>;"
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->mConsumptionAppData:Landroid/util/SparseArray;

    invoke-virtual {v5, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 165
    iget-object v5, p0, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->mDataLoadState:Landroid/util/SparseArray;

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 166
    if-nez v2, :cond_5

    .line 167
    const-string v5, "data didn\'t change for backend=[%s], ignoring!"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v5, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .restart local v1       #cachedData:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/services/ConsumptionAppDoc;>;"
    :cond_3
    move v2, v4

    .line 158
    goto :goto_1

    .line 159
    .end local v1           #cachedData:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/services/ConsumptionAppDoc;>;"
    :cond_4
    invoke-virtual {p2}, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 161
    const/4 v2, 0x1

    goto :goto_1

    .line 171
    :cond_5
    invoke-virtual {p2}, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;->size()I

    move-result v3

    if-lez v3, :cond_0

    if-eqz p3, :cond_0

    .line 172
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->updateWidgets(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public startLoading(I)V
    .locals 2
    .parameter "backendId"

    .prologue
    .line 108
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 110
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->hasConsumptionAppData(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->mDataLoadState:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 113
    :cond_0
    return-void
.end method

.method public updateWidgets(Landroid/content/Context;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 181
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.action.APPWIDGET_UPDATE_CONSUMPTION_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    const-class v1, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 183
    const-string v1, "backendId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 184
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 185
    return-void
.end method
