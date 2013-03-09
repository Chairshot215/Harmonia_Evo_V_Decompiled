.class Lcom/android/updater/ui/UpdaterSettings$UpdaterShowProgressThread;
.super Ljava/lang/Thread;
.source "UpdaterSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/ui/UpdaterSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdaterShowProgressThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/updater/ui/UpdaterSettings;


# direct methods
.method private constructor <init>(Lcom/android/updater/ui/UpdaterSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/updater/ui/UpdaterSettings$UpdaterShowProgressThread;->this$0:Lcom/android/updater/ui/UpdaterSettings;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/updater/ui/UpdaterSettings;Lcom/android/updater/ui/UpdaterSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 276
    invoke-direct {p0, p1}, Lcom/android/updater/ui/UpdaterSettings$UpdaterShowProgressThread;-><init>(Lcom/android/updater/ui/UpdaterSettings;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 28

    .prologue
    .line 280
    const-wide/16 v2, 0x32

    :try_start_0
    invoke-static {v2, v3}, Lcom/android/updater/ui/UpdaterSettings$UpdaterShowProgressThread;->sleep(J)V

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/updater/ui/UpdaterSettings$UpdaterShowProgressThread;->this$0:Lcom/android/updater/ui/UpdaterSettings;

    #getter for: Lcom/android/updater/ui/UpdaterSettings;->isNeedToShowProgressActivity:Z
    invoke-static {v2}, Lcom/android/updater/ui/UpdaterSettings;->access$000(Lcom/android/updater/ui/UpdaterSettings;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/updater/ui/UpdaterSettings$UpdaterShowProgressThread;->this$0:Lcom/android/updater/ui/UpdaterSettings;

    invoke-static {v2}, Lcom/android/updater/util/UpdaterUtil;->getUpdateInfo(Landroid/content/Context;)Lcom/android/updater/util/UpdaterUtil$UpdateInfo;

    move-result-object v27

    .line 289
    .local v27, ui:Lcom/android/updater/util/UpdaterUtil$UpdateInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/updater/ui/UpdaterSettings$UpdaterShowProgressThread;->this$0:Lcom/android/updater/ui/UpdaterSettings;

    move-object/from16 v0, v27

    invoke-static {v2, v0}, Lcom/android/updater/util/UpdaterUtil;->getDownloadInfo(Landroid/content/Context;Lcom/android/updater/util/UpdaterUtil$UpdateInfo;)Lcom/android/updater/util/UpdaterUtil$DownloadInfo;

    move-result-object v16

    .line 290
    .local v16, di:Lcom/android/updater/util/UpdaterUtil$DownloadInfo;
    if-eqz v27, :cond_0

    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/android/updater/util/UpdaterUtil$UpdateInfo;->link:Ljava/lang/String;

    if-eqz v2, :cond_0

    if-eqz v16, :cond_0

    .line 291
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/updater/util/UpdaterUtil$DownloadInfo;->downloadStatus:I

    invoke-static {v2}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 293
    new-instance v21, Landroid/content/Intent;

    invoke-direct/range {v21 .. v21}, Landroid/content/Intent;-><init>()V

    .line 294
    .local v21, manualIntent:Landroid/content/Intent;
    const-string v2, "com.android.updater.FOTA_DOWNLOAD_PROGRESS"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    const-string v2, "_ID"

    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/updater/util/UpdaterUtil$DownloadInfo;->downloadId:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/updater/ui/UpdaterSettings$UpdaterShowProgressThread;->this$0:Lcom/android/updater/ui/UpdaterSettings;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/android/updater/ui/UpdaterSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 301
    .end local v21           #manualIntent:Landroid/content/Intent;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/updater/ui/UpdaterSettings$UpdaterShowProgressThread;->this$0:Lcom/android/updater/ui/UpdaterSettings;

    invoke-virtual {v2}, Lcom/android/updater/ui/UpdaterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/16 v3, 0x11

    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Lcom/android/updater/db/FOTASettings;->getBoolean(Landroid/content/ContentResolver;IZ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 302
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 305
    .local v20, intent:Landroid/content/Intent;
    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "entity"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "status"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "title"

    aput-object v3, v4, v2

    .line 307
    .local v4, queryProjection:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/updater/ui/UpdaterSettings$UpdaterShowProgressThread;->this$0:Lcom/android/updater/ui/UpdaterSettings;

    invoke-virtual {v2}, Lcom/android/updater/ui/UpdaterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/updater/db/FOTADetail;->getAllApkUrl(Landroid/content/ContentResolver;Z)Ljava/util/ArrayList;

    move-result-object v11

    .line 308
    .local v11, apkUrl:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v15, 0x0

    .line 309
    .local v15, cursor:Landroid/database/Cursor;
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 310
    .local v25, tempString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/updater/ui/UpdaterSettings$UpdaterShowProgressThread;->this$0:Lcom/android/updater/ui/UpdaterSettings;

    invoke-virtual {v2}, Lcom/android/updater/ui/UpdaterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "entity=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v25, v6, v8

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 312
    if-eqz v15, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 313
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 314
    .local v19, id:I
    const/4 v2, 0x1

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 315
    .local v22, name:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 316
    .local v24, status:I
    const/4 v2, 0x3

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 317
    .local v26, title:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 319
    const-string v2, "android.server.checkin.APP_NOTIFY_DLPROGRESS"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    const-string v2, "_ID"

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 321
    const-string v2, "URL"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/updater/ui/UpdaterSettings$UpdaterShowProgressThread;->this$0:Lcom/android/updater/ui/UpdaterSettings;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/updater/ui/UpdaterSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 338
    .end local v19           #id:I
    .end local v22           #name:Ljava/lang/String;
    .end local v24           #status:I
    .end local v25           #tempString:Ljava/lang/String;
    .end local v26           #title:Ljava/lang/String;
    :cond_2
    :goto_0
    if-eqz v15, :cond_3

    .line 339
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 345
    .end local v4           #queryProjection:[Ljava/lang/String;
    .end local v11           #apkUrl:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15           #cursor:Landroid/database/Cursor;
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v20           #intent:Landroid/content/Intent;
    :cond_3
    const/4 v2, 0x4

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v7, v2

    const/4 v2, 0x1

    const-string v3, "entity"

    aput-object v3, v7, v2

    const/4 v2, 0x2

    const-string v3, "status"

    aput-object v3, v7, v2

    const/4 v2, 0x3

    const-string v3, "title"

    aput-object v3, v7, v2

    .line 347
    .local v7, queryCotaProjection:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/updater/ui/UpdaterSettings$UpdaterShowProgressThread;->this$0:Lcom/android/updater/ui/UpdaterSettings;

    invoke-virtual {v2}, Lcom/android/updater/ui/UpdaterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/updater/db/COTASettings;->getString(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v14

    .line 349
    .local v14, cotaUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/updater/ui/UpdaterSettings$UpdaterShowProgressThread;->this$0:Lcom/android/updater/ui/UpdaterSettings;

    invoke-virtual {v2}, Lcom/android/updater/ui/UpdaterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    const-string v8, "entity=?"

    const/4 v2, 0x1

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v14, v9, v2

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 351
    .local v12, cotaCursor:Landroid/database/Cursor;
    if-eqz v12, :cond_4

    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 352
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 353
    .local v13, cotaIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/updater/ui/UpdaterSettings$UpdaterShowProgressThread;->this$0:Lcom/android/updater/ui/UpdaterSettings;

    const-class v3, Lcom/android/updater/ui/CotaProgressActivity;

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 354
    const-string v2, "uri"

    invoke-virtual {v13, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    const-string v2, "_ID"

    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 356
    const-string v2, "URL"

    invoke-virtual {v13, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    const/high16 v2, 0x1000

    invoke-virtual {v13, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/updater/ui/UpdaterSettings$UpdaterShowProgressThread;->this$0:Lcom/android/updater/ui/UpdaterSettings;

    invoke-virtual {v2, v13}, Lcom/android/updater/ui/UpdaterSettings;->startActivity(Landroid/content/Intent;)V

    .line 365
    .end local v7           #queryCotaProjection:[Ljava/lang/String;
    .end local v12           #cotaCursor:Landroid/database/Cursor;
    .end local v13           #cotaIntent:Landroid/content/Intent;
    .end local v14           #cotaUrl:Ljava/lang/String;
    .end local v16           #di:Lcom/android/updater/util/UpdaterUtil$DownloadInfo;
    .end local v27           #ui:Lcom/android/updater/util/UpdaterUtil$UpdateInfo;
    :cond_4
    :goto_1
    return-void

    .line 327
    .restart local v4       #queryProjection:[Ljava/lang/String;
    .restart local v11       #apkUrl:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v15       #cursor:Landroid/database/Cursor;
    .restart local v16       #di:Lcom/android/updater/util/UpdaterUtil$DownloadInfo;
    .restart local v18       #i$:Ljava/util/Iterator;
    .restart local v19       #id:I
    .restart local v20       #intent:Landroid/content/Intent;
    .restart local v22       #name:Ljava/lang/String;
    .restart local v24       #status:I
    .restart local v25       #tempString:Ljava/lang/String;
    .restart local v26       #title:Ljava/lang/String;
    .restart local v27       #ui:Lcom/android/updater/util/UpdaterUtil$UpdateInfo;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/updater/ui/UpdaterSettings$UpdaterShowProgressThread;->this$0:Lcom/android/updater/ui/UpdaterSettings;

    const-class v3, Lcom/android/updater/ui/AcuInstallProgressActivity;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 328
    const-string v2, "("

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    .line 329
    .local v23, progress:Ljava/lang/String;
    const-string v2, "Progress"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    const/high16 v2, 0x1000

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/updater/ui/UpdaterSettings$UpdaterShowProgressThread;->this$0:Lcom/android/updater/ui/UpdaterSettings;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/updater/ui/UpdaterSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 362
    .end local v4           #queryProjection:[Ljava/lang/String;
    .end local v11           #apkUrl:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15           #cursor:Landroid/database/Cursor;
    .end local v16           #di:Lcom/android/updater/util/UpdaterUtil$DownloadInfo;
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v19           #id:I
    .end local v20           #intent:Landroid/content/Intent;
    .end local v22           #name:Ljava/lang/String;
    .end local v23           #progress:Ljava/lang/String;
    .end local v24           #status:I
    .end local v25           #tempString:Ljava/lang/String;
    .end local v26           #title:Ljava/lang/String;
    .end local v27           #ui:Lcom/android/updater/util/UpdaterUtil$UpdateInfo;
    :catch_0
    move-exception v17

    .line 363
    .local v17, e:Ljava/lang/Exception;
    const-string v2, "UpdaterAPK | UpdaterSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UpdaterShowProgressThread run() error! "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
