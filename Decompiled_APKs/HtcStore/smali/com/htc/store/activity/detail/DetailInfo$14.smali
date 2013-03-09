.class Lcom/htc/store/activity/detail/DetailInfo$14;
.super Landroid/os/Handler;
.source "DetailInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/detail/DetailInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/detail/DetailInfo;


# direct methods
.method constructor <init>(Lcom/htc/store/activity/detail/DetailInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 1715
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailInfo$14;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    .line 1717
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 1811
    :cond_0
    :goto_0
    return-void

    .line 1720
    :pswitch_0
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "UI_MESSAGE_INIT_DETAIL_INFO"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1721
    iget-object v8, p0, Lcom/htc/store/activity/detail/DetailInfo$14;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->initNonUiHandler()V
    invoke-static {v8}, Lcom/htc/store/activity/detail/DetailInfo;->access$4200(Lcom/htc/store/activity/detail/DetailInfo;)V

    .line 1722
    iget-object v8, p0, Lcom/htc/store/activity/detail/DetailInfo$14;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->showHeaderProgressBar()V
    invoke-static {v8}, Lcom/htc/store/activity/detail/DetailInfo;->access$1400(Lcom/htc/store/activity/detail/DetailInfo;)V

    .line 1723
    iget-object v8, p0, Lcom/htc/store/activity/detail/DetailInfo$14;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    const v9, 0x7f0a0069

    const/4 v10, 0x1

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->showEmptyView(IZ)V
    invoke-static {v8, v9, v10}, Lcom/htc/store/activity/detail/DetailInfo;->access$4300(Lcom/htc/store/activity/detail/DetailInfo;IZ)V

    .line 1724
    new-instance v8, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnDBTask;

    iget-object v9, p0, Lcom/htc/store/activity/detail/DetailInfo$14;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnDBTask;-><init>(Lcom/htc/store/activity/detail/DetailInfo;Lcom/htc/store/activity/detail/DetailInfo$1;)V

    sget-object v9, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnDBTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1727
    :pswitch_1
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "UI_MESSAGE_SET_AUDIO_SAMPLE_URI_DONE"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1728
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;

    .line 1729
    .local v0, audio:Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;
    if-nez v0, :cond_1

    .line 1730
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "audio item is null, can\'t set sample uri"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1733
    :cond_1
    invoke-virtual {v0}, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;->getDownloadObserver()Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;

    move-result-object v2

    .line 1734
    .local v2, downloadObserver:Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;
    if-nez v2, :cond_2

    .line 1735
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "audio observer is null, can\'t set sample uri"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1738
    :cond_2
    invoke-virtual {v2}, Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;->getDownloadUri()Landroid/net/Uri;

    move-result-object v7

    .line 1739
    .local v7, uri:Landroid/net/Uri;
    if-nez v7, :cond_3

    .line 1740
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "audio uri is null, can\'t set sample uri"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1743
    :cond_3
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "Download "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v0}, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;->getInfo()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, " sample finished, set uri done: "

    aput-object v11, v9, v10

    const/4 v10, 0x3

    aput-object v7, v9, v10

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1744
    invoke-virtual {v0, v7}, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;->setAudioUri(Landroid/net/Uri;)V

    .line 1745
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;->setDownloadObserver(Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;)V

    .line 1746
    iget-object v8, p0, Lcom/htc/store/activity/detail/DetailInfo$14;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    invoke-static {v8}, Lcom/htc/store/activity/detail/DetailInfo;->access$4508(Lcom/htc/store/activity/detail/DetailInfo;)I

    .line 1747
    iget-object v8, p0, Lcom/htc/store/activity/detail/DetailInfo$14;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesCount:I
    invoke-static {v8}, Lcom/htc/store/activity/detail/DetailInfo;->access$4600(Lcom/htc/store/activity/detail/DetailInfo;)I

    move-result v8

    iget-object v9, p0, Lcom/htc/store/activity/detail/DetailInfo$14;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesFinishedCount:I
    invoke-static {v9}, Lcom/htc/store/activity/detail/DetailInfo;->access$4500(Lcom/htc/store/activity/detail/DetailInfo;)I

    move-result v9

    iget-object v10, p0, Lcom/htc/store/activity/detail/DetailInfo$14;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesFailedCount:I
    invoke-static {v10}, Lcom/htc/store/activity/detail/DetailInfo;->access$4700(Lcom/htc/store/activity/detail/DetailInfo;)I

    move-result v10

    add-int/2addr v9, v10

    if-ne v8, v9, :cond_4

    .line 1748
    iget-object v8, p0, Lcom/htc/store/activity/detail/DetailInfo$14;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->hideHeaderProgressBar()V
    invoke-static {v8}, Lcom/htc/store/activity/detail/DetailInfo;->access$4800(Lcom/htc/store/activity/detail/DetailInfo;)V

    .line 1749
    :cond_4
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "sample count = "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/htc/store/activity/detail/DetailInfo$14;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesCount:I
    invoke-static {v11}, Lcom/htc/store/activity/detail/DetailInfo;->access$4600(Lcom/htc/store/activity/detail/DetailInfo;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, ", finished = "

    aput-object v11, v9, v10

    const/4 v10, 0x3

    iget-object v11, p0, Lcom/htc/store/activity/detail/DetailInfo$14;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesFinishedCount:I
    invoke-static {v11}, Lcom/htc/store/activity/detail/DetailInfo;->access$4500(Lcom/htc/store/activity/detail/DetailInfo;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, ", failed = "

    aput-object v11, v9, v10

    const/4 v10, 0x5

    iget-object v11, p0, Lcom/htc/store/activity/detail/DetailInfo$14;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesFailedCount:I
    invoke-static {v11}, Lcom/htc/store/activity/detail/DetailInfo;->access$4700(Lcom/htc/store/activity/detail/DetailInfo;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1750
    iget-object v8, p0, Lcom/htc/store/activity/detail/DetailInfo$14;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mDetailInfoAdapter:Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter;
    invoke-static {v8}, Lcom/htc/store/activity/detail/DetailInfo;->access$4900(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 1751
    iget-object v8, p0, Lcom/htc/store/activity/detail/DetailInfo$14;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mDetailInfoAdapter:Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter;
    invoke-static {v8}, Lcom/htc/store/activity/detail/DetailInfo;->access$4900(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 1754
    .end local v0           #audio:Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;
    .end local v2           #downloadObserver:Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;
    .end local v7           #uri:Landroid/net/Uri;
    :pswitch_2
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "UI_MESSAGE_SET_AUDIO_SAMPLE_URI_FAILED"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1755
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 1756
    .local v6, status_error:I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;

    .line 1757
    .local v1, audio_failed:Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;
    if-nez v1, :cond_5

    .line 1758
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "audio item is null, can\'t set download error"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1761
    :cond_5
    invoke-virtual {v1}, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;->getDownloadObserver()Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;

    move-result-object v3

    .line 1762
    .local v3, downloadObserver_failed:Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;
    if-nez v3, :cond_6

    .line 1763
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "audio observer is null, can\'t set download error"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1766
    :cond_6
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "Download "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v1}, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;->getInfo()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, " sample failed, status error: "

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1767
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;->setDownloadObserver(Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;)V

    .line 1768
    iget-object v8, p0, Lcom/htc/store/activity/detail/DetailInfo$14;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    invoke-static {v8}, Lcom/htc/store/activity/detail/DetailInfo;->access$4708(Lcom/htc/store/activity/detail/DetailInfo;)I

    .line 1769
    iget-object v8, p0, Lcom/htc/store/activity/detail/DetailInfo$14;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesCount:I
    invoke-static {v8}, Lcom/htc/store/activity/detail/DetailInfo;->access$4600(Lcom/htc/store/activity/detail/DetailInfo;)I

    move-result v8

    iget-object v9, p0, Lcom/htc/store/activity/detail/DetailInfo$14;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesFinishedCount:I
    invoke-static {v9}, Lcom/htc/store/activity/detail/DetailInfo;->access$4500(Lcom/htc/store/activity/detail/DetailInfo;)I

    move-result v9

    iget-object v10, p0, Lcom/htc/store/activity/detail/DetailInfo$14;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesFailedCount:I
    invoke-static {v10}, Lcom/htc/store/activity/detail/DetailInfo;->access$4700(Lcom/htc/store/activity/detail/DetailInfo;)I

    move-result v10

    add-int/2addr v9, v10

    if-ne v8, v9, :cond_7

    .line 1770
    iget-object v8, p0, Lcom/htc/store/activity/detail/DetailInfo$14;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->hideHeaderProgressBar()V
    invoke-static {v8}, Lcom/htc/store/activity/detail/DetailInfo;->access$4800(Lcom/htc/store/activity/detail/DetailInfo;)V

    .line 1771
    :cond_7
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "sample count = "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/htc/store/activity/detail/DetailInfo$14;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesCount:I
    invoke-static {v11}, Lcom/htc/store/activity/detail/DetailInfo;->access$4600(Lcom/htc/store/activity/detail/DetailInfo;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, ", finished = "

    aput-object v11, v9, v10

    const/4 v10, 0x3

    iget-object v11, p0, Lcom/htc/store/activity/detail/DetailInfo$14;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesFinishedCount:I
    invoke-static {v11}, Lcom/htc/store/activity/detail/DetailInfo;->access$4500(Lcom/htc/store/activity/detail/DetailInfo;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, ", failed = "

    aput-object v11, v9, v10

    const/4 v10, 0x5

    iget-object v11, p0, Lcom/htc/store/activity/detail/DetailInfo$14;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesFailedCount:I
    invoke-static {v11}, Lcom/htc/store/activity/detail/DetailInfo;->access$4700(Lcom/htc/store/activity/detail/DetailInfo;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1774
    .end local v1           #audio_failed:Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;
    .end local v3           #downloadObserver_failed:Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;
    .end local v6           #status_error:I
    :pswitch_3
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "UI_MESSAGE_UPDATE_ITEM_STATUS_FROM_MY_ACTIVITY"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1775
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/htc/store/module/vo/MyActivityItem;

    .line 1776
    .local v4, myActivity:Lcom/htc/store/module/vo/MyActivityItem;
    const/4 v5, 0x1

    .line 1777
    .local v5, needToUpdate:Z
    if-nez v4, :cond_a

    .line 1778
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "my activity item is null"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1779
    iget-object v8, p0, Lcom/htc/store/activity/detail/DetailInfo$14;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemStatus:I
    invoke-static {v8}, Lcom/htc/store/activity/detail/DetailInfo;->access$300(Lcom/htc/store/activity/detail/DetailInfo;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_8

    iget-object v8, p0, Lcom/htc/store/activity/detail/DetailInfo$14;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemStatus:I
    invoke-static {v8}, Lcom/htc/store/activity/detail/DetailInfo;->access$300(Lcom/htc/store/activity/detail/DetailInfo;)I

    move-result v8

    const/4 v9, 0x4

    if-eq v8, v9, :cond_8

    iget-object v8, p0, Lcom/htc/store/activity/detail/DetailInfo$14;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemStatus:I
    invoke-static {v8}, Lcom/htc/store/activity/detail/DetailInfo;->access$300(Lcom/htc/store/activity/detail/DetailInfo;)I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_9

    .line 1782
    :cond_8
    const/4 v5, 0x1

    .line 1785
    :goto_1
    iget-object v8, p0, Lcom/htc/store/activity/detail/DetailInfo$14;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    const/16 v9, 0xb

    #setter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemStatus:I
    invoke-static {v8, v9}, Lcom/htc/store/activity/detail/DetailInfo;->access$302(Lcom/htc/store/activity/detail/DetailInfo;I)I

    .line 1794
    iget-object v8, p0, Lcom/htc/store/activity/detail/DetailInfo$14;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    const/4 v9, 0x0

    #setter for: Lcom/htc/store/activity/detail/DetailInfo;->mIsPurchased:Z
    invoke-static {v8, v9}, Lcom/htc/store/activity/detail/DetailInfo;->access$5002(Lcom/htc/store/activity/detail/DetailInfo;Z)Z

    .line 1802
    :goto_2
    if-eqz v5, :cond_0

    .line 1803
    iget-object v8, p0, Lcom/htc/store/activity/detail/DetailInfo$14;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnPause:Z
    invoke-static {v8}, Lcom/htc/store/activity/detail/DetailInfo;->access$5100(Lcom/htc/store/activity/detail/DetailInfo;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 1804
    iget-object v8, p0, Lcom/htc/store/activity/detail/DetailInfo$14;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    iget-object v9, p0, Lcom/htc/store/activity/detail/DetailInfo$14;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemStatus:I
    invoke-static {v9}, Lcom/htc/store/activity/detail/DetailInfo;->access$300(Lcom/htc/store/activity/detail/DetailInfo;)I

    move-result v9

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->updateActionButton(I)V
    invoke-static {v8, v9}, Lcom/htc/store/activity/detail/DetailInfo;->access$400(Lcom/htc/store/activity/detail/DetailInfo;I)V

    goto/16 :goto_0

    .line 1784
    :cond_9
    const/4 v5, 0x0

    goto :goto_1

    .line 1796
    :cond_a
    iget-object v8, p0, Lcom/htc/store/activity/detail/DetailInfo$14;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemStatus:I
    invoke-static {v8}, Lcom/htc/store/activity/detail/DetailInfo;->access$300(Lcom/htc/store/activity/detail/DetailInfo;)I

    move-result v8

    invoke-virtual {v4}, Lcom/htc/store/module/vo/MyActivityItem;->getStatus()I

    move-result v9

    if-ne v8, v9, :cond_b

    .line 1797
    const/4 v5, 0x0

    .line 1800
    :goto_3
    iget-object v9, p0, Lcom/htc/store/activity/detail/DetailInfo$14;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    invoke-virtual {v4}, Lcom/htc/store/module/vo/MyActivityItem;->getOnlineIsPurchased()I

    move-result v8

    const/4 v10, 0x1

    if-ne v8, v10, :cond_c

    const/4 v8, 0x1

    :goto_4
    #setter for: Lcom/htc/store/activity/detail/DetailInfo;->mIsPurchased:Z
    invoke-static {v9, v8}, Lcom/htc/store/activity/detail/DetailInfo;->access$5002(Lcom/htc/store/activity/detail/DetailInfo;Z)Z

    goto :goto_2

    .line 1799
    :cond_b
    iget-object v8, p0, Lcom/htc/store/activity/detail/DetailInfo$14;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    invoke-virtual {v4}, Lcom/htc/store/module/vo/MyActivityItem;->getStatus()I

    move-result v9

    #setter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemStatus:I
    invoke-static {v8, v9}, Lcom/htc/store/activity/detail/DetailInfo;->access$302(Lcom/htc/store/activity/detail/DetailInfo;I)I

    goto :goto_3

    .line 1800
    :cond_c
    const/4 v8, 0x0

    goto :goto_4

    .line 1806
    :cond_d
    iget-object v8, p0, Lcom/htc/store/activity/detail/DetailInfo$14;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    const/4 v9, 0x1

    #setter for: Lcom/htc/store/activity/detail/DetailInfo;->mHasToUpdateActionButton:Z
    invoke-static {v8, v9}, Lcom/htc/store/activity/detail/DetailInfo;->access$5202(Lcom/htc/store/activity/detail/DetailInfo;Z)Z

    goto/16 :goto_0

    .line 1717
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
