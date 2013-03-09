.class Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;
.super Landroid/os/AsyncTask;
.source "LandingNavigation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/landing/LandingNavigation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadPromoPreviewTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mIsClearCache:Z

.field private mIsResetData:Z

.field private mItem:Lcom/htc/store/module/vo/PromoItem;

.field private mPosition:I

.field final synthetic this$0:Lcom/htc/store/activity/landing/LandingNavigation;


# direct methods
.method public constructor <init>(Lcom/htc/store/activity/landing/LandingNavigation;Lcom/htc/store/module/vo/PromoItem;IZZ)V
    .locals 2
    .parameter
    .parameter "item"
    .parameter "position"
    .parameter "isClearCache"
    .parameter "isRestData"

    .prologue
    const/4 v1, 0x0

    .line 1706
    iput-object p1, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1703
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->mPosition:I

    .line 1704
    iput-boolean v1, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->mIsClearCache:Z

    .line 1705
    iput-boolean v1, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->mIsResetData:Z

    .line 1707
    iput-object p2, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->mItem:Lcom/htc/store/module/vo/PromoItem;

    .line 1708
    iput p3, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->mPosition:I

    .line 1709
    iput-boolean p4, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->mIsClearCache:Z

    .line 1710
    iput-boolean p5, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->mIsResetData:Z

    .line 1711
    return-void
.end method

.method private savePromoPreview(Landroid/graphics/drawable/Drawable;Lcom/htc/store/module/vo/PromoItem;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "promoDrawable"
    .parameter "mItem"
    .parameter "swapPath"
    .parameter "targetPath"

    .prologue
    .line 1832
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->getContext()Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/store/activity/landing/LandingNavigation;->access$5000(Lcom/htc/store/activity/landing/LandingNavigation;)Landroid/app/Activity;

    move-result-object v7

    .line 1833
    .local v7, context:Landroid/content/Context;
    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 1834
    .local v8, resources:Landroid/content/res/Resources;
    const v0, 0x7f080004

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1835
    .local v4, width_for_retrieval:I
    const v0, 0x7f080005

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 1836
    .local v5, height_for_retrieval:I
    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask$1;-><init>(Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;Landroid/graphics/drawable/Drawable;Ljava/lang/String;IILjava/lang/String;)V

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 1850
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 22
    .parameter "params"

    .prologue
    .line 1715
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "doInBackground: DownloadPromoPreviewTask"

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1716
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 1717
    .local v8, needRetry:Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->mItem:Lcom/htc/store/module/vo/PromoItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/store/module/vo/PromoItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v9

    .line 1718
    .local v9, onlineId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mCategoryId:J

    move-wide/from16 v17, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lcom/htc/store/util/StorageUtils;->getTemporaryPromoPreviewFilePath(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1719
    .local v13, swapPath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mCategoryId:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    invoke-static {v0, v1, v9}, Lcom/htc/store/util/StorageUtils;->getPromoPreviewFilePath(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1721
    .local v14, targetPath:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->isCancelled()Z

    move-result v17

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->mItem:Lcom/htc/store/module/vo/PromoItem;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->mItem:Lcom/htc/store/module/vo/PromoItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/store/module/vo/PromoItem;->getOnlineImageURLPortrait()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 1723
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->mIsClearCache:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 1724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->mItem:Lcom/htc/store/module/vo/PromoItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/store/module/vo/PromoItem;->getOnlineImageURLPortrait()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/htc/store/util/DownloadUtils;->retrieveDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 1725
    .local v10, promoDrawable:Landroid/graphics/drawable/Drawable;
    if-nez v10, :cond_1

    .line 1726
    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 1727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mCategoryId:J

    move-wide/from16 v18, v0

    const/16 v20, 0x4

    invoke-virtual/range {v17 .. v20}, Lcom/htc/store/provider/AccessHelper;->removeCategoryTTLItem(JI)I

    .line 1728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mCategoryId:J

    move-wide/from16 v19, v0

    invoke-virtual/range {v18 .. v20}, Lcom/htc/store/provider/AccessHelper;->getPromoItemsByCategoryId(J)Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoItems:Ljava/util/ArrayList;

    .line 1775
    .end local v10           #promoDrawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object v8

    .line 1730
    .restart local v10       #promoDrawable:Landroid/graphics/drawable/Drawable;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    move-object/from16 v17, v0

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->getContext()Landroid/app/Activity;
    invoke-static/range {v17 .. v17}, Lcom/htc/store/activity/landing/LandingNavigation;->access$4400(Lcom/htc/store/activity/landing/LandingNavigation;)Landroid/app/Activity;

    move-result-object v3

    .line 1731
    .local v3, context:Landroid/content/Context;
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f080004

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 1732
    .local v15, width:I
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f080005

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 1733
    .local v5, height:I
    const/16 v17, 0x1

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v14, v15, v5, v0, v1}, Lcom/htc/store/util/ImageUtils;->getCachedImageKey(Ljava/lang/String;IIIZ)Ljava/lang/String;

    move-result-object v2

    .line 1734
    .local v2, cachedKey:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/store/activity/landing/LandingNavigation;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v10, v15, v5}, Lcom/htc/store/util/ImageUtils;->resizeDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/htc/store/util/ImageUtils;->addCachedDrawables(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 1735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mCategoryId:J

    move-wide/from16 v19, v0

    invoke-virtual/range {v18 .. v20}, Lcom/htc/store/provider/AccessHelper;->getPromoOnlineIdsByCategoryId(J)Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mCategoryId:J

    move-wide/from16 v19, v0

    const/16 v21, 0x4

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->clearCache(Ljava/util/ArrayList;JI)V
    invoke-static/range {v17 .. v21}, Lcom/htc/store/activity/landing/LandingNavigation;->access$4500(Lcom/htc/store/activity/landing/LandingNavigation;Ljava/util/ArrayList;JI)V

    .line 1736
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v13, v17, v18

    const/16 v18, 0x1

    aput-object v14, v17, v18

    const/16 v18, 0x2

    aput-object v10, v17, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->publishProgress([Ljava/lang/Object;)V

    .line 1737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mCategoryId:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Lcom/htc/store/provider/AccessHelper;->removePromoByCategoryId(J)I

    .line 1739
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoItems:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/store/provider/AccessHelper;->addPromoItems(Ljava/util/ArrayList;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1740
    :catch_0
    move-exception v4

    .line 1741
    .local v4, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1742
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "update promo failed, reset next time"

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mCategoryId:J

    move-wide/from16 v18, v0

    const/16 v20, 0x4

    invoke-virtual/range {v17 .. v20}, Lcom/htc/store/provider/AccessHelper;->removeCategoryTTLItem(JI)I

    goto/16 :goto_0

    .line 1748
    .end local v2           #cachedKey:Ljava/lang/String;
    .end local v3           #context:Landroid/content/Context;
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #height:I
    .end local v10           #promoDrawable:Landroid/graphics/drawable/Drawable;
    .end local v15           #width:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    move-object/from16 v17, v0

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->getContext()Landroid/app/Activity;
    invoke-static/range {v17 .. v17}, Lcom/htc/store/activity/landing/LandingNavigation;->access$4600(Lcom/htc/store/activity/landing/LandingNavigation;)Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 1749
    .local v11, resources:Landroid/content/res/Resources;
    const v17, 0x7f080004

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 1750
    .local v16, width_for_retrieval:I
    const v17, 0x7f080005

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 1752
    .local v6, height_for_retrieval:I
    const/4 v12, -0x1

    .line 1753
    .local v12, retrieveResult:I
    invoke-static {v14}, Lcom/htc/store/util/StorageUtils;->isExisted(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1754
    const/4 v12, 0x1

    .line 1759
    :goto_1
    if-nez v12, :cond_4

    .line 1760
    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto/16 :goto_0

    .line 1756
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->mItem:Lcom/htc/store/module/vo/PromoItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/store/module/vo/PromoItem;->getOnlineImageURLPortrait()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v13, v1, v6}, Lcom/htc/store/util/DownloadUtils;->retrieveImageWithResult(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v12

    goto :goto_1

    .line 1762
    :cond_4
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v12, v0, :cond_0

    .line 1763
    invoke-static {v13, v14}, Lcom/htc/store/util/StorageUtils;->moveFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 1764
    .local v7, isMoveFileSuccessfully:Z
    if-eqz v7, :cond_5

    .line 1765
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "move "

    aput-object v20, v18, v19

    const/16 v19, 0x1

    aput-object v13, v18, v19

    const/16 v19, 0x2

    const-string v20, " to "

    aput-object v20, v18, v19

    const/16 v19, 0x3

    aput-object v14, v18, v19

    const/16 v19, 0x4

    const-string v20, " successfully"

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1767
    :cond_5
    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 1768
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "move "

    aput-object v20, v18, v19

    const/16 v19, 0x1

    aput-object v13, v18, v19

    const/16 v19, 0x2

    const-string v20, " to "

    aput-object v20, v18, v19

    const/16 v19, 0x3

    aput-object v14, v18, v19

    const/16 v19, 0x4

    const-string v20, " failed"

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1700
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 4

    .prologue
    .line 1814
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onCancelled: DownloadPromoPreviewTask"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1815
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 1816
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 8
    .parameter "needRetry"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1780
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "onPostExecute: DownloadPromoPreviewTask"

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1781
    iget-object v4, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z
    invoke-static {v4}, Lcom/htc/store/activity/landing/LandingNavigation;->access$4700(Lcom/htc/store/activity/landing/LandingNavigation;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z
    invoke-static {v4}, Lcom/htc/store/activity/landing/LandingNavigation;->access$4800(Lcom/htc/store/activity/landing/LandingNavigation;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnPause:Z
    invoke-static {v4}, Lcom/htc/store/activity/landing/LandingNavigation;->access$4900(Lcom/htc/store/activity/landing/LandingNavigation;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    invoke-virtual {v4}, Lcom/htc/store/activity/landing/LandingNavigation;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1791
    iget-object v4, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v4, v4, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadHander:Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;

    invoke-virtual {v4}, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1794
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1795
    new-instance v1, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;

    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget v4, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->mPosition:I

    const/16 v5, 0x8

    iget-boolean v6, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->mIsClearCache:Z

    invoke-direct {v1, v2, v4, v5, v6}, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;-><init>(Lcom/htc/store/activity/landing/LandingNavigation;IIZ)V

    .line 1800
    .local v1, status:Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;
    :goto_0
    iput v3, v0, Landroid/os/Message;->what:I

    .line 1801
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1803
    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v2, v2, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadHander:Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;

    invoke-virtual {v2, v3}, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1804
    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v2, v2, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadHander:Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;

    invoke-virtual {v2, v3}, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->removeMessages(I)V

    .line 1806
    :cond_0
    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    invoke-virtual {v2}, Lcom/htc/store/activity/landing/LandingNavigation;->isOkToSendMessage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1807
    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v2, v2, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadHander:Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;

    invoke-virtual {v2, v0}, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1810
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #status:Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;
    :cond_1
    return-void

    .line 1797
    .restart local v0       #msg:Landroid/os/Message;
    :cond_2
    new-instance v1, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;

    iget-object v4, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget v5, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->mPosition:I

    const/4 v6, 0x3

    iget-boolean v7, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->mIsClearCache:Z

    if-nez v7, :cond_3

    iget-boolean v7, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->mIsResetData:Z

    if-eqz v7, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    invoke-direct {v1, v4, v5, v6, v2}, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;-><init>(Lcom/htc/store/activity/landing/LandingNavigation;IIZ)V

    .restart local v1       #status:Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;
    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1700
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 4
    .parameter "params"

    .prologue
    .line 1823
    const/4 v3, 0x0

    aget-object v1, p1, v3

    check-cast v1, Ljava/lang/String;

    .line 1824
    .local v1, swapPath:Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v2, p1, v3

    check-cast v2, Ljava/lang/String;

    .line 1825
    .local v2, targetPath:Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v0, p1, v3

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 1826
    .local v0, promoDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    .line 1827
    iget-object v3, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->mItem:Lcom/htc/store/module/vo/PromoItem;

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->savePromoPreview(Landroid/graphics/drawable/Drawable;Lcom/htc/store/module/vo/PromoItem;Ljava/lang/String;Ljava/lang/String;)V

    .line 1829
    :cond_0
    return-void
.end method
