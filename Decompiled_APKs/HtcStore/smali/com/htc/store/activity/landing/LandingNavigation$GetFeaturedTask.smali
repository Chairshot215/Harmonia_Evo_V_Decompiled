.class Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;
.super Landroid/os/AsyncTask;
.source "LandingNavigation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/landing/LandingNavigation;
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
.field mCategoryId:J

.field mIsExpired:Z

.field mIsNextExpired:Z

.field mIsResumed:Z

.field mTabId:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/store/activity/landing/LandingNavigation;


# direct methods
.method private constructor <init>(Lcom/htc/store/activity/landing/LandingNavigation;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1224
    iput-object p1, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1226
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->mCategoryId:J

    .line 1227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->mTabId:Ljava/lang/String;

    .line 1228
    iput-boolean v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->mIsResumed:Z

    .line 1229
    iput-boolean v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->mIsExpired:Z

    .line 1230
    iput-boolean v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->mIsNextExpired:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/store/activity/landing/LandingNavigation;Lcom/htc/store/activity/landing/LandingNavigation$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1224
    invoke-direct {p0, p1}, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;-><init>(Lcom/htc/store/activity/landing/LandingNavigation;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 15
    .parameter "params"

    .prologue
    .line 1234
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "doInBackground: GetFeaturedTask"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1235
    const/4 v6, -0x1

    .line 1236
    .local v6, action:I
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    if-nez v0, :cond_0

    .line 1237
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    new-instance v1, Lcom/htc/store/module/rest/RestHelper;

    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->getContext()Landroid/app/Activity;
    invoke-static {v2}, Lcom/htc/store/activity/landing/LandingNavigation;->access$2000(Lcom/htc/store/activity/landing/LandingNavigation;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/store/module/rest/RestHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    .line 1239
    :cond_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->mCategoryId:J

    .line 1240
    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->mTabId:Ljava/lang/String;

    .line 1241
    const/4 v0, 0x2

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->mIsResumed:Z

    .line 1242
    const/4 v0, 0x3

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->mIsExpired:Z

    .line 1244
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v1, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    iget-wide v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->mCategoryId:J

    const-string v10, ""

    iget-wide v11, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->mCategoryId:J

    const-wide/16 v13, -0x2

    cmp-long v0, v11, v13

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v3, v10, v0}, Lcom/htc/store/module/rest/RestHelper;->getFeaturedContents(JLjava/lang/String;Z)Lcom/htc/store/module/rest/RestResult;

    move-result-object v9

    .line 1245
    .local v9, result:Lcom/htc/store/module/rest/RestResult;
    iget v0, v9, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_7

    .line 1247
    iget-object v0, v9, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, v9, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1250
    :try_start_0
    iget-object v8, v9, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    .line 1251
    .local v8, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/FeaturedItem;>;"
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iput-object v8, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mFeaturedItems:Ljava/util/ArrayList;

    .line 1252
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "featured size "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v3, v3, Lcom/htc/store/activity/landing/LandingNavigation;->mFeaturedItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1261
    .end local v8           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/FeaturedItem;>;"
    :goto_1
    if-eqz v6, :cond_2

    .line 1262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1264
    .local v4, current:J
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    iget-wide v1, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->mCategoryId:J

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/store/provider/AccessHelper;->isCategoryDataExpired(JIJ)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    iget-wide v1, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->mCategoryId:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/provider/AccessHelper;->hasCategoryItem(J)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1265
    :cond_1
    const/4 v6, 0x3

    .line 1266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->mIsNextExpired:Z

    .line 1282
    .end local v4           #current:J
    :cond_2
    :goto_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1244
    .end local v9           #result:Lcom/htc/store/module/rest/RestResult;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 1253
    .restart local v9       #result:Lcom/htc/store/module/rest/RestResult;
    :catch_0
    move-exception v7

    .line 1254
    .local v7, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v7, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1255
    const/4 v6, 0x0

    .line 1256
    goto :goto_1

    .line 1258
    .end local v7           #e:Ljava/lang/Exception;
    :cond_4
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "featured list is empty"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1267
    .restart local v4       #current:J
    :cond_5
    iget-boolean v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->mIsResumed:Z

    if-nez v0, :cond_6

    .line 1268
    const/4 v6, 0x3

    .line 1269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->mIsNextExpired:Z

    goto :goto_2

    .line 1271
    :cond_6
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v1, v1, Lcom/htc/store/activity/landing/LandingNavigation;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    iget-wide v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->mCategoryId:J

    invoke-virtual {v1, v2, v3}, Lcom/htc/store/provider/AccessHelper;->getCategoryItemsByParentId(J)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mNaviItems:Ljava/util/ArrayList;

    .line 1272
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    invoke-virtual {v0}, Lcom/htc/store/activity/landing/LandingNavigation;->isOkToSendMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1273
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadHander:Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 1278
    .end local v4           #current:J
    :cond_7
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "get featured failed, erease TTL"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1279
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingNavigation;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    iget-wide v1, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->mCategoryId:J

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/store/provider/AccessHelper;->removeCategoryTTLItem(JI)I

    .line 1280
    const/4 v6, 0x0

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1224
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 10
    .parameter "action"

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x2

    const/4 v5, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1287
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "GetFeaturedTask : onPostExecute"

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1288
    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->checkAndEnablePromoFeaturedPort()V
    invoke-static {v2}, Lcom/htc/store/activity/landing/LandingNavigation;->access$1400(Lcom/htc/store/activity/landing/LandingNavigation;)V

    .line 1289
    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->checkAndEnablePromoFeaturedLand()V
    invoke-static {v2}, Lcom/htc/store/activity/landing/LandingNavigation;->access$1500(Lcom/htc/store/activity/landing/LandingNavigation;)V

    .line 1290
    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z
    invoke-static {v2}, Lcom/htc/store/activity/landing/LandingNavigation;->access$2100(Lcom/htc/store/activity/landing/LandingNavigation;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z
    invoke-static {v2}, Lcom/htc/store/activity/landing/LandingNavigation;->access$2200(Lcom/htc/store/activity/landing/LandingNavigation;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnPause:Z
    invoke-static {v2}, Lcom/htc/store/activity/landing/LandingNavigation;->access$2300(Lcom/htc/store/activity/landing/LandingNavigation;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    invoke-virtual {v2}, Lcom/htc/store/activity/landing/LandingNavigation;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1291
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    .line 1292
    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iput-boolean v7, v2, Lcom/htc/store/activity/landing/LandingNavigation;->mGetFeaturedFailed:Z

    .line 1294
    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v2, v2, Lcom/htc/store/activity/landing/LandingNavigation;->mGetNaviListTask:Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v2, v2, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadNaviIconTask:Lcom/htc/store/activity/landing/LandingNavigation$DownloadNaviIconTask;

    if-nez v2, :cond_0

    .line 1295
    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    new-instance v3, Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;

    iget-object v4, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    invoke-direct {v3, v4, v6}, Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;-><init>(Lcom/htc/store/activity/landing/LandingNavigation;Lcom/htc/store/activity/landing/LandingNavigation$1;)V

    iput-object v3, v2, Lcom/htc/store/activity/landing/LandingNavigation;->mGetNaviListTask:Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;

    .line 1296
    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v2, v2, Lcom/htc/store/activity/landing/LandingNavigation;->mGetNaviListTask:Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v4, v5, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->mCategoryId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->mTabId:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-virtual {v2, v3, v4}, Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1316
    :cond_0
    :goto_0
    return-void

    .line 1299
    :cond_1
    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    invoke-virtual {v2}, Lcom/htc/store/activity/landing/LandingNavigation;->isOkToSendMessage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1300
    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v2, v2, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadHander:Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;

    invoke-virtual {v2}, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1301
    .local v0, msg:Landroid/os/Message;
    new-instance v1, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;

    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-boolean v3, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->mIsExpired:Z

    invoke-direct {v1, v2, v3}, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;-><init>(Lcom/htc/store/activity/landing/LandingNavigation;Z)V

    .line 1302
    .local v1, status:Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;
    iput v5, v0, Landroid/os/Message;->what:I

    .line 1303
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1304
    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v2, v2, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadHander:Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;

    invoke-virtual {v2, v0}, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1305
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 1306
    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    new-instance v3, Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;

    iget-object v4, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    invoke-direct {v3, v4, v6}, Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;-><init>(Lcom/htc/store/activity/landing/LandingNavigation;Lcom/htc/store/activity/landing/LandingNavigation$1;)V

    iput-object v3, v2, Lcom/htc/store/activity/landing/LandingNavigation;->mGetNaviListTask:Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;

    .line 1307
    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v2, v2, Lcom/htc/store/activity/landing/LandingNavigation;->mGetNaviListTask:Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v4, v5, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->mCategoryId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->mTabId:Ljava/lang/String;

    aput-object v5, v4, v7

    iget-boolean v5, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->mIsNextExpired:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-virtual {v2, v3, v4}, Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1310
    :cond_2
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "Do nothing"

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1311
    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->updateProgressBar()V
    invoke-static {v2}, Lcom/htc/store/activity/landing/LandingNavigation;->access$1900(Lcom/htc/store/activity/landing/LandingNavigation;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1224
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/landing/LandingNavigation$GetFeaturedTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
