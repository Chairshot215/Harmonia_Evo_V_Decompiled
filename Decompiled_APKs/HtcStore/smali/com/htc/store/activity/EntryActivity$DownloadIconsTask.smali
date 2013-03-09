.class Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;
.super Landroid/os/AsyncTask;
.source "EntryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/EntryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadIconsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mTabIconWidthHeight:I

.field private mTabOverlayWidthHeight:I

.field final synthetic this$0:Lcom/htc/store/activity/EntryActivity;


# direct methods
.method public constructor <init>(Lcom/htc/store/activity/EntryActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 404
    iput-object p1, p0, Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 405
    invoke-virtual {p1}, Lcom/htc/store/activity/EntryActivity;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 406
    .local v0, res:Landroid/content/res/Resources;
    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;->mTabIconWidthHeight:I

    .line 407
    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;->mTabOverlayWidthHeight:I

    .line 408
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 14
    .parameter "params"

    .prologue
    const/4 v3, 0x0

    const/4 v13, 0x1

    .line 417
    invoke-static {}, Lcom/htc/store/activity/EntryActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    new-array v1, v13, [Ljava/lang/Object;

    const-string v2, "doInBackground: DownloadIconsTask"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 418
    const/4 v6, 0x3

    .line 419
    .local v6, action:I
    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    invoke-virtual {v0}, Lcom/htc/store/activity/EntryActivity;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/store/util/CommonUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 420
    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    #getter for: Lcom/htc/store/activity/EntryActivity;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v0}, Lcom/htc/store/activity/EntryActivity;->access$1100(Lcom/htc/store/activity/EntryActivity;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/store/provider/AccessHelper;->getLandingCarouselItems()Ljava/util/ArrayList;

    move-result-object v11

    .line 421
    .local v11, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CarouselItem;>;"
    const/4 v8, 0x0

    .line 422
    .local v8, downloadResult:I
    const/4 v7, 0x1

    .line 423
    .local v7, allSuccess:Z
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .local v12, useDefaultImage:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/store/module/vo/CarouselItem;

    .line 426
    .local v10, item:Lcom/htc/store/module/vo/CarouselItem;
    invoke-virtual {v10}, Lcom/htc/store/module/vo/CarouselItem;->getOnlineIconOnURL()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    const-string v2, "primaryTabs"

    invoke-virtual {v10}, Lcom/htc/store/module/vo/CarouselItem;->getOnlineId()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;->mTabIconWidthHeight:I

    iget v5, p0, Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;->mTabIconWidthHeight:I

    invoke-static/range {v0 .. v5}, Lcom/htc/store/util/DownloadUtils;->retrieveTabImages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v8

    .line 428
    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    iget-boolean v0, v0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 456
    .end local v10           #item:Lcom/htc/store/module/vo/CarouselItem;
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    iget-boolean v0, v0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    if-nez v0, :cond_3

    .line 457
    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    #getter for: Lcom/htc/store/activity/EntryActivity;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v0}, Lcom/htc/store/activity/EntryActivity;->access$1100(Lcom/htc/store/activity/EntryActivity;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/store/provider/AccessHelper;->getItemDetailCarouselItems()Ljava/util/ArrayList;

    move-result-object v11

    .line 458
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/store/module/vo/CarouselItem;

    .line 460
    .restart local v10       #item:Lcom/htc/store/module/vo/CarouselItem;
    invoke-virtual {v10}, Lcom/htc/store/module/vo/CarouselItem;->getOnlineIconOnURL()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    const-string v2, "secondaryTabs"

    invoke-virtual {v10}, Lcom/htc/store/module/vo/CarouselItem;->getOnlineId()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;->mTabIconWidthHeight:I

    iget v5, p0, Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;->mTabIconWidthHeight:I

    invoke-static/range {v0 .. v5}, Lcom/htc/store/util/DownloadUtils;->retrieveTabImages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v8

    .line 462
    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    iget-boolean v0, v0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 491
    .end local v10           #item:Lcom/htc/store/module/vo/CarouselItem;
    :cond_3
    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    iget-boolean v0, v0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_b

    .line 492
    if-eqz v8, :cond_a

    if-eqz v7, :cond_a

    .line 493
    const/4 v6, 0x3

    .line 494
    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    iget-object v0, v0, Lcom/htc/store/activity/BaseActivity;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    invoke-virtual {v0, v13}, Lcom/htc/store/module/PreferenceManager;->setTabResourceDownloaded(Z)V

    .line 508
    .end local v7           #allSuccess:Z
    .end local v8           #downloadResult:I
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v11           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CarouselItem;>;"
    .end local v12           #useDefaultImage:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 430
    .restart local v7       #allSuccess:Z
    .restart local v8       #downloadResult:I
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v10       #item:Lcom/htc/store/module/vo/CarouselItem;
    .restart local v11       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CarouselItem;>;"
    .restart local v12       #useDefaultImage:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    if-nez v8, :cond_5

    .line 431
    const/4 v7, 0x0

    .line 432
    invoke-virtual {v10}, Lcom/htc/store/module/vo/CarouselItem;->getOnlineId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 436
    :cond_5
    invoke-virtual {v10}, Lcom/htc/store/module/vo/CarouselItem;->getOnlineIconOverlayURL()Ljava/lang/String;

    move-result-object v0

    const-string v1, "overlay"

    const-string v2, "primaryTabs"

    invoke-virtual {v10}, Lcom/htc/store/module/vo/CarouselItem;->getOnlineId()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;->mTabOverlayWidthHeight:I

    iget v5, p0, Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;->mTabOverlayWidthHeight:I

    invoke-static/range {v0 .. v5}, Lcom/htc/store/util/DownloadUtils;->retrieveTabImages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v8

    .line 438
    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    iget-boolean v0, v0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 440
    if-nez v8, :cond_6

    .line 441
    const/4 v7, 0x0

    .line 442
    invoke-virtual {v10}, Lcom/htc/store/module/vo/CarouselItem;->getOnlineId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 446
    :cond_6
    invoke-virtual {v10}, Lcom/htc/store/module/vo/CarouselItem;->getOnlineIconRestURL()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rest"

    const-string v2, "primaryTabs"

    invoke-virtual {v10}, Lcom/htc/store/module/vo/CarouselItem;->getOnlineId()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;->mTabIconWidthHeight:I

    iget v5, p0, Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;->mTabIconWidthHeight:I

    invoke-static/range {v0 .. v5}, Lcom/htc/store/util/DownloadUtils;->retrieveTabImages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v8

    .line 448
    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    iget-boolean v0, v0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 450
    if-nez v8, :cond_0

    .line 451
    const/4 v7, 0x0

    .line 452
    invoke-virtual {v10}, Lcom/htc/store/module/vo/CarouselItem;->getOnlineId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 464
    :cond_7
    if-nez v8, :cond_8

    .line 465
    const/4 v7, 0x0

    .line 466
    invoke-virtual {v10}, Lcom/htc/store/module/vo/CarouselItem;->getOnlineId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 470
    :cond_8
    invoke-virtual {v10}, Lcom/htc/store/module/vo/CarouselItem;->getOnlineIconOverlayURL()Ljava/lang/String;

    move-result-object v0

    const-string v1, "overlay"

    const-string v2, "secondaryTabs"

    invoke-virtual {v10}, Lcom/htc/store/module/vo/CarouselItem;->getOnlineId()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;->mTabOverlayWidthHeight:I

    iget v5, p0, Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;->mTabOverlayWidthHeight:I

    invoke-static/range {v0 .. v5}, Lcom/htc/store/util/DownloadUtils;->retrieveTabImages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v8

    .line 472
    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    iget-boolean v0, v0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 474
    if-nez v8, :cond_9

    .line 475
    const/4 v7, 0x0

    .line 476
    invoke-virtual {v10}, Lcom/htc/store/module/vo/CarouselItem;->getOnlineId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 480
    :cond_9
    invoke-virtual {v10}, Lcom/htc/store/module/vo/CarouselItem;->getOnlineIconRestURL()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rest"

    const-string v2, "secondaryTabs"

    invoke-virtual {v10}, Lcom/htc/store/module/vo/CarouselItem;->getOnlineId()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;->mTabIconWidthHeight:I

    iget v5, p0, Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;->mTabIconWidthHeight:I

    invoke-static/range {v0 .. v5}, Lcom/htc/store/util/DownloadUtils;->retrieveTabImages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v8

    .line 482
    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    iget-boolean v0, v0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 484
    if-nez v8, :cond_2

    .line 485
    const/4 v7, 0x0

    .line 486
    invoke-virtual {v10}, Lcom/htc/store/module/vo/CarouselItem;->getOnlineId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 497
    .end local v10           #item:Lcom/htc/store/module/vo/CarouselItem;
    :cond_a
    const/4 v6, 0x3

    .line 498
    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    iget-object v0, v0, Lcom/htc/store/activity/BaseActivity;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    const-string v1, ";"

    invoke-static {v1, v12}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/store/module/PreferenceManager;->setUseDefaultImages(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 502
    :cond_b
    const/4 v6, 0x2

    goto/16 :goto_2

    .line 505
    .end local v7           #allSuccess:Z
    .end local v8           #downloadResult:I
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v11           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CarouselItem;>;"
    .end local v12           #useDefaultImage:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_c
    invoke-static {}, Lcom/htc/store/activity/EntryActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    new-array v1, v13, [Ljava/lang/Object;

    const-string v2, "Network is not available."

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 506
    const/4 v6, 0x6

    goto/16 :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 399
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .parameter "action"

    .prologue
    .line 513
    invoke-static {}, Lcom/htc/store/activity/EntryActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onPostExecute: DownloadIconsTask"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 514
    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    invoke-virtual {v0}, Lcom/htc/store/activity/EntryActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    iget-boolean v0, v0, Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z

    if-nez v0, :cond_1

    .line 515
    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    iget-boolean v0, v0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    if-nez v0, :cond_2

    .line 516
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 517
    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/htc/store/activity/EntryActivity;->removeDialog(I)V

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #calls: Lcom/htc/store/activity/EntryActivity;->doAction(I)V
    invoke-static {v0, v1}, Lcom/htc/store/activity/EntryActivity;->access$800(Lcom/htc/store/activity/EntryActivity;I)V

    .line 524
    :cond_1
    :goto_0
    return-void

    .line 521
    :cond_2
    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #setter for: Lcom/htc/store/activity/EntryActivity;->mActionOnResume:I
    invoke-static {v0, v1}, Lcom/htc/store/activity/EntryActivity;->access$902(Lcom/htc/store/activity/EntryActivity;I)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 399
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/htc/store/activity/EntryActivity;->showDialog(I)V

    .line 413
    return-void
.end method
