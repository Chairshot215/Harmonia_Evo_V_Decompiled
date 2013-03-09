.class Lcom/htc/store/activity/list/ListCategory$GetPromoTask;
.super Landroid/os/AsyncTask;
.source "ListCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/list/ListCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetPromoTask"
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
.field private mPromoImageHeightForRetrieval:I

.field private mPromoImageWidthForRetrieval:I

.field final synthetic this$0:Lcom/htc/store/activity/list/ListCategory;


# direct methods
.method private constructor <init>(Lcom/htc/store/activity/list/ListCategory;)V
    .locals 2
    .parameter

    .prologue
    .line 981
    iput-object p1, p0, Lcom/htc/store/activity/list/ListCategory$GetPromoTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 982
    invoke-virtual {p1}, Lcom/htc/store/activity/list/ListCategory;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/store/activity/list/ListCategory$GetPromoTask;->mPromoImageWidthForRetrieval:I

    .line 983
    invoke-virtual {p1}, Lcom/htc/store/activity/list/ListCategory;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/store/activity/list/ListCategory$GetPromoTask;->mPromoImageHeightForRetrieval:I

    .line 984
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/store/activity/list/ListCategory;Lcom/htc/store/activity/list/ListCategory$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 977
    invoke-direct {p0, p1}, Lcom/htc/store/activity/list/ListCategory$GetPromoTask;-><init>(Lcom/htc/store/activity/list/ListCategory;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 20
    .parameter "params"

    .prologue
    .line 988
    invoke-static {}, Lcom/htc/store/activity/list/ListCategory;->access$300()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v18, 0x0

    const-string v19, "doInBackground: GetPromoTask"

    aput-object v19, v5, v18

    invoke-static {v2, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 989
    const/4 v8, 0x0

    .line 990
    .local v8, action:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/activity/list/ListCategory$GetPromoTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v2, v2, Lcom/htc/store/activity/list/ListCategory;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    if-nez v2, :cond_0

    .line 991
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/activity/list/ListCategory$GetPromoTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    new-instance v5, Lcom/htc/store/module/rest/RestHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/list/ListCategory$GetPromoTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    move-object/from16 v18, v0

    #calls: Lcom/htc/store/activity/list/ListCategory;->getContext()Landroid/app/Activity;
    invoke-static/range {v18 .. v18}, Lcom/htc/store/activity/list/ListCategory;->access$2900(Lcom/htc/store/activity/list/ListCategory;)Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Lcom/htc/store/module/rest/RestHelper;-><init>(Landroid/content/Context;)V

    iput-object v5, v2, Lcom/htc/store/activity/list/ListCategory;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    .line 993
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/activity/list/ListCategory$GetPromoTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v2, v2, Lcom/htc/store/activity/list/ListCategory;->mCategoryItem:Lcom/htc/store/module/vo/CategoryItem;

    invoke-virtual {v2}, Lcom/htc/store/module/vo/CategoryItem;->getId()J

    move-result-wide v3

    .line 994
    .local v3, categoryId:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/activity/list/ListCategory$GetPromoTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v2, v2, Lcom/htc/store/activity/list/ListCategory;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/store/activity/list/ListCategory$GetPromoTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v5, v5, Lcom/htc/store/activity/list/ListCategory;->mCategoryItem:Lcom/htc/store/module/vo/CategoryItem;

    invoke-virtual {v5}, Lcom/htc/store/module/vo/CategoryItem;->getOnlineId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/list/ListCategory$GetPromoTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/htc/store/activity/list/ListCategory;->mIsOperator:Z

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/htc/store/module/rest/RestHelper;->getPromoContents(JLjava/lang/String;Z)Lcom/htc/store/module/rest/RestResult;

    move-result-object v16

    .line 995
    .local v16, result:Lcom/htc/store/module/rest/RestResult;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/activity/list/ListCategory$GetPromoTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-boolean v2, v2, Lcom/htc/store/activity/list/ListCategory;->mIsUserCancelled:Z

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1083
    :goto_0
    return-object v2

    .line 996
    :cond_1
    move-object/from16 v0, v16

    iget v2, v0, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    const/16 v5, 0xc8

    if-ne v2, v5, :cond_14

    .line 998
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    if-eqz v2, :cond_e

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    .line 1001
    :try_start_0
    move-object/from16 v0, v16

    iget-object v14, v0, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    .line 1002
    .local v14, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/PromoItem;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/activity/list/ListCategory$GetPromoTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v2, v2, Lcom/htc/store/activity/list/ListCategory;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v2, v3, v4}, Lcom/htc/store/provider/AccessHelper;->getPromoItemsByCategoryId(J)Ljava/util/ArrayList;

    move-result-object v9

    .line 1003
    .local v9, dbItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/PromoItem;>;"
    if-nez v9, :cond_3

    .line 1004
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/activity/list/ListCategory$GetPromoTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v2, v2, Lcom/htc/store/activity/list/ListCategory;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v2, v14}, Lcom/htc/store/provider/AccessHelper;->addPromoItems(Ljava/util/ArrayList;)I

    .line 1005
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/activity/list/ListCategory$GetPromoTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iput-object v14, v2, Lcom/htc/store/activity/list/ListCategory;->mPromoItems:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1061
    .end local v9           #dbItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/PromoItem;>;"
    .end local v14           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/PromoItem;>;"
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/activity/list/ListCategory$GetPromoTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-boolean v2, v2, Lcom/htc/store/activity/list/ListCategory;->mIsUserCancelled:Z

    if-eqz v2, :cond_f

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 1007
    .restart local v9       #dbItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/PromoItem;>;"
    .restart local v14       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/PromoItem;>;"
    :cond_3
    const/4 v15, 0x0

    .line 1008
    .local v15, onlineId:Ljava/lang/String;
    :try_start_1
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/store/module/vo/PromoItem;

    .line 1009
    .local v13, item:Lcom/htc/store/module/vo/PromoItem;
    invoke-virtual {v13}, Lcom/htc/store/module/vo/PromoItem;->getOnlineImageURLPortrait()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Lcom/htc/store/module/vo/PromoItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/htc/store/util/StorageUtils;->getTemporaryPromoPreviewFilePath(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/store/activity/list/ListCategory$GetPromoTask;->mPromoImageWidthForRetrieval:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/store/activity/list/ListCategory$GetPromoTask;->mPromoImageHeightForRetrieval:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v2, v5, v0, v1}, Lcom/htc/store/util/DownloadUtils;->retrieveImageForcely(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v17

    .line 1012
    .local v17, success:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/activity/list/ListCategory$GetPromoTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-boolean v2, v2, Lcom/htc/store/activity/list/ListCategory;->mIsUserCancelled:Z

    if-eqz v2, :cond_5

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_0

    .line 1013
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/activity/list/ListCategory$GetPromoTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z
    invoke-static {v2}, Lcom/htc/store/activity/list/ListCategory;->access$3000(Lcom/htc/store/activity/list/ListCategory;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1021
    .end local v13           #item:Lcom/htc/store/module/vo/PromoItem;
    .end local v17           #success:Z
    :cond_6
    :goto_2
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 1022
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/activity/list/ListCategory$GetPromoTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v2, v2, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    if-eqz v2, :cond_7

    .line 1023
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/activity/list/ListCategory$GetPromoTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v2, v2, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v2}, Lcom/htc/store/module/view/PromoSwitcher;->removePromoItems()V

    .line 1025
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/activity/list/ListCategory$GetPromoTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v2, v2, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherLand:Lcom/htc/store/module/view/PromoSwitcher;

    if-eqz v2, :cond_8

    .line 1026
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/activity/list/ListCategory$GetPromoTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v2, v2, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherLand:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v2}, Lcom/htc/store/module/view/PromoSwitcher;->removePromoItems()V

    .line 1028
    :cond_8
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_9
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/store/module/vo/PromoItem;

    .line 1029
    .restart local v13       #item:Lcom/htc/store/module/vo/PromoItem;
    new-instance v11, Ljava/io/File;

    invoke-virtual {v13}, Lcom/htc/store/module/vo/PromoItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/htc/store/util/StorageUtils;->getPromoPreviewFilePath(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v11, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1030
    .local v11, file:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-eqz v2, :cond_9

    .line 1032
    :try_start_2
    invoke-virtual {v11}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 1033
    :catch_0
    move-exception v10

    .line 1034
    .local v10, e:Ljava/lang/Exception;
    :try_start_3
    invoke-static {}, Lcom/htc/store/activity/list/ListCategory;->access$300()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v10}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 1053
    .end local v9           #dbItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/PromoItem;>;"
    .end local v10           #e:Ljava/lang/Exception;
    .end local v11           #file:Ljava/io/File;
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v13           #item:Lcom/htc/store/module/vo/PromoItem;
    .end local v14           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/PromoItem;>;"
    .end local v15           #onlineId:Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 1054
    .restart local v10       #e:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/store/activity/list/ListCategory;->access$300()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v18, 0x0

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v5, v18

    const/16 v18, 0x1

    aput-object v10, v5, v18

    invoke-static {v2, v5}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1055
    const/4 v8, 0x3

    .line 1056
    goto/16 :goto_1

    .line 1016
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v9       #dbItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/PromoItem;>;"
    .restart local v12       #i$:Ljava/util/Iterator;
    .restart local v13       #item:Lcom/htc/store/module/vo/PromoItem;
    .restart local v14       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/PromoItem;>;"
    .restart local v15       #onlineId:Ljava/lang/String;
    .restart local v17       #success:Z
    :cond_a
    if-eqz v17, :cond_4

    .line 1017
    :try_start_4
    invoke-virtual {v13}, Lcom/htc/store/module/vo/PromoItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v15

    .line 1018
    goto :goto_2

    .line 1038
    .end local v13           #item:Lcom/htc/store/module/vo/PromoItem;
    .end local v17           #success:Z
    :cond_b
    new-instance v11, Ljava/io/File;

    invoke-static {v3, v4, v15}, Lcom/htc/store/util/StorageUtils;->getTemporaryPromoPreviewFilePath(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v11, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1039
    .restart local v11       #file:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v2

    if-eqz v2, :cond_c

    .line 1041
    :try_start_5
    new-instance v2, Ljava/io/File;

    invoke-static {v3, v4, v15}, Lcom/htc/store/util/StorageUtils;->getPromoPreviewFilePath(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 1046
    :cond_c
    :goto_4
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/activity/list/ListCategory$GetPromoTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v2, v2, Lcom/htc/store/activity/list/ListCategory;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v2, v3, v4}, Lcom/htc/store/provider/AccessHelper;->removePromoByCategoryId(J)I

    .line 1047
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/activity/list/ListCategory$GetPromoTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v2, v2, Lcom/htc/store/activity/list/ListCategory;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v2, v14}, Lcom/htc/store/provider/AccessHelper;->addPromoItems(Ljava/util/ArrayList;)I

    .line 1048
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/activity/list/ListCategory$GetPromoTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iput-object v14, v2, Lcom/htc/store/activity/list/ListCategory;->mPromoItems:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 1042
    :catch_2
    move-exception v10

    .line 1043
    .restart local v10       #e:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/store/activity/list/ListCategory;->access$300()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v10}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_4

    .line 1049
    .end local v10           #e:Ljava/lang/Exception;
    .end local v11           #file:Ljava/io/File;
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/activity/list/ListCategory$GetPromoTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z
    invoke-static {v2}, Lcom/htc/store/activity/list/ListCategory;->access$3100(Lcom/htc/store/activity/list/ListCategory;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1050
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/activity/list/ListCategory$GetPromoTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v2, v2, Lcom/htc/store/activity/list/ListCategory;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v2, v3, v4}, Lcom/htc/store/provider/AccessHelper;->removePromoByCategoryId(J)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    .line 1058
    .end local v9           #dbItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/PromoItem;>;"
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v14           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/PromoItem;>;"
    .end local v15           #onlineId:Ljava/lang/String;
    :cond_e
    invoke-static {}, Lcom/htc/store/activity/list/ListCategory;->access$300()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v18, 0x0

    const-string v19, "No promo items."

    aput-object v19, v5, v18

    invoke-static {v2, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1062
    :cond_f
    const/4 v2, 0x3

    if-eq v8, v2, :cond_10

    .line 1063
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1065
    .local v6, current:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/activity/list/ListCategory$GetPromoTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v2, v2, Lcom/htc/store/activity/list/ListCategory;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    const/4 v5, 0x5

    invoke-virtual/range {v2 .. v7}, Lcom/htc/store/provider/AccessHelper;->isCategoryDataExpired(JIJ)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1066
    const/4 v8, 0x5

    .line 1080
    .end local v6           #current:J
    :cond_10
    :goto_5
    const/4 v2, 0x1

    if-ne v8, v2, :cond_11

    .line 1081
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/activity/list/ListCategory$GetPromoTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    #calls: Lcom/htc/store/activity/list/ListCategory;->prepareDownloadCategoryIconTask(J)V
    invoke-static {v2, v3, v4}, Lcom/htc/store/activity/list/ListCategory;->access$2200(Lcom/htc/store/activity/list/ListCategory;J)V

    .line 1083
    :cond_11
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_0

    .line 1069
    .restart local v6       #current:J
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/activity/list/ListCategory$GetPromoTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v2, v2, Lcom/htc/store/activity/list/ListCategory;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    const/4 v5, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/htc/store/provider/AccessHelper;->isCategoryDataExpired(JIJ)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1070
    const/4 v8, 0x6

    goto :goto_5

    .line 1072
    :cond_13
    const/4 v8, 0x1

    goto :goto_5

    .line 1077
    .end local v6           #current:J
    :cond_14
    invoke-static {}, Lcom/htc/store/activity/list/ListCategory;->access$300()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v18, 0x0

    const-string v19, "result.mResultCode: "

    aput-object v19, v5, v18

    const/16 v18, 0x1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v5, v18

    invoke-static {v2, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1078
    const/4 v8, 0x3

    goto :goto_5
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 977
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/list/ListCategory$GetPromoTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

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

    .line 1088
    invoke-static {}, Lcom/htc/store/activity/list/ListCategory;->access$300()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "onPostExecute: GetPromoTask"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1089
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$GetPromoTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z
    invoke-static {v0}, Lcom/htc/store/activity/list/ListCategory;->access$3200(Lcom/htc/store/activity/list/ListCategory;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$GetPromoTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z
    invoke-static {v0}, Lcom/htc/store/activity/list/ListCategory;->access$3300(Lcom/htc/store/activity/list/ListCategory;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1090
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$GetPromoTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnPause:Z
    invoke-static {v0}, Lcom/htc/store/activity/list/ListCategory;->access$3400(Lcom/htc/store/activity/list/ListCategory;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1091
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$GetPromoTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #calls: Lcom/htc/store/activity/list/ListCategory;->doAction(I)V
    invoke-static {v0, v1}, Lcom/htc/store/activity/list/ListCategory;->access$2700(Lcom/htc/store/activity/list/ListCategory;I)V

    .line 1092
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$GetPromoTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListCategory;->mCategoryIconDownloader:Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$GetPromoTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListCategory;->mCategoryIconDownloader:Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;

    invoke-virtual {v0}, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;->hasIdleTask()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$GetPromoTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListCategory;->mCategoryIconDownloader:Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;

    invoke-virtual {v0}, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;->hasToDownload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1094
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$GetPromoTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListCategory;->mCategoryIconDownloader:Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;

    invoke-virtual {v0}, Lcom/htc/store/activity/list/ListCategory$CategoryIconDownloader;->start()V

    .line 1096
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 1097
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$GetPromoTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    new-instance v1, Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;

    iget-object v2, p0, Lcom/htc/store/activity/list/ListCategory$GetPromoTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    invoke-direct {v1, v2}, Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;-><init>(Lcom/htc/store/activity/list/ListCategory;)V

    iput-object v1, v0, Lcom/htc/store/activity/list/ListCategory;->mDownloadPromoImageTask:Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;

    .line 1098
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$GetPromoTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListCategory;->mDownloadPromoImageTask:Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)V

    .line 1100
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$GetPromoTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iput-object v5, v0, Lcom/htc/store/activity/list/ListCategory;->mGetPromoTask:Lcom/htc/store/activity/list/ListCategory$GetPromoTask;

    .line 1101
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$GetPromoTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    #calls: Lcom/htc/store/activity/list/ListCategory;->updateProgressBarAndMenuItem()Z
    invoke-static {v0}, Lcom/htc/store/activity/list/ListCategory;->access$2800(Lcom/htc/store/activity/list/ListCategory;)Z

    .line 1107
    :cond_2
    :goto_0
    return-void

    .line 1103
    :cond_3
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$GetPromoTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iput-object v5, v0, Lcom/htc/store/activity/list/ListCategory;->mGetPromoTask:Lcom/htc/store/activity/list/ListCategory$GetPromoTask;

    .line 1104
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$GetPromoTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/htc/store/activity/list/ListCategory;->mActionOnResume:I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 977
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/list/ListCategory$GetPromoTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
