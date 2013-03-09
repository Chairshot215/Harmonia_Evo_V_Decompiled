.class public Lcom/google/android/finsky/services/LoadConsumptionDataService;
.super Landroid/app/IntentService;
.source "LoadConsumptionDataService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/google/android/finsky/services/LoadConsumptionDataService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static isBackendSupported(I)Z
    .locals 1
    .parameter "backendId"

    .prologue
    .line 30
    packed-switch p0, :pswitch_data_0

    .line 38
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 36
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isSupportedDataType(I)Z
    .locals 1
    .parameter "dataType"

    .prologue
    .line 42
    packed-switch p0, :pswitch_data_0

    .line 46
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 44
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private readDataFromCache(Landroid/content/Context;I)Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;
    .locals 8
    .parameter "context"
    .parameter "backend"

    .prologue
    .line 84
    new-instance v2, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    invoke-direct {v2, p2}, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;-><init>(I)V

    .line 86
    .local v2, docList:Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;
    invoke-static {p1, p2}, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->getCacheFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    .line 87
    .local v0, cacheFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 88
    const-string v4, "%s doesn\'t exist"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v3, v2

    .line 97
    .end local v2           #docList:Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;
    .local v3, docList:Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 92
    .end local v3           #docList:Ljava/lang/Object;
    .restart local v2       #docList:Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;
    :cond_0
    invoke-static {v0}, Lcom/google/android/finsky/utils/ParcelUtils;->readFromDisk(Ljava/io/File;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    .line 93
    .local v1, cachedList:Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;
    if-eqz v1, :cond_1

    .line 94
    move-object v2, v1

    :cond_1
    move-object v3, v2

    .line 97
    .restart local v3       #docList:Ljava/lang/Object;
    goto :goto_0
.end method

.method public static varargs scheduleAlarmForUpdate(Landroid/content/Context;[I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 54
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/finsky/services/LoadConsumptionDataService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string v1, "backendIds"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 57
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 58
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 17
    .parameter "intent"

    .prologue
    .line 62
    invoke-static {}, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->get()Lcom/google/android/finsky/services/ConsumptionAppDataCache;

    move-result-object v6

    .line 64
    .local v6, cache:Lcom/google/android/finsky/services/ConsumptionAppDataCache;
    const-string v13, "backendIds"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v4

    .line 65
    .local v4, backendIds:[I
    array-length v13, v4

    new-array v5, v13, [I

    .line 66
    .local v5, backendIdsToUpdate:[I
    const/4 v11, 0x0

    .line 67
    .local v11, numBackendsToUpdate:I
    move-object v2, v4

    .local v2, arr$:[I
    array-length v10, v2

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    move v12, v11

    .end local v11           #numBackendsToUpdate:I
    .local v12, numBackendsToUpdate:I
    :goto_0
    if-ge v9, v10, :cond_0

    aget v3, v2, v9

    .line 68
    .local v3, backendId:I
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/services/LoadConsumptionDataService;->readDataFromCache(Landroid/content/Context;I)Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    move-result-object v7

    .line 69
    .local v7, cachedData:Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;
    invoke-virtual {v7}, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_2

    .line 70
    add-int/lit8 v11, v12, 0x1

    .end local v12           #numBackendsToUpdate:I
    .restart local v11       #numBackendsToUpdate:I
    aput v3, v5, v12

    .line 72
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v6, v0, v7, v13}, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->setConsumptionAppData(Landroid/content/Context;Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;Z)V

    .line 73
    const-string v13, "Was able to read from cache for %d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    :goto_1
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/android/finsky/services/FetchConsumptionDataService;->fetch(Landroid/content/Context;I)V

    .line 67
    add-int/lit8 v9, v9, 0x1

    move v12, v11

    .end local v11           #numBackendsToUpdate:I
    .restart local v12       #numBackendsToUpdate:I
    goto :goto_0

    .line 78
    .end local v3           #backendId:I
    .end local v7           #cachedData:Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;
    :cond_0
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    if-ge v8, v12, :cond_1

    .line 79
    aget v13, v5, v8

    move-object/from16 v0, p0

    invoke-virtual {v6, v0, v13}, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->updateWidgets(Landroid/content/Context;I)V

    .line 78
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 81
    :cond_1
    return-void

    .end local v8           #i:I
    .restart local v3       #backendId:I
    .restart local v7       #cachedData:Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;
    :cond_2
    move v11, v12

    .end local v12           #numBackendsToUpdate:I
    .restart local v11       #numBackendsToUpdate:I
    goto :goto_1
.end method
