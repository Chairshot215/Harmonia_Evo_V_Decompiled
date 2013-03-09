.class Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnDBTask;
.super Landroid/os/AsyncTask;
.source "DetailInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/detail/DetailInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetDetailInfoOnDBTask"
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
.field final synthetic this$0:Lcom/htc/store/activity/detail/DetailInfo;


# direct methods
.method private constructor <init>(Lcom/htc/store/activity/detail/DetailInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 1879
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnDBTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/store/activity/detail/DetailInfo;Lcom/htc/store/activity/detail/DetailInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1879
    invoke-direct {p0, p1}, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnDBTask;-><init>(Lcom/htc/store/activity/detail/DetailInfo;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Lcom/htc/store/module/vo/ItemTTLItem;
    .locals 5
    .parameter "params"

    .prologue
    const/4 v4, 0x1

    .line 1883
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "doInBackground: GetDetailInfoOnDBTask"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1884
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnDBTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$5500(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1885
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnDBTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    new-instance v1, Lcom/htc/store/provider/AccessHelper;

    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnDBTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;
    invoke-static {v2}, Lcom/htc/store/activity/detail/DetailInfo;->access$5700(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/store/provider/AccessHelper;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/htc/store/activity/detail/DetailInfo;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v0, v1}, Lcom/htc/store/activity/detail/DetailInfo;->access$5502(Lcom/htc/store/activity/detail/DetailInfo;Lcom/htc/store/provider/AccessHelper;)Lcom/htc/store/provider/AccessHelper;

    .line 1887
    :cond_0
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnDBTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$700(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1888
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnDBTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnDBTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v1}, Lcom/htc/store/activity/detail/DetailInfo;->access$5500(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnDBTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemId:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/store/activity/detail/DetailInfo;->access$2700(Lcom/htc/store/activity/detail/DetailInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/store/provider/AccessHelper;->getItem(Ljava/lang/String;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v1

    #setter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-static {v0, v1}, Lcom/htc/store/activity/detail/DetailInfo;->access$702(Lcom/htc/store/activity/detail/DetailInfo;Lcom/htc/store/module/vo/ItemItem;)Lcom/htc/store/module/vo/ItemItem;

    .line 1889
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnDBTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$700(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnDBTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$700(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 1890
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnDBTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnDBTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v1}, Lcom/htc/store/activity/detail/DetailInfo;->access$5500(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnDBTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-static {v2}, Lcom/htc/store/activity/detail/DetailInfo;->access$700(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/store/provider/AccessHelper;->getSoundsetItemByOnlineId(Lcom/htc/store/module/vo/ItemItem;)Lcom/htc/store/module/vo/SoundsetItem;

    move-result-object v1

    #setter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-static {v0, v1}, Lcom/htc/store/activity/detail/DetailInfo;->access$702(Lcom/htc/store/activity/detail/DetailInfo;Lcom/htc/store/module/vo/ItemItem;)Lcom/htc/store/module/vo/ItemItem;

    .line 1898
    :cond_2
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnDBTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$5500(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnDBTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemId:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/store/activity/detail/DetailInfo;->access$2700(Lcom/htc/store/activity/detail/DetailInfo;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/provider/AccessHelper;->getItemTTLItem(Ljava/lang/String;I)Lcom/htc/store/module/vo/ItemTTLItem;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1879
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnDBTask;->doInBackground([Ljava/lang/Object;)Lcom/htc/store/module/vo/ItemTTLItem;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/htc/store/module/vo/ItemTTLItem;)V
    .locals 11
    .parameter "itemTTL"

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1903
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "onPostExecute: GetDetailInfoOnDBTask"

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1904
    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnDBTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z
    invoke-static {v4}, Lcom/htc/store/activity/detail/DetailInfo;->access$5800(Lcom/htc/store/activity/detail/DetailInfo;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnDBTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z
    invoke-static {v4}, Lcom/htc/store/activity/detail/DetailInfo;->access$5900(Lcom/htc/store/activity/detail/DetailInfo;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1905
    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnDBTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-static {v4}, Lcom/htc/store/activity/detail/DetailInfo;->access$700(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1906
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "GetDetailInfoOnDBTask - no this item on DB"

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1907
    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnDBTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #setter for: Lcom/htc/store/activity/detail/DetailInfo;->mGetDetailInfoFromServer:Z
    invoke-static {v4, v8}, Lcom/htc/store/activity/detail/DetailInfo;->access$6002(Lcom/htc/store/activity/detail/DetailInfo;Z)Z

    .line 1908
    new-instance v4, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnServerTask;

    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnDBTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    invoke-direct {v4, v5, v7}, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnServerTask;-><init>(Lcom/htc/store/activity/detail/DetailInfo;Lcom/htc/store/activity/detail/DetailInfo$1;)V

    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnServerTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1934
    :cond_0
    :goto_0
    return-void

    .line 1910
    :cond_1
    if-nez p1, :cond_3

    const-wide/16 v2, -0x1

    .line 1911
    .local v2, ttl:J
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1912
    .local v0, current:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    cmp-long v4, v2, v0

    if-gtz v4, :cond_4

    .line 1913
    :cond_2
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "GetDetailInfoOnDBTask - TTL is expired"

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1914
    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnDBTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #setter for: Lcom/htc/store/activity/detail/DetailInfo;->mGetDetailInfoFromServer:Z
    invoke-static {v4, v8}, Lcom/htc/store/activity/detail/DetailInfo;->access$6002(Lcom/htc/store/activity/detail/DetailInfo;Z)Z

    .line 1915
    new-instance v4, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnServerTask;

    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnDBTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    invoke-direct {v4, v5, v7}, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnServerTask;-><init>(Lcom/htc/store/activity/detail/DetailInfo;Lcom/htc/store/activity/detail/DetailInfo$1;)V

    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnServerTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1916
    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnDBTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnDBTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-static {v5}, Lcom/htc/store/activity/detail/DetailInfo;->access$700(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v5

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->fillupDetailTitle(Lcom/htc/store/module/vo/ItemItem;)V
    invoke-static {v4, v5}, Lcom/htc/store/activity/detail/DetailInfo;->access$6200(Lcom/htc/store/activity/detail/DetailInfo;Lcom/htc/store/module/vo/ItemItem;)V

    goto :goto_0

    .line 1910
    .end local v0           #current:J
    .end local v2           #ttl:J
    :cond_3
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemTTLItem;->getOnlineTTL()J

    move-result-wide v2

    goto :goto_1

    .line 1918
    .restart local v0       #current:J
    .restart local v2       #ttl:J
    :cond_4
    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnDBTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #setter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemTTL:J
    invoke-static {v4, v2, v3}, Lcom/htc/store/activity/detail/DetailInfo;->access$6302(Lcom/htc/store/activity/detail/DetailInfo;J)J

    .line 1919
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v4

    new-array v5, v10, [Ljava/lang/Object;

    const-string v6, "GetDetailInfoOnDBTask - current ttl: "

    aput-object v6, v5, v9

    iget-object v6, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnDBTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemTTL:J
    invoke-static {v6}, Lcom/htc/store/activity/detail/DetailInfo;->access$6300(Lcom/htc/store/activity/detail/DetailInfo;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1920
    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnDBTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #setter for: Lcom/htc/store/activity/detail/DetailInfo;->mGetDetailInfoFinished:Z
    invoke-static {v4, v8}, Lcom/htc/store/activity/detail/DetailInfo;->access$6402(Lcom/htc/store/activity/detail/DetailInfo;Z)Z

    .line 1921
    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnDBTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemType:I
    invoke-static {v4}, Lcom/htc/store/activity/detail/DetailInfo;->access$2300(Lcom/htc/store/activity/detail/DetailInfo;)I

    move-result v4

    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnDBTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-static {v5}, Lcom/htc/store/activity/detail/DetailInfo;->access$700(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v5

    if-eq v4, v5, :cond_5

    .line 1922
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "item type is different on DB !!!"

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1923
    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnDBTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemType:I
    invoke-static {v4}, Lcom/htc/store/activity/detail/DetailInfo;->access$2300(Lcom/htc/store/activity/detail/DetailInfo;)I

    move-result v4

    if-nez v4, :cond_5

    .line 1924
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "item type is not defined"

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1925
    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnDBTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnDBTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-static {v5}, Lcom/htc/store/activity/detail/DetailInfo;->access$700(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v5

    #setter for: Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemType:I
    invoke-static {v4, v5}, Lcom/htc/store/activity/detail/DetailInfo;->access$2302(Lcom/htc/store/activity/detail/DetailInfo;I)I

    .line 1926
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v4

    new-array v5, v10, [Ljava/lang/Object;

    const-string v6, "use item type on DB: "

    aput-object v6, v5, v9

    iget-object v6, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnDBTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemType:I
    invoke-static {v6}, Lcom/htc/store/activity/detail/DetailInfo;->access$2300(Lcom/htc/store/activity/detail/DetailInfo;)I

    move-result v6

    invoke-static {v6}, Lcom/htc/store/module/json/JSONUtils;->getLocalItemTypeString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1929
    :cond_5
    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnDBTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnDBTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-static {v5}, Lcom/htc/store/activity/detail/DetailInfo;->access$700(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v5

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->fillupDetailTitle(Lcom/htc/store/module/vo/ItemItem;)V
    invoke-static {v4, v5}, Lcom/htc/store/activity/detail/DetailInfo;->access$6200(Lcom/htc/store/activity/detail/DetailInfo;Lcom/htc/store/module/vo/ItemItem;)V

    .line 1930
    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnDBTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnDBTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-static {v5}, Lcom/htc/store/activity/detail/DetailInfo;->access$700(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v5

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->fillupDetailInfo(Lcom/htc/store/module/vo/ItemItem;)V
    invoke-static {v4, v5}, Lcom/htc/store/activity/detail/DetailInfo;->access$6500(Lcom/htc/store/activity/detail/DetailInfo;Lcom/htc/store/module/vo/ItemItem;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1879
    check-cast p1, Lcom/htc/store/module/vo/ItemTTLItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnDBTask;->onPostExecute(Lcom/htc/store/module/vo/ItemTTLItem;)V

    return-void
.end method
