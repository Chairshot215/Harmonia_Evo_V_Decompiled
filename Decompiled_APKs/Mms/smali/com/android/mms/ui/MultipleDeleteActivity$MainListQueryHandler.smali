.class final Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MultipleDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MultipleDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainListQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MultipleDeleteActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MultipleDeleteActivity;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 1816
    iput-object p1, p0, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    .line 1817
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1818
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1930
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x899

    if-ne v0, v1, :cond_0

    .line 1931
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/ConversationListBaseActivity;->sStartDeleting:Z

    .line 1932
    :cond_0
    invoke-super {p0, p1}, Landroid/content/AsyncQueryHandler;->handleMessage(Landroid/os/Message;)V

    .line 1933
    return-void
.end method

.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 8
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 1864
    packed-switch p1, :pswitch_data_0

    .line 1901
    .end local p2
    :goto_0
    return-void

    .line 1867
    .restart local p2
    :pswitch_0
    const-string v2, "MultipleDeleteActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDeleteComplete: cookie> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    if-eqz p2, :cond_0

    instance-of v2, p2, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteCookie;

    if-eqz v2, :cond_0

    move-object v0, p2

    .line 1869
    check-cast v0, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteCookie;

    .line 1870
    .local v0, cook:Lcom/android/mms/ui/MultipleDeleteActivity$DeleteCookie;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteCookie;->eTime:J

    .line 1871
    const-string v2, "MultipleDeleteActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDeleteComplete: time-consuming> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteCookie;->eTime:J

    iget-wide v6, v0, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteCookie;->sTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    check-cast p2, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteCookie;

    .end local p2
    iget-object v2, p2, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteCookie;->token:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mDeleteComplete:I
    invoke-static {v2}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$1300(Lcom/android/mms/ui/MultipleDeleteActivity;)I

    move-result v2

    if-nez v2, :cond_0

    .line 1874
    iget-object v2, p0, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-static {v2}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$1308(Lcom/android/mms/ui/MultipleDeleteActivity;)I

    goto :goto_0

    .line 1880
    .end local v0           #cook:Lcom/android/mms/ui/MultipleDeleteActivity$DeleteCookie;
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    sput-boolean v2, Lcom/android/mms/ui/ConversationListBaseActivity;->sStartDeleting:Z

    .line 1881
    iget-object v2, p0, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mDeleteProgressDialog:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$1100(Lcom/android/mms/ui/MultipleDeleteActivity;)Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1882
    iget-object v2, p0, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mDeleteProgressDialog:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$1100(Lcom/android/mms/ui/MultipleDeleteActivity;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 1883
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    const/4 v3, 0x0

    #setter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mDeleteProgressDialog:Landroid/app/Dialog;
    invoke-static {v2, v3}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$1102(Lcom/android/mms/ui/MultipleDeleteActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1889
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #calls: Lcom/android/mms/ui/MultipleDeleteActivity;->releaseWakeLock()V
    invoke-static {v2}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$1000(Lcom/android/mms/ui/MultipleDeleteActivity;)V

    .line 1891
    invoke-static {}, Lcom/android/mms/MmsApp;->getIfApplyNewMsgShortcutRule()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1892
    iget-object v2, p0, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/MultipleDeleteActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessagingController;->getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-virtual {v3}, Lcom/android/mms/ui/MultipleDeleteActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/mms/ui/MessagingController;->updateMsgShortcut(Landroid/content/Context;IZ)V

    .line 1896
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/MultipleDeleteActivity;->finish()V

    .line 1898
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/util/DraftCache;->refresh()V

    goto/16 :goto_0

    .line 1885
    :catch_0
    move-exception v1

    .line 1887
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 1864
    nop

    :pswitch_data_0
    .packed-switch 0x709
        :pswitch_0
    .end packed-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 6
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 1822
    invoke-static {}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$900()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1823
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$1200(Lcom/android/mms/ui/MultipleDeleteActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1824
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$1200(Lcom/android/mms/ui/MultipleDeleteActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1827
    :cond_0
    if-eqz p3, :cond_2

    .line 1828
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #setter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0, p3}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$1202(Lcom/android/mms/ui/MultipleDeleteActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1829
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1840
    const-string v0, "MultipleDeleteActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad query token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$1200(Lcom/android/mms/ui/MultipleDeleteActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1846
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #calls: Lcom/android/mms/ui/MultipleDeleteActivity;->initListView()V
    invoke-static {v0}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$2300(Lcom/android/mms/ui/MultipleDeleteActivity;)V

    .line 1847
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #calls: Lcom/android/mms/ui/MultipleDeleteActivity;->initDeleteButton()V
    invoke-static {v0}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$2400(Lcom/android/mms/ui/MultipleDeleteActivity;)V

    .line 1859
    :goto_1
    monitor-exit v1

    .line 1860
    return-void

    .line 1833
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    new-instance v2, Lcom/android/mms/ui/MultipleDeleteListAdapter;

    iget-object v3, p0, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    iget-object v4, p0, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-virtual {v4}, Lcom/android/mms/ui/MultipleDeleteActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mMode:I
    invoke-static {v5}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$400(Lcom/android/mms/ui/MultipleDeleteActivity;)I

    move-result v5

    invoke-direct {v2, v3, p3, v4, v5}, Lcom/android/mms/ui/MultipleDeleteListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/widget/HtcListView;I)V

    #setter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mAdapter:Lcom/android/mms/ui/MultipleDeleteListAdapter;
    invoke-static {v0, v2}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$302(Lcom/android/mms/ui/MultipleDeleteActivity;Lcom/android/mms/ui/MultipleDeleteListAdapter;)Lcom/android/mms/ui/MultipleDeleteListAdapter;

    goto :goto_0

    .line 1859
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1849
    :cond_1
    :try_start_1
    const-string v0, "MultipleDeleteActivity"

    const-string v2, "Cannot load undelivered messages."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/MultipleDeleteActivity;->finish()V

    goto :goto_1

    .line 1853
    .restart local p2
    :cond_2
    const-string v0, "MultipleDeleteActivity"

    const-string v2, "Cannot init the cursor for the thread list."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/MultipleDeleteActivity;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1829
    :pswitch_data_0
    .packed-switch 0x6a5
        :pswitch_0
    .end packed-switch
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 1905
    packed-switch p1, :pswitch_data_0

    .line 1911
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mDeleteProgressDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$1100(Lcom/android/mms/ui/MultipleDeleteActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mDeleteProgressDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$1100(Lcom/android/mms/ui/MultipleDeleteActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1912
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mDeleteProgressDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$1102(Lcom/android/mms/ui/MultipleDeleteActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1913
    sput-boolean v2, Lcom/android/mms/ui/ConversationListBaseActivity;->sStartDeleting:Z

    .line 1914
    sput-boolean v2, Lcom/android/mms/ui/ConversationListBaseActivity;->sStartMoving:Z

    .line 1915
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #calls: Lcom/android/mms/ui/MultipleDeleteActivity;->releaseWakeLock()V
    invoke-static {v0}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$1000(Lcom/android/mms/ui/MultipleDeleteActivity;)V

    .line 1917
    invoke-static {}, Lcom/android/mms/MmsApp;->getIfApplyNewMsgShortcutRule()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1918
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/MultipleDeleteActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/category/Category;->updateNotificationStatus(Landroid/content/Context;)V

    .line 1921
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/MultipleDeleteActivity;->finish()V

    .line 1924
    :pswitch_0
    return-void

    .line 1905
    nop

    :pswitch_data_0
    .packed-switch 0x835
        :pswitch_0
    .end packed-switch
.end method
