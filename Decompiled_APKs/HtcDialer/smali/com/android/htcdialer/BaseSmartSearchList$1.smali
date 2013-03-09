.class Lcom/android/htcdialer/BaseSmartSearchList$1;
.super Landroid/os/Handler;
.source "BaseSmartSearchList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/BaseSmartSearchList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/BaseSmartSearchList;


# direct methods
.method constructor <init>(Lcom/android/htcdialer/BaseSmartSearchList;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/htcdialer/BaseSmartSearchList$1;->this$0:Lcom/android/htcdialer/BaseSmartSearchList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    .line 141
    :try_start_0
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 144
    :pswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    .line 157
    .local v3, mapResult:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "searchPattern"

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 159
    .local v6, searchPattern:Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 160
    const-string v7, "my"

    const-string v8, "myGC1"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 164
    :cond_1
    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList$1;->this$0:Lcom/android/htcdialer/BaseSmartSearchList;

    iget-object v7, v7, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    invoke-virtual {v7}, Lcom/android/htcdialer/search/SearchModule;->getClicked()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 168
    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList$1;->this$0:Lcom/android/htcdialer/BaseSmartSearchList;

    invoke-virtual {v7}, Lcom/android/htcdialer/BaseSmartSearchList;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcListView;->setVerticalScrollBarEnabled(Z)V

    .line 170
    const-string v7, "result"

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 171
    .local v0, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htcdialer/search/SearchableObject;>;"
    const-string v7, "pivot"

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 172
    .local v4, pivot:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList$1;->this$0:Lcom/android/htcdialer/BaseSmartSearchList;

    #getter for: Lcom/android/htcdialer/app/BaseListActivity;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v7}, Lcom/android/htcdialer/BaseSmartSearchList;->access$000(Lcom/android/htcdialer/BaseSmartSearchList;)Landroid/widget/ListAdapter;

    move-result-object v7

    if-nez v7, :cond_2

    .line 173
    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList$1;->this$0:Lcom/android/htcdialer/BaseSmartSearchList;

    iget-object v8, p0, Lcom/android/htcdialer/BaseSmartSearchList$1;->this$0:Lcom/android/htcdialer/BaseSmartSearchList;

    invoke-virtual {v8, v0, v4}, Lcom/android/htcdialer/BaseSmartSearchList;->newSearchListAdapter(Ljava/util/ArrayList;Ljava/util/HashMap;)Landroid/widget/BaseAdapter;

    move-result-object v8

    #setter for: Lcom/android/htcdialer/app/BaseListActivity;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v7, v8}, Lcom/android/htcdialer/BaseSmartSearchList;->access$102(Lcom/android/htcdialer/BaseSmartSearchList;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    .line 174
    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList$1;->this$0:Lcom/android/htcdialer/BaseSmartSearchList;

    iget-object v8, p0, Lcom/android/htcdialer/BaseSmartSearchList$1;->this$0:Lcom/android/htcdialer/BaseSmartSearchList;

    #getter for: Lcom/android/htcdialer/app/BaseListActivity;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v8}, Lcom/android/htcdialer/BaseSmartSearchList;->access$200(Lcom/android/htcdialer/BaseSmartSearchList;)Landroid/widget/ListAdapter;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/htcdialer/BaseSmartSearchList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 211
    :goto_1
    iget-object v8, p0, Lcom/android/htcdialer/BaseSmartSearchList$1;->this$0:Lcom/android/htcdialer/BaseSmartSearchList;

    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList$1;->this$0:Lcom/android/htcdialer/BaseSmartSearchList;

    #getter for: Lcom/android/htcdialer/app/BaseListActivity;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v7}, Lcom/android/htcdialer/BaseSmartSearchList;->access$400(Lcom/android/htcdialer/BaseSmartSearchList;)Landroid/widget/ListAdapter;

    move-result-object v7

    check-cast v7, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;

    invoke-virtual {v8, v7}, Lcom/android/htcdialer/BaseSmartSearchList;->handleSearchComplete(Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 248
    .end local v0           #arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htcdialer/search/SearchableObject;>;"
    .end local v3           #mapResult:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4           #pivot:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v6           #searchPattern:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 249
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "BaseSmartSearchList"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 176
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htcdialer/search/SearchableObject;>;"
    .restart local v3       #mapResult:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v4       #pivot:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v6       #searchPattern:Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList$1;->this$0:Lcom/android/htcdialer/BaseSmartSearchList;

    #getter for: Lcom/android/htcdialer/app/BaseListActivity;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v7}, Lcom/android/htcdialer/BaseSmartSearchList;->access$300(Lcom/android/htcdialer/BaseSmartSearchList;)Landroid/widget/ListAdapter;

    move-result-object v7

    check-cast v7, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;

    invoke-virtual {v7, v0, v4}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->updateList(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 177
    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList$1;->this$0:Lcom/android/htcdialer/BaseSmartSearchList;

    invoke-virtual {v7}, Lcom/android/htcdialer/BaseSmartSearchList;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    goto :goto_1

    .line 224
    .end local v0           #arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htcdialer/search/SearchableObject;>;"
    .end local v3           #mapResult:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4           #pivot:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v6           #searchPattern:Ljava/lang/String;
    :pswitch_1
    sget-boolean v5, Lcom/android/htcdialer/DialerService;->isPreloadDone:Z

    .line 225
    .local v5, preloadDone:Z
    if-eqz v5, :cond_0

    .line 226
    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList$1;->this$0:Lcom/android/htcdialer/BaseSmartSearchList;

    #getter for: Lcom/android/htcdialer/BaseSmartSearchList;->mUIHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/htcdialer/BaseSmartSearchList;->access$500(Lcom/android/htcdialer/BaseSmartSearchList;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0xcc

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 227
    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList$1;->this$0:Lcom/android/htcdialer/BaseSmartSearchList;

    #getter for: Lcom/android/htcdialer/BaseSmartSearchList;->mUIHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/htcdialer/BaseSmartSearchList;->access$500(Lcom/android/htcdialer/BaseSmartSearchList;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0xcb

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 229
    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList$1;->this$0:Lcom/android/htcdialer/BaseSmartSearchList;

    iget-boolean v7, v7, Lcom/android/htcdialer/BaseSmartSearchList;->mDisableSmartSearch:Z

    if-nez v7, :cond_0

    .line 230
    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList$1;->this$0:Lcom/android/htcdialer/BaseSmartSearchList;

    iget-object v7, v7, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    if-eqz v7, :cond_0

    .line 231
    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList$1;->this$0:Lcom/android/htcdialer/BaseSmartSearchList;

    iget-object v7, v7, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    invoke-virtual {v7}, Lcom/android/htcdialer/search/SearchModule;->getClicked()Ljava/lang/String;

    move-result-object v2

    .line 232
    .local v2, keyClicked:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 233
    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList$1;->this$0:Lcom/android/htcdialer/BaseSmartSearchList;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8, v2}, Lcom/android/htcdialer/BaseSmartSearchList;->search(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 235
    :cond_3
    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList$1;->this$0:Lcom/android/htcdialer/BaseSmartSearchList;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/android/htcdialer/BaseSmartSearchList;->search(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0xcb
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
