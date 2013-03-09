.class Lcom/htc/store/activity/detail/DetailInfo$RefreshDetailInfoTask;
.super Landroid/os/AsyncTask;
.source "DetailInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/detail/DetailInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshDetailInfoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Lcom/htc/store/module/vo/ItemTTLItem;",
        ">;"
    }
.end annotation


# instance fields
.field newItemItem:Lcom/htc/store/module/vo/ItemItem;

.field final synthetic this$0:Lcom/htc/store/activity/detail/DetailInfo;


# direct methods
.method private constructor <init>(Lcom/htc/store/activity/detail/DetailInfo;)V
    .locals 1
    .parameter

    .prologue
    .line 1937
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailInfo$RefreshDetailInfoTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1938
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$RefreshDetailInfoTask;->newItemItem:Lcom/htc/store/module/vo/ItemItem;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Lcom/htc/store/module/vo/ItemTTLItem;
    .locals 8
    .parameter "params"

    .prologue
    const/4 v7, 0x1

    .line 1942
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "doInBackground: RefreshDetailInfoTask"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1943
    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo$RefreshDetailInfoTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v3}, Lcom/htc/store/activity/detail/DetailInfo;->access$5500(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1944
    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo$RefreshDetailInfoTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    new-instance v4, Lcom/htc/store/provider/AccessHelper;

    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailInfo$RefreshDetailInfoTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;
    invoke-static {v5}, Lcom/htc/store/activity/detail/DetailInfo;->access$6600(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/htc/store/provider/AccessHelper;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/htc/store/activity/detail/DetailInfo;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v3, v4}, Lcom/htc/store/activity/detail/DetailInfo;->access$5502(Lcom/htc/store/activity/detail/DetailInfo;Lcom/htc/store/provider/AccessHelper;)Lcom/htc/store/provider/AccessHelper;

    .line 1947
    :cond_0
    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo$RefreshDetailInfoTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v3}, Lcom/htc/store/activity/detail/DetailInfo;->access$5500(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailInfo$RefreshDetailInfoTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemId:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/store/activity/detail/DetailInfo;->access$2700(Lcom/htc/store/activity/detail/DetailInfo;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {v3, v4, v5}, Lcom/htc/store/provider/AccessHelper;->getItemTTLItem(Ljava/lang/String;I)Lcom/htc/store/module/vo/ItemTTLItem;

    move-result-object v0

    .line 1948
    .local v0, itemTTL:Lcom/htc/store/module/vo/ItemTTLItem;
    if-nez v0, :cond_2

    const-wide/16 v1, -0x1

    .line 1949
    .local v1, ttl:J
    :goto_0
    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo$RefreshDetailInfoTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemTTL:J
    invoke-static {v3}, Lcom/htc/store/activity/detail/DetailInfo;->access$6300(Lcom/htc/store/activity/detail/DetailInfo;)J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-gez v3, :cond_1

    .line 1950
    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo$RefreshDetailInfoTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v3}, Lcom/htc/store/activity/detail/DetailInfo;->access$5500(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailInfo$RefreshDetailInfoTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemId:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/store/activity/detail/DetailInfo;->access$2700(Lcom/htc/store/activity/detail/DetailInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/store/provider/AccessHelper;->getItem(Ljava/lang/String;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo$RefreshDetailInfoTask;->newItemItem:Lcom/htc/store/module/vo/ItemItem;

    .line 1951
    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo$RefreshDetailInfoTask;->newItemItem:Lcom/htc/store/module/vo/ItemItem;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo$RefreshDetailInfoTask;->newItemItem:Lcom/htc/store/module/vo/ItemItem;

    invoke-virtual {v3}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v3

    if-ne v3, v7, :cond_1

    .line 1952
    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo$RefreshDetailInfoTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v3}, Lcom/htc/store/activity/detail/DetailInfo;->access$5500(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailInfo$RefreshDetailInfoTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemId:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/store/activity/detail/DetailInfo;->access$2700(Lcom/htc/store/activity/detail/DetailInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/store/provider/AccessHelper;->getSoundsetItemByOnlineId(Ljava/lang/String;)Lcom/htc/store/module/vo/SoundsetItem;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo$RefreshDetailInfoTask;->newItemItem:Lcom/htc/store/module/vo/ItemItem;

    .line 1954
    :cond_1
    return-object v0

    .line 1948
    .end local v1           #ttl:J
    :cond_2
    invoke-virtual {v0}, Lcom/htc/store/module/vo/ItemTTLItem;->getOnlineTTL()J

    move-result-wide v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1937
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/detail/DetailInfo$RefreshDetailInfoTask;->doInBackground([Ljava/lang/Object;)Lcom/htc/store/module/vo/ItemTTLItem;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/htc/store/module/vo/ItemTTLItem;)V
    .locals 9
    .parameter "itemTTL"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1959
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "onPostExecute: RefreshDetailInfoTask"

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1960
    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailInfo$RefreshDetailInfoTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z
    invoke-static {v4}, Lcom/htc/store/activity/detail/DetailInfo;->access$6700(Lcom/htc/store/activity/detail/DetailInfo;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailInfo$RefreshDetailInfoTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z
    invoke-static {v4}, Lcom/htc/store/activity/detail/DetailInfo;->access$6800(Lcom/htc/store/activity/detail/DetailInfo;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1961
    if-nez p1, :cond_1

    const-wide/16 v2, -0x1

    .line 1962
    .local v2, ttl:J
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1963
    .local v0, current:J
    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailInfo$RefreshDetailInfoTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemTTL:J
    invoke-static {v4}, Lcom/htc/store/activity/detail/DetailInfo;->access$6300(Lcom/htc/store/activity/detail/DetailInfo;)J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-gtz v4, :cond_3

    .line 1964
    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    .line 1965
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "RefreshDetailInfoTask - item on db is the latest, so use it"

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1966
    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailInfo$RefreshDetailInfoTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #setter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemTTL:J
    invoke-static {v4, v2, v3}, Lcom/htc/store/activity/detail/DetailInfo;->access$6302(Lcom/htc/store/activity/detail/DetailInfo;J)J

    .line 1967
    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailInfo$RefreshDetailInfoTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailInfo$RefreshDetailInfoTask;->newItemItem:Lcom/htc/store/module/vo/ItemItem;

    #setter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-static {v4, v5}, Lcom/htc/store/activity/detail/DetailInfo;->access$702(Lcom/htc/store/activity/detail/DetailInfo;Lcom/htc/store/module/vo/ItemItem;)Lcom/htc/store/module/vo/ItemItem;

    .line 1977
    .end local v0           #current:J
    .end local v2           #ttl:J
    :cond_0
    :goto_1
    return-void

    .line 1961
    :cond_1
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemTTLItem;->getOnlineTTL()J

    move-result-wide v2

    goto :goto_0

    .line 1969
    .restart local v0       #current:J
    .restart local v2       #ttl:J
    :cond_2
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "RefreshDetailInfoTask - TTL is expired, get from server"

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1970
    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailInfo$RefreshDetailInfoTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #setter for: Lcom/htc/store/activity/detail/DetailInfo;->mGetDetailInfoFromServer:Z
    invoke-static {v4, v8}, Lcom/htc/store/activity/detail/DetailInfo;->access$6002(Lcom/htc/store/activity/detail/DetailInfo;Z)Z

    .line 1971
    new-instance v4, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnServerTask;

    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailInfo$RefreshDetailInfoTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnServerTask;-><init>(Lcom/htc/store/activity/detail/DetailInfo;Lcom/htc/store/activity/detail/DetailInfo$1;)V

    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnServerTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 1974
    :cond_3
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "RefreshDetailInfoTask - current item is the latest, resume to download sample/preview"

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1937
    check-cast p1, Lcom/htc/store/module/vo/ItemTTLItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/detail/DetailInfo$RefreshDetailInfoTask;->onPostExecute(Lcom/htc/store/module/vo/ItemTTLItem;)V

    return-void
.end method
