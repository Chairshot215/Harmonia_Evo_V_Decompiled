.class Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;
.super Landroid/os/AsyncTask;
.source "ListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadItemIconTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;


# direct methods
.method private constructor <init>(Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;)V
    .locals 0
    .parameter

    .prologue
    .line 1058
    iput-object p1, p0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;->this$1:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;Lcom/htc/store/activity/list/ListItem$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1058
    invoke-direct {p0, p1}, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;-><init>(Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 28
    .parameter "params"

    .prologue
    .line 1062
    const/16 v24, 0x0

    aget-object v24, p1, v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 1064
    .local v21, taskId:I
    move/from16 v0, v21

    mul-int/lit16 v0, v0, 0x96

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    :try_start_0
    invoke-static/range {v24 .. v25}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1068
    :goto_0
    invoke-static {}, Lcom/htc/store/activity/list/ListItem;->access$000()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-string v27, "doInBackground: DownloadItemIconTask - "

    aput-object v27, v25, v26

    const/16 v26, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;->this$1:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->mOnlineItemIconURLsToDownload:Ljava/util/ArrayList;
    invoke-static/range {v24 .. v24}, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->access$3400(Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;)Ljava/util/ArrayList;

    move-result-object v24

    if-eqz v24, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;->this$1:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->mOnlineItemIconURLsToDownload:Ljava/util/ArrayList;
    invoke-static/range {v24 .. v24}, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->access$3400(Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;)Ljava/util/ArrayList;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_5

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;->this$1:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->mOnlineItemIconURLsToDownload:Ljava/util/ArrayList;
    invoke-static/range {v24 .. v24}, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->access$3400(Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;)Ljava/util/ArrayList;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 1072
    .local v19, remainedCount:I
    :goto_1
    if-lez v19, :cond_5

    .line 1073
    const/16 v18, 0x0

    .line 1074
    .local v18, onlineItemIconURL:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;->this$1:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->mOnlineItemIconURLsToDownload:Ljava/util/ArrayList;
    invoke-static/range {v24 .. v24}, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->access$3400(Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;)Ljava/util/ArrayList;

    move-result-object v25

    monitor-enter v25

    .line 1075
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;->this$1:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->mOnlineItemIconURLsToDownload:Ljava/util/ArrayList;
    invoke-static/range {v24 .. v24}, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->access$3400(Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;)Ljava/util/ArrayList;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_0

    .line 1076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;->this$1:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->mOnlineItemIconURLsToDownload:Ljava/util/ArrayList;
    invoke-static/range {v24 .. v24}, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->access$3400(Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;)Ljava/util/ArrayList;

    move-result-object v24

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v24

    check-cast v0, Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;->this$1:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->mOnlineItemIconURLsToDownload:Ljava/util/ArrayList;
    invoke-static/range {v24 .. v24}, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->access$3400(Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;)Ljava/util/ArrayList;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1079
    :cond_0
    monitor-exit v25
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1080
    invoke-static {}, Lcom/htc/store/activity/list/ListItem;->access$000()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-string v27, "onlineItemIconURL: "

    aput-object v27, v25, v26

    const/16 v26, 0x1

    aput-object v18, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1081
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_4

    .line 1082
    const/4 v13, 0x0

    .line 1083
    .local v13, item:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    const/16 v23, 0x0

    .line 1084
    .local v23, triggerInvalidating:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;->this$1:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->this$0:Lcom/htc/store/activity/list/ListItem;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem;->mImageCacheMapping:Ljava/util/HashMap;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 1085
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;->this$1:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->this$0:Lcom/htc/store/activity/list/ListItem;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem;->mImageCacheMapping:Ljava/util/HashMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;->this$1:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->this$0:Lcom/htc/store/activity/list/ListItem;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem;->mImageCacheMapping:Ljava/util/HashMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v24

    check-cast v0, Lcom/htc/store/module/vo/ImageCacheMappingItem;

    move-object v13, v0

    .line 1106
    :goto_2
    monitor-exit v25
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1107
    if-eqz v13, :cond_d

    .line 1108
    invoke-virtual {v13}, Lcom/htc/store/module/vo/ImageCacheMappingItem;->getId()J

    move-result-wide v11

    .line 1109
    .local v11, id:J
    invoke-virtual {v13}, Lcom/htc/store/module/vo/ImageCacheMappingItem;->getExpiredTime()J

    move-result-wide v8

    .line 1110
    .local v8, expiredTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1111
    .local v4, current:J
    cmp-long v24, v4, v8

    if-lez v24, :cond_9

    const/4 v7, 0x1

    .line 1112
    .local v7, expired:Z
    :goto_3
    const/4 v15, 0x0

    .line 1114
    .local v15, needUpdate:Z
    invoke-static {v11, v12}, Lcom/htc/store/util/StorageUtils;->getTemporarySharedImageFilePath(J)Ljava/lang/String;

    move-result-object v22

    .line 1115
    .local v22, tmpFilePath:Ljava/lang/String;
    invoke-static {v11, v12}, Lcom/htc/store/util/StorageUtils;->getSharedImageFilePath(J)Ljava/lang/String;

    move-result-object v10

    .line 1117
    .local v10, filePath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;->this$1:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->mOverwrite:Z
    invoke-static/range {v24 .. v24}, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->access$3500(Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;)Z

    move-result v24

    if-eqz v24, :cond_a

    if-eqz v7, :cond_a

    .line 1118
    invoke-static {}, Lcom/htc/store/activity/list/ListItem;->access$000()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-string v27, "Forcely download icon Id: "

    aput-object v27, v25, v26

    const/16 v26, 0x1

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;->this$1:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->mIconWidthHeight:I
    invoke-static/range {v24 .. v24}, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->access$3600(Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;->this$1:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    move-object/from16 v25, v0

    #getter for: Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->mIconWidthHeight:I
    invoke-static/range {v25 .. v25}, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->access$3600(Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;)I

    move-result v25

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/htc/store/util/DownloadUtils;->retrieveImageForcely(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v15

    .line 1137
    :goto_4
    if-eqz v15, :cond_1

    .line 1138
    move-object/from16 v0, v22

    invoke-static {v0, v10}, Lcom/htc/store/util/StorageUtils;->moveFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    .line 1141
    :cond_1
    if-eqz v15, :cond_2

    .line 1142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;->this$1:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->mImageTTL:J
    invoke-static/range {v24 .. v24}, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->access$3700(Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;)J

    move-result-wide v24

    add-long v16, v4, v24

    .line 1143
    .local v16, newExpiredTime:J
    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Lcom/htc/store/module/vo/ImageCacheMappingItem;->setExpiredTime(J)V

    .line 1144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;->this$1:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->this$0:Lcom/htc/store/activity/list/ListItem;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem;->mImageCacheMapping:Ljava/util/HashMap;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 1145
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;->this$1:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->this$0:Lcom/htc/store/activity/list/ListItem;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem;->mImageCacheMapping:Ljava/util/HashMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    monitor-exit v25
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;->this$1:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->this$0:Lcom/htc/store/activity/list/ListItem;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v16

    invoke-virtual {v0, v11, v12, v1, v2}, Lcom/htc/store/provider/AccessHelper;->updateImageCaheMappingItem(JJ)Z

    .line 1149
    .end local v16           #newExpiredTime:J
    :cond_2
    if-nez v23, :cond_3

    if-eqz v15, :cond_4

    .line 1150
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;->this$1:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->this$0:Lcom/htc/store/activity/list/ListItem;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/store/provider/AccessHelper;->updateItemItemToInvalidateList(Ljava/lang/String;)Z

    .line 1156
    .end local v4           #current:J
    .end local v7           #expired:Z
    .end local v8           #expiredTime:J
    .end local v10           #filePath:Ljava/lang/String;
    .end local v11           #id:J
    .end local v13           #item:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    .end local v15           #needUpdate:Z
    .end local v22           #tmpFilePath:Ljava/lang/String;
    .end local v23           #triggerInvalidating:Z
    :cond_4
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;->this$1:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->this$0:Lcom/htc/store/activity/list/ListItem;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/htc/store/activity/list/ListItem;->mIsUserCancelled:Z

    move/from16 v24, v0

    if-nez v24, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;->this$1:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->this$0:Lcom/htc/store/activity/list/ListItem;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnPause:Z
    invoke-static/range {v24 .. v24}, Lcom/htc/store/activity/list/ListItem;->access$3800(Lcom/htc/store/activity/list/ListItem;)Z

    move-result v24

    if-nez v24, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;->isCancelled()Z

    move-result v24

    if-eqz v24, :cond_e

    .line 1164
    .end local v18           #onlineItemIconURL:Ljava/lang/String;
    .end local v19           #remainedCount:I
    :cond_5
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    return-object v24

    .line 1065
    :catch_0
    move-exception v6

    .line 1066
    .local v6, e:Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/htc/store/activity/list/ListItem;->access$000()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual {v6}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    aput-object v6, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1079
    .end local v6           #e:Ljava/lang/InterruptedException;
    .restart local v18       #onlineItemIconURL:Ljava/lang/String;
    .restart local v19       #remainedCount:I
    :catchall_0
    move-exception v24

    :try_start_4
    monitor-exit v25
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v24

    .line 1088
    .restart local v13       #item:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    .restart local v23       #triggerInvalidating:Z
    :cond_6
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;->this$1:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->this$0:Lcom/htc/store/activity/list/ListItem;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    move-object/from16 v24, v0

    const/16 v26, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/provider/AccessHelper;->getImageCacheMappingItem(ILjava/lang/String;)Lcom/htc/store/module/vo/ImageCacheMappingItem;

    move-result-object v13

    .line 1090
    if-nez v13, :cond_8

    .line 1091
    new-instance v14, Lcom/htc/store/module/vo/ImageCacheMappingItem;

    invoke-direct {v14}, Lcom/htc/store/module/vo/ImageCacheMappingItem;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1092
    .end local v13           #item:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    .local v14, item:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    const/16 v24, 0x1

    :try_start_6
    move/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/htc/store/module/vo/ImageCacheMappingItem;->setType(I)V

    .line 1093
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/htc/store/module/vo/ImageCacheMappingItem;->setURL(Ljava/lang/String;)V

    .line 1094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;->this$1:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->this$0:Lcom/htc/store/activity/list/ListItem;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Lcom/htc/store/provider/AccessHelper;->addImageCacheMappingItem(Lcom/htc/store/module/vo/ImageCacheMappingItem;)J

    move-result-wide v11

    .line 1095
    .restart local v11       #id:J
    const-wide/16 v26, 0x0

    cmp-long v24, v11, v26

    if-lez v24, :cond_7

    .line 1096
    invoke-virtual {v14, v11, v12}, Lcom/htc/store/module/vo/ImageCacheMappingItem;->setId(J)V

    .line 1097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;->this$1:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->this$0:Lcom/htc/store/activity/list/ListItem;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem;->mImageCacheMapping:Ljava/util/HashMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-object v13, v14

    .end local v14           #item:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    .restart local v13       #item:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    goto/16 :goto_2

    .line 1099
    .end local v13           #item:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    .restart local v14       #item:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    :cond_7
    const/4 v13, 0x0

    .end local v14           #item:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    .restart local v13       #item:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    goto/16 :goto_2

    .line 1102
    .end local v11           #id:J
    :cond_8
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;->this$1:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->this$0:Lcom/htc/store/activity/list/ListItem;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem;->mImageCacheMapping:Ljava/util/HashMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    const/16 v23, 0x1

    goto/16 :goto_2

    .line 1106
    :catchall_1
    move-exception v24

    :goto_6
    monitor-exit v25
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v24

    .line 1111
    .restart local v4       #current:J
    .restart local v8       #expiredTime:J
    .restart local v11       #id:J
    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 1124
    .restart local v7       #expired:Z
    .restart local v10       #filePath:Ljava/lang/String;
    .restart local v15       #needUpdate:Z
    .restart local v22       #tmpFilePath:Ljava/lang/String;
    :cond_a
    invoke-static {}, Lcom/htc/store/activity/list/ListItem;->access$000()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-string v27, "Download icon Id: "

    aput-object v27, v25, v26

    const/16 v26, 0x1

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1127
    const/16 v20, -0x1

    .line 1128
    .local v20, result:I
    invoke-static {v10}, Lcom/htc/store/util/StorageUtils;->isExisted(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 1129
    const/16 v20, 0x1

    .line 1134
    :goto_7
    const/16 v24, 0x2

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_c

    const/4 v15, 0x1

    :goto_8
    goto/16 :goto_4

    .line 1131
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;->this$1:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->mIconWidthHeight:I
    invoke-static/range {v24 .. v24}, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->access$3600(Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;->this$1:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    move-object/from16 v25, v0

    #getter for: Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->mIconWidthHeight:I
    invoke-static/range {v25 .. v25}, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->access$3600(Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;)I

    move-result v25

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/htc/store/util/DownloadUtils;->retrieveImageWithResult(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v20

    goto :goto_7

    .line 1134
    :cond_c
    const/4 v15, 0x0

    goto :goto_8

    .line 1146
    .end local v20           #result:I
    .restart local v16       #newExpiredTime:J
    :catchall_2
    move-exception v24

    :try_start_8
    monitor-exit v25
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v24

    .line 1153
    .end local v4           #current:J
    .end local v7           #expired:Z
    .end local v8           #expiredTime:J
    .end local v10           #filePath:Ljava/lang/String;
    .end local v11           #id:J
    .end local v15           #needUpdate:Z
    .end local v16           #newExpiredTime:J
    .end local v22           #tmpFilePath:Ljava/lang/String;
    :cond_d
    invoke-static {}, Lcom/htc/store/activity/list/ListItem;->access$000()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-string v27, "item is null"

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 1159
    .end local v13           #item:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    .end local v23           #triggerInvalidating:Z
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;->this$1:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->mOnlineItemIconURLsToDownload:Ljava/util/ArrayList;
    invoke-static/range {v24 .. v24}, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->access$3400(Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;)Ljava/util/ArrayList;

    move-result-object v25

    monitor-enter v25

    .line 1160
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;->this$1:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->mOnlineItemIconURLsToDownload:Ljava/util/ArrayList;
    invoke-static/range {v24 .. v24}, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->access$3400(Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;)Ljava/util/ArrayList;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 1161
    monitor-exit v25

    goto/16 :goto_1

    :catchall_3
    move-exception v24

    monitor-exit v25
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v24

    .line 1106
    .restart local v14       #item:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    .restart local v23       #triggerInvalidating:Z
    :catchall_4
    move-exception v24

    move-object v13, v14

    .end local v14           #item:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    .restart local v13       #item:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    goto/16 :goto_6
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1058
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .parameter "taskId"

    .prologue
    .line 1169
    invoke-static {}, Lcom/htc/store/activity/list/ListItem;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onPostExecute: DownloadItemIconTask - "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1170
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;->this$1:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->this$0:Lcom/htc/store/activity/list/ListItem;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnPause:Z
    invoke-static {v0}, Lcom/htc/store/activity/list/ListItem;->access$3900(Lcom/htc/store/activity/list/ListItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1171
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;->this$1:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->this$0:Lcom/htc/store/activity/list/ListItem;

    #calls: Lcom/htc/store/activity/list/ListItem;->updateProgressBarAndMenuItem()Z
    invoke-static {v0}, Lcom/htc/store/activity/list/ListItem;->access$3100(Lcom/htc/store/activity/list/ListItem;)Z

    .line 1173
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1058
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader$DownloadItemIconTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
