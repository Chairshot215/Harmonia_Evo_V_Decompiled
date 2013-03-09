.class Lcom/htc/home/personalize/storedatamanager/storeIntentService$StoreTask;
.super Landroid/os/AsyncTask;
.source "storeIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/storedatamanager/storeIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoreTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Intent;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mStartId:I

.field final synthetic this$0:Lcom/htc/home/personalize/storedatamanager/storeIntentService;


# direct methods
.method public constructor <init>(Lcom/htc/home/personalize/storedatamanager/storeIntentService;I)V
    .locals 3
    .parameter
    .parameter "startId"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/htc/home/personalize/storedatamanager/storeIntentService$StoreTask;->this$0:Lcom/htc/home/personalize/storedatamanager/storeIntentService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 37
    const-string v0, "HomePersonalize.storeIntentService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new a StoreTask with startID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iput p2, p0, Lcom/htc/home/personalize/storedatamanager/storeIntentService$StoreTask;->mStartId:I

    .line 39
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    check-cast p1, [Landroid/content/Intent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/home/personalize/storedatamanager/storeIntentService$StoreTask;->doInBackground([Landroid/content/Intent;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/Intent;)Ljava/lang/Void;
    .locals 8
    .parameter "arg0"

    .prologue
    const/4 v7, 0x0

    .line 43
    const-string v4, "HomePersonalize.storeIntentService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doInBackground() +  mStartID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/home/personalize/storedatamanager/storeIntentService$StoreTask;->mStartId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const/4 v4, 0x0

    aget-object v0, p1, v4

    .line 47
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "store_intent"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 48
    .local v2, storeDataIntent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, strAction:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 51
    :cond_0
    const-string v4, "HomePersonalize.storeIntentService"

    const-string v5, "onReceive invalid strAction"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-string v4, "HomePersonalize.storeIntentService"

    const-string v5, "doInBackground() -"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :goto_0
    return-object v7

    .line 56
    :cond_1
    const-string v4, "com.htc.home.personalize.storedatamanager.ACTION_GETSUBCATEGORYLIST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 58
    iget-object v4, p0, Lcom/htc/home/personalize/storedatamanager/storeIntentService$StoreTask;->this$0:Lcom/htc/home/personalize/storedatamanager/storeIntentService;

    #getter for: Lcom/htc/home/personalize/storedatamanager/storeIntentService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->access$000(Lcom/htc/home/personalize/storedatamanager/storeIntentService;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/home/personalize/storedatamanager/StoreDataUtils;->checkLangChange(Landroid/content/Context;)Z

    .line 59
    iget-object v4, p0, Lcom/htc/home/personalize/storedatamanager/storeIntentService$StoreTask;->this$0:Lcom/htc/home/personalize/storedatamanager/storeIntentService;

    #calls: Lcom/htc/home/personalize/storedatamanager/storeIntentService;->doActionGetSubcatogoryList(Landroid/content/Intent;)V
    invoke-static {v4, v2}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->access$100(Lcom/htc/home/personalize/storedatamanager/storeIntentService;Landroid/content/Intent;)V

    .line 80
    :cond_2
    :goto_1
    const-string v4, "HomePersonalize.storeIntentService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doInBackground() - mStartID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/home/personalize/storedatamanager/storeIntentService$StoreTask;->mStartId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 60
    :cond_3
    const-string v4, "com.htc.home.personalize.storedatamanager.ACTION_GETITEMLIST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 61
    iget-object v4, p0, Lcom/htc/home/personalize/storedatamanager/storeIntentService$StoreTask;->this$0:Lcom/htc/home/personalize/storedatamanager/storeIntentService;

    #getter for: Lcom/htc/home/personalize/storedatamanager/storeIntentService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->access$000(Lcom/htc/home/personalize/storedatamanager/storeIntentService;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/home/personalize/storedatamanager/StoreDataUtils;->checkLangChange(Landroid/content/Context;)Z

    .line 62
    const-string v4, "storedata_type"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 63
    .local v1, nType:I
    packed-switch v1, :pswitch_data_0

    .line 73
    const-string v4, "HomePersonalize.storeIntentService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_GETSUBCATLIST invalid type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 66
    :pswitch_0
    iget-object v4, p0, Lcom/htc/home/personalize/storedatamanager/storeIntentService$StoreTask;->this$0:Lcom/htc/home/personalize/storedatamanager/storeIntentService;

    #calls: Lcom/htc/home/personalize/storedatamanager/storeIntentService;->doActionGetWallpaperItemList(Landroid/content/Intent;)V
    invoke-static {v4, v2}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->access$200(Lcom/htc/home/personalize/storedatamanager/storeIntentService;Landroid/content/Intent;)V

    goto :goto_1

    .line 70
    :pswitch_1
    iget-object v4, p0, Lcom/htc/home/personalize/storedatamanager/storeIntentService$StoreTask;->this$0:Lcom/htc/home/personalize/storedatamanager/storeIntentService;

    #calls: Lcom/htc/home/personalize/storedatamanager/storeIntentService;->doActionGetSceneSkinItemList(Landroid/content/Intent;I)V
    invoke-static {v4, v2, v1}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->access$300(Lcom/htc/home/personalize/storedatamanager/storeIntentService;Landroid/content/Intent;I)V

    goto :goto_1

    .line 76
    .end local v1           #nType:I
    :cond_4
    const-string v4, "com.htc.home.personalize.storedatamanager.ACTION_GETDOWNLOADURL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 77
    iget-object v4, p0, Lcom/htc/home/personalize/storedatamanager/storeIntentService$StoreTask;->this$0:Lcom/htc/home/personalize/storedatamanager/storeIntentService;

    #calls: Lcom/htc/home/personalize/storedatamanager/storeIntentService;->doGetDownloadURL(Landroid/content/Intent;)V
    invoke-static {v4, v2}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->access$400(Lcom/htc/home/personalize/storedatamanager/storeIntentService;Landroid/content/Intent;)V

    goto :goto_1

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/home/personalize/storedatamanager/storeIntentService$StoreTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 87
    const-string v0, "HomePersonalize.storeIntentService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostExecute() + mStartID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/home/personalize/storedatamanager/storeIntentService$StoreTask;->mStartId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/htc/home/personalize/storedatamanager/storeIntentService$StoreTask;->this$0:Lcom/htc/home/personalize/storedatamanager/storeIntentService;

    iget v1, p0, Lcom/htc/home/personalize/storedatamanager/storeIntentService$StoreTask;->mStartId:I

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->stopSelf(I)V

    .line 92
    const-string v0, "HomePersonalize.storeIntentService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostExecute() - mStartID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/home/personalize/storedatamanager/storeIntentService$StoreTask;->mStartId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method
