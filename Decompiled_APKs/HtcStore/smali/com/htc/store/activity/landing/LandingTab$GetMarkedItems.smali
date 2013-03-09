.class Lcom/htc/store/activity/landing/LandingTab$GetMarkedItems;
.super Landroid/os/AsyncTask;
.source "LandingTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/landing/LandingTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetMarkedItems"
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
.field private mIsFinish:Z

.field final synthetic this$0:Lcom/htc/store/activity/landing/LandingTab;


# direct methods
.method private constructor <init>(Lcom/htc/store/activity/landing/LandingTab;)V
    .locals 1
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/htc/store/activity/landing/LandingTab$GetMarkedItems;->this$0:Lcom/htc/store/activity/landing/LandingTab;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/store/activity/landing/LandingTab$GetMarkedItems;->mIsFinish:Z

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .parameter "params"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 196
    invoke-static {}, Lcom/htc/store/activity/landing/LandingTab;->access$500()Ljava/lang/String;

    move-result-object v8

    new-array v9, v12, [Ljava/lang/Object;

    const-string v10, "doInBackground: GetMarkedItemsListTask"

    aput-object v10, v9, v13

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    iget-object v8, p0, Lcom/htc/store/activity/landing/LandingTab$GetMarkedItems;->this$0:Lcom/htc/store/activity/landing/LandingTab;

    #getter for: Lcom/htc/store/activity/landing/LandingTab;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;
    invoke-static {v8}, Lcom/htc/store/activity/landing/LandingTab;->access$200(Lcom/htc/store/activity/landing/LandingTab;)Lcom/htc/store/module/rest/RestHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/store/module/rest/RestHelper;->getMarkedItemsList()Lcom/htc/store/module/rest/RestResult;

    move-result-object v5

    .line 198
    .local v5, result:Lcom/htc/store/module/rest/RestResult;
    iget v8, v5, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_8

    .line 200
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v6, tempToAdd:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v7, tempToUpdate:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    iget-object v2, v5, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    .line 205
    .local v2, markedItemsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    iget-object v8, p0, Lcom/htc/store/activity/landing/LandingTab$GetMarkedItems;->this$0:Lcom/htc/store/activity/landing/LandingTab;

    #getter for: Lcom/htc/store/activity/landing/LandingTab;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v8}, Lcom/htc/store/activity/landing/LandingTab;->access$600(Lcom/htc/store/activity/landing/LandingTab;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v8

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Lcom/htc/store/provider/AccessHelper;->getMyActivityItemsIdsByStatus(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 207
    .local v4, onlineItemIdsOfMarkedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/htc/store/activity/landing/LandingTab;->access$500()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, "onlineItemIdsOfMarkedItems size = "

    aput-object v10, v9, v13

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_7

    .line 211
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/store/module/vo/MyActivityItem;

    .line 212
    .local v1, item:Lcom/htc/store/module/vo/MyActivityItem;
    invoke-virtual {v1}, Lcom/htc/store/module/vo/MyActivityItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 213
    invoke-virtual {v1}, Lcom/htc/store/module/vo/MyActivityItem;->getStatus()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_0

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/htc/store/module/vo/MyActivityItem;->setTimestamp(J)V

    .line 216
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    :goto_1
    invoke-virtual {v1}, Lcom/htc/store/module/vo/MyActivityItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 219
    :cond_0
    iget-object v8, p0, Lcom/htc/store/activity/landing/LandingTab$GetMarkedItems;->this$0:Lcom/htc/store/activity/landing/LandingTab;

    #getter for: Lcom/htc/store/activity/landing/LandingTab;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v8}, Lcom/htc/store/activity/landing/LandingTab;->access$600(Lcom/htc/store/activity/landing/LandingTab;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/htc/store/provider/AccessHelper;->isUpdate(Lcom/htc/store/module/vo/MyActivityItem;)Ljava/lang/String;

    move-result-object v3

    .line 220
    .local v3, needUpdateAndOriginalVersion:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 221
    invoke-virtual {v1, v3}, Lcom/htc/store/module/vo/MyActivityItem;->setItemVersionName(Ljava/lang/String;)V

    .line 222
    const/16 v8, 0xc

    invoke-virtual {v1, v8}, Lcom/htc/store/module/vo/MyActivityItem;->setStatus(I)V

    .line 224
    :cond_1
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 230
    .end local v3           #needUpdateAndOriginalVersion:Ljava/lang/String;
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/htc/store/module/vo/MyActivityItem;->setTimestamp(J)V

    .line 231
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 237
    .end local v1           #item:Lcom/htc/store/module/vo/MyActivityItem;
    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 238
    iget-object v8, p0, Lcom/htc/store/activity/landing/LandingTab$GetMarkedItems;->this$0:Lcom/htc/store/activity/landing/LandingTab;

    #getter for: Lcom/htc/store/activity/landing/LandingTab;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v8}, Lcom/htc/store/activity/landing/LandingTab;->access$600(Lcom/htc/store/activity/landing/LandingTab;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/htc/store/provider/AccessHelper;->updateMyActivityMarkedItems(Ljava/util/ArrayList;)I

    .line 242
    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 243
    iget-object v8, p0, Lcom/htc/store/activity/landing/LandingTab$GetMarkedItems;->this$0:Lcom/htc/store/activity/landing/LandingTab;

    #getter for: Lcom/htc/store/activity/landing/LandingTab;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v8}, Lcom/htc/store/activity/landing/LandingTab;->access$600(Lcom/htc/store/activity/landing/LandingTab;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/htc/store/provider/AccessHelper;->addMyActivityItems(Ljava/util/ArrayList;)I

    .line 247
    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    .line 249
    iget-object v8, p0, Lcom/htc/store/activity/landing/LandingTab$GetMarkedItems;->this$0:Lcom/htc/store/activity/landing/LandingTab;

    #getter for: Lcom/htc/store/activity/landing/LandingTab;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v8}, Lcom/htc/store/activity/landing/LandingTab;->access$600(Lcom/htc/store/activity/landing/LandingTab;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/htc/store/provider/AccessHelper;->removeMyActivityMarkedItemsByOnlilneMarkedIds(Ljava/util/ArrayList;)I

    .line 252
    :cond_6
    invoke-static {}, Lcom/htc/store/activity/landing/LandingTab;->access$500()Ljava/lang/String;

    move-result-object v8

    new-array v9, v12, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "marked items tempToUpdate array : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    invoke-static {}, Lcom/htc/store/activity/landing/LandingTab;->access$500()Ljava/lang/String;

    move-result-object v8

    new-array v9, v12, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "marked items add array : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    invoke-static {}, Lcom/htc/store/activity/landing/LandingTab;->access$500()Ljava/lang/String;

    move-result-object v8

    new-array v9, v12, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "marked items delete array : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_7
    iput-boolean v12, p0, Lcom/htc/store/activity/landing/LandingTab$GetMarkedItems;->mIsFinish:Z

    .line 257
    iget-object v8, p0, Lcom/htc/store/activity/landing/LandingTab$GetMarkedItems;->this$0:Lcom/htc/store/activity/landing/LandingTab;

    #calls: Lcom/htc/store/activity/landing/LandingTab;->updateFirstSyncStatus()V
    invoke-static {v8}, Lcom/htc/store/activity/landing/LandingTab;->access$700(Lcom/htc/store/activity/landing/LandingTab;)V

    .line 259
    .end local v2           #markedItemsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    .end local v4           #onlineItemIdsOfMarkedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #tempToAdd:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    .end local v7           #tempToUpdate:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    :cond_8
    const/4 v8, 0x0

    return-object v8
.end method

.method public isFinish()Z
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/htc/store/activity/landing/LandingTab$GetMarkedItems;->mIsFinish:Z

    return v0
.end method
