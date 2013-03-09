.class Lcom/htc/store/activity/landing/LandingNavigation$DownloadNaviIconTask;
.super Landroid/os/AsyncTask;
.source "LandingNavigation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/landing/LandingNavigation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadNaviIconTask"
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

.field private mItem:Lcom/htc/store/module/vo/CategoryItem;

.field private mPosition:I

.field final synthetic this$0:Lcom/htc/store/activity/landing/LandingNavigation;


# direct methods
.method public constructor <init>(Lcom/htc/store/activity/landing/LandingNavigation;Lcom/htc/store/module/vo/CategoryItem;IZ)V
    .locals 1
    .parameter
    .parameter "item"
    .parameter "position"
    .parameter "isClearCache"

    .prologue
    .line 1958
    iput-object p1, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadNaviIconTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1956
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadNaviIconTask;->mPosition:I

    .line 1957
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadNaviIconTask;->mIsClearCache:Z

    .line 1959
    iput-object p2, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadNaviIconTask;->mItem:Lcom/htc/store/module/vo/CategoryItem;

    .line 1960
    iput p3, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadNaviIconTask;->mPosition:I

    .line 1961
    iput-boolean p4, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadNaviIconTask;->mIsClearCache:Z

    .line 1962
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 15
    .parameter "params"

    .prologue
    .line 1966
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "doInBackground: DownloadNaviIconTask"

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1967
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 1968
    .local v4, needRetry:Ljava/lang/Boolean;
    iget-object v10, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadNaviIconTask;->mItem:Lcom/htc/store/module/vo/CategoryItem;

    invoke-virtual {v10}, Lcom/htc/store/module/vo/CategoryItem;->getOnlineId()Ljava/lang/String;

    move-result-object v5

    .line 1969
    .local v5, onlineId:Ljava/lang/String;
    iget-object v10, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadNaviIconTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-wide v10, v10, Lcom/htc/store/activity/landing/LandingNavigation;->mCategoryId:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/htc/store/util/StorageUtils;->getTemporaryCategoryIconFilePath(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1970
    .local v8, swapPath:Ljava/lang/String;
    iget-object v10, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadNaviIconTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-wide v10, v10, Lcom/htc/store/activity/landing/LandingNavigation;->mCategoryId:J

    invoke-static {v10, v11, v5}, Lcom/htc/store/util/StorageUtils;->getCategoryIconFilePath(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1972
    .local v7, path:Ljava/lang/String;
    iget-boolean v10, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadNaviIconTask;->mIsClearCache:Z

    if-eqz v10, :cond_3

    .line 1973
    iget-object v10, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadNaviIconTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v11, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadNaviIconTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v11, v11, Lcom/htc/store/activity/landing/LandingNavigation;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    iget-object v12, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadNaviIconTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-wide v12, v12, Lcom/htc/store/activity/landing/LandingNavigation;->mCategoryId:J

    invoke-virtual {v11, v12, v13}, Lcom/htc/store/provider/AccessHelper;->getCategoryOnlineIdsByParentId(J)Ljava/util/ArrayList;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadNaviIconTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-wide v12, v12, Lcom/htc/store/activity/landing/LandingNavigation;->mCategoryId:J

    const/4 v14, 0x1

    #calls: Lcom/htc/store/activity/landing/LandingNavigation;->clearCache(Ljava/util/ArrayList;JI)V
    invoke-static {v10, v11, v12, v13, v14}, Lcom/htc/store/activity/landing/LandingNavigation;->access$4500(Lcom/htc/store/activity/landing/LandingNavigation;Ljava/util/ArrayList;JI)V

    .line 1974
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "cache cleared"

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1976
    :try_start_0
    iget-object v10, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadNaviIconTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v10, v10, Lcom/htc/store/activity/landing/LandingNavigation;->mNaviItems:Ljava/util/ArrayList;

    if-eqz v10, :cond_2

    .line 1977
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1978
    .local v9, toBeSyncItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CategoryItem;>;"
    iget-object v10, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadNaviIconTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v10, v10, Lcom/htc/store/activity/landing/LandingNavigation;->mNaviItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1979
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1980
    .local v0, amountItems:I
    const/4 v3, 0x0

    .line 1981
    .local v3, item:Lcom/htc/store/module/vo/CategoryItem;
    const/4 v6, 0x0

    .line 1982
    .local v6, packageName:Ljava/lang/String;
    add-int/lit8 v2, v0, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 1983
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #item:Lcom/htc/store/module/vo/CategoryItem;
    check-cast v3, Lcom/htc/store/module/vo/CategoryItem;

    .line 1984
    .restart local v3       #item:Lcom/htc/store/module/vo/CategoryItem;
    invoke-virtual {v3}, Lcom/htc/store/module/vo/CategoryItem;->getOnlineActionTypeOnClick()I

    move-result v10

    const/4 v11, 0x7

    if-ne v10, v11, :cond_0

    .line 1985
    invoke-virtual {v3}, Lcom/htc/store/module/vo/CategoryItem;->getOnlinePackageName()Ljava/lang/String;

    move-result-object v6

    .line 1986
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadNaviIconTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    invoke-static {v10, v6}, Lcom/htc/store/util/CommonUtils;->isInstalledPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1987
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1988
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "remove "

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v3}, Lcom/htc/store/module/vo/CategoryItem;->getOnlineLabel()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1982
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1992
    :cond_1
    iget-object v10, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadNaviIconTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v10, v10, Lcom/htc/store/activity/landing/LandingNavigation;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    iget-object v11, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadNaviIconTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-wide v11, v11, Lcom/htc/store/activity/landing/LandingNavigation;->mCategoryId:J

    invoke-virtual {v10, v11, v12, v9}, Lcom/htc/store/provider/AccessHelper;->syncCategoryItems(JLjava/util/ArrayList;)Z

    .line 1993
    iget-object v10, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadNaviIconTask;->mItem:Lcom/htc/store/module/vo/CategoryItem;

    invoke-virtual {v10}, Lcom/htc/store/module/vo/CategoryItem;->getOnlineIconURL()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, Lcom/htc/store/util/DownloadUtils;->retrieveImageForcely(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1994
    invoke-static {v8, v7}, Lcom/htc/store/util/StorageUtils;->moveFile(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2010
    .end local v0           #amountItems:I
    .end local v2           #i:I
    .end local v3           #item:Lcom/htc/store/module/vo/CategoryItem;
    .end local v6           #packageName:Ljava/lang/String;
    .end local v9           #toBeSyncItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CategoryItem;>;"
    :cond_2
    :goto_1
    return-object v4

    .line 1996
    :catch_0
    move-exception v1

    .line 1997
    .local v1, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1998
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "update navi failed, reset next time"

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1999
    iget-object v10, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadNaviIconTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v10, v10, Lcom/htc/store/activity/landing/LandingNavigation;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    iget-object v11, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadNaviIconTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-wide v11, v11, Lcom/htc/store/activity/landing/LandingNavigation;->mCategoryId:J

    const/4 v13, 0x1

    invoke-virtual {v10, v11, v12, v13}, Lcom/htc/store/provider/AccessHelper;->removeCategoryTTLItem(JI)I

    goto :goto_1

    .line 2002
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    invoke-static {v7}, Lcom/htc/store/util/StorageUtils;->isExisted(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 2003
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingNavigation$DownloadNaviIconTask;->isCancelled()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2004
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_1

    .line 2005
    :cond_4
    iget-object v10, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadNaviIconTask;->mItem:Lcom/htc/store/module/vo/CategoryItem;

    invoke-virtual {v10}, Lcom/htc/store/module/vo/CategoryItem;->getOnlineIconURL()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v7}, Lcom/htc/store/util/DownloadUtils;->retrieveImageForcely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 2006
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1953
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/landing/LandingNavigation$DownloadNaviIconTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 4

    .prologue
    .line 2039
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onCancelled: DownloadNaviIconTask"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2040
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 2041
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 7
    .parameter "needRetry"

    .prologue
    const/4 v6, 0x7

    .line 2015
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "onPostExecute: DownloadNaviIconTask"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2016
    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadNaviIconTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z
    invoke-static {v2}, Lcom/htc/store/activity/landing/LandingNavigation;->access$5400(Lcom/htc/store/activity/landing/LandingNavigation;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadNaviIconTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z
    invoke-static {v2}, Lcom/htc/store/activity/landing/LandingNavigation;->access$5500(Lcom/htc/store/activity/landing/LandingNavigation;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadNaviIconTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnPause:Z
    invoke-static {v2}, Lcom/htc/store/activity/landing/LandingNavigation;->access$5600(Lcom/htc/store/activity/landing/LandingNavigation;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadNaviIconTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    invoke-virtual {v2}, Lcom/htc/store/activity/landing/LandingNavigation;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2017
    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadNaviIconTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v2, v2, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadHander:Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;

    invoke-virtual {v2}, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2020
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2021
    new-instance v1, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;

    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadNaviIconTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget v3, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadNaviIconTask;->mPosition:I

    const/16 v4, 0x8

    iget-boolean v5, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadNaviIconTask;->mIsClearCache:Z

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;-><init>(Lcom/htc/store/activity/landing/LandingNavigation;IIZ)V

    .line 2026
    .local v1, status:Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;
    :goto_0
    iput v6, v0, Landroid/os/Message;->what:I

    .line 2027
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2028
    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadNaviIconTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v2, v2, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadHander:Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;

    invoke-virtual {v2, v6}, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2029
    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadNaviIconTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v2, v2, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadHander:Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;

    invoke-virtual {v2, v6}, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->removeMessages(I)V

    .line 2031
    :cond_0
    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadNaviIconTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    invoke-virtual {v2}, Lcom/htc/store/activity/landing/LandingNavigation;->isOkToSendMessage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2032
    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadNaviIconTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget-object v2, v2, Lcom/htc/store/activity/landing/LandingNavigation;->mDownloadHander:Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;

    invoke-virtual {v2, v0}, Lcom/htc/store/activity/landing/LandingNavigation$DownloadHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2035
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #status:Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;
    :cond_1
    return-void

    .line 2023
    .restart local v0       #msg:Landroid/os/Message;
    :cond_2
    new-instance v1, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;

    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadNaviIconTask;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    iget v3, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadNaviIconTask;->mPosition:I

    const/4 v4, 0x3

    iget-boolean v5, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadNaviIconTask;->mIsClearCache:Z

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;-><init>(Lcom/htc/store/activity/landing/LandingNavigation;IIZ)V

    .restart local v1       #status:Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;
    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1953
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/landing/LandingNavigation$DownloadNaviIconTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
