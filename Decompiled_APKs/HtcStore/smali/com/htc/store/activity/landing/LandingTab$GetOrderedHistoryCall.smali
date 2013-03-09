.class Lcom/htc/store/activity/landing/LandingTab$GetOrderedHistoryCall;
.super Landroid/os/AsyncTask;
.source "LandingTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/landing/LandingTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetOrderedHistoryCall"
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


# static fields
.field private static final PAGE_SIZE:I = 0x14


# instance fields
.field private mIsFinish:Z

.field final synthetic this$0:Lcom/htc/store/activity/landing/LandingTab;


# direct methods
.method private constructor <init>(Lcom/htc/store/activity/landing/LandingTab;)V
    .locals 1
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/htc/store/activity/landing/LandingTab$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingTab;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/store/activity/landing/LandingTab$GetOrderedHistoryCall;->mIsFinish:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/store/activity/landing/LandingTab;Lcom/htc/store/activity/landing/LandingTab$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lcom/htc/store/activity/landing/LandingTab$GetOrderedHistoryCall;-><init>(Lcom/htc/store/activity/landing/LandingTab;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 24
    .parameter "params"

    .prologue
    .line 274
    invoke-static {}, Lcom/htc/store/activity/landing/LandingTab;->access$500()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "doInBackground: GetOrderedHistoryListTask"

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    const/4 v14, 0x0

    .line 276
    .local v14, startIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingTab$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingTab;

    move-object/from16 v19, v0

    #getter for: Lcom/htc/store/activity/landing/LandingTab;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;
    invoke-static/range {v19 .. v19}, Lcom/htc/store/activity/landing/LandingTab;->access$200(Lcom/htc/store/activity/landing/LandingTab;)Lcom/htc/store/module/rest/RestHelper;

    move-result-object v19

    const/16 v20, 0x14

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Lcom/htc/store/module/rest/RestHelper;->getOrderedHistoryList(II)Lcom/htc/store/module/rest/RestResult;

    move-result-object v13

    .line 277
    .local v13, result:Lcom/htc/store/module/rest/RestResult;
    iget v0, v13, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    move/from16 v19, v0

    const/16 v20, 0xc8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_18

    .line 279
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .local v15, tempToAdd:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v16, tempToUpdate:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v17, tempToUpdateWhenInstalled:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    iget-object v0, v13, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 284
    new-instance v12, Ljava/util/ArrayList;

    iget-object v0, v13, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 288
    .local v12, orderedHistoryItemsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    :goto_0
    iget-object v0, v13, Lcom/htc/store/module/rest/RestResult;->mAdditional1:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 290
    .local v18, totalCount:I
    const/16 v19, 0x14

    move/from16 v0, v19

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    const/4 v4, 0x1

    .line 291
    .local v4, isContinue:Z
    :goto_1
    iget-object v0, v13, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int v14, v14, v19

    .line 292
    :goto_2
    iget v0, v13, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    move/from16 v19, v0

    const/16 v20, 0xc8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    if-eqz v4, :cond_5

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingTab$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingTab;

    move-object/from16 v19, v0

    #getter for: Lcom/htc/store/activity/landing/LandingTab;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;
    invoke-static/range {v19 .. v19}, Lcom/htc/store/activity/landing/LandingTab;->access$200(Lcom/htc/store/activity/landing/LandingTab;)Lcom/htc/store/module/rest/RestHelper;

    move-result-object v19

    const/16 v20, 0x14

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Lcom/htc/store/module/rest/RestHelper;->getOrderedHistoryList(II)Lcom/htc/store/module/rest/RestResult;

    move-result-object v13

    .line 294
    iget v0, v13, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    move/from16 v19, v0

    const/16 v20, 0xc8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 295
    if-nez v12, :cond_2

    .line 296
    const/16 v19, 0x0

    .line 394
    .end local v4           #isContinue:Z
    .end local v12           #orderedHistoryItemsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    .end local v15           #tempToAdd:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    .end local v16           #tempToUpdate:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    .end local v17           #tempToUpdateWhenInstalled:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    .end local v18           #totalCount:I
    :goto_3
    return-object v19

    .line 286
    .restart local v15       #tempToAdd:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    .restart local v16       #tempToUpdate:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    .restart local v17       #tempToUpdateWhenInstalled:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    :cond_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .restart local v12       #orderedHistoryItemsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    goto :goto_0

    .line 290
    .restart local v18       #totalCount:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 298
    .restart local v4       #isContinue:Z
    :cond_2
    iget-object v0, v13, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 299
    iget-object v0, v13, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 300
    add-int v14, v14, v18

    .line 301
    const/16 v19, 0x14

    move/from16 v0, v19

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    const/4 v4, 0x1

    :goto_4
    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto :goto_4

    .line 303
    :cond_4
    const/16 v19, 0x0

    goto :goto_3

    .line 307
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingTab$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingTab;

    move-object/from16 v19, v0

    #getter for: Lcom/htc/store/activity/landing/LandingTab;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static/range {v19 .. v19}, Lcom/htc/store/activity/landing/LandingTab;->access$600(Lcom/htc/store/activity/landing/LandingTab;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/htc/store/provider/AccessHelper;->getMyActivityItemsIds()Ljava/util/ArrayList;

    move-result-object v8

    .line 308
    .local v8, myActivityItemsIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingTab$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingTab;

    move-object/from16 v19, v0

    #getter for: Lcom/htc/store/activity/landing/LandingTab;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static/range {v19 .. v19}, Lcom/htc/store/activity/landing/LandingTab;->access$600(Lcom/htc/store/activity/landing/LandingTab;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/htc/store/provider/AccessHelper;->getMyActivityInstalledItemsPackageNameOrId()Ljava/util/ArrayList;

    move-result-object v7

    .line 309
    .local v7, myActivityInstalledItemsPackageNameOrId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingTab$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingTab;

    move-object/from16 v19, v0

    #getter for: Lcom/htc/store/activity/landing/LandingTab;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static/range {v19 .. v19}, Lcom/htc/store/activity/landing/LandingTab;->access$600(Lcom/htc/store/activity/landing/LandingTab;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/htc/store/provider/AccessHelper;->getMyActivityItemsIdsByPurchased()Ljava/util/ArrayList;

    move-result-object v11

    .line 310
    .local v11, orderedHisotryItemsIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v12, :cond_18

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_18

    .line 311
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/store/module/vo/MyActivityItem;

    .line 312
    .local v5, item:Lcom/htc/store/module/vo/MyActivityItem;
    invoke-virtual {v5}, Lcom/htc/store/module/vo/MyActivityItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v10

    .line 313
    .local v10, onlineId:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/htc/store/module/vo/MyActivityItem;->getItemPackageName()Ljava/lang/String;

    move-result-object v6

    .line 314
    .local v6, itemPackageName:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 315
    .local v2, emptyPackageName:Z
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 317
    if-nez v2, :cond_6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_8

    :cond_6
    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingTab$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingTab;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v6}, Lcom/htc/store/util/CommonUtils;->isInstalledPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_8

    :cond_7
    if-eqz v2, :cond_b

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 320
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingTab$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingTab;

    move-object/from16 v19, v0

    #getter for: Lcom/htc/store/activity/landing/LandingTab;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static/range {v19 .. v19}, Lcom/htc/store/activity/landing/LandingTab;->access$600(Lcom/htc/store/activity/landing/LandingTab;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/htc/store/provider/AccessHelper;->isUpdate(Lcom/htc/store/module/vo/MyActivityItem;)Ljava/lang/String;

    move-result-object v9

    .line 321
    .local v9, needUpdateAndOriginalVersion:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 322
    invoke-virtual {v5, v9}, Lcom/htc/store/module/vo/MyActivityItem;->setItemVersionName(Ljava/lang/String;)V

    .line 323
    const/16 v19, 0xc

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/htc/store/module/vo/MyActivityItem;->setStatus(I)V

    .line 327
    :goto_6
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    if-eqz v2, :cond_a

    .line 329
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 336
    .end local v9           #needUpdateAndOriginalVersion:Ljava/lang/String;
    :goto_7
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 337
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 325
    .restart local v9       #needUpdateAndOriginalVersion:Ljava/lang/String;
    :cond_9
    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/htc/store/module/vo/MyActivityItem;->setStatus(I)V

    goto :goto_6

    .line 331
    :cond_a
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_7

    .line 334
    .end local v9           #needUpdateAndOriginalVersion:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 340
    :cond_c
    if-nez v2, :cond_d

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_e

    :cond_d
    if-eqz v2, :cond_11

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 342
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingTab$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingTab;

    move-object/from16 v19, v0

    #getter for: Lcom/htc/store/activity/landing/LandingTab;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static/range {v19 .. v19}, Lcom/htc/store/activity/landing/LandingTab;->access$600(Lcom/htc/store/activity/landing/LandingTab;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/htc/store/provider/AccessHelper;->isUpdate(Lcom/htc/store/module/vo/MyActivityItem;)Ljava/lang/String;

    move-result-object v9

    .line 343
    .restart local v9       #needUpdateAndOriginalVersion:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_f

    .line 344
    invoke-virtual {v5, v9}, Lcom/htc/store/module/vo/MyActivityItem;->setItemVersionName(Ljava/lang/String;)V

    .line 345
    const/16 v19, 0xc

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/htc/store/module/vo/MyActivityItem;->setStatus(I)V

    .line 349
    :goto_8
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    if-eqz v2, :cond_10

    .line 351
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 347
    :cond_f
    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/htc/store/module/vo/MyActivityItem;->setStatus(I)V

    goto :goto_8

    .line 353
    :cond_10
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 355
    .end local v9           #needUpdateAndOriginalVersion:Ljava/lang/String;
    :cond_11
    if-nez v2, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingTab$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingTab;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v6}, Lcom/htc/store/util/CommonUtils;->isInstalledPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 356
    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/htc/store/module/vo/MyActivityItem;->setStatus(I)V

    .line 357
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 359
    :cond_12
    const/16 v19, 0xb

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/htc/store/module/vo/MyActivityItem;->setStatus(I)V

    .line 360
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 367
    .end local v2           #emptyPackageName:Z
    .end local v5           #item:Lcom/htc/store/module/vo/MyActivityItem;
    .end local v6           #itemPackageName:Ljava/lang/String;
    .end local v10           #onlineId:Ljava/lang/String;
    :cond_13
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_14

    .line 368
    invoke-static {}, Lcom/htc/store/activity/landing/LandingTab;->access$500()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ordered items tempToUpdate array : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingTab$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingTab;

    move-object/from16 v19, v0

    #getter for: Lcom/htc/store/activity/landing/LandingTab;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static/range {v19 .. v19}, Lcom/htc/store/activity/landing/LandingTab;->access$600(Lcom/htc/store/activity/landing/LandingTab;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/store/provider/AccessHelper;->updateMyActivityItems(Ljava/util/ArrayList;)I

    .line 372
    :cond_14
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_15

    .line 373
    invoke-static {}, Lcom/htc/store/activity/landing/LandingTab;->access$500()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ordered items tempToUpdateWhenInstalled array : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingTab$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingTab;

    move-object/from16 v19, v0

    #getter for: Lcom/htc/store/activity/landing/LandingTab;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static/range {v19 .. v19}, Lcom/htc/store/activity/landing/LandingTab;->access$600(Lcom/htc/store/activity/landing/LandingTab;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/store/provider/AccessHelper;->updateMyActivityOrderedHistoryItemsWhenInstalled(Ljava/util/ArrayList;)I

    .line 379
    :cond_15
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_16

    .line 380
    invoke-static {}, Lcom/htc/store/activity/landing/LandingTab;->access$500()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ordered items add array : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingTab$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingTab;

    move-object/from16 v19, v0

    #getter for: Lcom/htc/store/activity/landing/LandingTab;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static/range {v19 .. v19}, Lcom/htc/store/activity/landing/LandingTab;->access$600(Lcom/htc/store/activity/landing/LandingTab;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/htc/store/provider/AccessHelper;->addMyActivityItems(Ljava/util/ArrayList;)I

    .line 385
    :cond_16
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_17

    .line 386
    invoke-static {}, Lcom/htc/store/activity/landing/LandingTab;->access$500()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ordered items delete array : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingTab$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingTab;

    move-object/from16 v19, v0

    #getter for: Lcom/htc/store/activity/landing/LandingTab;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static/range {v19 .. v19}, Lcom/htc/store/activity/landing/LandingTab;->access$600(Lcom/htc/store/activity/landing/LandingTab;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/htc/store/provider/AccessHelper;->removeMyActivityMarkedItemsByOnlilneMarkedIds(Ljava/util/ArrayList;)I

    .line 390
    :cond_17
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/store/activity/landing/LandingTab$GetOrderedHistoryCall;->mIsFinish:Z

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingTab$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingTab;

    move-object/from16 v19, v0

    #calls: Lcom/htc/store/activity/landing/LandingTab;->updateFirstSyncStatus()V
    invoke-static/range {v19 .. v19}, Lcom/htc/store/activity/landing/LandingTab;->access$700(Lcom/htc/store/activity/landing/LandingTab;)V

    .line 394
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #isContinue:Z
    .end local v7           #myActivityInstalledItemsPackageNameOrId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8           #myActivityItemsIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11           #orderedHisotryItemsIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12           #orderedHistoryItemsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    .end local v15           #tempToAdd:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    .end local v16           #tempToUpdate:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    .end local v17           #tempToUpdateWhenInstalled:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    .end local v18           #totalCount:I
    :cond_18
    const/16 v19, 0x0

    goto/16 :goto_3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 267
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/landing/LandingTab$GetOrderedHistoryCall;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public isFinish()Z
    .locals 1

    .prologue
    .line 398
    iget-boolean v0, p0, Lcom/htc/store/activity/landing/LandingTab$GetOrderedHistoryCall;->mIsFinish:Z

    return v0
.end method
