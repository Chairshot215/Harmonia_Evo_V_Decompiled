.class Lcom/htc/store/activity/list/ListItem$GetItemListTask;
.super Lcom/htc/store/module/MultiExecutableAsyncTask;
.source "ListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/list/ListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetItemListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/store/module/MultiExecutableAsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACTION_DOWNLOAD_COMMENT_LIKE_INFO:I = 0x2

.field private static final ACTION_REMOVE_LOADING_ITEM:I = 0x1

.field private static final ACTION_UPDATE_IDLE_FLAG:I = 0x0

.field public static final PAGE_SIZE:I = 0x14

.field private static final TOTAL_COUNT_UNKNOWN:I = -0x1


# instance fields
.field private mCategoryId:J

.field private mStartIndex:I

.field private mTotalCount:I

.field final synthetic this$0:Lcom/htc/store/activity/list/ListItem;


# direct methods
.method public constructor <init>(Lcom/htc/store/activity/list/ListItem;)V
    .locals 2
    .parameter

    .prologue
    .line 831
    iput-object p1, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    invoke-direct {p0}, Lcom/htc/store/module/MultiExecutableAsyncTask;-><init>()V

    .line 832
    iget-object v0, p1, Lcom/htc/store/activity/list/ListItem;->mCategoryItem:Lcom/htc/store/module/vo/CategoryItem;

    invoke-virtual {v0}, Lcom/htc/store/module/vo/CategoryItem;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->mCategoryId:J

    .line 833
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->mStartIndex:I

    .line 834
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->mTotalCount:I

    .line 835
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->mIsIdle:Z

    .line 836
    return-void
.end method

.method public constructor <init>(Lcom/htc/store/activity/list/ListItem;I)V
    .locals 2
    .parameter
    .parameter "startIndex"

    .prologue
    .line 838
    iput-object p1, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    invoke-direct {p0}, Lcom/htc/store/module/MultiExecutableAsyncTask;-><init>()V

    .line 839
    iget-object v0, p1, Lcom/htc/store/activity/list/ListItem;->mCategoryItem:Lcom/htc/store/module/vo/CategoryItem;

    invoke-virtual {v0}, Lcom/htc/store/module/vo/CategoryItem;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->mCategoryId:J

    .line 840
    iput p2, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->mStartIndex:I

    .line 841
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->mTotalCount:I

    .line 842
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->mIsIdle:Z

    .line 843
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 15
    .parameter "params"

    .prologue
    .line 847
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->publishProgress([Ljava/lang/Object;)V

    .line 848
    invoke-static {}, Lcom/htc/store/activity/list/ListItem;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "doInBackground: GetItemListTask"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 849
    const/4 v7, 0x0

    .line 850
    .local v7, action:I
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    if-nez v0, :cond_0

    .line 851
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    new-instance v1, Lcom/htc/store/module/rest/RestHelper;

    iget-object v2, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    #calls: Lcom/htc/store/activity/list/ListItem;->getContext()Landroid/app/Activity;
    invoke-static {v2}, Lcom/htc/store/activity/list/ListItem;->access$2500(Lcom/htc/store/activity/list/ListItem;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/store/module/rest/RestHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/htc/store/activity/list/ListItem;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    .line 853
    :cond_0
    invoke-static {}, Lcom/htc/store/activity/list/ListItem;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "mStartIndex (before): "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->mStartIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 854
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    iget-wide v1, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->mCategoryId:J

    iget-object v3, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v3, v3, Lcom/htc/store/activity/list/ListItem;->mCategoryItem:Lcom/htc/store/module/vo/CategoryItem;

    invoke-virtual {v3}, Lcom/htc/store/module/vo/CategoryItem;->getOnlineId()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->mStartIndex:I

    const/16 v5, 0x14

    iget-object v6, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-boolean v6, v6, Lcom/htc/store/activity/list/ListItem;->mIsOperator:Z

    invoke-virtual/range {v0 .. v6}, Lcom/htc/store/module/rest/RestHelper;->getItemList(JLjava/lang/String;IIZ)Lcom/htc/store/module/rest/RestResult;

    move-result-object v13

    .line 855
    .local v13, result:Lcom/htc/store/module/rest/RestResult;
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-boolean v0, v0, Lcom/htc/store/activity/list/ListItem;->mIsUserCancelled:Z

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 913
    :goto_0
    return-object v0

    .line 856
    :cond_1
    iget v0, v13, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_c

    .line 857
    iget v0, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->mTotalCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 858
    iget-object v0, v13, Lcom/htc/store/module/rest/RestResult;->mAdditional1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->mTotalCount:I

    .line 860
    :cond_2
    iget-object v0, v13, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    iget-object v0, v13, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 862
    :try_start_0
    iget v0, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->mStartIndex:I

    if-nez v0, :cond_3

    .line 864
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    iget-wide v1, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->mCategoryId:J

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/store/provider/AccessHelper;->setAllItemStatusByCategoryId(JI)I

    .line 867
    :cond_3
    iget-object v11, v13, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    .line 868
    .local v11, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 869
    .local v8, count:I
    invoke-static {}, Lcom/htc/store/activity/list/ListItem;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "result count: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 871
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 872
    .local v12, onlineItemIconURLs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-ge v10, v8, :cond_4

    .line 873
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/store/module/vo/ItemItem;

    invoke-virtual {v0}, Lcom/htc/store/module/vo/ItemItem;->getOnlineIconURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 872
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 875
    :cond_4
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem;->mItemIconDownloader:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    if-nez v0, :cond_5

    .line 876
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    new-instance v1, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    iget-object v2, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;-><init>(Lcom/htc/store/activity/list/ListItem;I)V

    iput-object v1, v0, Lcom/htc/store/activity/list/ListItem;->mItemIconDownloader:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    .line 878
    :cond_5
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem;->mItemIconDownloader:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    invoke-virtual {v0, v12}, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->insert(Ljava/util/ArrayList;)V

    .line 879
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem;->mItemIconDownloader:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->setOverwriteMode(Z)V

    .line 881
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    iget-wide v1, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->mCategoryId:J

    invoke-virtual {v0, v1, v2, v11}, Lcom/htc/store/provider/AccessHelper;->syncItemItems(JLjava/util/ArrayList;)Z

    .line 882
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    #calls: Lcom/htc/store/activity/list/ListItem;->isHtcAccountExisted()Z
    invoke-static {v0}, Lcom/htc/store/activity/list/ListItem;->access$2600(Lcom/htc/store/activity/list/ListItem;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 883
    new-instance v14, Lcom/htc/store/activity/list/ListItem$DownloadCommentLikeInfoTask;

    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    invoke-direct {v14, v0, v11}, Lcom/htc/store/activity/list/ListItem$DownloadCommentLikeInfoTask;-><init>(Lcom/htc/store/activity/list/ListItem;Ljava/util/ArrayList;)V

    .line 884
    .local v14, task:Lcom/htc/store/activity/list/ListItem$DownloadCommentLikeInfoTask;
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v14, v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->publishProgress([Ljava/lang/Object;)V

    .line 886
    .end local v14           #task:Lcom/htc/store/activity/list/ListItem$DownloadCommentLikeInfoTask;
    :cond_6
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 888
    iget v0, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->mStartIndex:I

    if-nez v0, :cond_8

    .line 889
    iget v0, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->mStartIndex:I

    add-int/2addr v0, v8

    iput v0, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->mStartIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 897
    :cond_7
    :goto_2
    const/4 v7, 0x1

    .line 913
    .end local v8           #count:I
    .end local v10           #i:I
    .end local v11           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    .end local v12           #onlineItemIconURLs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 891
    .restart local v8       #count:I
    .restart local v10       #i:I
    .restart local v11       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    .restart local v12       #onlineItemIconURLs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8
    :try_start_1
    iget v0, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->mStartIndex:I

    add-int/2addr v0, v8

    iput v0, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->mStartIndex:I

    .line 892
    const/16 v0, 0x14

    if-lt v8, v0, :cond_9

    iget v0, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->mStartIndex:I

    iget v1, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->mTotalCount:I

    if-lt v0, v1, :cond_7

    .line 893
    :cond_9
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->publishProgress([Ljava/lang/Object;)V

    .line 894
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    iget-wide v1, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->mCategoryId:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/provider/AccessHelper;->removeItemsByCategoryIdAndExpired(J)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 898
    .end local v8           #count:I
    .end local v10           #i:I
    .end local v11           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    .end local v12           #onlineItemIconURLs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v9

    .line 899
    .local v9, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/store/activity/list/ListItem;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v9, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 900
    const/4 v7, 0x3

    .line 901
    goto :goto_3

    .line 903
    .end local v9           #e:Ljava/lang/Exception;
    :cond_a
    iget v0, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->mStartIndex:I

    if-nez v0, :cond_b

    .line 904
    const/4 v7, 0x2

    goto :goto_3

    .line 906
    :cond_b
    invoke-static {}, Lcom/htc/store/activity/list/ListItem;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "mStartIndex: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->mStartIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 907
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_3

    .line 911
    :cond_c
    const/4 v7, 0x3

    goto :goto_3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 822
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 5
    .parameter "action"

    .prologue
    const/4 v4, 0x1

    .line 935
    invoke-static {}, Lcom/htc/store/activity/list/ListItem;->access$000()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onPostExecute: GetItemListTask"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 936
    iput-boolean v4, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->mIsIdle:Z

    .line 937
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z
    invoke-static {v0}, Lcom/htc/store/activity/list/ListItem;->access$2800(Lcom/htc/store/activity/list/ListItem;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z
    invoke-static {v0}, Lcom/htc/store/activity/list/ListItem;->access$2900(Lcom/htc/store/activity/list/ListItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 938
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnPause:Z
    invoke-static {v0}, Lcom/htc/store/activity/list/ListItem;->access$3000(Lcom/htc/store/activity/list/ListItem;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 939
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #calls: Lcom/htc/store/activity/list/ListItem;->doAction(I)V
    invoke-static {v0, v1}, Lcom/htc/store/activity/list/ListItem;->access$2400(Lcom/htc/store/activity/list/ListItem;I)V

    .line 940
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem;->mItemIconDownloader:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem;->mItemIconDownloader:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    invoke-virtual {v0}, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->hasToDownload()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem;->mItemIconDownloader:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    invoke-virtual {v0}, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->hasIdleTask()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 942
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    #calls: Lcom/htc/store/activity/list/ListItem;->updateProgressBarAndMenuItem(Z)V
    invoke-static {v0, v4}, Lcom/htc/store/activity/list/ListItem;->access$2300(Lcom/htc/store/activity/list/ListItem;Z)V

    .line 943
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem;->mItemIconDownloader:Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;

    invoke-virtual {v0}, Lcom/htc/store/activity/list/ListItem$ItemIconDownloader;->start()V

    .line 951
    :cond_0
    :goto_0
    return-void

    .line 945
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    #calls: Lcom/htc/store/activity/list/ListItem;->updateProgressBarAndMenuItem()Z
    invoke-static {v0}, Lcom/htc/store/activity/list/ListItem;->access$3100(Lcom/htc/store/activity/list/ListItem;)Z

    goto :goto_0

    .line 948
    :cond_2
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/htc/store/activity/list/ListItem;->mActionOnResume:I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 822
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 5
    .parameter "values"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 922
    aget-object v1, p1, v4

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 923
    .local v0, action:I
    if-nez v0, :cond_1

    .line 924
    aget-object v1, p1, v3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->mIsIdle:Z

    .line 931
    :cond_0
    :goto_0
    return-void

    .line 925
    :cond_1
    if-ne v0, v3, :cond_2

    .line 926
    iget-object v1, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    #calls: Lcom/htc/store/activity/list/ListItem;->removeLoadingItem()V
    invoke-static {v1}, Lcom/htc/store/activity/list/ListItem;->access$2700(Lcom/htc/store/activity/list/ListItem;)V

    goto :goto_0

    .line 927
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 928
    iget-object v1, p0, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget v2, v1, Lcom/htc/store/activity/list/ListItem;->mDownloadCommentLikeInfoTaskCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/htc/store/activity/list/ListItem;->mDownloadCommentLikeInfoTaskCount:I

    .line 929
    aget-object v1, p1, v3

    check-cast v1, Lcom/htc/store/activity/list/ListItem$DownloadCommentLikeInfoTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/htc/store/activity/list/ListItem$DownloadCommentLikeInfoTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)V

    goto :goto_0
.end method
