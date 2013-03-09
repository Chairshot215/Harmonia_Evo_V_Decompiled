.class public Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter;
.super Lcom/htc/sdm/SDMBaseListAdapter;
.source "SoundSetDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdm/activity/SoundSetDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DetailAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/sdm/SDMBaseListAdapter",
        "<",
        "Lcom/htc/sdm/activity/SoundSetDetail$SoundData;",
        ">;"
    }
.end annotation


# instance fields
.field mCR:Landroid/content/ContentResolver;

.field mContext:Landroid/content/Context;

.field public mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field final synthetic this$0:Lcom/htc/sdm/activity/SoundSetDetail;


# direct methods
.method public constructor <init>(Lcom/htc/sdm/activity/SoundSetDetail;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 323
    iput-object p1, p0, Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    .line 324
    invoke-direct {p0, p2}, Lcom/htc/sdm/SDMBaseListAdapter;-><init>(Landroid/content/Context;)V

    .line 477
    new-instance v0, Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter$2;

    invoke-direct {v0, p0}, Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter$2;-><init>(Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter;)V

    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter;->mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 325
    iput-object p2, p0, Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter;->mContext:Landroid/content/Context;

    .line 326
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter;->mCR:Landroid/content/ContentResolver;

    .line 328
    iget-object v0, p1, Lcom/htc/sdm/activity/SoundSetDetail;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 330
    return-void
.end method

.method private createItemView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "parent"

    .prologue
    .line 334
    iget-object v1, p0, Lcom/htc/sdm/SDMBaseListAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 335
    .local v0, li:Landroid/view/LayoutInflater;
    const v1, 0x7f030007

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 341
    const/4 v4, 0x0

    .line 342
    .local v4, itemView:Landroid/view/View;
    if-eqz p2, :cond_2

    move-object v4, p2

    .line 343
    :goto_0
    iget-object v9, p0, Lcom/htc/sdm/SDMBaseListAdapter;->MyList:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/sdm/activity/SoundSetDetail$SoundData;

    .line 346
    .local v3, item:Lcom/htc/sdm/activity/SoundSetDetail$SoundData;
    const v9, 0x7f0b0018

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemImageButton;

    .line 352
    .local v2, imgBtn:Lcom/htc/widget/HtcListItemImageButton;
    new-instance v9, Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter$1;

    invoke-direct {v9, p0}, Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter$1;-><init>(Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter;)V

    invoke-virtual {v2, v9}, Lcom/htc/widget/HtcListItemImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    const v9, 0x7f0b000a

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListItem2LineText;

    .line 371
    .local v5, linetext:Lcom/htc/widget/HtcListItem2LineText;
    invoke-virtual {v3}, Lcom/htc/sdm/activity/SoundSetDetail$SoundData;->getSoundText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 372
    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 373
    const/4 v6, 0x1

    .line 375
    .local v6, needDownload:Z
    const/4 v9, 0x2

    invoke-virtual {v3}, Lcom/htc/sdm/activity/SoundSetDetail$SoundData;->getParcelable()Lcom/htc/sdm/SoundSetParcelable;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/sdm/SoundSetParcelable;->getDownloadStatus()I

    move-result v10

    if-ne v9, v10, :cond_0

    .line 378
    const/4 v6, 0x0

    .line 383
    :try_start_0
    invoke-virtual {v3}, Lcom/htc/sdm/activity/SoundSetDetail$SoundData;->getParcelable()Lcom/htc/sdm/SoundSetParcelable;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/sdm/SoundSetParcelable;->getLocalFileUri()Landroid/net/Uri;

    move-result-object v8

    .line 385
    .local v8, soundUri:Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "content://drm"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 396
    :goto_1
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 463
    .end local v8           #soundUri:Landroid/net/Uri;
    :cond_0
    :goto_2
    invoke-virtual {v3}, Lcom/htc/sdm/activity/SoundSetDetail$SoundData;->getParcelable()Lcom/htc/sdm/SoundSetParcelable;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/sdm/SoundSetParcelable;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 466
    iget-object v9, p0, Lcom/htc/sdm/SDMBaseListAdapter;->MyList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_1

    iget-object v9, p0, Lcom/htc/sdm/SDMBaseListAdapter;->MyList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne p1, v9, :cond_1

    .line 468
    iget-object v9, p0, Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    #getter for: Lcom/htc/sdm/activity/SoundSetDetail;->mHtcListItemDrawAndSeparate:Lcom/htc/widget/HtcListItemSeparable;
    invoke-static {v9}, Lcom/htc/sdm/activity/SoundSetDetail;->access$100(Lcom/htc/sdm/activity/SoundSetDetail;)Lcom/htc/widget/HtcListItemSeparable;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 471
    :cond_1
    iget-object v9, p0, Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    iget-object v9, v9, Lcom/htc/sdm/activity/SoundSetDetail;->mHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    return-object v4

    .line 342
    .end local v2           #imgBtn:Lcom/htc/widget/HtcListItemImageButton;
    .end local v3           #item:Lcom/htc/sdm/activity/SoundSetDetail$SoundData;
    .end local v5           #linetext:Lcom/htc/widget/HtcListItem2LineText;
    .end local v6           #needDownload:Z
    :cond_2
    invoke-direct {p0, p3}, Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter;->createItemView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto/16 :goto_0

    .line 392
    .restart local v2       #imgBtn:Lcom/htc/widget/HtcListItemImageButton;
    .restart local v3       #item:Lcom/htc/sdm/activity/SoundSetDetail$SoundData;
    .restart local v5       #linetext:Lcom/htc/widget/HtcListItem2LineText;
    .restart local v6       #needDownload:Z
    .restart local v8       #soundUri:Landroid/net/Uri;
    :cond_3
    :try_start_1
    iget-object v9, p0, Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter;->mCR:Landroid/content/ContentResolver;

    const-string v10, "r"

    invoke-virtual {v9, v8, v10}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    .line 393
    .local v7, pfd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 394
    .local v1, fd:Ljava/io/FileDescriptor;
    invoke-virtual {v3, v1}, Lcom/htc/sdm/activity/SoundSetDetail$SoundData;->setFd(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 400
    .end local v1           #fd:Ljava/io/FileDescriptor;
    .end local v7           #pfd:Landroid/os/ParcelFileDescriptor;
    .end local v8           #soundUri:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 402
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 403
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 404
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 405
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 406
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2

    .line 408
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v9

    goto :goto_2
.end method

.method public playSound(I)V
    .locals 7
    .parameter "position"

    .prologue
    .line 489
    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    invoke-virtual {v4}, Lcom/htc/sdm/activity/SoundSetDetail;->stopMediaPlayer()V

    .line 490
    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    new-instance v5, Landroid/media/MediaPlayer;

    invoke-direct {v5}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v5, v4, Lcom/htc/sdm/activity/SoundSetDetail;->m_Player:Landroid/media/MediaPlayer;

    .line 498
    iget-object v4, p0, Lcom/htc/sdm/SDMBaseListAdapter;->MyList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sdm/activity/SoundSetDetail$SoundData;

    .line 501
    .local v2, item:Lcom/htc/sdm/activity/SoundSetDetail$SoundData;
    const/4 v4, 0x2

    :try_start_0
    invoke-virtual {v2}, Lcom/htc/sdm/activity/SoundSetDetail$SoundData;->getParcelable()Lcom/htc/sdm/SoundSetParcelable;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/sdm/SoundSetParcelable;->getDownloadStatus()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 505
    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    iget-object v4, v4, Lcom/htc/sdm/activity/SoundSetDetail;->m_Player:Landroid/media/MediaPlayer;

    if-eqz v4, :cond_1

    .line 508
    invoke-virtual {v2}, Lcom/htc/sdm/activity/SoundSetDetail$SoundData;->getParcelable()Lcom/htc/sdm/SoundSetParcelable;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/sdm/SoundSetParcelable;->getLocalFileUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "content://drm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 511
    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    iget-object v4, v4, Lcom/htc/sdm/activity/SoundSetDetail;->m_Player:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    invoke-virtual {v5}, Lcom/htc/sdm/activity/SoundSetDetail;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2}, Lcom/htc/sdm/activity/SoundSetDetail$SoundData;->getParcelable()Lcom/htc/sdm/SoundSetParcelable;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/sdm/SoundSetParcelable;->getLocalFileUri()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sdm/util/SDMDBUtil;->getDrmPlaybackUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 527
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    #calls: Lcom/htc/sdm/activity/SoundSetDetail;->requestAudioFocus()V
    invoke-static {v4}, Lcom/htc/sdm/activity/SoundSetDetail;->access$200(Lcom/htc/sdm/activity/SoundSetDetail;)V

    .line 538
    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    iget-object v4, v4, Lcom/htc/sdm/activity/SoundSetDetail;->m_Player:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V

    .line 539
    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    iget-object v4, v4, Lcom/htc/sdm/activity/SoundSetDetail;->m_Player:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V

    .line 587
    :cond_1
    :goto_1
    return-void

    .line 517
    :cond_2
    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter;->mCR:Landroid/content/ContentResolver;

    invoke-virtual {v2}, Lcom/htc/sdm/activity/SoundSetDetail$SoundData;->getParcelable()Lcom/htc/sdm/SoundSetParcelable;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/sdm/SoundSetParcelable;->getLocalFileUri()Landroid/net/Uri;

    move-result-object v5

    const-string v6, "r"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 518
    .local v3, pfd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 519
    .local v1, fd:Ljava/io/FileDescriptor;
    if-eqz v1, :cond_0

    .line 521
    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    iget-object v4, v4, Lcom/htc/sdm/activity/SoundSetDetail;->m_Player:Landroid/media/MediaPlayer;

    invoke-virtual {v4, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 576
    .end local v1           #fd:Ljava/io/FileDescriptor;
    .end local v3           #pfd:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 577
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 549
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    iget-object v4, v4, Lcom/htc/sdm/activity/SoundSetDetail;->m_Player:Landroid/media/MediaPlayer;

    if-eqz v4, :cond_1

    .line 551
    invoke-virtual {v2}, Lcom/htc/sdm/activity/SoundSetDetail$SoundData;->getFd()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 552
    .restart local v1       #fd:Ljava/io/FileDescriptor;
    if-eqz v1, :cond_1

    .line 555
    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    #calls: Lcom/htc/sdm/activity/SoundSetDetail;->requestAudioFocus()V
    invoke-static {v4}, Lcom/htc/sdm/activity/SoundSetDetail;->access$200(Lcom/htc/sdm/activity/SoundSetDetail;)V

    .line 565
    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    iget-object v4, v4, Lcom/htc/sdm/activity/SoundSetDetail;->m_Player:Landroid/media/MediaPlayer;

    invoke-virtual {v4, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 567
    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    iget-object v4, v4, Lcom/htc/sdm/activity/SoundSetDetail;->m_Player:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V

    .line 568
    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    iget-object v4, v4, Lcom/htc/sdm/activity/SoundSetDetail;->m_Player:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 578
    .end local v1           #fd:Ljava/io/FileDescriptor;
    :catch_1
    move-exception v0

    .line 579
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 580
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 581
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 583
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v4

    goto :goto_1
.end method
