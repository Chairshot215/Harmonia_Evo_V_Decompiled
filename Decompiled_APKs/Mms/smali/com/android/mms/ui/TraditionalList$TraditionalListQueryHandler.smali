.class final Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;
.super Lcom/android/mms/util/MmsAsyncQueryHandler;
.source "TraditionalList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/TraditionalList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TraditionalListQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/TraditionalList;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/TraditionalList;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 1829
    iput-object p1, p0, Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;->this$0:Lcom/android/mms/ui/TraditionalList;

    .line 1830
    invoke-direct {p0, p2}, Lcom/android/mms/util/MmsAsyncQueryHandler;-><init>(Landroid/content/Context;)V

    .line 1831
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 1836
    iget v2, p1, Landroid/os/Message;->what:I

    .line 1838
    .local v2, token:I
    packed-switch v2, :pswitch_data_0

    .line 1856
    invoke-super {p0, p1}, Lcom/android/mms/util/MmsAsyncQueryHandler;->handleMessage(Landroid/os/Message;)V

    .line 1857
    :cond_0
    :goto_0
    return-void

    .line 1841
    :pswitch_0
    const-string v3, "TraditionalList"

    const-string v4, "MSG_DI_DELETED_ALL_ITEM"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    iget-object v3, p0, Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;->this$0:Lcom/android/mms/ui/TraditionalList;

    iget-object v3, v3, Lcom/android/mms/ui/TraditionalList;->m_ListAdapter:Lcom/android/mms/ui/TraditionalListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/TraditionalListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 1843
    .local v1, cursor:Landroid/database/Cursor;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1844
    .local v0, blocked:Z
    iget-object v3, p0, Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;->this$0:Lcom/android/mms/ui/TraditionalList;

    invoke-virtual {v3, v1, v0}, Lcom/android/mms/ui/TraditionalList;->DeleteAllMessageByCursor(Landroid/database/Cursor;Z)V

    .line 1845
    iget-object v3, p0, Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;->this$0:Lcom/android/mms/ui/TraditionalList;

    #calls: Lcom/android/mms/ui/TraditionalList;->countUnRead()V
    invoke-static {v3}, Lcom/android/mms/ui/TraditionalList;->access$1100(Lcom/android/mms/ui/TraditionalList;)V

    .line 1846
    iget-object v3, p0, Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;->this$0:Lcom/android/mms/ui/TraditionalList;

    iget-object v3, v3, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    if-eqz v3, :cond_0

    .line 1848
    iget-object v3, p0, Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;->this$0:Lcom/android/mms/ui/TraditionalList;

    iget-object v3, v3, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->sendEmptyMessage(I)Z

    .line 1849
    iget-object v3, p0, Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;->this$0:Lcom/android/mms/ui/TraditionalList;

    iget-object v3, v3, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->sendEmptyMessage(I)Z

    .line 1850
    iget-object v3, p0, Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;->this$0:Lcom/android/mms/ui/TraditionalList;

    iget-object v3, v3, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1838
    :pswitch_data_0
    .packed-switch 0x4e93
        :pswitch_0
    .end packed-switch
.end method

.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 1949
    packed-switch p1, :pswitch_data_0

    .line 1967
    :cond_0
    :goto_0
    return-void

    .line 1952
    :pswitch_0
    const-string v0, "TraditionalList"

    const-string v1, "[onDeleteComplete] QUERY_DELETE_TOKEN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;->this$0:Lcom/android/mms/ui/TraditionalList;

    invoke-virtual {v0}, Lcom/android/mms/ui/TraditionalList;->updateStatusNotification()V

    .line 1954
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;->this$0:Lcom/android/mms/ui/TraditionalList;

    #calls: Lcom/android/mms/ui/TraditionalList;->countUnRead()V
    invoke-static {v0}, Lcom/android/mms/ui/TraditionalList;->access$1100(Lcom/android/mms/ui/TraditionalList;)V

    .line 1955
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;->this$0:Lcom/android/mms/ui/TraditionalList;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    if-eqz v0, :cond_0

    .line 1957
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;->this$0:Lcom/android/mms/ui/TraditionalList;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->sendEmptyMessage(I)Z

    .line 1958
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;->this$0:Lcom/android/mms/ui/TraditionalList;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->sendEmptyMessage(I)Z

    .line 1959
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;->this$0:Lcom/android/mms/ui/TraditionalList;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1949
    nop

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_0
    .end packed-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 6
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1884
    iget-object v1, p0, Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;->this$0:Lcom/android/mms/ui/TraditionalList;

    iget-object v1, v1, Lcom/android/mms/ui/TraditionalList;->m_ListAdapter:Lcom/android/mms/ui/TraditionalListAdapter;

    sput-boolean v4, Lcom/android/mms/ui/TraditionalListAdapter;->isQuerying:Z

    .line 1885
    iget-object v1, p0, Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;->this$0:Lcom/android/mms/ui/TraditionalList;

    invoke-virtual {v1}, Lcom/android/mms/ui/TraditionalList;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1887
    invoke-static {p3}, Lcom/android/mms/util/MmsAsyncWorkHandler;->CloseCursorInBG(Landroid/database/Cursor;)V

    .line 1944
    :cond_0
    :goto_0
    return-void

    .line 1891
    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1894
    :pswitch_1
    if-eqz p3, :cond_0

    .line 1896
    const-string v1, "TraditionalList"

    const-string v2, "[onQueryComplete] QUERY_TOKEN"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    iget-object v1, p0, Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;->this$0:Lcom/android/mms/ui/TraditionalList;

    iget-object v1, v1, Lcom/android/mms/ui/TraditionalList;->m_ListAdapter:Lcom/android/mms/ui/TraditionalListAdapter;

    invoke-virtual {v1, p3}, Lcom/android/mms/ui/TraditionalListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1899
    invoke-static {}, Lcom/android/mms/util/MmsAsyncWorkHandler;->getBGhandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler$1;-><init>(Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1905
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportLoadAnimation()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1907
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1908
    .local v0, nCount:I
    const-string v1, "TraditionalList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onQueryComplete] QUERY_TOKEN nCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", m_nCurrentQueryCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;->this$0:Lcom/android/mms/ui/TraditionalList;

    #getter for: Lcom/android/mms/ui/TraditionalList;->m_nCurrentQueryCount:I
    invoke-static {v3}, Lcom/android/mms/ui/TraditionalList;->access$200(Lcom/android/mms/ui/TraditionalList;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    iget-object v1, p0, Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;->this$0:Lcom/android/mms/ui/TraditionalList;

    #getter for: Lcom/android/mms/ui/TraditionalList;->m_nCurrentQueryCount:I
    invoke-static {v1}, Lcom/android/mms/ui/TraditionalList;->access$200(Lcom/android/mms/ui/TraditionalList;)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 1911
    iget-object v1, p0, Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;->this$0:Lcom/android/mms/ui/TraditionalList;

    invoke-virtual {v1}, Lcom/android/mms/ui/TraditionalList;->startQueryCount()V

    .line 1918
    .end local v0           #nCount:I
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;->this$0:Lcom/android/mms/ui/TraditionalList;

    #calls: Lcom/android/mms/ui/TraditionalList;->countUnRead()V
    invoke-static {v1}, Lcom/android/mms/ui/TraditionalList;->access$1100(Lcom/android/mms/ui/TraditionalList;)V

    .line 1919
    iget-object v1, p0, Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;->this$0:Lcom/android/mms/ui/TraditionalList;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    if-eqz v1, :cond_0

    .line 1921
    iget-object v1, p0, Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;->this$0:Lcom/android/mms/ui/TraditionalList;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->sendEmptyMessage(I)Z

    .line 1922
    iget-object v1, p0, Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;->this$0:Lcom/android/mms/ui/TraditionalList;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    invoke-virtual {v1, v5}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1915
    .restart local v0       #nCount:I
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;->this$0:Lcom/android/mms/ui/TraditionalList;

    #calls: Lcom/android/mms/ui/TraditionalList;->setListFootView(Z)V
    invoke-static {v1, v4}, Lcom/android/mms/ui/TraditionalList;->access$1200(Lcom/android/mms/ui/TraditionalList;Z)V

    goto :goto_1

    .line 1927
    .end local v0           #nCount:I
    :pswitch_2
    const-string v1, "TraditionalList"

    const-string v2, "[onQueryComplete] QUERY_COUNT_TOKEN"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    if-eqz p3, :cond_0

    .line 1930
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1931
    .restart local v0       #nCount:I
    iget-object v1, p0, Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;->this$0:Lcom/android/mms/ui/TraditionalList;

    #getter for: Lcom/android/mms/ui/TraditionalList;->m_nCurrentQueryCount:I
    invoke-static {v1}, Lcom/android/mms/ui/TraditionalList;->access$200(Lcom/android/mms/ui/TraditionalList;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_4

    .line 1933
    iget-object v1, p0, Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;->this$0:Lcom/android/mms/ui/TraditionalList;

    #calls: Lcom/android/mms/ui/TraditionalList;->setListFootView(Z)V
    invoke-static {v1, v5}, Lcom/android/mms/ui/TraditionalList;->access$1200(Lcom/android/mms/ui/TraditionalList;Z)V

    goto/16 :goto_0

    .line 1937
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;->this$0:Lcom/android/mms/ui/TraditionalList;

    #calls: Lcom/android/mms/ui/TraditionalList;->setListFootView(Z)V
    invoke-static {v1, v4}, Lcom/android/mms/ui/TraditionalList;->access$1200(Lcom/android/mms/ui/TraditionalList;Z)V

    goto/16 :goto_0

    .line 1891
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 1862
    packed-switch p1, :pswitch_data_0

    .line 1879
    :goto_0
    return-void

    .line 1865
    :pswitch_0
    const-string v0, "TraditionalList"

    const-string v1, "[onUpdateComplete]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;->this$0:Lcom/android/mms/ui/TraditionalList;

    #calls: Lcom/android/mms/ui/TraditionalList;->countUnRead()V
    invoke-static {v0}, Lcom/android/mms/ui/TraditionalList;->access$1100(Lcom/android/mms/ui/TraditionalList;)V

    .line 1867
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;->this$0:Lcom/android/mms/ui/TraditionalList;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    if-eqz v0, :cond_0

    .line 1869
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;->this$0:Lcom/android/mms/ui/TraditionalList;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->sendEmptyMessage(I)Z

    .line 1870
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;->this$0:Lcom/android/mms/ui/TraditionalList;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->sendEmptyMessage(I)Z

    .line 1874
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalList$TraditionalListQueryHandler;->this$0:Lcom/android/mms/ui/TraditionalList;

    invoke-virtual {v0}, Lcom/android/mms/ui/TraditionalList;->updateStatusNotification()V

    goto :goto_0

    .line 1862
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method
