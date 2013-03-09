.class Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;
.super Lcom/htc/store/module/MultiExecutableAsyncTask;
.source "ListCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/list/ListCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadFeaturedImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/store/module/MultiExecutableAsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACTION_UPDATE_FEATURED_ICON:I = 0x1

.field private static final ACTION_UPDATE_IDLE_FLAG:I


# instance fields
.field private mIconHeight:I

.field private mIconHeightForRetrieval:I

.field private mIconWidth:I

.field private mIconWidthForRetrieval:I

.field final synthetic this$0:Lcom/htc/store/activity/list/ListCategory;


# direct methods
.method public constructor <init>(Lcom/htc/store/activity/list/ListCategory;)V
    .locals 2
    .parameter

    .prologue
    .line 1370
    iput-object p1, p0, Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    invoke-direct {p0}, Lcom/htc/store/module/MultiExecutableAsyncTask;-><init>()V

    .line 1371
    invoke-virtual {p1}, Lcom/htc/store/activity/list/ListCategory;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1372
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f080008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;->mIconWidth:I

    .line 1373
    const v1, 0x7f080009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;->mIconHeight:I

    .line 1374
    const v1, 0x7f08000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;->mIconWidthForRetrieval:I

    .line 1375
    const v1, 0x7f08000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;->mIconHeightForRetrieval:I

    .line 1376
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;->mIsIdle:Z

    .line 1377
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18
    .parameter "params"

    .prologue
    .line 1381
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;->publishProgress([Ljava/lang/Object;)V

    .line 1382
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v1, v1, Lcom/htc/store/activity/list/ListCategory;->mCategoryItem:Lcom/htc/store/module/vo/CategoryItem;

    invoke-virtual {v1}, Lcom/htc/store/module/vo/CategoryItem;->getId()J

    move-result-wide v2

    .line 1383
    .local v2, categoryId:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v1, v1, Lcom/htc/store/activity/list/ListCategory;->mFeaturedItems:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    .line 1384
    const/4 v7, 0x0

    .line 1385
    .local v7, count:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v1, v1, Lcom/htc/store/activity/list/ListCategory;->mFeaturedItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 1386
    .local v14, size:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v14, :cond_0

    .line 1387
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v1, v1, Lcom/htc/store/activity/list/ListCategory;->mFeaturedItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/store/module/vo/FeaturedItem;

    .line 1388
    .local v12, item:Lcom/htc/store/module/vo/FeaturedItem;
    invoke-virtual {v12}, Lcom/htc/store/module/vo/FeaturedItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v4

    .line 1389
    .local v4, onlineItemId:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/htc/store/util/StorageUtils;->getTemporaryFeaturedIconFilePath(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1390
    .local v15, swapPath:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/htc/store/module/vo/FeaturedItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/htc/store/util/StorageUtils;->getFeaturedIconFilePath(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1391
    .local v16, targetPath:Ljava/lang/String;
    const/4 v13, -0x1

    .line 1392
    .local v13, result:I
    invoke-static/range {v16 .. v16}, Lcom/htc/store/util/StorageUtils;->isExisted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1393
    const/4 v13, 0x1

    .line 1399
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-boolean v1, v1, Lcom/htc/store/activity/list/ListCategory;->mIsUserCancelled:Z

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnPause:Z
    invoke-static {v1}, Lcom/htc/store/activity/list/ListCategory;->access$4400(Lcom/htc/store/activity/list/ListCategory;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1418
    .end local v4           #onlineItemId:Ljava/lang/String;
    .end local v12           #item:Lcom/htc/store/module/vo/FeaturedItem;
    .end local v13           #result:I
    .end local v15           #swapPath:Ljava/lang/String;
    .end local v16           #targetPath:Ljava/lang/String;
    :cond_0
    if-ne v7, v14, :cond_1

    .line 1419
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/htc/store/activity/list/ListCategory;->mAllFeaturedImageRetrieved:Z

    .line 1424
    .end local v7           #count:I
    .end local v8           #i:I
    .end local v14           #size:I
    :cond_1
    :goto_2
    const/4 v1, 0x0

    return-object v1

    .line 1395
    .restart local v4       #onlineItemId:Ljava/lang/String;
    .restart local v7       #count:I
    .restart local v8       #i:I
    .restart local v12       #item:Lcom/htc/store/module/vo/FeaturedItem;
    .restart local v13       #result:I
    .restart local v14       #size:I
    .restart local v15       #swapPath:Ljava/lang/String;
    .restart local v16       #targetPath:Ljava/lang/String;
    :cond_2
    invoke-virtual {v12}, Lcom/htc/store/module/vo/FeaturedItem;->getOnlineIconURL()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;->mIconWidthForRetrieval:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;->mIconHeightForRetrieval:I

    invoke-static {v1, v15, v5, v6}, Lcom/htc/store/util/DownloadUtils;->retrieveImageWithResult(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v13

    goto :goto_1

    .line 1402
    :cond_3
    const/4 v1, 0x2

    if-ne v13, v1, :cond_6

    .line 1403
    invoke-static/range {v15 .. v16}, Lcom/htc/store/util/StorageUtils;->moveFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    .line 1404
    .local v11, isMoveFileSuccessfully:Z
    if-eqz v11, :cond_5

    .line 1405
    invoke-static {}, Lcom/htc/store/activity/list/ListCategory;->access$300()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v17, "move "

    aput-object v17, v5, v6

    const/4 v6, 0x1

    aput-object v15, v5, v6

    const/4 v6, 0x2

    const-string v17, " to "

    aput-object v17, v5, v6

    const/4 v6, 0x3

    aput-object v16, v5, v6

    const/4 v6, 0x4

    const-string v17, " successfully"

    aput-object v17, v5, v6

    invoke-static {v1, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1406
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    #calls: Lcom/htc/store/activity/list/ListCategory;->getContext()Landroid/app/Activity;
    invoke-static {v1}, Lcom/htc/store/activity/list/ListCategory;->access$4500(Lcom/htc/store/activity/list/ListCategory;)Landroid/app/Activity;

    move-result-object v1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;->mIconWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;->mIconHeight:I

    invoke-static/range {v1 .. v6}, Lcom/htc/store/util/ImageUtils;->getFeaturedIcon(Landroid/content/Context;JLjava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 1407
    .local v9, icon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    invoke-virtual {v1}, Lcom/htc/store/activity/list/ListCategory;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v9}, Lcom/htc/store/util/ImageUtils;->getFeaturedIconReflection(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 1408
    .local v10, iconReflection:Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x2

    aput-object v9, v1, v5

    const/4 v5, 0x3

    aput-object v10, v1, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;->publishProgress([Ljava/lang/Object;)V

    .line 1409
    add-int/lit8 v7, v7, 0x1

    .line 1386
    .end local v9           #icon:Landroid/graphics/drawable/Drawable;
    .end local v10           #iconReflection:Landroid/graphics/drawable/Drawable;
    .end local v11           #isMoveFileSuccessfully:Z
    :cond_4
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 1411
    .restart local v11       #isMoveFileSuccessfully:Z
    :cond_5
    invoke-static {}, Lcom/htc/store/activity/list/ListCategory;->access$300()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v17, "move "

    aput-object v17, v5, v6

    const/4 v6, 0x1

    aput-object v15, v5, v6

    const/4 v6, 0x2

    const-string v17, " to "

    aput-object v17, v5, v6

    const/4 v6, 0x3

    aput-object v16, v5, v6

    const/4 v6, 0x4

    const-string v17, " failed"

    aput-object v17, v5, v6

    invoke-static {v1, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 1413
    .end local v11           #isMoveFileSuccessfully:Z
    :cond_6
    const/4 v1, 0x1

    if-ne v13, v1, :cond_4

    .line 1414
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1422
    .end local v4           #onlineItemId:Ljava/lang/String;
    .end local v7           #count:I
    .end local v8           #i:I
    .end local v12           #item:Lcom/htc/store/module/vo/FeaturedItem;
    .end local v13           #result:I
    .end local v14           #size:I
    .end local v15           #swapPath:Ljava/lang/String;
    .end local v16           #targetPath:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/htc/store/activity/list/ListCategory;->mAllFeaturedImageRetrieved:Z

    goto/16 :goto_2
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 1473
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;->mIsIdle:Z

    .line 1474
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnPause:Z
    invoke-static {v0}, Lcom/htc/store/activity/list/ListCategory;->access$4600(Lcom/htc/store/activity/list/ListCategory;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1475
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    #calls: Lcom/htc/store/activity/list/ListCategory;->updateProgressBarAndMenuItem()Z
    invoke-static {v0}, Lcom/htc/store/activity/list/ListCategory;->access$2800(Lcom/htc/store/activity/list/ListCategory;)Z

    .line 1477
    :cond_0
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 11
    .parameter "values"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1432
    aget-object v6, p1, v9

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_1

    .line 1433
    iput-boolean v9, p0, Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;->mIsIdle:Z

    .line 1469
    :cond_0
    :goto_0
    return-void

    .line 1435
    :cond_1
    const/4 v5, 0x0

    .line 1436
    .local v5, itemView:Lcom/htc/store/module/view/FeaturedItemView;
    aget-object v6, p1, v10

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1437
    .local v3, index:I
    iget-object v6, p0, Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    invoke-virtual {v6}, Lcom/htc/store/activity/list/ListCategory;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f09

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 1438
    .local v4, itemLimit:I
    const-string v6, "onProgressUpdate: DownloadFeaturedImageTask, index: "

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1439
    const-string v6, "onProgressUpdate: DownloadFeaturedImageTask, itemLimit: "

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1440
    iget-object v6, p0, Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    invoke-virtual {v6}, Lcom/htc/store/activity/list/ListCategory;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v10, :cond_3

    .line 1441
    iget-object v6, p0, Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v6, v6, Lcom/htc/store/activity/list/ListCategory;->mFeaturedItemViewsPort:[Lcom/htc/store/module/view/FeaturedItemView;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v6, v6, Lcom/htc/store/activity/list/ListCategory;->mFeaturedItemViewsPort:[Lcom/htc/store/module/view/FeaturedItemView;

    array-length v6, v6

    if-ge v3, v6, :cond_2

    if-ge v3, v4, :cond_2

    .line 1442
    iget-object v6, p0, Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v6, v6, Lcom/htc/store/activity/list/ListCategory;->mFeaturedItemViewsPort:[Lcom/htc/store/module/view/FeaturedItemView;

    aget-object v5, v6, v3

    .line 1462
    :goto_1
    if-eqz v5, :cond_0

    .line 1463
    const/4 v6, 0x2

    aget-object v1, p1, v6

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 1464
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x3

    aget-object v2, p1, v6

    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 1465
    .local v2, iconReflection:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5, v1}, Lcom/htc/store/module/view/FeaturedItemView;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1466
    invoke-virtual {v5, v2}, Lcom/htc/store/module/view/FeaturedItemView;->setIconReflectionDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1444
    .end local v1           #icon:Landroid/graphics/drawable/Drawable;
    .end local v2           #iconReflection:Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-static {}, Lcom/htc/store/activity/list/ListCategory;->access$300()Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    const-string v8, "mFeaturedItemViewsPort is null or index out of bound"

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1447
    :cond_3
    if-ge v3, v4, :cond_5

    .line 1448
    iget-object v6, p0, Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v6, v6, Lcom/htc/store/activity/list/ListCategory;->mFeaturedItemViewsLand:[Lcom/htc/store/module/view/FeaturedItemView;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v6, v6, Lcom/htc/store/activity/list/ListCategory;->mFeaturedItemViewsLand:[Lcom/htc/store/module/view/FeaturedItemView;

    array-length v6, v6

    if-ge v3, v6, :cond_4

    .line 1449
    iget-object v6, p0, Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v6, v6, Lcom/htc/store/activity/list/ListCategory;->mFeaturedItemViewsLand:[Lcom/htc/store/module/view/FeaturedItemView;

    aget-object v5, v6, v3

    goto :goto_1

    .line 1451
    :cond_4
    invoke-static {}, Lcom/htc/store/activity/list/ListCategory;->access$300()Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    const-string v8, "mFeaturedItemViewsLand is null or index out of bound"

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1454
    :cond_5
    sub-int v0, v3, v4

    .line 1455
    .local v0, extraIndex:I
    iget-object v6, p0, Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v6, v6, Lcom/htc/store/activity/list/ListCategory;->mExtraFeaturedItemViewsLand:[Lcom/htc/store/module/view/FeaturedItemView;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v6, v6, Lcom/htc/store/activity/list/ListCategory;->mExtraFeaturedItemViewsLand:[Lcom/htc/store/module/view/FeaturedItemView;

    array-length v6, v6

    if-ge v0, v6, :cond_6

    .line 1456
    iget-object v6, p0, Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v6, v6, Lcom/htc/store/activity/list/ListCategory;->mExtraFeaturedItemViewsLand:[Lcom/htc/store/module/view/FeaturedItemView;

    aget-object v5, v6, v0

    goto :goto_1

    .line 1458
    :cond_6
    invoke-static {}, Lcom/htc/store/activity/list/ListCategory;->access$300()Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    const-string v8, "mExtraFeaturedItemViewsLand is null or index out of bound"

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
