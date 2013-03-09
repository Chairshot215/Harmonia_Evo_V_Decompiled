.class Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;
.super Landroid/os/AsyncTask;
.source "LandingNavigation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/landing/LandingNavigation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckContentTask"
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
.field mCategoryId:J

.field mIsForceUpdate:Z

.field mIsPromoExpired:Z

.field mIsResumed:Z

.field mTabId:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/store/activity/landing/LandingNavigation;


# direct methods
.method private constructor <init>(Lcom/htc/store/activity/landing/LandingNavigation;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1023
    iput-object p1, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1025
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->mCategoryId:J

    .line 1026
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->mTabId:Ljava/lang/String;

    .line 1027
    iput-boolean v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->mIsResumed:Z

    .line 1028
    iput-boolean v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->mIsPromoExpired:Z

    .line 1029
    iput-boolean v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->mIsForceUpdate:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/store/activity/landing/LandingNavigation;Lcom/htc/store/activity/landing/LandingNavigation$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1023
    invoke-direct {p0, p1}, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;-><init>(Lcom/htc/store/activity/landing/LandingNavigation;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 11
    .parameter "params"

    .prologue
    const/4 v3, 0x4

    const/4 v10, 0x2

    const/4 v9, 0x5

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1033
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "doInBackground: CheckContentTask"

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1034
    const/4 v6, -0x1

    .line 1035
    .local v6, action:I
    aget-object v0, p1, v8

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->mCategoryId:J

    .line 1036
    aget-object v0, p1, v7

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->mTabId:Ljava/lang/String;

    .line 1037
    aget-object v0, p1, v10

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->mIsResumed:Z

    .line 1038
    const/4 v0, 0x3

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->mIsForceUpdate:Z

    .line 1039
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1040
    .local v4, current:J
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    if-nez v0, :cond_0

    .line 1041
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    new-instance v1, Lcom/htc/store/provider/AccessHelper;

    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->getContext()Landroid/app/Activity;
    invoke-static {v2}, Lcom/htc/store/activity/landing/LandingNavigation;->access$500(Lcom/htc/store/activity/landing/LandingNavigation;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/store/provider/AccessHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    .line 1045
    :cond_0
    iget-boolean v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->mIsForceUpdate:Z

    if-eqz v0, :cond_1

    .line 1046
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "clear promo, featured, navi TTL"

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1047
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    iget-wide v1, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->mCategoryId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/store/provider/AccessHelper;->removeCategoryTTLItem(JI)I

    .line 1048
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    iget-wide v1, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->mCategoryId:J

    invoke-virtual {v0, v1, v2, v9}, Lcom/htc/store/provider/AccessHelper;->removeCategoryTTLItem(JI)I

    .line 1049
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    iget-wide v1, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->mCategoryId:J

    invoke-virtual {v0, v1, v2, v7}, Lcom/htc/store/provider/AccessHelper;->removeCategoryTTLItem(JI)I

    .line 1053
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    iget-wide v1, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->mCategoryId:J

    invoke-virtual/range {v0 .. v5}, Lcom/htc/store/provider/AccessHelper;->isCategoryDataExpired(JIJ)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    iget-wide v1, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->mCategoryId:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/provider/AccessHelper;->hasPromoItem(J)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1054
    :cond_2
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "promo is expired"

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1055
    const/4 v6, 0x1

    .line 1056
    iput-boolean v7, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->mIsPromoExpired:Z

    .line 1089
    :cond_3
    :goto_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1058
    :cond_4
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "promo is not expired"

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1059
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v1, v1, Lcom/htc/store/activity/landing/LandingNavigation;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    iget-wide v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->mCategoryId:J

    invoke-virtual {v1, v2, v3}, Lcom/htc/store/provider/AccessHelper;->getPromoItemsByCategoryId(J)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mPromoItems:Ljava/util/ArrayList;

    .line 1060
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    invoke-virtual {v0}, Lcom/htc/store/activity/landing/LandingNavigation;->isOkToSendMessage()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1061
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadHander:Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;

    invoke-virtual {v0, v10}, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->sendEmptyMessage(I)Z

    .line 1064
    :cond_5
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    iget-wide v1, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->mCategoryId:J

    move v3, v9

    invoke-virtual/range {v0 .. v5}, Lcom/htc/store/provider/AccessHelper;->isCategoryDataExpired(JIJ)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    iget-wide v1, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->mCategoryId:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/provider/AccessHelper;->hasFeaturedItem(J)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1065
    :cond_6
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "featured is expired"

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1066
    const/4 v6, 0x2

    .line 1067
    iput-boolean v7, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->mIsPromoExpired:Z

    goto :goto_0

    .line 1069
    :cond_7
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v1, v1, Lcom/htc/store/activity/landing/LandingNavigation;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    iget-wide v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->mCategoryId:J

    invoke-virtual {v1, v2, v3}, Lcom/htc/store/provider/AccessHelper;->getFeaturedItemsByCategoryId(J)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mFeaturedItems:Ljava/util/ArrayList;

    .line 1070
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    invoke-virtual {v0}, Lcom/htc/store/activity/landing/LandingNavigation;->isOkToSendMessage()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1071
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadHander:Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;

    invoke-virtual {v0, v9}, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->sendEmptyMessage(I)Z

    .line 1074
    :cond_8
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    iget-wide v1, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->mCategoryId:J

    move v3, v7

    invoke-virtual/range {v0 .. v5}, Lcom/htc/store/provider/AccessHelper;->isCategoryDataExpired(JIJ)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    iget-wide v1, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->mCategoryId:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/provider/AccessHelper;->hasCategoryItem(J)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1075
    :cond_9
    const/4 v6, 0x3

    .line 1076
    iput-boolean v7, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->mIsPromoExpired:Z

    goto/16 :goto_0

    .line 1081
    :cond_a
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v1, v1, Lcom/htc/store/activity/landing/LandingNavigation;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    iget-wide v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->mCategoryId:J

    invoke-virtual {v1, v2, v3}, Lcom/htc/store/provider/AccessHelper;->getCategoryItemsByParentId(J)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mNaviItems:Ljava/util/ArrayList;

    .line 1082
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    invoke-virtual {v0}, Lcom/htc/store/activity/landing/LandingNavigation;->isOkToSendMessage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1083
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadHander:Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1023
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 9
    .parameter "result"

    .prologue
    const/4 v4, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1094
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "CheckContentTask : onPostExecute"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1095
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z
    invoke-static {v0}, Lcom/htc/store/activity/landing/LandingNavigation;->access$600(Lcom/htc/store/activity/landing/LandingNavigation;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z
    invoke-static {v0}, Lcom/htc/store/activity/landing/LandingNavigation;->access$700(Lcom/htc/store/activity/landing/LandingNavigation;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnPause:Z
    invoke-static {v0}, Lcom/htc/store/activity/landing/LandingNavigation;->access$800(Lcom/htc/store/activity/landing/LandingNavigation;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    invoke-virtual {v0}, Lcom/htc/store/activity/landing/LandingNavigation;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1096
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "action is "

    aput-object v2, v1, v5

    aput-object p1, v1, v6

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1097
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v6, :cond_1

    .line 1098
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    new-instance v1, Lcom/htc/store/activity/landing/LandingNavigation$GetPromoTask;

    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/htc/store/activity/landing/LandingNavigation$GetPromoTask;-><init>(Lcom/htc/store/activity/landing/LandingNavigation;Lcom/htc/store/activity/landing/LandingNavigation$1;)V

    iput-object v1, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mGetPromoTask:Lcom/htc/store/activity/landing/LandingNavigation$GetPromoTask;

    .line 1099
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mGetPromoTask:Lcom/htc/store/activity/landing/LandingNavigation$GetPromoTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v4, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->mCategoryId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->mTabId:Ljava/lang/String;

    aput-object v3, v2, v6

    iget-boolean v3, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->mIsResumed:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v7

    iget-boolean v3, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->mIsPromoExpired:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/activity/landing/LandingNavigation$GetPromoTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1112
    :cond_0
    :goto_0
    return-void

    .line 1100
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v7, :cond_2

    .line 1101
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    new-instance v1, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;

    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;-><init>(Lcom/htc/store/activity/landing/LandingNavigation;Lcom/htc/store/activity/landing/LandingNavigation$1;)V

    iput-object v1, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mGetFeaturedTask:Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;

    .line 1102
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mGetFeaturedTask:Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v4, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->mCategoryId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->mTabId:Ljava/lang/String;

    aput-object v3, v2, v6

    iget-boolean v3, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->mIsResumed:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v7

    iget-boolean v3, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->mIsPromoExpired:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1103
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v8, :cond_3

    .line 1104
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    new-instance v1, Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;

    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;-><init>(Lcom/htc/store/activity/landing/LandingNavigation;Lcom/htc/store/activity/landing/LandingNavigation$1;)V

    iput-object v1, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mGetNaviListTask:Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;

    .line 1105
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mGetNaviListTask:Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v4, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->mCategoryId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->mTabId:Ljava/lang/String;

    aput-object v3, v2, v6

    iget-boolean v3, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->mIsResumed:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v7

    iget-boolean v3, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->mIsPromoExpired:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1108
    :cond_3
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "Do nothing"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1109
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->updateProgressBar(Z)V
    invoke-static {v0, v5}, Lcom/htc/store/activity/landing/LandingNavigation;->access$1200(Lcom/htc/store/activity/landing/LandingNavigation;Z)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1023
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/landing/LandingNavigation$CheckContentTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
