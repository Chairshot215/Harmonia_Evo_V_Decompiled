.class Lcom/htc/sdm/activity/SoundSetList$9;
.super Landroid/os/Handler;
.source "SoundSetList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdm/activity/SoundSetList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sdm/activity/SoundSetList;


# direct methods
.method constructor <init>(Lcom/htc/sdm/activity/SoundSetList;)V
    .locals 0
    .parameter

    .prologue
    .line 2340
    iput-object p1, p0, Lcom/htc/sdm/activity/SoundSetList$9;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2344
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 2470
    :cond_0
    :goto_0
    return-void

    .line 2347
    :sswitch_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 2348
    .local v3, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/htc/sdm/activity/SoundSetList$9;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    const/4 v7, -0x1

    invoke-virtual {v6, v7, v3}, Lcom/htc/sdm/activity/SoundSetList;->setResult(ILandroid/content/Intent;)V

    .line 2349
    iget-object v6, p0, Lcom/htc/sdm/activity/SoundSetList$9;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-virtual {v6}, Lcom/htc/sdm/activity/SoundSetList;->finish()V

    goto :goto_0

    .line 2352
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_1
    iget-object v6, p0, Lcom/htc/sdm/activity/SoundSetList$9;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    iget-object v6, v6, Lcom/htc/sdm/activity/SoundSetList;->mList:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    .line 2354
    iget-object v6, p0, Lcom/htc/sdm/activity/SoundSetList$9;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentOpMode:I
    invoke-static {v6}, Lcom/htc/sdm/activity/SoundSetList;->access$2800(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v6

    if-ne v6, v8, :cond_3

    iget-object v6, p0, Lcom/htc/sdm/activity/SoundSetList$9;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_SSAdapter:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;
    invoke-static {v6}, Lcom/htc/sdm/activity/SoundSetList;->access$2900(Lcom/htc/sdm/activity/SoundSetList;)Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 2356
    iget-object v6, p0, Lcom/htc/sdm/activity/SoundSetList$9;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_SSAdapter:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;
    invoke-static {v6}, Lcom/htc/sdm/activity/SoundSetList;->access$2900(Lcom/htc/sdm/activity/SoundSetList;)Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/sdm/activity/SoundSetList$9;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    iget-object v7, v7, Lcom/htc/sdm/activity/SoundSetList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->UpdatetList(Ljava/util/ArrayList;)V

    .line 2357
    iget-object v6, p0, Lcom/htc/sdm/activity/SoundSetList$9;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_ApplyBtn:Landroid/widget/Button;
    invoke-static {v6}, Lcom/htc/sdm/activity/SoundSetList;->access$2600(Lcom/htc/sdm/activity/SoundSetList;)Landroid/widget/Button;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 2359
    iget-object v6, p0, Lcom/htc/sdm/activity/SoundSetList$9;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    iget-object v6, v6, Lcom/htc/sdm/activity/SoundSetList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 2361
    iget-object v6, p0, Lcom/htc/sdm/activity/SoundSetList$9;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_ApplyBtn:Landroid/widget/Button;
    invoke-static {v6}, Lcom/htc/sdm/activity/SoundSetList;->access$2600(Lcom/htc/sdm/activity/SoundSetList;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2368
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/htc/sdm/activity/SoundSetList$9;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_SSAdapter:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;
    invoke-static {v6}, Lcom/htc/sdm/activity/SoundSetList;->access$2900(Lcom/htc/sdm/activity/SoundSetList;)Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    move-result-object v6

    #getter for: Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->b_isListItemClick:Z
    invoke-static {v6}, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->access$100(Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2370
    iget-object v6, p0, Lcom/htc/sdm/activity/SoundSetList$9;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->mListView:Lcom/htc/widget/HtcListView;
    invoke-static {v6}, Lcom/htc/sdm/activity/SoundSetList;->access$1200(Lcom/htc/sdm/activity/SoundSetList;)Lcom/htc/widget/HtcListView;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/sdm/activity/SoundSetList$9;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_SSAdapter:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;
    invoke-static {v7}, Lcom/htc/sdm/activity/SoundSetList;->access$2900(Lcom/htc/sdm/activity/SoundSetList;)Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    move-result-object v7

    #getter for: Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->m_nCurSel:I
    invoke-static {v7}, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->access$1100(Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    goto :goto_0

    .line 2365
    :cond_2
    iget-object v6, p0, Lcom/htc/sdm/activity/SoundSetList$9;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_ApplyBtn:Landroid/widget/Button;
    invoke-static {v6}, Lcom/htc/sdm/activity/SoundSetList;->access$2600(Lcom/htc/sdm/activity/SoundSetList;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 2373
    :cond_3
    iget-object v6, p0, Lcom/htc/sdm/activity/SoundSetList$9;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentOpMode:I
    invoke-static {v6}, Lcom/htc/sdm/activity/SoundSetList;->access$2800(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/htc/sdm/activity/SoundSetList$9;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_SDAdapter:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;
    invoke-static {v6}, Lcom/htc/sdm/activity/SoundSetList;->access$2500(Lcom/htc/sdm/activity/SoundSetList;)Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 2375
    iget-object v6, p0, Lcom/htc/sdm/activity/SoundSetList$9;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_SDAdapter:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;
    invoke-static {v6}, Lcom/htc/sdm/activity/SoundSetList;->access$2500(Lcom/htc/sdm/activity/SoundSetList;)Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/sdm/activity/SoundSetList$9;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    iget-object v7, v7, Lcom/htc/sdm/activity/SoundSetList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->UpdatetList(Ljava/util/ArrayList;)V

    .line 2376
    iget-object v6, p0, Lcom/htc/sdm/activity/SoundSetList$9;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_ApplyBtn:Landroid/widget/Button;
    invoke-static {v6}, Lcom/htc/sdm/activity/SoundSetList;->access$2600(Lcom/htc/sdm/activity/SoundSetList;)Landroid/widget/Button;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 2378
    iget-object v6, p0, Lcom/htc/sdm/activity/SoundSetList$9;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I
    invoke-static {v6}, Lcom/htc/sdm/activity/SoundSetList;->access$900(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v6

    if-ne v8, v6, :cond_4

    .line 2380
    iget-object v6, p0, Lcom/htc/sdm/activity/SoundSetList$9;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    iget-object v6, v6, Lcom/htc/sdm/activity/SoundSetList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 2382
    iget-object v6, p0, Lcom/htc/sdm/activity/SoundSetList$9;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_ApplyBtn:Landroid/widget/Button;
    invoke-static {v6}, Lcom/htc/sdm/activity/SoundSetList;->access$2600(Lcom/htc/sdm/activity/SoundSetList;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 2387
    :cond_4
    iget-object v6, p0, Lcom/htc/sdm/activity/SoundSetList$9;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_ApplyBtn:Landroid/widget/Button;
    invoke-static {v6}, Lcom/htc/sdm/activity/SoundSetList;->access$2600(Lcom/htc/sdm/activity/SoundSetList;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 2397
    :sswitch_2
    :try_start_0
    iget-object v6, p0, Lcom/htc/sdm/activity/SoundSetList$9;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_CurrentPlayableThreadID:J
    invoke-static {v6}, Lcom/htc/sdm/activity/SoundSetList;->access$1400(Lcom/htc/sdm/activity/SoundSetList;)J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "thread_id"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 2399
    iget-object v6, p0, Lcom/htc/sdm/activity/SoundSetList$9;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-virtual {v6}, Lcom/htc/sdm/activity/SoundSetList;->stopMediaPlayer()V

    .line 2400
    iget-object v6, p0, Lcom/htc/sdm/activity/SoundSetList$9;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    new-instance v7, Landroid/media/MediaPlayer;

    invoke-direct {v7}, Landroid/media/MediaPlayer;-><init>()V

    #setter for: Lcom/htc/sdm/activity/SoundSetList;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v6, v7}, Lcom/htc/sdm/activity/SoundSetList;->access$3002(Lcom/htc/sdm/activity/SoundSetList;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 2401
    iget-object v6, p0, Lcom/htc/sdm/activity/SoundSetList$9;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v6}, Lcom/htc/sdm/activity/SoundSetList;->access$3000(Lcom/htc/sdm/activity/SoundSetList;)Landroid/media/MediaPlayer;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 2405
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "sound_fd_uri"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2407
    .local v5, soundUri:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 2413
    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "content://drm"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2415
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "drm_playback_path"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2416
    .local v0, DRMPlaybackPath:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/sdm/activity/SoundSetList$9;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v6}, Lcom/htc/sdm/activity/SoundSetList;->access$3000(Lcom/htc/sdm/activity/SoundSetList;)Landroid/media/MediaPlayer;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 2424
    .end local v0           #DRMPlaybackPath:Ljava/lang/String;
    :goto_2
    iget-object v6, p0, Lcom/htc/sdm/activity/SoundSetList$9;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #calls: Lcom/htc/sdm/activity/SoundSetList;->requestAudioFocus()V
    invoke-static {v6}, Lcom/htc/sdm/activity/SoundSetList;->access$3100(Lcom/htc/sdm/activity/SoundSetList;)V

    .line 2443
    iget-object v6, p0, Lcom/htc/sdm/activity/SoundSetList$9;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v6}, Lcom/htc/sdm/activity/SoundSetList;->access$3000(Lcom/htc/sdm/activity/SoundSetList;)Landroid/media/MediaPlayer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->prepare()V

    .line 2444
    iget-object v6, p0, Lcom/htc/sdm/activity/SoundSetList$9;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v6}, Lcom/htc/sdm/activity/SoundSetList;->access$3000(Lcom/htc/sdm/activity/SoundSetList;)Landroid/media/MediaPlayer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2463
    .end local v5           #soundUri:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2465
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 2420
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v5       #soundUri:Ljava/lang/String;
    :cond_5
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "sound_file_descriptor"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelFileDescriptor;

    .line 2421
    .local v4, pfd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 2422
    .local v2, fd:Ljava/io/FileDescriptor;
    iget-object v6, p0, Lcom/htc/sdm/activity/SoundSetList$9;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v6}, Lcom/htc/sdm/activity/SoundSetList;->access$3000(Lcom/htc/sdm/activity/SoundSetList;)Landroid/media/MediaPlayer;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 2344
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x65 -> :sswitch_2
        0xc8 -> :sswitch_0
    .end sparse-switch
.end method
