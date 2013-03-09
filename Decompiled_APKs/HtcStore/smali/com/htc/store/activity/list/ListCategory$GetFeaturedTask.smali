.class Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;
.super Landroid/os/AsyncTask;
.source "ListCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/list/ListCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetFeaturedTask"
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
.field private mFeaturedIconHeight:I

.field private mFeaturedIconWidth:I

.field final synthetic this$0:Lcom/htc/store/activity/list/ListCategory;


# direct methods
.method public constructor <init>(Lcom/htc/store/activity/list/ListCategory;)V
    .locals 2
    .parameter

    .prologue
    .line 1223
    iput-object p1, p0, Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1224
    invoke-virtual {p1}, Lcom/htc/store/activity/list/ListCategory;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;->mFeaturedIconWidth:I

    .line 1225
    invoke-virtual {p1}, Lcom/htc/store/activity/list/ListCategory;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;->mFeaturedIconHeight:I

    .line 1226
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 23
    .parameter "params"

    .prologue
    .line 1230
    invoke-static {}, Lcom/htc/store/activity/list/ListCategory;->access$300()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v21, 0x0

    const-string v22, "doInBackground: GetFeaturedTask"

    aput-object v22, v5, v21

    invoke-static {v2, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1231
    const/4 v8, 0x0

    .line 1232
    .local v8, action:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v2, v2, Lcom/htc/store/activity/list/ListCategory;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    if-nez v2, :cond_0

    .line 1233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    new-instance v5, Lcom/htc/store/module/rest/RestHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    move-object/from16 v21, v0

    #calls: Lcom/htc/store/activity/list/ListCategory;->getContext()Landroid/app/Activity;
    invoke-static/range {v21 .. v21}, Lcom/htc/store/activity/list/ListCategory;->access$3700(Lcom/htc/store/activity/list/ListCategory;)Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v5, v0}, Lcom/htc/store/module/rest/RestHelper;-><init>(Landroid/content/Context;)V

    iput-object v5, v2, Lcom/htc/store/activity/list/ListCategory;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    .line 1235
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v2, v2, Lcom/htc/store/activity/list/ListCategory;->mCategoryItem:Lcom/htc/store/module/vo/CategoryItem;

    invoke-virtual {v2}, Lcom/htc/store/module/vo/CategoryItem;->getId()J

    move-result-wide v3

    .line 1236
    .local v3, categoryId:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v2, v2, Lcom/htc/store/activity/list/ListCategory;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v5, v5, Lcom/htc/store/activity/list/ListCategory;->mCategoryItem:Lcom/htc/store/module/vo/CategoryItem;

    invoke-virtual {v5}, Lcom/htc/store/module/vo/CategoryItem;->getOnlineId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/htc/store/activity/list/ListCategory;->mIsOperator:Z

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/htc/store/module/rest/RestHelper;->getFeaturedContents(JLjava/lang/String;Z)Lcom/htc/store/module/rest/RestResult;

    move-result-object v16

    .line 1237
    .local v16, result:Lcom/htc/store/module/rest/RestResult;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-boolean v2, v2, Lcom/htc/store/activity/list/ListCategory;->mIsUserCancelled:Z

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1336
    :goto_0
    return-object v2

    .line 1238
    :cond_1
    move-object/from16 v0, v16

    iget v2, v0, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    const/16 v5, 0xc8

    if-ne v2, v5, :cond_16

    .line 1239
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    if-eqz v2, :cond_11

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    .line 1242
    :try_start_0
    move-object/from16 v0, v16

    iget-object v14, v0, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    .line 1243
    .local v14, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/FeaturedItem;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v2, v2, Lcom/htc/store/activity/list/ListCategory;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v2, v3, v4}, Lcom/htc/store/provider/AccessHelper;->getFeaturedItemsByCategoryId(J)Ljava/util/ArrayList;

    move-result-object v9

    .line 1244
    .local v9, dbItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/FeaturedItem;>;"
    if-nez v9, :cond_8

    .line 1245
    const/16 v17, 0x0

    .line 1246
    .local v17, retrieved:Z
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/store/module/vo/FeaturedItem;

    .line 1247
    .local v13, item:Lcom/htc/store/module/vo/FeaturedItem;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/htc/store/util/StorageUtils;->getTemporaryFeaturedIconFilePath(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1248
    .local v19, swapPath:Ljava/lang/String;
    invoke-virtual {v13}, Lcom/htc/store/module/vo/FeaturedItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/htc/store/util/StorageUtils;->getFeaturedIconFilePath(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1249
    .local v20, targetPath:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/htc/store/util/StorageUtils;->isExisted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1250
    const/16 v17, 0x1

    .line 1259
    :cond_3
    :goto_1
    if-nez v17, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z
    invoke-static {v2}, Lcom/htc/store/activity/list/ListCategory;->access$3800(Lcom/htc/store/activity/list/ListCategory;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-boolean v2, v2, Lcom/htc/store/activity/list/ListCategory;->mIsUserCancelled:Z

    if-eqz v2, :cond_2

    .line 1263
    .end local v13           #item:Lcom/htc/store/module/vo/FeaturedItem;
    .end local v19           #swapPath:Ljava/lang/String;
    .end local v20           #targetPath:Ljava/lang/String;
    :cond_4
    if-eqz v17, :cond_7

    .line 1264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v2, v2, Lcom/htc/store/activity/list/ListCategory;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v2, v14}, Lcom/htc/store/provider/AccessHelper;->addFeaturedItems(Ljava/util/ArrayList;)I

    .line 1265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iput-object v14, v2, Lcom/htc/store/activity/list/ListCategory;->mFeaturedItems:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1319
    .end local v9           #dbItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/FeaturedItem;>;"
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v14           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/FeaturedItem;>;"
    .end local v17           #retrieved:Z
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-boolean v2, v2, Lcom/htc/store/activity/list/ListCategory;->mIsUserCancelled:Z

    if-eqz v2, :cond_12

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_0

    .line 1252
    .restart local v9       #dbItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/FeaturedItem;>;"
    .restart local v12       #i$:Ljava/util/Iterator;
    .restart local v13       #item:Lcom/htc/store/module/vo/FeaturedItem;
    .restart local v14       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/FeaturedItem;>;"
    .restart local v17       #retrieved:Z
    .restart local v19       #swapPath:Ljava/lang/String;
    .restart local v20       #targetPath:Ljava/lang/String;
    :cond_6
    :try_start_1
    invoke-virtual {v13}, Lcom/htc/store/module/vo/FeaturedItem;->getOnlineIconURL()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;->mFeaturedIconWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;->mFeaturedIconHeight:I

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v2, v0, v5, v1}, Lcom/htc/store/util/DownloadUtils;->retrieveImageForcely(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v17

    .line 1255
    if-eqz v17, :cond_3

    .line 1256
    invoke-static/range {v19 .. v20}, Lcom/htc/store/util/StorageUtils;->moveFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    goto :goto_1

    .line 1267
    .end local v13           #item:Lcom/htc/store/module/vo/FeaturedItem;
    .end local v19           #swapPath:Ljava/lang/String;
    .end local v20           #targetPath:Ljava/lang/String;
    :cond_7
    const/4 v8, 0x3

    goto :goto_2

    .line 1271
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v17           #retrieved:Z
    :cond_8
    const/4 v15, 0x0

    .line 1272
    .local v15, onlineId:Ljava/lang/String;
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12       #i$:Ljava/util/Iterator;
    :cond_9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/store/module/vo/FeaturedItem;

    .line 1273
    .restart local v13       #item:Lcom/htc/store/module/vo/FeaturedItem;
    invoke-virtual {v13}, Lcom/htc/store/module/vo/FeaturedItem;->getOnlineIconURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Lcom/htc/store/module/vo/FeaturedItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/htc/store/util/StorageUtils;->getTemporaryFeaturedIconFilePath(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;->mFeaturedIconWidth:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;->mFeaturedIconHeight:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v2, v5, v0, v1}, Lcom/htc/store/util/DownloadUtils;->retrieveImageForcely(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v18

    .line 1276
    .local v18, success:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z
    invoke-static {v2}, Lcom/htc/store/activity/list/ListCategory;->access$3900(Lcom/htc/store/activity/list/ListCategory;)Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-boolean v2, v2, Lcom/htc/store/activity/list/ListCategory;->mIsUserCancelled:Z

    if-eqz v2, :cond_b

    .line 1284
    .end local v13           #item:Lcom/htc/store/module/vo/FeaturedItem;
    .end local v18           #success:Z
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-boolean v2, v2, Lcom/htc/store/activity/list/ListCategory;->mIsUserCancelled:Z

    if-eqz v2, :cond_c

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_0

    .line 1279
    .restart local v13       #item:Lcom/htc/store/module/vo/FeaturedItem;
    .restart local v18       #success:Z
    :cond_b
    if-eqz v18, :cond_9

    .line 1280
    invoke-virtual {v13}, Lcom/htc/store/module/vo/FeaturedItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v15

    .line 1281
    goto :goto_3

    .line 1285
    .end local v13           #item:Lcom/htc/store/module/vo/FeaturedItem;
    .end local v18           #success:Z
    :cond_c
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 1286
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_d
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/store/module/vo/FeaturedItem;

    .line 1287
    .restart local v13       #item:Lcom/htc/store/module/vo/FeaturedItem;
    new-instance v11, Ljava/io/File;

    invoke-virtual {v13}, Lcom/htc/store/module/vo/FeaturedItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/htc/store/util/StorageUtils;->getFeaturedIconFilePath(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v11, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1288
    .local v11, file:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-eqz v2, :cond_d

    .line 1290
    :try_start_2
    invoke-virtual {v11}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 1291
    :catch_0
    move-exception v10

    .line 1292
    .local v10, e:Ljava/lang/Exception;
    :try_start_3
    invoke-static {}, Lcom/htc/store/activity/list/ListCategory;->access$300()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v10}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    .line 1311
    .end local v9           #dbItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/FeaturedItem;>;"
    .end local v10           #e:Ljava/lang/Exception;
    .end local v11           #file:Ljava/io/File;
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v13           #item:Lcom/htc/store/module/vo/FeaturedItem;
    .end local v14           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/FeaturedItem;>;"
    .end local v15           #onlineId:Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 1312
    .restart local v10       #e:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/store/activity/list/ListCategory;->access$300()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v21, 0x0

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v5, v21

    const/16 v21, 0x1

    aput-object v10, v5, v21

    invoke-static {v2, v5}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1313
    const/4 v8, 0x3

    .line 1314
    goto/16 :goto_2

    .line 1296
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v9       #dbItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/FeaturedItem;>;"
    .restart local v12       #i$:Ljava/util/Iterator;
    .restart local v14       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/FeaturedItem;>;"
    .restart local v15       #onlineId:Ljava/lang/String;
    :cond_e
    :try_start_4
    new-instance v11, Ljava/io/File;

    invoke-static {v3, v4, v15}, Lcom/htc/store/util/StorageUtils;->getTemporaryFeaturedIconFilePath(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v11, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1297
    .restart local v11       #file:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v2

    if-eqz v2, :cond_f

    .line 1299
    :try_start_5
    new-instance v2, Ljava/io/File;

    invoke-static {v3, v4, v15}, Lcom/htc/store/util/StorageUtils;->getFeaturedIconFilePath(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 1304
    :cond_f
    :goto_5
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v2, v2, Lcom/htc/store/activity/list/ListCategory;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v2, v3, v4}, Lcom/htc/store/provider/AccessHelper;->removeFeaturedByCategoryId(J)I

    .line 1305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v2, v2, Lcom/htc/store/activity/list/ListCategory;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v2, v14}, Lcom/htc/store/provider/AccessHelper;->addFeaturedItems(Ljava/util/ArrayList;)I

    .line 1306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iput-object v14, v2, Lcom/htc/store/activity/list/ListCategory;->mFeaturedItems:Ljava/util/ArrayList;

    goto/16 :goto_2

    .line 1300
    :catch_2
    move-exception v10

    .line 1301
    .restart local v10       #e:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/store/activity/list/ListCategory;->access$300()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v10}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_5

    .line 1307
    .end local v10           #e:Ljava/lang/Exception;
    .end local v11           #file:Ljava/io/File;
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z
    invoke-static {v2}, Lcom/htc/store/activity/list/ListCategory;->access$4000(Lcom/htc/store/activity/list/ListCategory;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v2, v2, Lcom/htc/store/activity/list/ListCategory;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v2, v3, v4}, Lcom/htc/store/provider/AccessHelper;->removeFeaturedByCategoryId(J)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_2

    .line 1316
    .end local v9           #dbItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/FeaturedItem;>;"
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v14           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/FeaturedItem;>;"
    .end local v15           #onlineId:Ljava/lang/String;
    :cond_11
    invoke-static {}, Lcom/htc/store/activity/list/ListCategory;->access$300()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v21, 0x0

    const-string v22, "No featured items."

    aput-object v22, v5, v21

    invoke-static {v2, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1320
    :cond_12
    const/4 v2, 0x3

    if-eq v8, v2, :cond_13

    .line 1321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1323
    .local v6, current:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v2, v2, Lcom/htc/store/activity/list/ListCategory;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    const/4 v5, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/htc/store/provider/AccessHelper;->isCategoryDataExpired(JIJ)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1324
    const/4 v8, 0x6

    .line 1333
    .end local v6           #current:J
    :cond_13
    :goto_6
    const/4 v2, 0x1

    if-ne v8, v2, :cond_14

    .line 1334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    #calls: Lcom/htc/store/activity/list/ListCategory;->prepareDownloadCategoryIconTask(J)V
    invoke-static {v2, v3, v4}, Lcom/htc/store/activity/list/ListCategory;->access$2200(Lcom/htc/store/activity/list/ListCategory;J)V

    .line 1336
    :cond_14
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_0

    .line 1326
    .restart local v6       #current:J
    :cond_15
    const/4 v8, 0x1

    goto :goto_6

    .line 1330
    .end local v6           #current:J
    :cond_16
    invoke-static {}, Lcom/htc/store/activity/list/ListCategory;->access$300()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v21, 0x0

    const-string v22, "result.mResultCode: "

    aput-object v22, v5, v21

    const/16 v21, 0x1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v5, v21

    invoke-static {v2, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1331
    const/4 v8, 0x3

    goto :goto_6
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1219
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6
    .parameter "action"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1341
    invoke-static {}, Lcom/htc/store/activity/list/ListCategory;->access$300()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "onPostExecute: GetFeaturedTask"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1342
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z
    invoke-static {v0}, Lcom/htc/store/activity/list/ListCategory;->access$4100(Lcom/htc/store/activity/list/ListCategory;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z
    invoke-static {v0}, Lcom/htc/store/activity/list/ListCategory;->access$4200(Lcom/htc/store/activity/list/ListCategory;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1343
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnPause:Z
    invoke-static {v0}, Lcom/htc/store/activity/list/ListCategory;->access$4300(Lcom/htc/store/activity/list/ListCategory;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1344
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #calls: Lcom/htc/store/activity/list/ListCategory;->doAction(I)V
    invoke-static {v0, v1}, Lcom/htc/store/activity/list/ListCategory;->access$2700(Lcom/htc/store/activity/list/ListCategory;I)V

    .line 1345
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListCategory;->mCategoryIconDownloader:Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListCategory;->mCategoryIconDownloader:Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;

    invoke-virtual {v0}, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;->hasIdleTask()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListCategory;->mCategoryIconDownloader:Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;

    invoke-virtual {v0}, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;->hasToDownload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1347
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListCategory;->mCategoryIconDownloader:Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;

    invoke-virtual {v0}, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;->start()V

    .line 1349
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 1350
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    new-instance v1, Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;

    iget-object v2, p0, Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    invoke-direct {v1, v2}, Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;-><init>(Lcom/htc/store/activity/list/ListCategory;)V

    iput-object v1, v0, Lcom/htc/store/activity/list/ListCategory;->mDownloadFeaturedImageTask:Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;

    .line 1351
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListCategory;->mDownloadFeaturedImageTask:Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/activity/list/ListCategory$DownloadFeaturedImageTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)V

    .line 1353
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iput-object v5, v0, Lcom/htc/store/activity/list/ListCategory;->mGetFeaturedTask:Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;

    .line 1354
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    #calls: Lcom/htc/store/activity/list/ListCategory;->updateProgressBarAndMenuItem()Z
    invoke-static {v0}, Lcom/htc/store/activity/list/ListCategory;->access$2800(Lcom/htc/store/activity/list/ListCategory;)Z

    .line 1360
    :cond_2
    :goto_0
    return-void

    .line 1356
    :cond_3
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iput-object v5, v0, Lcom/htc/store/activity/list/ListCategory;->mGetFeaturedTask:Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;

    .line 1357
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/htc/store/activity/list/ListCategory;->mActionOnResume:I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1219
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/list/ListCategory$GetFeaturedTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
