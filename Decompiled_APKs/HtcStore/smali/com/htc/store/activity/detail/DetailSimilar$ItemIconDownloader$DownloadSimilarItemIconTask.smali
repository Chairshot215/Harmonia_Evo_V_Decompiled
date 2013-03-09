.class Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;
.super Landroid/os/AsyncTask;
.source "DetailSimilar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadSimilarItemIconTask"
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
.field final synthetic this$1:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;


# direct methods
.method private constructor <init>(Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;)V
    .locals 0
    .parameter

    .prologue
    .line 828
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;->this$1:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;Lcom/htc/store/activity/detail/DetailSimilar$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 828
    invoke-direct {p0, p1}, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;-><init>(Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 27
    .parameter "params"

    .prologue
    .line 832
    const/16 v23, 0x0

    aget-object v23, p1, v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 834
    .local v20, taskId:I
    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0x96

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    :try_start_0
    invoke-static/range {v23 .. v24}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 838
    :goto_0
    invoke-static {}, Lcom/htc/store/activity/detail/DetailSimilar;->access$400()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string v26, "doInBackground: DownloadSimilarItemIconTask - "

    aput-object v26, v24, v25

    const/16 v25, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;->this$1:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mOnlineItemIconURLsToDownload:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->access$3800(Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;)Ljava/util/ArrayList;

    move-result-object v23

    if-eqz v23, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;->this$1:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mOnlineItemIconURLsToDownload:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->access$3800(Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;)Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_5

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;->this$1:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mOnlineItemIconURLsToDownload:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->access$3800(Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;)Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 842
    .local v17, remainedCount:I
    :goto_1
    if-lez v17, :cond_5

    .line 843
    const/16 v19, 0x0

    .line 844
    .local v19, similarItemIconURL:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;->this$1:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mOnlineItemIconURLsToDownload:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->access$3800(Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;)Ljava/util/ArrayList;

    move-result-object v24

    monitor-enter v24

    .line 845
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;->this$1:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mOnlineItemIconURLsToDownload:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->access$3800(Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;)Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_0

    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;->this$1:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mOnlineItemIconURLsToDownload:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->access$3800(Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;)Ljava/util/ArrayList;

    move-result-object v23

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v23

    check-cast v0, Ljava/lang/String;

    move-object/from16 v19, v0

    .line 847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;->this$1:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mOnlineItemIconURLsToDownload:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->access$3800(Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;)Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 849
    :cond_0
    monitor-exit v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 850
    invoke-static {}, Lcom/htc/store/activity/detail/DetailSimilar;->access$400()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string v26, "similarItemIconURL: "

    aput-object v26, v24, v25

    const/16 v25, 0x1

    aput-object v19, v24, v25

    invoke-static/range {v23 .. v24}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 851
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_4

    .line 852
    const/4 v13, 0x0

    .line 853
    .local v13, item:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    const/16 v22, 0x0

    .line 854
    .local v22, triggerInvalidating:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;->this$1:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mImageCacheMapping:Ljava/util/HashMap;
    invoke-static/range {v23 .. v23}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1600(Lcom/htc/store/activity/detail/DetailSimilar;)Ljava/util/HashMap;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;->this$1:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mImageCacheMapping:Ljava/util/HashMap;
    invoke-static/range {v23 .. v23}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1600(Lcom/htc/store/activity/detail/DetailSimilar;)Ljava/util/HashMap;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #item:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    check-cast v13, Lcom/htc/store/module/vo/ImageCacheMappingItem;

    .line 875
    .restart local v13       #item:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    :goto_2
    if-eqz v13, :cond_4

    .line 876
    invoke-virtual {v13}, Lcom/htc/store/module/vo/ImageCacheMappingItem;->getId()J

    move-result-wide v11

    .line 877
    .local v11, id:J
    invoke-virtual {v13}, Lcom/htc/store/module/vo/ImageCacheMappingItem;->getExpiredTime()J

    move-result-wide v8

    .line 878
    .local v8, expiredTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 879
    .local v4, current:J
    cmp-long v23, v4, v8

    if-lez v23, :cond_9

    const/4 v7, 0x1

    .line 880
    .local v7, expired:Z
    :goto_3
    const/4 v14, 0x0

    .line 883
    .local v14, needUpdate:Z
    invoke-static {v11, v12}, Lcom/htc/store/util/StorageUtils;->getTemporarySharedImageFilePath(J)Ljava/lang/String;

    move-result-object v21

    .line 884
    .local v21, tmpFilePath:Ljava/lang/String;
    invoke-static {v11, v12}, Lcom/htc/store/util/StorageUtils;->getSharedImageFilePath(J)Ljava/lang/String;

    move-result-object v10

    .line 886
    .local v10, filePath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;->this$1:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mOverwrite:Z
    invoke-static/range {v23 .. v23}, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->access$3900(Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;)Z

    move-result v23

    if-eqz v23, :cond_a

    if-eqz v7, :cond_a

    .line 887
    invoke-static {}, Lcom/htc/store/activity/detail/DetailSimilar;->access$400()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string v26, "Forcely download icon Id: "

    aput-object v26, v24, v25

    const/16 v25, 0x1

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;->this$1:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mIconWidthHeight:I
    invoke-static/range {v23 .. v23}, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->access$4000(Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;->this$1:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mIconWidthHeight:I
    invoke-static/range {v24 .. v24}, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->access$4000(Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;)I

    move-result v24

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/htc/store/util/DownloadUtils;->retrieveImageForcely(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v14

    .line 903
    :goto_4
    if-eqz v14, :cond_1

    .line 904
    move-object/from16 v0, v21

    invoke-static {v0, v10}, Lcom/htc/store/util/StorageUtils;->moveFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    .line 907
    :cond_1
    if-eqz v14, :cond_2

    .line 908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;->this$1:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mImageTTL:J
    invoke-static/range {v23 .. v23}, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->access$4100(Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;)J

    move-result-wide v23

    add-long v15, v4, v23

    .line 909
    .local v15, newExpiredTime:J
    move-wide v0, v15

    invoke-virtual {v13, v0, v1}, Lcom/htc/store/module/vo/ImageCacheMappingItem;->setExpiredTime(J)V

    .line 910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;->this$1:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mImageCacheMapping:Ljava/util/HashMap;
    invoke-static/range {v23 .. v23}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1600(Lcom/htc/store/activity/detail/DetailSimilar;)Ljava/util/HashMap;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;->this$1:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static/range {v23 .. v23}, Lcom/htc/store/activity/detail/DetailSimilar;->access$500(Lcom/htc/store/activity/detail/DetailSimilar;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide v1, v15

    invoke-virtual {v0, v11, v12, v1, v2}, Lcom/htc/store/provider/AccessHelper;->updateImageCaheMappingItem(JJ)Z

    .line 913
    .end local v15           #newExpiredTime:J
    :cond_2
    if-nez v22, :cond_3

    if-eqz v14, :cond_4

    .line 914
    :cond_3
    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;->publishProgress([Ljava/lang/Object;)V

    .line 915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;->this$1:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;

    move-object/from16 v23, v0

    #calls: Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->invalidateList()V
    invoke-static/range {v23 .. v23}, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->access$4200(Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;)V

    .line 919
    .end local v4           #current:J
    .end local v7           #expired:Z
    .end local v8           #expiredTime:J
    .end local v10           #filePath:Ljava/lang/String;
    .end local v11           #id:J
    .end local v13           #item:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    .end local v14           #needUpdate:Z
    .end local v21           #tmpFilePath:Ljava/lang/String;
    .end local v22           #triggerInvalidating:Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;->this$1:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnPause:Z
    invoke-static/range {v23 .. v23}, Lcom/htc/store/activity/detail/DetailSimilar;->access$4300(Lcom/htc/store/activity/detail/DetailSimilar;)Z

    move-result v23

    if-nez v23, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;->isCancelled()Z

    move-result v23

    if-eqz v23, :cond_d

    .line 927
    .end local v17           #remainedCount:I
    .end local v19           #similarItemIconURL:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;->this$1:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;

    move-object/from16 v23, v0

    #calls: Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->onDownloadTaskFinish()V
    invoke-static/range {v23 .. v23}, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->access$4400(Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;)V

    .line 928
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    return-object v23

    .line 835
    :catch_0
    move-exception v6

    .line 836
    .local v6, e:Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/htc/store/activity/detail/DetailSimilar;->access$400()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual {v6}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    aput-object v6, v24, v25

    invoke-static/range {v23 .. v24}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 849
    .end local v6           #e:Ljava/lang/InterruptedException;
    .restart local v17       #remainedCount:I
    .restart local v19       #similarItemIconURL:Ljava/lang/String;
    :catchall_0
    move-exception v23

    :try_start_2
    monitor-exit v24
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v23

    .line 857
    .restart local v13       #item:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    .restart local v22       #triggerInvalidating:Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;->this$1:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static/range {v23 .. v23}, Lcom/htc/store/activity/detail/DetailSimilar;->access$500(Lcom/htc/store/activity/detail/DetailSimilar;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v23

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/provider/AccessHelper;->getImageCacheMappingItem(ILjava/lang/String;)Lcom/htc/store/module/vo/ImageCacheMappingItem;

    move-result-object v13

    .line 859
    if-nez v13, :cond_8

    .line 860
    new-instance v13, Lcom/htc/store/module/vo/ImageCacheMappingItem;

    .end local v13           #item:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    invoke-direct {v13}, Lcom/htc/store/module/vo/ImageCacheMappingItem;-><init>()V

    .line 861
    .restart local v13       #item:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/htc/store/module/vo/ImageCacheMappingItem;->setType(I)V

    .line 862
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/htc/store/module/vo/ImageCacheMappingItem;->setURL(Ljava/lang/String;)V

    .line 863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;->this$1:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static/range {v23 .. v23}, Lcom/htc/store/activity/detail/DetailSimilar;->access$500(Lcom/htc/store/activity/detail/DetailSimilar;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Lcom/htc/store/provider/AccessHelper;->addImageCacheMappingItem(Lcom/htc/store/module/vo/ImageCacheMappingItem;)J

    move-result-wide v11

    .line 864
    .restart local v11       #id:J
    const-wide/16 v23, 0x0

    cmp-long v23, v11, v23

    if-lez v23, :cond_7

    .line 865
    invoke-virtual {v13, v11, v12}, Lcom/htc/store/module/vo/ImageCacheMappingItem;->setId(J)V

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;->this$1:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mImageCacheMapping:Ljava/util/HashMap;
    invoke-static/range {v23 .. v23}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1600(Lcom/htc/store/activity/detail/DetailSimilar;)Ljava/util/HashMap;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 868
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 871
    .end local v11           #id:J
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;->this$1:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar;->mImageCacheMapping:Ljava/util/HashMap;
    invoke-static/range {v23 .. v23}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1600(Lcom/htc/store/activity/detail/DetailSimilar;)Ljava/util/HashMap;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    const/16 v22, 0x1

    goto/16 :goto_2

    .line 879
    .restart local v4       #current:J
    .restart local v8       #expiredTime:J
    .restart local v11       #id:J
    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 891
    .restart local v7       #expired:Z
    .restart local v10       #filePath:Ljava/lang/String;
    .restart local v14       #needUpdate:Z
    .restart local v21       #tmpFilePath:Ljava/lang/String;
    :cond_a
    invoke-static {}, Lcom/htc/store/activity/detail/DetailSimilar;->access$400()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string v26, "Download icon Id: "

    aput-object v26, v24, v25

    const/16 v25, 0x1

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 892
    const/16 v18, -0x1

    .line 893
    .local v18, result:I
    invoke-static {v10}, Lcom/htc/store/util/StorageUtils;->isExisted(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 894
    const/16 v18, 0x1

    .line 899
    :goto_5
    const/16 v23, 0x2

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_c

    const/4 v14, 0x1

    :goto_6
    goto/16 :goto_4

    .line 896
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;->this$1:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mIconWidthHeight:I
    invoke-static/range {v23 .. v23}, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->access$4000(Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;->this$1:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mIconWidthHeight:I
    invoke-static/range {v24 .. v24}, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->access$4000(Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;)I

    move-result v24

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/htc/store/util/DownloadUtils;->retrieveImageWithResult(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v18

    goto :goto_5

    .line 899
    :cond_c
    const/4 v14, 0x0

    goto :goto_6

    .line 922
    .end local v4           #current:J
    .end local v7           #expired:Z
    .end local v8           #expiredTime:J
    .end local v10           #filePath:Ljava/lang/String;
    .end local v11           #id:J
    .end local v13           #item:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    .end local v14           #needUpdate:Z
    .end local v18           #result:I
    .end local v21           #tmpFilePath:Ljava/lang/String;
    .end local v22           #triggerInvalidating:Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;->this$1:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mOnlineItemIconURLsToDownload:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->access$3800(Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;)Ljava/util/ArrayList;

    move-result-object v24

    monitor-enter v24

    .line 923
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;->this$1:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->mOnlineItemIconURLsToDownload:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->access$3800(Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;)Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 924
    monitor-exit v24

    goto/16 :goto_1

    :catchall_1
    move-exception v23

    monitor-exit v24
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v23
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 828
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .parameter "taskId"

    .prologue
    const/4 v3, 0x0

    .line 939
    invoke-static {}, Lcom/htc/store/activity/detail/DetailSimilar;->access$400()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onPostExecute: DownloadSimilarItemIconTask - "

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 940
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;->this$1:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnPause:Z
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailSimilar;->access$4500(Lcom/htc/store/activity/detail/DetailSimilar;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 941
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;->this$1:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #calls: Lcom/htc/store/activity/detail/DetailSimilar;->updateProgressBar()V
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailSimilar;->access$2700(Lcom/htc/store/activity/detail/DetailSimilar;)V

    .line 942
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;->this$1:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #calls: Lcom/htc/store/activity/detail/DetailSimilar;->updateEmptyList(Z)V
    invoke-static {v0, v3}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1300(Lcom/htc/store/activity/detail/DetailSimilar;Z)V

    .line 944
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 828
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 2
    .parameter "values"

    .prologue
    const/4 v1, 0x1

    .line 933
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;->this$1:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #calls: Lcom/htc/store/activity/detail/DetailSimilar;->updateProgressBar(Z)V
    invoke-static {v0, v1}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1200(Lcom/htc/store/activity/detail/DetailSimilar;Z)V

    .line 934
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader$DownloadSimilarItemIconTask;->this$1:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->this$0:Lcom/htc/store/activity/detail/DetailSimilar;

    #calls: Lcom/htc/store/activity/detail/DetailSimilar;->updateEmptyList(Z)V
    invoke-static {v0, v1}, Lcom/htc/store/activity/detail/DetailSimilar;->access$1300(Lcom/htc/store/activity/detail/DetailSimilar;Z)V

    .line 935
    return-void
.end method
