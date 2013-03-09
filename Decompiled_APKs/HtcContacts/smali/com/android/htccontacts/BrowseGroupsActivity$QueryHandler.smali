.class public Lcom/android/htccontacts/BrowseGroupsActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "BrowseGroupsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/BrowseGroupsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "QueryHandler"
.end annotation


# instance fields
.field protected final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/BrowseGroupsActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 903
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 904
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Lcom/android/htccontacts/BrowseGroupsActivity;

    .end local p1
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 905
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 909
    iget-object v2, p0, Lcom/android/htccontacts/BrowseGroupsActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/BrowseGroupsActivity;

    .line 910
    .local v0, activity:Lcom/android/htccontacts/BrowseGroupsActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/htccontacts/BrowseGroupsActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 924
    :cond_0
    :goto_0
    return-void

    .line 914
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x3ed

    if-ne v2, v3, :cond_2

    .line 915
    #calls: Lcom/android/htccontacts/BrowseGroupsActivity;->fillupCountHashMap()V
    invoke-static {v0}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$600(Lcom/android/htccontacts/BrowseGroupsActivity;)V

    .line 916
    iget-object v2, v0, Lcom/android/htccontacts/BrowseGroupsActivity;->mGroupListHandler:Landroid/os/Handler;

    const/16 v3, 0x7ee

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 917
    .local v1, freshMsg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 918
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lcom/android/htccontacts/BrowseGroupsActivity;->startIndicator(J)V

    .line 919
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/htccontacts/BrowseGroupsActivity;->mIsDirty:Z

    goto :goto_0

    .line 922
    .end local v1           #freshMsg:Landroid/os/Message;
    :cond_2
    invoke-super {p0, p1}, Landroid/content/AsyncQueryHandler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 6
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 930
    iget-object v3, p0, Lcom/android/htccontacts/BrowseGroupsActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/BrowseGroupsActivity;

    .line 931
    .local v0, activity:Lcom/android/htccontacts/BrowseGroupsActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/htccontacts/BrowseGroupsActivity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 945
    :cond_0
    :goto_0
    return-void

    .line 934
    :cond_1
    const/16 v3, 0x3f2

    if-ne p1, v3, :cond_3

    move-object v1, p2

    .line 935
    check-cast v1, Ljava/lang/String;

    .line 937
    .local v1, clearGroupName:Ljava/lang/String;
    :try_start_0
    iget-object v3, v0, Lcom/android/htccontacts/BrowseGroupsActivity;->mCursorAdapter:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->putMemberCountMap(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 941
    :cond_2
    :goto_1
    #calls: Lcom/android/htccontacts/BrowseGroupsActivity;->dismissProgressDialog()V
    invoke-static {v0}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$700(Lcom/android/htccontacts/BrowseGroupsActivity;)V

    .line 943
    .end local v1           #clearGroupName:Ljava/lang/String;
    :cond_3
    iget-object v3, v0, Lcom/android/htccontacts/BrowseGroupsActivity;->mGroupListHandler:Landroid/os/Handler;

    const/16 v4, 0x7da

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 938
    .restart local v1       #clearGroupName:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 939
    .local v2, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "BrowseGroupsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Concurrent Access MemberCount:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 6
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/16 v5, 0x3ea

    const/4 v4, 0x0

    .line 968
    iget-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/BrowseGroupsActivity;

    .line 969
    .local v0, activity:Lcom/android/htccontacts/BrowseGroupsActivity;
    invoke-static {}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "BrowseGroupsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onQueryComplete:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    :cond_0
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/htccontacts/BrowseGroupsActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz p3, :cond_6

    .line 975
    if-ne p1, v5, :cond_1

    .line 976
    iget-object v1, v0, Lcom/android/htccontacts/BrowseGroupsActivity;->mValidCacheList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 977
    #calls: Lcom/android/htccontacts/BrowseGroupsActivity;->fillupCountHashMap(Landroid/database/Cursor;)V
    invoke-static {v0, p3}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$800(Lcom/android/htccontacts/BrowseGroupsActivity;Landroid/database/Cursor;)V

    .line 978
    iput-boolean v4, v0, Lcom/android/htccontacts/BrowseGroupsActivity;->mIsDirty:Z

    .line 979
    #setter for: Lcom/android/htccontacts/BrowseGroupsActivity;->mIsDuringUpdateGroupNameList:Z
    invoke-static {v0, v4}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$902(Lcom/android/htccontacts/BrowseGroupsActivity;Z)Z

    .line 983
    :cond_1
    #setter for: Lcom/android/htccontacts/BrowseGroupsActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0, p3}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$1002(Lcom/android/htccontacts/BrowseGroupsActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 984
    invoke-virtual {v0}, Lcom/android/htccontacts/BrowseGroupsActivity;->setAdapter()V

    .line 987
    if-ne p1, v5, :cond_3

    .line 989
    invoke-virtual {v0}, Lcom/android/htccontacts/BrowseGroupsActivity;->pauseIndicator()V

    .line 990
    iput-boolean v4, v0, Lcom/android/htccontacts/BrowseGroupsActivity;->mIsDirty:Z

    .line 993
    #getter for: Lcom/android/htccontacts/BrowseGroupsActivity;->isFirstQueryAll:Z
    invoke-static {v0}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$1100(Lcom/android/htccontacts/BrowseGroupsActivity;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 995
    sget-object v1, Lcom/android/htccontacts/BrowseGroupsActivity;->mFirstQueryIdler:Lcom/android/htccontacts/BrowseGroupsActivity$FirstQueryAllIdleHandler;

    if-eqz v1, :cond_2

    .line 997
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v1

    sget-object v2, Lcom/android/htccontacts/BrowseGroupsActivity;->mFirstQueryIdler:Lcom/android/htccontacts/BrowseGroupsActivity$FirstQueryAllIdleHandler;

    invoke-virtual {v1, v2}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1000
    :cond_2
    new-instance v1, Lcom/android/htccontacts/BrowseGroupsActivity$FirstQueryAllIdleHandler;

    invoke-direct {v1, v0}, Lcom/android/htccontacts/BrowseGroupsActivity$FirstQueryAllIdleHandler;-><init>(Lcom/android/htccontacts/BrowseGroupsActivity;)V

    sput-object v1, Lcom/android/htccontacts/BrowseGroupsActivity;->mFirstQueryIdler:Lcom/android/htccontacts/BrowseGroupsActivity$FirstQueryAllIdleHandler;

    .line 1002
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v1

    sget-object v2, Lcom/android/htccontacts/BrowseGroupsActivity;->mFirstQueryIdler:Lcom/android/htccontacts/BrowseGroupsActivity$FirstQueryAllIdleHandler;

    invoke-virtual {v1, v2}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1022
    #setter for: Lcom/android/htccontacts/BrowseGroupsActivity;->isFirstQueryAll:Z
    invoke-static {v0, v4}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$1102(Lcom/android/htccontacts/BrowseGroupsActivity;Z)Z

    .line 1038
    :cond_3
    :goto_0
    const/16 v1, 0x3e8

    if-ne v1, p1, :cond_4

    .line 1039
    iput-boolean v4, v0, Lcom/android/htccontacts/BrowseGroupsActivity;->mIsDirty:Z

    .line 1042
    :cond_4
    #getter for: Lcom/android/htccontacts/BrowseGroupsActivity;->mLoadingProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$1200(Lcom/android/htccontacts/BrowseGroupsActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_5

    #getter for: Lcom/android/htccontacts/BrowseGroupsActivity;->mLoadingProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$1200(Lcom/android/htccontacts/BrowseGroupsActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1044
    #getter for: Lcom/android/htccontacts/BrowseGroupsActivity;->mLoadingProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$1200(Lcom/android/htccontacts/BrowseGroupsActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 1045
    const/4 v1, 0x0

    #setter for: Lcom/android/htccontacts/BrowseGroupsActivity;->mLoadingProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0, v1}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$1202(Lcom/android/htccontacts/BrowseGroupsActivity;Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;

    .line 1048
    :cond_5
    return-void

    .line 1028
    :cond_6
    if-eqz p3, :cond_3

    .line 1029
    if-eqz v0, :cond_7

    .line 1030
    invoke-virtual {v0, p3}, Lcom/android/htccontacts/BrowseGroupsActivity;->closeCursorInBackground(Landroid/database/Cursor;)V

    goto :goto_0

    .line 1033
    :cond_7
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 6
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 949
    const/16 v3, 0x3f2

    if-ne p1, v3, :cond_0

    .line 950
    iget-object v3, p0, Lcom/android/htccontacts/BrowseGroupsActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/BrowseGroupsActivity;

    .line 951
    .local v0, activity:Lcom/android/htccontacts/BrowseGroupsActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/htccontacts/BrowseGroupsActivity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 963
    .end local v0           #activity:Lcom/android/htccontacts/BrowseGroupsActivity;
    :cond_0
    :goto_0
    return-void

    .restart local v0       #activity:Lcom/android/htccontacts/BrowseGroupsActivity;
    :cond_1
    move-object v1, p2

    .line 954
    check-cast v1, Ljava/lang/String;

    .line 956
    .local v1, clearGroupName:Ljava/lang/String;
    :try_start_0
    iget-object v3, v0, Lcom/android/htccontacts/BrowseGroupsActivity;->mCursorAdapter:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->putMemberCountMap(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 960
    :cond_2
    :goto_1
    #calls: Lcom/android/htccontacts/BrowseGroupsActivity;->dismissProgressDialog()V
    invoke-static {v0}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$700(Lcom/android/htccontacts/BrowseGroupsActivity;)V

    .line 961
    iget-object v3, v0, Lcom/android/htccontacts/BrowseGroupsActivity;->mGroupListHandler:Landroid/os/Handler;

    const/16 v4, 0x7da

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 957
    :catch_0
    move-exception v2

    .line 958
    .local v2, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "BrowseGroupsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Concurrent Access MemberCount:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
