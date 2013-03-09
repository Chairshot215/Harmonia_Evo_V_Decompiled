.class Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnServerTask;
.super Landroid/os/AsyncTask;
.source "DetailInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/detail/DetailInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetDetailInfoOnServerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Lcom/htc/store/module/rest/RestResult;",
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
    .line 1980
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnServerTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/store/activity/detail/DetailInfo;Lcom/htc/store/activity/detail/DetailInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1980
    invoke-direct {p0, p1}, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnServerTask;-><init>(Lcom/htc/store/activity/detail/DetailInfo;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Lcom/htc/store/module/rest/RestResult;
    .locals 12
    .parameter "params"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1984
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    const-string v7, "doInBackground: GetDetailInfoOnServerTask"

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1985
    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnServerTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;
    invoke-static {v5}, Lcom/htc/store/activity/detail/DetailInfo;->access$6900(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/rest/RestHelper;

    move-result-object v5

    if-nez v5, :cond_0

    .line 1986
    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnServerTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    new-instance v6, Lcom/htc/store/module/rest/RestHelper;

    iget-object v7, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnServerTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;
    invoke-static {v7}, Lcom/htc/store/activity/detail/DetailInfo;->access$7000(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/htc/store/module/rest/RestHelper;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/htc/store/activity/detail/DetailInfo;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;
    invoke-static {v5, v6}, Lcom/htc/store/activity/detail/DetailInfo;->access$6902(Lcom/htc/store/activity/detail/DetailInfo;Lcom/htc/store/module/rest/RestHelper;)Lcom/htc/store/module/rest/RestHelper;

    .line 1988
    :cond_0
    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnServerTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;
    invoke-static {v5}, Lcom/htc/store/activity/detail/DetailInfo;->access$6900(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/rest/RestHelper;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnServerTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemId:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/store/activity/detail/DetailInfo;->access$2700(Lcom/htc/store/activity/detail/DetailInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/store/module/rest/RestHelper;->getDetailItem(Ljava/lang/String;)Lcom/htc/store/module/rest/RestResult;

    move-result-object v2

    .line 1989
    .local v2, result:Lcom/htc/store/module/rest/RestResult;
    iget v5, v2, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_3

    .line 1990
    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnServerTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v5}, Lcom/htc/store/activity/detail/DetailInfo;->access$5500(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1991
    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnServerTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    new-instance v6, Lcom/htc/store/provider/AccessHelper;

    iget-object v7, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnServerTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;
    invoke-static {v7}, Lcom/htc/store/activity/detail/DetailInfo;->access$7100(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/htc/store/provider/AccessHelper;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/htc/store/activity/detail/DetailInfo;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v5, v6}, Lcom/htc/store/activity/detail/DetailInfo;->access$5502(Lcom/htc/store/activity/detail/DetailInfo;Lcom/htc/store/provider/AccessHelper;)Lcom/htc/store/provider/AccessHelper;

    .line 1992
    :cond_1
    iget-object v0, v2, Lcom/htc/store/module/rest/RestResult;->mResultData:Ljava/lang/Object;

    check-cast v0, Lcom/htc/store/module/vo/ItemItem;

    .line 1993
    .local v0, detailItem:Lcom/htc/store/module/vo/ItemItem;
    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnServerTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemId:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/store/activity/detail/DetailInfo;->access$2700(Lcom/htc/store/activity/detail/DetailInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1994
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "item id is different on Server !!!, mOnlineItemId = "

    aput-object v7, v6, v10

    iget-object v7, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnServerTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemId:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/store/activity/detail/DetailInfo;->access$2700(Lcom/htc/store/activity/detail/DetailInfo;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const-string v7, ", detailItem.getOnlineId() = "

    aput-object v7, v6, v11

    const/4 v7, 0x3

    invoke-virtual {v0}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1998
    :cond_2
    invoke-virtual {v0}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v5

    if-ne v5, v9, :cond_4

    .line 1999
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    const-string v7, "GetDetailInfoOnServerTask - add or update soundset on DB"

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2000
    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnServerTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v5}, Lcom/htc/store/activity/detail/DetailInfo;->access$5500(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v6

    move-object v5, v0

    check-cast v5, Lcom/htc/store/module/vo/SoundsetItem;

    invoke-virtual {v6, v5}, Lcom/htc/store/provider/AccessHelper;->addOrUpdateSoundset(Lcom/htc/store/module/vo/SoundsetItem;)I

    .line 2010
    :goto_0
    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnServerTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    iget-object v6, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnServerTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-static {v6}, Lcom/htc/store/activity/detail/DetailInfo;->access$700(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v6

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->keepItemInfoOnDetailItem(Lcom/htc/store/module/vo/ItemItem;Lcom/htc/store/module/vo/ItemItem;)V
    invoke-static {v5, v6, v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$7200(Lcom/htc/store/activity/detail/DetailInfo;Lcom/htc/store/module/vo/ItemItem;Lcom/htc/store/module/vo/ItemItem;)V

    .line 2011
    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnServerTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #setter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-static {v5, v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$702(Lcom/htc/store/activity/detail/DetailInfo;Lcom/htc/store/module/vo/ItemItem;)Lcom/htc/store/module/vo/ItemItem;

    .line 2012
    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnServerTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v5}, Lcom/htc/store/activity/detail/DetailInfo;->access$5500(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnServerTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemId:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/store/activity/detail/DetailInfo;->access$2700(Lcom/htc/store/activity/detail/DetailInfo;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x6

    invoke-virtual {v5, v6, v7}, Lcom/htc/store/provider/AccessHelper;->getItemTTLItem(Ljava/lang/String;I)Lcom/htc/store/module/vo/ItemTTLItem;

    move-result-object v1

    .line 2013
    .local v1, itemTTL:Lcom/htc/store/module/vo/ItemTTLItem;
    if-nez v1, :cond_6

    const-wide/16 v3, -0x1

    .line 2014
    .local v3, ttl:J
    :goto_1
    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnServerTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #setter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemTTL:J
    invoke-static {v5, v3, v4}, Lcom/htc/store/activity/detail/DetailInfo;->access$6302(Lcom/htc/store/activity/detail/DetailInfo;J)J

    .line 2015
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v5

    new-array v6, v11, [Ljava/lang/Object;

    const-string v7, "GetDetailInfoOnServerTask - new ttl: "

    aput-object v7, v6, v10

    iget-object v7, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnServerTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemTTL:J
    invoke-static {v7}, Lcom/htc/store/activity/detail/DetailInfo;->access$6300(Lcom/htc/store/activity/detail/DetailInfo;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2017
    .end local v0           #detailItem:Lcom/htc/store/module/vo/ItemItem;
    .end local v1           #itemTTL:Lcom/htc/store/module/vo/ItemTTLItem;
    .end local v3           #ttl:J
    :cond_3
    return-object v2

    .line 2002
    .restart local v0       #detailItem:Lcom/htc/store/module/vo/ItemItem;
    :cond_4
    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnServerTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-static {v5}, Lcom/htc/store/activity/detail/DetailInfo;->access$700(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v5

    if-nez v5, :cond_5

    .line 2003
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    const-string v7, "GetDetailInfoOnServerTask - add item on DB"

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2004
    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnServerTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v5}, Lcom/htc/store/activity/detail/DetailInfo;->access$5500(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/htc/store/provider/AccessHelper;->addItemItem(Lcom/htc/store/module/vo/ItemItem;)J

    goto :goto_0

    .line 2006
    :cond_5
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    const-string v7, "GetDetailInfoOnServerTask - update item on DB"

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2007
    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnServerTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v5}, Lcom/htc/store/activity/detail/DetailInfo;->access$5500(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v5

    invoke-virtual {v0}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/htc/store/module/vo/ItemItem;->toContentValuesDetailPartOnly()Landroid/content/ContentValues;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/htc/store/provider/AccessHelper;->updateItemItemByOnlineId(Ljava/lang/String;Landroid/content/ContentValues;)Z

    goto/16 :goto_0

    .line 2013
    .restart local v1       #itemTTL:Lcom/htc/store/module/vo/ItemTTLItem;
    :cond_6
    invoke-virtual {v1}, Lcom/htc/store/module/vo/ItemTTLItem;->getOnlineTTL()J

    move-result-wide v3

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1980
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnServerTask;->doInBackground([Ljava/lang/Object;)Lcom/htc/store/module/rest/RestResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/htc/store/module/rest/RestResult;)V
    .locals 5
    .parameter "result"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2022
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "onPostExecute: GetDetailInfoOnServerTask"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2023
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnServerTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$7300(Lcom/htc/store/activity/detail/DetailInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnServerTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$7400(Lcom/htc/store/activity/detail/DetailInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2024
    iget v0, p1, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    .line 2025
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnServerTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #setter for: Lcom/htc/store/activity/detail/DetailInfo;->mGetDetailInfoFinished:Z
    invoke-static {v0, v3}, Lcom/htc/store/activity/detail/DetailInfo;->access$6402(Lcom/htc/store/activity/detail/DetailInfo;Z)Z

    .line 2026
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnServerTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemType:I
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$2300(Lcom/htc/store/activity/detail/DetailInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnServerTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-static {v1}, Lcom/htc/store/activity/detail/DetailInfo;->access$700(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 2027
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "item type is different on Server !!!"

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2028
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnServerTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemType:I
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$2300(Lcom/htc/store/activity/detail/DetailInfo;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2029
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "item type is not defined"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2030
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnServerTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnServerTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-static {v1}, Lcom/htc/store/activity/detail/DetailInfo;->access$700(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v1

    #setter for: Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemType:I
    invoke-static {v0, v1}, Lcom/htc/store/activity/detail/DetailInfo;->access$2302(Lcom/htc/store/activity/detail/DetailInfo;I)I

    .line 2031
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "use item type on Server: "

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnServerTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemType:I
    invoke-static {v2}, Lcom/htc/store/activity/detail/DetailInfo;->access$2300(Lcom/htc/store/activity/detail/DetailInfo;)I

    move-result v2

    invoke-static {v2}, Lcom/htc/store/module/json/JSONUtils;->getLocalItemTypeString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2034
    :cond_0
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnServerTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnServerTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-static {v1}, Lcom/htc/store/activity/detail/DetailInfo;->access$700(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v1

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->fillupDetailTitle(Lcom/htc/store/module/vo/ItemItem;)V
    invoke-static {v0, v1}, Lcom/htc/store/activity/detail/DetailInfo;->access$6200(Lcom/htc/store/activity/detail/DetailInfo;Lcom/htc/store/module/vo/ItemItem;)V

    .line 2035
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnServerTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnServerTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-static {v1}, Lcom/htc/store/activity/detail/DetailInfo;->access$700(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v1

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->fillupDetailInfo(Lcom/htc/store/module/vo/ItemItem;)V
    invoke-static {v0, v1}, Lcom/htc/store/activity/detail/DetailInfo;->access$6500(Lcom/htc/store/activity/detail/DetailInfo;Lcom/htc/store/module/vo/ItemItem;)V

    .line 2044
    :cond_1
    :goto_0
    return-void

    .line 2037
    :cond_2
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnServerTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnPause:Z
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$7500(Lcom/htc/store/activity/detail/DetailInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2038
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnServerTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->showCommonErrorDialogToFinish()V
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$7600(Lcom/htc/store/activity/detail/DetailInfo;)V

    goto :goto_0

    .line 2040
    :cond_3
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnServerTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #setter for: Lcom/htc/store/activity/detail/DetailInfo;->mGetDetailInfoFailed:Z
    invoke-static {v0, v3}, Lcom/htc/store/activity/detail/DetailInfo;->access$7702(Lcom/htc/store/activity/detail/DetailInfo;Z)Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1980
    check-cast p1, Lcom/htc/store/module/rest/RestResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnServerTask;->onPostExecute(Lcom/htc/store/module/rest/RestResult;)V

    return-void
.end method
