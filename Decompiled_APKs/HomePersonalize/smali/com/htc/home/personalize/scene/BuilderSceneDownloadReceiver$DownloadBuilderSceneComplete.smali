.class public Lcom/htc/home/personalize/scene/BuilderSceneDownloadReceiver$DownloadBuilderSceneComplete;
.super Ljava/lang/Object;
.source "BuilderSceneDownloadReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/scene/BuilderSceneDownloadReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownloadBuilderSceneComplete"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/htc/home/personalize/scene/BuilderSceneDownloadReceiver;


# direct methods
.method public constructor <init>(Lcom/htc/home/personalize/scene/BuilderSceneDownloadReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/htc/home/personalize/scene/BuilderSceneDownloadReceiver$DownloadBuilderSceneComplete;->this$0:Lcom/htc/home/personalize/scene/BuilderSceneDownloadReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p2, p0, Lcom/htc/home/personalize/scene/BuilderSceneDownloadReceiver$DownloadBuilderSceneComplete;->mContext:Landroid/content/Context;

    .line 40
    iput-object p3, p0, Lcom/htc/home/personalize/scene/BuilderSceneDownloadReceiver$DownloadBuilderSceneComplete;->mIntent:Landroid/content/Intent;

    .line 41
    return-void
.end method

.method private notify(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 14
    .parameter "strGUID"
    .parameter "sceneName"
    .parameter "sceneId"

    .prologue
    .line 112
    invoke-static {}, Lcom/htc/home/personalize/scene/BuilderSceneDownloadReceiver;->access$000()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "notify strGUID: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", sceneName: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", sceneId: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const v3, 0x1080082

    .line 115
    .local v3, icon:I
    move-object/from16 v8, p2

    .line 116
    .local v8, tickerText:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 117
    .local v9, when:J
    move-object/from16 v2, p2

    .line 118
    .local v2, contentTitle:Ljava/lang/String;
    iget-object v11, p0, Lcom/htc/home/personalize/scene/BuilderSceneDownloadReceiver$DownloadBuilderSceneComplete;->mContext:Landroid/content/Context;

    const v12, 0x7f090040

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, contentText:Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .local v6, notifyIntent:Landroid/content/Intent;
    iget-object v11, p0, Lcom/htc/home/personalize/scene/BuilderSceneDownloadReceiver$DownloadBuilderSceneComplete;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const-class v12, Lcom/htc/home/personalize/scene/ScenePicker;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v11, "com.htc.home.personalize.builderSceneGuid"

    invoke-virtual {v6, v11, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    iget-object v11, p0, Lcom/htc/home/personalize/scene/BuilderSceneDownloadReceiver$DownloadBuilderSceneComplete;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    const/high16 v13, 0x800

    invoke-static {v11, v12, v6, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 130
    .local v7, pendingIntent:Landroid/app/PendingIntent;
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5, v3, v8, v9, v10}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 131
    .local v5, notification:Landroid/app/Notification;
    iget-object v11, p0, Lcom/htc/home/personalize/scene/BuilderSceneDownloadReceiver$DownloadBuilderSceneComplete;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v11, v2, v1, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 133
    iget v11, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v11, v11, 0x10

    iput v11, v5, Landroid/app/Notification;->flags:I

    .line 136
    iget-object v11, p0, Lcom/htc/home/personalize/scene/BuilderSceneDownloadReceiver$DownloadBuilderSceneComplete;->mContext:Landroid/content/Context;

    const-string v12, "notification"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 137
    .local v4, nManager:Landroid/app/NotificationManager;
    move/from16 v0, p3

    invoke-virtual {v4, p1, v0, v5}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 138
    return-void
.end method


# virtual methods
.method public run()V
    .locals 26

    .prologue
    .line 45
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/home/personalize/scene/BuilderSceneDownloadReceiver$DownloadBuilderSceneComplete;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/htcSceneManager/scene/SceneManager;->getInstance(Landroid/content/Context;)Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v15

    .line 46
    .local v15, manager:Lcom/htc/htcSceneManager/scene/SceneManager;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/home/personalize/scene/BuilderSceneDownloadReceiver$DownloadBuilderSceneComplete;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;

    move-result-object v14

    .line 48
    .local v14, mDatabase:Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/home/personalize/scene/BuilderSceneDownloadReceiver$DownloadBuilderSceneComplete;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v10

    .line 49
    .local v10, atrUri:Ljava/lang/String;
    invoke-static {}, Lcom/htc/home/personalize/scene/BuilderSceneDownloadReceiver;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "atrUri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/home/personalize/scene/BuilderSceneDownloadReceiver$DownloadBuilderSceneComplete;->mIntent:Landroid/content/Intent;

    const-string v5, "notificationextras"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 52
    .local v22, strGUID:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/home/personalize/scene/BuilderSceneDownloadReceiver$DownloadBuilderSceneComplete;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_data"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "mimetype"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "title"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "_id"

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 56
    .local v12, cursor:Landroid/database/Cursor;
    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_2

    .line 57
    :cond_0
    invoke-static {}, Lcom/htc/home/personalize/scene/BuilderSceneDownloadReceiver;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cursor fail: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    if-eqz v12, :cond_1

    .line 59
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 109
    :cond_1
    :goto_0
    return-void

    .line 63
    :cond_2
    const-string v4, "mimetype"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 64
    .local v19, strBuilderType:Ljava/lang/String;
    const-string v4, "_data"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 65
    .local v21, strFilePath:Ljava/lang/String;
    const-string v4, "title"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 67
    .local v24, strName:Ljava/lang/String;
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 69
    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/htc/htcSceneManager/scene/SceneManager;->getBuilderSceneById(Ljava/lang/String;)Lcom/htc/htcSceneManager/scene/Scene;

    move-result-object v17

    .line 70
    .local v17, scene:Lcom/htc/htcSceneManager/scene/Scene;
    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->getBuilderSceneByGUID(Ljava/lang/String;)Lcom/htc/home/personalize/scene/BuilderSceneInfo;

    move-result-object v11

    .line 71
    .local v11, builderInfo:Lcom/htc/home/personalize/scene/BuilderSceneInfo;
    if-eqz v17, :cond_3

    if-nez v11, :cond_4

    .line 72
    :cond_3
    invoke-static {}, Lcom/htc/home/personalize/scene/BuilderSceneDownloadReceiver;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get no scene or builderInfo => scene: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", builderInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 76
    :cond_4
    const/16 v18, -0x1

    .line 77
    .local v18, sceneId:I
    invoke-virtual/range {v17 .. v17}, Lcom/htc/htcSceneManager/scene/Scene;->getId()I

    move-result v18

    .line 79
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/home/personalize/scene/BuilderSceneDownloadReceiver$DownloadBuilderSceneComplete;->notify(Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    invoke-static {}, Lcom/htc/home/personalize/scene/BuilderSceneDownloadReceiver;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    if-eqz v19, :cond_5

    if-eqz v21, :cond_5

    if-nez v24, :cond_6

    .line 83
    :cond_5
    invoke-static {}, Lcom/htc/home/personalize/scene/BuilderSceneDownloadReceiver;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid download file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 88
    :cond_6
    :try_start_0
    invoke-virtual {v11}, Lcom/htc/home/personalize/scene/BuilderSceneInfo;->getBasePortraitPreviewFileName()Ljava/lang/String;

    move-result-object v25

    .line 89
    .local v25, strPortFileName:Ljava/lang/String;
    invoke-virtual {v11}, Lcom/htc/home/personalize/scene/BuilderSceneInfo;->getBaseLandscapePreviewFileName()Ljava/lang/String;

    move-result-object v23

    .line 90
    .local v23, strLandFileName:Ljava/lang/String;
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    .line 91
    .local v20, strFileName:Ljava/lang/String;
    invoke-static {}, Lcom/htc/home/personalize/scene/BuilderSceneDownloadReceiver;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "strPortFileName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", strLandFileName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", strFileName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 95
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/home/personalize/scene/BuilderSceneDownloadReceiver$DownloadBuilderSceneComplete;->mContext:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/htcSceneManager/scene/Scene;->getPreviewPathPort()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-static {v4, v0, v5}, Lcom/htc/home/personalize/util/FileHelper;->CopyFileWithFullPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :goto_1
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    .local v16, previewFile:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_7

    .line 103
    invoke-static {}, Lcom/htc/home/personalize/scene/BuilderSceneDownloadReceiver;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Fail to delete preview cache image."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_7
    const/4 v4, 0x3

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v18, v5, v6

    invoke-virtual {v15, v4, v5}, Lcom/htc/htcSceneManager/scene/SceneManager;->notifySceneChanged(I[I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 106
    .end local v16           #previewFile:Ljava/io/File;
    .end local v20           #strFileName:Ljava/lang/String;
    .end local v23           #strLandFileName:Ljava/lang/String;
    .end local v25           #strPortFileName:Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 107
    .local v13, e:Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 96
    .end local v13           #e:Ljava/io/IOException;
    .restart local v20       #strFileName:Ljava/lang/String;
    .restart local v23       #strLandFileName:Ljava/lang/String;
    .restart local v25       #strPortFileName:Ljava/lang/String;
    :cond_8
    :try_start_1
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 97
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/home/personalize/scene/BuilderSceneDownloadReceiver$DownloadBuilderSceneComplete;->mContext:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/htcSceneManager/scene/Scene;->getPreviewPathLand()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-static {v4, v0, v5}, Lcom/htc/home/personalize/util/FileHelper;->CopyFileWithFullPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 99
    :cond_9
    invoke-static {}, Lcom/htc/home/personalize/scene/BuilderSceneDownloadReceiver;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error file path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for scene: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
