.class Lcom/htc/store/receiver/RequestReceiver$GetMyActivityOnlineItemIdsBySDMTask;
.super Landroid/os/AsyncTask;
.source "RequestReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/receiver/RequestReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetMyActivityOnlineItemIdsBySDMTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mOnlineContentType:Ljava/lang/String;

.field mOnlineIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/store/receiver/RequestReceiver;


# direct methods
.method public constructor <init>(Lcom/htc/store/receiver/RequestReceiver;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "onlineContentType"

    .prologue
    .line 229
    iput-object p1, p0, Lcom/htc/store/receiver/RequestReceiver$GetMyActivityOnlineItemIdsBySDMTask;->this$0:Lcom/htc/store/receiver/RequestReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 230
    iput-object p2, p0, Lcom/htc/store/receiver/RequestReceiver$GetMyActivityOnlineItemIdsBySDMTask;->mContext:Landroid/content/Context;

    .line 231
    iput-object p3, p0, Lcom/htc/store/receiver/RequestReceiver$GetMyActivityOnlineItemIdsBySDMTask;->mOnlineContentType:Ljava/lang/String;

    .line 232
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "params"

    .prologue
    .line 236
    invoke-static {}, Lcom/htc/store/receiver/RequestReceiver;->access$000()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "GetMyActivityOnlineItemIdsBySDMTask : doInBackground"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    new-instance v0, Lcom/htc/store/provider/AccessHelper;

    iget-object v1, p0, Lcom/htc/store/receiver/RequestReceiver$GetMyActivityOnlineItemIdsBySDMTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/store/provider/AccessHelper;-><init>(Landroid/content/Context;)V

    .line 238
    .local v0, accessHelper:Lcom/htc/store/provider/AccessHelper;
    iget-object v1, p0, Lcom/htc/store/receiver/RequestReceiver$GetMyActivityOnlineItemIdsBySDMTask;->mOnlineContentType:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/store/module/json/JSONUtils;->getLocalItemType(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/provider/AccessHelper;->getMyActivityItemByItemContentTypeAndInstallStatus(II)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/store/receiver/RequestReceiver$GetMyActivityOnlineItemIdsBySDMTask;->mOnlineIds:Ljava/util/ArrayList;

    .line 239
    const/4 v1, 0x0

    return-object v1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 244
    invoke-static {}, Lcom/htc/store/receiver/RequestReceiver;->access$000()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "GetMyActivityOnlineItemIdsBySDMTask : onPostExecute"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.store.action.ACTION_GET_MY_ACTIVITY_ONLINE_ITEM_IDS_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 246
    .local v0, intentToSDM:Landroid/content/Intent;
    const-string v1, "online_item_ids"

    iget-object v2, p0, Lcom/htc/store/receiver/RequestReceiver$GetMyActivityOnlineItemIdsBySDMTask;->mOnlineIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 247
    iget-object v1, p0, Lcom/htc/store/receiver/RequestReceiver$GetMyActivityOnlineItemIdsBySDMTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 249
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/store/receiver/RequestReceiver$GetMyActivityOnlineItemIdsBySDMTask;->mContext:Landroid/content/Context;

    .line 250
    return-void
.end method
