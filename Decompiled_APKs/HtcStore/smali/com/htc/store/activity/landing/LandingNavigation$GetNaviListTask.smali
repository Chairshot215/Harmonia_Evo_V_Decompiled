.class Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;
.super Landroid/os/AsyncTask;
.source "LandingNavigation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/landing/LandingNavigation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetNaviListTask"
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

.field final synthetic this$0:Lcom/htc/store/activity/landing/LandingNavigation;


# direct methods
.method private constructor <init>(Lcom/htc/store/activity/landing/LandingNavigation;)V
    .locals 2
    .parameter

    .prologue
    .line 1319
    iput-object p1, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1321
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;->mCategoryId:J

    .line 1322
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;->mIsExpired:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/store/activity/landing/LandingNavigation;Lcom/htc/store/activity/landing/LandingNavigation$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1319
    invoke-direct {p0, p1}, Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;-><init>(Lcom/htc/store/activity/landing/LandingNavigation;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 13
    .parameter "params"

    .prologue
    .line 1326
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "doInBackground: GetNaviListTask"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1327
    const/4 v0, -0x1

    .line 1328
    .local v0, action:I
    iget-object v4, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v4, v4, Lcom/htc/store/activity/landing/LandingNavigation;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    if-nez v4, :cond_0

    .line 1329
    iget-object v4, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    new-instance v5, Lcom/htc/store/module/rest/RestHelper;

    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->getContext()Landroid/app/Activity;
    invoke-static {v6}, Lcom/htc/store/activity/landing/LandingNavigation;->access$2400(Lcom/htc/store/activity/landing/LandingNavigation;)Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/htc/store/module/rest/RestHelper;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/htc/store/activity/landing/LandingNavigation;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    .line 1331
    :cond_0
    const/4 v4, 0x0

    aget-object v4, p1, v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;->mCategoryId:J

    .line 1332
    const/4 v4, 0x2

    aget-object v4, p1, v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;->mIsExpired:Z

    .line 1334
    iget-object v4, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v5, v4, Lcom/htc/store/activity/landing/LandingNavigation;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    iget-wide v6, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;->mCategoryId:J

    const-string v8, ""

    iget-wide v9, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;->mCategoryId:J

    const-wide/16 v11, -0x2

    cmp-long v4, v9, v11

    if-nez v4, :cond_2

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v5, v6, v7, v8, v4}, Lcom/htc/store/module/rest/RestHelper;->getNavList(JLjava/lang/String;Z)Lcom/htc/store/module/rest/RestResult;

    move-result-object v3

    .line 1335
    .local v3, result:Lcom/htc/store/module/rest/RestResult;
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "result.mResultCode: "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget v7, v3, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1336
    iget v4, v3, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_4

    .line 1337
    iget-object v4, v3, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1340
    :try_start_0
    iget-object v2, v3, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    .line 1341
    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CategoryItem;>;"
    iget-object v4, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iput-object v2, v4, Lcom/htc/store/activity/landing/LandingNavigation;->mNaviItems:Ljava/util/ArrayList;

    .line 1342
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "items are reset "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v7, v7, Lcom/htc/store/activity/landing/LandingNavigation;->mNaviItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1356
    .end local v2           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CategoryItem;>;"
    :goto_1
    if-nez v0, :cond_1

    .line 1358
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "GetNavi error, erease TTL and recover from database"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1359
    iget-object v4, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v4, v4, Lcom/htc/store/activity/landing/LandingNavigation;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    iget-wide v5, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;->mCategoryId:J

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/htc/store/provider/AccessHelper;->removeCategoryTTLItem(JI)I

    .line 1360
    iget-object v4, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v5, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v5, v5, Lcom/htc/store/activity/landing/LandingNavigation;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    iget-wide v6, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;->mCategoryId:J

    invoke-virtual {v5, v6, v7}, Lcom/htc/store/provider/AccessHelper;->getCategoryItemsByParentId(J)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, v4, Lcom/htc/store/activity/landing/LandingNavigation;->mNaviItems:Ljava/util/ArrayList;

    .line 1363
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    .line 1334
    .end local v3           #result:Lcom/htc/store/module/rest/RestResult;
    :cond_2
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1343
    .restart local v3       #result:Lcom/htc/store/module/rest/RestResult;
    :catch_0
    move-exception v1

    .line 1344
    .local v1, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1345
    const/4 v0, 0x0

    .line 1346
    goto :goto_1

    .line 1348
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "get navi successfully, but nothing returned"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1349
    const/4 v0, 0x0

    goto :goto_1

    .line 1352
    :cond_4
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "get navi failed"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1353
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1319
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 7
    .parameter "action"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1368
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "onPostExecute: GetNaviListTask"

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1369
    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z
    invoke-static {v2}, Lcom/htc/store/activity/landing/LandingNavigation;->access$2500(Lcom/htc/store/activity/landing/LandingNavigation;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z
    invoke-static {v2}, Lcom/htc/store/activity/landing/LandingNavigation;->access$2600(Lcom/htc/store/activity/landing/LandingNavigation;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnPause:Z
    invoke-static {v2}, Lcom/htc/store/activity/landing/LandingNavigation;->access$2700(Lcom/htc/store/activity/landing/LandingNavigation;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    invoke-virtual {v2}, Lcom/htc/store/activity/landing/LandingNavigation;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1370
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v2, v2, Lcom/htc/store/activity/landing/LandingNavigation;->mNaviItems:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v2, v2, Lcom/htc/store/activity/landing/LandingNavigation;->mNaviItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1371
    :cond_0
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "get navi failed, recover from databse failed, either"

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1372
    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iput-boolean v5, v2, Lcom/htc/store/activity/landing/LandingNavigation;->mGetNaviListFailed:Z

    .line 1373
    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->showCommonErrorDialogToFinish()V
    invoke-static {v2}, Lcom/htc/store/activity/landing/LandingNavigation;->access$2800(Lcom/htc/store/activity/landing/LandingNavigation;)V

    .line 1384
    :cond_1
    :goto_0
    return-void

    .line 1375
    :cond_2
    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    invoke-virtual {v2}, Lcom/htc/store/activity/landing/LandingNavigation;->isOkToSendMessage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1376
    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v2, v2, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadHander:Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;

    invoke-virtual {v2}, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1377
    .local v0, msg:Landroid/os/Message;
    new-instance v1, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;

    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-boolean v3, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;->mIsExpired:Z

    invoke-direct {v1, v2, v3}, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;-><init>(Lcom/htc/store/activity/landing/LandingNavigation;Z)V

    .line 1378
    .local v1, status:Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;
    const/4 v2, 0x6

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1379
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1380
    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v2, v2, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadHander:Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;

    invoke-virtual {v2, v0}, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1319
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/landing/LandingNavigation$GetNaviListTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
