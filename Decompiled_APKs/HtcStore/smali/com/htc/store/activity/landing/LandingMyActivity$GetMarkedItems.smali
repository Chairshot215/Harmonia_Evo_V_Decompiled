.class Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItems;
.super Landroid/os/AsyncTask;
.source "LandingMyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/landing/LandingMyActivity;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/landing/LandingMyActivity;


# direct methods
.method private constructor <init>(Lcom/htc/store/activity/landing/LandingMyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 736
    iput-object p1, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItems;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/store/activity/landing/LandingMyActivity;Lcom/htc/store/activity/landing/LandingMyActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 736
    invoke-direct {p0, p1}, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItems;-><init>(Lcom/htc/store/activity/landing/LandingMyActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 14
    .parameter "params"

    .prologue
    .line 740
    invoke-static {}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$000()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "doInBackground: GetMarkedItemsListTask"

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 741
    const/4 v0, 0x0

    .line 742
    .local v0, action:I
    iget-object v9, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItems;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;
    invoke-static {v9}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$1900(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/module/rest/RestHelper;

    move-result-object v9

    if-nez v9, :cond_0

    .line 743
    iget-object v9, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItems;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    new-instance v10, Lcom/htc/store/module/rest/RestHelper;

    iget-object v11, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItems;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #calls: Lcom/htc/store/activity/landing/LandingMyActivity;->getContext()Landroid/app/Activity;
    invoke-static {v11}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$2800(Lcom/htc/store/activity/landing/LandingMyActivity;)Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/htc/store/module/rest/RestHelper;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;
    invoke-static {v9, v10}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$1902(Lcom/htc/store/activity/landing/LandingMyActivity;Lcom/htc/store/module/rest/RestHelper;)Lcom/htc/store/module/rest/RestHelper;

    .line 745
    :cond_0
    iget-object v9, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItems;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;
    invoke-static {v9}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$1900(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/module/rest/RestHelper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/store/module/rest/RestHelper;->getMarkedItemsList()Lcom/htc/store/module/rest/RestResult;

    move-result-object v6

    .line 746
    .local v6, result:Lcom/htc/store/module/rest/RestResult;
    iget v9, v6, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_b

    .line 748
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 749
    .local v7, tempToAdd:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 751
    .local v8, tempToUpdate:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    iget-object v3, v6, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    .line 753
    .local v3, markedItemsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    iget-object v9, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItems;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v9}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$1500(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Lcom/htc/store/provider/AccessHelper;->getMyActivityItemsIdsByStatus(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 756
    .local v5, onlineItemIdsOfMarkedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_a

    .line 758
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/store/module/vo/MyActivityItem;

    .line 759
    .local v2, item:Lcom/htc/store/module/vo/MyActivityItem;
    invoke-virtual {v2}, Lcom/htc/store/module/vo/MyActivityItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 760
    invoke-virtual {v2}, Lcom/htc/store/module/vo/MyActivityItem;->getStatus()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_1

    .line 762
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v2, v9, v10}, Lcom/htc/store/module/vo/MyActivityItem;->setTimestamp(J)V

    .line 763
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 774
    :goto_1
    invoke-virtual {v2}, Lcom/htc/store/module/vo/MyActivityItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 766
    :cond_1
    iget-object v9, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItems;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v9}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$1500(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/htc/store/provider/AccessHelper;->isUpdate(Lcom/htc/store/module/vo/MyActivityItem;)Ljava/lang/String;

    move-result-object v4

    .line 767
    .local v4, needUpdateAndOriginalVersion:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 768
    invoke-virtual {v2}, Lcom/htc/store/module/vo/MyActivityItem;->getOnlineMarkedId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/htc/store/module/vo/MyActivityItem;->setOnlineMarkedId(Ljava/lang/String;)V

    .line 769
    const/16 v9, 0xc

    invoke-virtual {v2, v9}, Lcom/htc/store/module/vo/MyActivityItem;->setStatus(I)V

    .line 770
    invoke-virtual {v2, v4}, Lcom/htc/store/module/vo/MyActivityItem;->setItemVersionName(Ljava/lang/String;)V

    .line 772
    :cond_2
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 777
    .end local v4           #needUpdateAndOriginalVersion:Ljava/lang/String;
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v2, v9, v10}, Lcom/htc/store/module/vo/MyActivityItem;->setTimestamp(J)V

    .line 778
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 784
    .end local v2           #item:Lcom/htc/store/module/vo/MyActivityItem;
    :cond_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    .line 785
    iget-object v9, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItems;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v9}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$1500(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/htc/store/provider/AccessHelper;->updateMyActivityMarkedItems(Ljava/util/ArrayList;)I

    .line 789
    :cond_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6

    .line 790
    iget-object v9, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItems;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v9}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$1500(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/htc/store/provider/AccessHelper;->addMyActivityItems(Ljava/util/ArrayList;)I

    .line 794
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_7

    .line 796
    iget-object v9, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItems;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v9}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$1500(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/htc/store/provider/AccessHelper;->removeMyActivityMarkedItemByOnlilneIds(Ljava/util/ArrayList;)I

    .line 799
    :cond_7
    invoke-static {}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$000()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "marked items tempToUpdate array : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 800
    invoke-static {}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$000()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "marked items add array : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 801
    invoke-static {}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$000()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "marked items delete array : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 812
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #markedItemsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    .end local v5           #onlineItemIdsOfMarkedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #tempToAdd:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    .end local v8           #tempToUpdate:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    :cond_8
    :goto_2
    const/16 v9, -0xc

    if-eq v0, v9, :cond_9

    .line 813
    const/4 v0, 0x4

    .line 815
    :cond_9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    return-object v9

    .line 803
    .restart local v3       #markedItemsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    .restart local v5       #onlineItemIdsOfMarkedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7       #tempToAdd:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    .restart local v8       #tempToUpdate:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    :cond_a
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_8

    .line 804
    invoke-static {}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$000()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "online has no marked item, but in db there have at least one marked item"

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 805
    iget-object v9, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItems;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v9}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$1500(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/htc/store/provider/AccessHelper;->removeMyActivityMarkedItemByOnlilneIds(Ljava/util/ArrayList;)I

    .line 806
    invoke-static {}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$000()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "marked items delete array : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 810
    .end local v3           #markedItemsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    .end local v5           #onlineItemIdsOfMarkedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #tempToAdd:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    .end local v8           #tempToUpdate:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    :cond_b
    const/16 v0, -0xc

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 736
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItems;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .parameter "action"

    .prologue
    .line 820
    invoke-static {}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onPostExecute: GetMarkedItemsListTask"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 821
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItems;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z
    invoke-static {v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$2900(Lcom/htc/store/activity/landing/LandingMyActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItems;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z
    invoke-static {v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$3000(Lcom/htc/store/activity/landing/LandingMyActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItems;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnPause:Z
    invoke-static {v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$3100(Lcom/htc/store/activity/landing/LandingMyActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 823
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItems;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #calls: Lcom/htc/store/activity/landing/LandingMyActivity;->doAction(I)V
    invoke-static {v0, v1}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$600(Lcom/htc/store/activity/landing/LandingMyActivity;I)V

    .line 824
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItems;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    const/16 v1, -0xa

    #calls: Lcom/htc/store/activity/landing/LandingMyActivity;->doAction(I)V
    invoke-static {v0, v1}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$600(Lcom/htc/store/activity/landing/LandingMyActivity;I)V

    .line 825
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItems;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mAdapter:Lcom/htc/store/module/adapter/MyActivityAdapter;
    invoke-static {v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$2300(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/module/adapter/MyActivityAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/store/module/adapter/MyActivityAdapter;->notifyDataSetChanged()V

    .line 830
    :cond_0
    :goto_0
    return-void

    .line 827
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItems;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$2676(Lcom/htc/store/activity/landing/LandingMyActivity;I)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 736
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItems;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
