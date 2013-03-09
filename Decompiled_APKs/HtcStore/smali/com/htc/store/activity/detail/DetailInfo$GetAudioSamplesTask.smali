.class Lcom/htc/store/activity/detail/DetailInfo$GetAudioSamplesTask;
.super Landroid/os/AsyncTask;
.source "DetailInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/detail/DetailInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetAudioSamplesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private mDownloadSamplesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCancel:Z

.field final synthetic this$0:Lcom/htc/store/activity/detail/DetailInfo;


# direct methods
.method public constructor <init>(Lcom/htc/store/activity/detail/DetailInfo;Ljava/util/ArrayList;I)V
    .locals 3
    .parameter
    .parameter
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p2, audioSamplesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;>;"
    const/4 v2, 0x0

    .line 2335
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailInfo$GetAudioSamplesTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2332
    iput-boolean v2, p0, Lcom/htc/store/activity/detail/DetailInfo$GetAudioSamplesTask;->mIsCancel:Z

    .line 2336
    #setter for: Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesFailedCount:I
    invoke-static {p1, v2}, Lcom/htc/store/activity/detail/DetailInfo;->access$4702(Lcom/htc/store/activity/detail/DetailInfo;I)I

    .line 2337
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo$GetAudioSamplesTask;->mDownloadSamplesList:Ljava/util/ArrayList;

    .line 2338
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 2339
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;

    .line 2340
    .local v1, sound:Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;
    invoke-virtual {v1}, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;->isCompleted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2341
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo$GetAudioSamplesTask;->mDownloadSamplesList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2338
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2344
    .end local v1           #sound:Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;
    :cond_1
    return-void
.end method


# virtual methods
.method public cancelTask()V
    .locals 1

    .prologue
    .line 2446
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/store/activity/detail/DetailInfo$GetAudioSamplesTask;->mIsCancel:Z

    .line 2447
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18
    .parameter "params"

    .prologue
    .line 2348
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "doInBackground: GetAudioSamplesTask"

    aput-object v7, v3, v6

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/activity/detail/DetailInfo$GetAudioSamplesTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    invoke-virtual {v2}, Lcom/htc/store/activity/detail/DetailInfo;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2351
    .local v1, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/activity/detail/DetailInfo$GetAudioSamplesTask;->mDownloadSamplesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 2352
    .local v16, length:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    .line 2354
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/store/activity/detail/DetailInfo$GetAudioSamplesTask;->mIsCancel:Z

    if-eqz v2, :cond_1

    .line 2403
    :cond_0
    const/4 v2, 0x0

    return-object v2

    .line 2357
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/activity/detail/DetailInfo$GetAudioSamplesTask;->mDownloadSamplesList:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;

    .line 2358
    .local v10, audio:Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "GetAudioSamplesTask - Audio: "

    aput-object v7, v3, v6

    const/4 v6, 0x1

    invoke-virtual {v10}, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;->getInfo()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2360
    const/16 v17, 0x1

    .line 2361
    .local v17, needDownload:Z
    const/4 v9, 0x0

    .line 2362
    .local v9, downloadUri:Landroid/net/Uri;
    const/4 v13, 0x0

    .line 2363
    .local v13, downloadObserver:Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "title=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;->getItemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2364
    .local v4, src:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND status=\'200\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2365
    const/4 v12, 0x0

    .line 2367
    .local v12, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "GetAudioSamplesTask - query Downloads.Impl.CONTENT_URI = "

    aput-object v7, v3, v6

    const/4 v6, 0x1

    sget-object v7, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    aput-object v7, v3, v6

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ", where = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2368
    sget-object v2, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 2369
    if-eqz v12, :cond_3

    .line 2370
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 2371
    .local v11, count:I
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "GetAudioSamplesTask - cursor count = "

    aput-object v7, v3, v6

    const/4 v6, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2372
    if-lez v11, :cond_3

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/activity/detail/DetailInfo$GetAudioSamplesTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mGetDetailInfoFromServer:Z
    invoke-static {v2}, Lcom/htc/store/activity/detail/DetailInfo;->access$6000(Lcom/htc/store/activity/detail/DetailInfo;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2375
    :cond_2
    sget-object v2, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_ID"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v2, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 2376
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v9, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2377
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "GetAudioSamplesTask - delete downloaded uri = "

    aput-object v7, v3, v6

    const/4 v6, 0x1

    aput-object v9, v3, v6

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2378
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_2

    .line 2379
    const/16 v17, 0x1

    .line 2392
    .end local v11           #count:I
    :cond_3
    :goto_1
    if-eqz v12, :cond_4

    .line 2393
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2396
    :cond_4
    :goto_2
    if-eqz v17, :cond_7

    .line 2397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/activity/detail/DetailInfo$GetAudioSamplesTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    invoke-virtual {v10}, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;->getTrialContentUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;->getItemId()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->createDownloadUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v2, v3, v6}, Lcom/htc/store/activity/detail/DetailInfo;->access$9800(Lcom/htc/store/activity/detail/DetailInfo;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 2398
    new-instance v5, Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/store/activity/detail/DetailInfo$GetAudioSamplesTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/activity/detail/DetailInfo$GetAudioSamplesTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mNonUiHandler:Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;
    invoke-static {v2}, Lcom/htc/store/activity/detail/DetailInfo;->access$200(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;

    move-result-object v7

    move-object v8, v1

    invoke-direct/range {v5 .. v10}, Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;-><init>(Lcom/htc/store/activity/detail/DetailInfo;Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;)V

    .line 2399
    .end local v13           #downloadObserver:Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;
    .local v5, downloadObserver:Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;
    const/4 v2, 0x0

    invoke-virtual {v1, v9, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2401
    :goto_3
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v2, v3

    const/4 v3, 0x1

    aput-object v10, v2, v3

    const/4 v3, 0x2

    aput-object v9, v2, v3

    const/4 v3, 0x3

    aput-object v5, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/store/activity/detail/DetailInfo$GetAudioSamplesTask;->publishProgress([Ljava/lang/Object;)V

    .line 2352
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 2381
    .end local v5           #downloadObserver:Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;
    .restart local v11       #count:I
    .restart local v13       #downloadObserver:Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;
    :cond_5
    :try_start_1
    sget-object v2, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_ID"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v2, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 2382
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "GetAudioSamplesTask - downloadUri = "

    aput-object v7, v3, v6

    const/4 v6, 0x1

    aput-object v9, v3, v6

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2384
    const/16 v17, 0x0

    goto :goto_1

    .line 2388
    .end local v11           #count:I
    :catch_0
    move-exception v14

    .line 2389
    .local v14, ex:Ljava/lang/Exception;
    :try_start_2
    sget-object v2, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2390
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "GetAudioSamplesTask - query failed, "

    aput-object v7, v3, v6

    const/4 v6, 0x1

    aput-object v14, v3, v6

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2392
    if-eqz v12, :cond_4

    .line 2393
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 2392
    .end local v14           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v12, :cond_6

    .line 2393
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2

    :cond_7
    move-object v5, v13

    .end local v13           #downloadObserver:Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;
    .restart local v5       #downloadObserver:Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;
    goto :goto_3
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 4
    .parameter "object"

    .prologue
    .line 2440
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onPostExecute: GetAudioSamplesTask"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2441
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$GetAudioSamplesTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesCount:I
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$4600(Lcom/htc/store/activity/detail/DetailInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo$GetAudioSamplesTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesFinishedCount:I
    invoke-static {v1}, Lcom/htc/store/activity/detail/DetailInfo;->access$4500(Lcom/htc/store/activity/detail/DetailInfo;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo$GetAudioSamplesTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesFailedCount:I
    invoke-static {v2}, Lcom/htc/store/activity/detail/DetailInfo;->access$4700(Lcom/htc/store/activity/detail/DetailInfo;)I

    move-result v2

    add-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 2442
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$GetAudioSamplesTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->hideHeaderProgressBar()V
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$4800(Lcom/htc/store/activity/detail/DetailInfo;)V

    .line 2443
    :cond_0
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 11
    .parameter "values"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2408
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "onProgressUpdate: GetAudioSamplesTask"

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2409
    aget-object v4, p1, v7

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 2410
    .local v3, needDownload:Z
    aget-object v0, p1, v8

    check-cast v0, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;

    .line 2411
    .local v0, audio:Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;
    aget-object v2, p1, v9

    check-cast v2, Landroid/net/Uri;

    .line 2412
    .local v2, downloadUri:Landroid/net/Uri;
    aget-object v1, p1, v10

    check-cast v1, Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;

    .line 2414
    .local v1, downloadObserver:Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;
    iget-boolean v4, p0, Lcom/htc/store/activity/detail/DetailInfo$GetAudioSamplesTask;->mIsCancel:Z

    if-eqz v4, :cond_1

    .line 2415
    if-eqz v1, :cond_0

    .line 2416
    invoke-virtual {v1}, Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;->cancel()V

    .line 2436
    :cond_0
    :goto_0
    return-void

    .line 2420
    :cond_1
    if-nez v0, :cond_2

    .line 2421
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GetAudioSamplesTask - audio item is null !!!"

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2425
    :cond_2
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "GetAudioSamplesTask - downloadUri = "

    aput-object v6, v5, v7

    aput-object v2, v5, v8

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2426
    if-eqz v3, :cond_3

    .line 2427
    invoke-virtual {v0, v1}, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;->setDownloadObserver(Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;)V

    .line 2428
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v4

    new-array v5, v10, [Ljava/lang/Object;

    const-string v6, "GetAudioSamplesTask - "

    aput-object v6, v5, v7

    invoke-virtual {v0}, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;->getInfo()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const-string v6, ", need to download"

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2430
    :cond_3
    invoke-virtual {v0, v2}, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;->setAudioUri(Landroid/net/Uri;)V

    .line 2431
    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailInfo$GetAudioSamplesTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mDetailInfoAdapter:Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter;
    invoke-static {v4}, Lcom/htc/store/activity/detail/DetailInfo;->access$4900(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 2432
    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailInfo$GetAudioSamplesTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mDetailInfoAdapter:Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter;
    invoke-static {v4}, Lcom/htc/store/activity/detail/DetailInfo;->access$4900(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter;->notifyDataSetChanged()V

    .line 2433
    :cond_4
    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailInfo$GetAudioSamplesTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    invoke-static {v4}, Lcom/htc/store/activity/detail/DetailInfo;->access$4508(Lcom/htc/store/activity/detail/DetailInfo;)I

    .line 2434
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v4

    new-array v5, v10, [Ljava/lang/Object;

    const-string v6, "GetAudioSamplesTask - "

    aput-object v6, v5, v7

    invoke-virtual {v0}, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;->getInfo()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const-string v6, ", set uri done"

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
