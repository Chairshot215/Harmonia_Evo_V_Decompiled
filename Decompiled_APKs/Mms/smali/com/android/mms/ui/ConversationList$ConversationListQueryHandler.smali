.class public Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;
.super Lcom/android/mms/util/MmsAsyncWorkHandler;
.source "ConversationList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ConversationListQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationList;


# direct methods
.method protected constructor <init>(Lcom/android/mms/ui/ConversationList;)V
    .locals 0
    .parameter

    .prologue
    .line 1820
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-direct {p0}, Lcom/android/mms/util/MmsAsyncWorkHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage_Debug(Landroid/os/Message;)V
    .locals 20
    .parameter "msg"

    .prologue
    .line 1823
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationList;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2227
    :cond_0
    :goto_0
    return-void

    .line 1826
    :cond_1
    if-eqz p1, :cond_0

    .line 1829
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    .line 1830
    .local v17, token:I
    const/4 v7, 0x0

    .line 1831
    .local v7, args:Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;
    sparse-switch v17, :sswitch_data_0

    goto :goto_0

    .line 1839
    :sswitch_0
    invoke-static {}, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->closeHighPriorityCursorInArray()V

    .line 1840
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationList;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1844
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->ThreadListHandler:Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->access$400(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;

    move-result-object v1

    const/16 v4, 0x2713

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->removeMessages(I)V

    .line 1845
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v7           #args:Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;
    check-cast v7, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;

    .line 1846
    .restart local v7       #args:Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;
    const/4 v2, 0x0

    .line 1847
    .local v2, c:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->access$100(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/mms/ui/ConversationListBaseAdapter;->isRequerying:Z

    .line 1849
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportLoadAnimation()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1850
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v7, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationList;->access$100(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v4

    iget v4, v4, Lcom/android/mms/ui/ConversationListBaseAdapter;->mCurrent_limit:I

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->getQueryLimit(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    .line 1851
    :cond_2
    const-string v1, "Jerry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query limit >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v7, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    invoke-static {v7}, Lcom/android/mms/util/MmsAsyncWorkHandler;->queryDebug(Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;)Landroid/database/Cursor;

    move-result-object v2

    .line 1854
    if-eqz v2, :cond_0

    .line 1857
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationList;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1858
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1834
    .end local v2           #c:Landroid/database/Cursor;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->ThreadListHandler:Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->access$400(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;

    move-result-object v1

    const/16 v4, 0x2713

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->removeMessages(I)V

    .line 1835
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationList;->handleCmasHeaderViewQuery()V

    goto/16 :goto_0

    .line 1862
    .restart local v2       #c:Landroid/database/Cursor;
    :cond_3
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v4, 0x2

    if-ne v1, v4, :cond_4

    .line 1863
    if-eqz p0, :cond_4

    .line 1864
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationList;->access$100(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/ConversationList;->querFdn(Lcom/android/mms/ui/ConversationListBaseAdapter;)V

    .line 1868
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationList;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1869
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1873
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportDraftsEnhancement()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1876
    const/4 v3, 0x3

    .line 1877
    .local v3, ColumnNumber:I
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSortConversation()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1878
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    iget v1, v1, Lcom/android/mms/ui/ConversationListBaseActivity;->iSortBy:I

    const/4 v4, 0x2

    if-eq v1, v4, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    iget v1, v1, Lcom/android/mms/ui/ConversationListBaseActivity;->iSortBy:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_7

    .line 1879
    :cond_6
    const/16 v3, 0xf

    .line 1881
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationList;->getApplication()Landroid/app/Application;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v5}, Lcom/android/mms/ui/ConversationList;->access$100(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    iget v6, v6, Lcom/android/mms/ui/ConversationListBaseActivity;->iSortBy:I

    invoke-static/range {v1 .. v6}, Lcom/android/mms/ui/ConversationListBaseAdapter;->sortCursor(Landroid/content/Context;Landroid/database/Cursor;ILcom/android/mms/ui/ConversationListBaseActivity;Lcom/android/mms/ui/ConversationListBaseAdapter;I)Landroid/database/Cursor;

    move-result-object v2

    .line 1883
    if-eqz v2, :cond_0

    .line 1889
    .end local v3           #ColumnNumber:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationList;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1890
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1896
    :cond_9
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 1897
    .local v11, count:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    const/4 v4, 0x0

    #setter for: Lcom/android/mms/ui/ConversationList;->mUnreadCount:I
    invoke-static {v1, v4}, Lcom/android/mms/ui/ConversationList;->access$702(Lcom/android/mms/ui/ConversationList;I)I

    .line 1898
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mUnreadThreads:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->access$900(Lcom/android/mms/ui/ConversationList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1899
    const-string v1, "ConversationList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thread count  >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportUnreadCountCountTitle()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1901
    const/4 v15, 0x0

    .local v15, i:I
    :goto_1
    if-ge v15, v11, :cond_c

    .line 1902
    const/16 v18, 0x0

    .line 1903
    .local v18, unreadCount:I
    invoke-interface {v2, v15}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1911
    const/16 v1, 0x8

    :try_start_0
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    .line 1915
    :goto_2
    const/4 v1, 0x4

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-gtz v1, :cond_a

    .line 1916
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    move/from16 v0, v18

    invoke-static {v1, v0}, Lcom/android/mms/ui/ConversationList;->access$712(Lcom/android/mms/ui/ConversationList;I)I

    .line 1920
    :cond_a
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMarkAllAsRead()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1921
    if-lez v18, :cond_b

    .line 1923
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mUnreadThreads:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->access$900(Lcom/android/mms/ui/ConversationList;)Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationList;->access$100(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1901
    :cond_b
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 1912
    :catch_0
    move-exception v14

    .line 1913
    .local v14, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v14}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2

    .line 1947
    .end local v14           #e:Ljava/lang/NumberFormatException;
    .end local v15           #i:I
    .end local v18           #unreadCount:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationList;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1948
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1952
    :cond_d
    move-object v13, v2

    .line 1953
    .local v13, cursor:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->ThreadListHandler:Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->access$400(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;

    move-result-object v1

    new-instance v4, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v13}, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler$1;-><init>(Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;Landroid/database/Cursor;)V

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->runInUIthread(Ljava/lang/Runnable;)V

    .line 1991
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationList;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1996
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationList;->updateUndeliveryCount()V

    .line 1998
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationList;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2002
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportVVMTab()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2003
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationList;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->getAllMessagesUnreadCount(Landroid/content/Context;)[I

    move-result-object v12

    .line 2005
    .local v12, counts:[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationList;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->access$100(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    if-eqz v1, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->access$100(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/mms/ui/ConversationListBaseAdapter;->mAutoQuery:Z

    if-eqz v1, :cond_0

    .line 2009
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->ThreadListHandler:Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->access$400(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;

    move-result-object v1

    new-instance v4, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v12}, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler$2;-><init>(Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;[I)V

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->runInUIthread(Ljava/lang/Runnable;)V

    .line 2020
    .end local v12           #counts:[I
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationList;->updateDeleteItemsCount()V

    .line 2022
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->access$100(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/android/mms/ui/ConversationListBaseAdapter;->isRequerying:Z

    .line 2023
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->access$100(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    if-eqz v1, :cond_11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->access$100(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/mms/ui/ConversationListBaseAdapter;->isRequeryNeeded:Z

    if-eqz v1, :cond_11

    .line 2024
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->access$100(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->onContentChanged()V

    .line 2032
    :cond_10
    :goto_3
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSimSmsAutoSync()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2033
    invoke-static {}, Lcom/android/mms/util/SimIoUtil;->hasDoneSimSmsAutoSync()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->isFirstExecute()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2034
    invoke-static {}, Lcom/android/mms/util/SimIoUtil;->syncSmsOnBG()V

    goto/16 :goto_0

    .line 2026
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->access$100(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 2027
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->access$100(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/android/mms/ui/ConversationListBaseAdapter;->isRequerying:Z

    goto :goto_3

    .line 2043
    .end local v2           #c:Landroid/database/Cursor;
    .end local v11           #count:I
    .end local v13           #cursor:Landroid/database/Cursor;
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v7           #args:Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;
    check-cast v7, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;

    .line 2044
    .restart local v7       #args:Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSimSms()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2045
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationList;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v4, v7, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->uri:Landroid/net/Uri;

    invoke-static {v1, v4}, Lcom/android/mms/util/SimIoUtil;->deleteSimSms(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2047
    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationList;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v4, v7, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v5, v7, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->selection:Ljava/lang/String;

    iget-object v6, v7, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2048
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationList;->updateStatusNotification()V

    .line 2049
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->access$100(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    if-eqz v1, :cond_13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->access$100(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->isNeedRequery()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2050
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationList;->startAsyncQuery()V

    .line 2058
    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->access$100(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2095
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->access$100(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/ConversationListAdapter;->setAutoQueryCursor(Z)V

    .line 2096
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    if-eqz v1, :cond_14

    .line 2097
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->sendEmptyMessage(I)Z

    .line 2099
    :cond_14
    invoke-static {}, Lcom/android/mms/MmsApp;->getIfApplyNewMsgShortcutRule()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportVVMTab()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2100
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationList;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessagingController;->getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v4}, Lcom/android/mms/ui/ConversationList;->getApplication()Landroid/app/Application;

    move-result-object v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v5, v6}, Lcom/android/mms/ui/MessagingController;->updateMsgShortcut(Landroid/content/Context;IZ)V

    goto/16 :goto_0

    .line 2106
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->ThreadListHandler:Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->access$400(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;

    move-result-object v1

    const/16 v4, 0x4e2b

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->removeMessages(I)V

    .line 2107
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationList;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2110
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationList;->updateUndeliveryCount()V

    goto/16 :goto_0

    .line 2113
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    if-eqz v1, :cond_15

    .line 2114
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    const/4 v4, 0x6

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->sendEmptyMessage(I)Z

    .line 2116
    :cond_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->access$100(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/ConversationListAdapter;->setAutoQueryCursor(Z)V

    .line 2117
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v7           #args:Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;
    check-cast v7, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;

    .line 2118
    .restart local v7       #args:Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;
    sget-object v1, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, v7, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v5, v7, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    iget-object v6, v7, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->selection:Ljava/lang/String;

    iget-object v0, v7, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v1, v4, v5, v6, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2120
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->access$100(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    if-eqz v1, :cond_16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->access$100(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->isNeedRequery()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2121
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationList;->startAsyncQuery()V

    .line 2124
    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    if-eqz v1, :cond_17

    .line 2125
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->sendEmptyMessage(I)Z

    .line 2126
    :cond_17
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->access$100(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/ConversationListAdapter;->setAutoQueryCursor(Z)V

    .line 2128
    invoke-static {}, Lcom/android/mms/MmsApp;->getIfApplyNewMsgShortcutRule()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportVVMTab()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2129
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationList;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessagingController;->getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v4}, Lcom/android/mms/ui/ConversationList;->getApplication()Landroid/app/Application;

    move-result-object v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v5, v6}, Lcom/android/mms/ui/MessagingController;->updateMsgShortcut(Landroid/content/Context;IZ)V

    goto/16 :goto_0

    .line 2135
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationList;->getApplication()Landroid/app/Application;

    move-result-object v10

    .line 2136
    .local v10, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mUnreadThreads:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->access$900(Lcom/android/mms/ui/ConversationList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 2137
    .restart local v11       #count:I
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_4
    if-ge v15, v11, :cond_18

    .line 2138
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationList;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2143
    :cond_18
    invoke-static {}, Lcom/android/mms/MmsApp;->getIfApplyNewMsgShortcutRule()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportVVMTab()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2144
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationList;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessagingController;->getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v4}, Lcom/android/mms/ui/ConversationList;->getApplication()Landroid/app/Application;

    move-result-object v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v5, v6}, Lcom/android/mms/ui/MessagingController;->updateMsgShortcut(Landroid/content/Context;IZ)V

    goto/16 :goto_0

    .line 2140
    :cond_19
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mUnreadThreads:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->access$900(Lcom/android/mms/ui/ConversationList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v10, v4, v5}, Lcom/android/mms/ui/MessageUtils;->markAsRead(Landroid/content/Context;J)V

    .line 2137
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 2151
    .end local v10           #context:Landroid/content/Context;
    .end local v11           #count:I
    .end local v15           #i:I
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    if-eqz v1, :cond_1a

    .line 2152
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    const/4 v4, 0x6

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->sendEmptyMessage(I)Z

    .line 2154
    :cond_1a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->access$100(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/ConversationListAdapter;->setAutoQueryCursor(Z)V

    .line 2155
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v7           #args:Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;
    check-cast v7, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;

    .line 2157
    .restart local v7       #args:Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 2158
    iget-object v1, v7, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v16

    .line 2159
    .local v16, sContactId:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1c

    .line 2160
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    if-eqz v1, :cond_1b

    .line 2161
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->sendEmptyMessage(I)Z

    .line 2162
    :cond_1b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->access$100(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/ConversationListAdapter;->setAutoQueryCursor(Z)V

    goto/16 :goto_0

    .line 2169
    :cond_1c
    iget-object v8, v7, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->uri:Landroid/net/Uri;

    .line 2170
    .local v8, baseUri:Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    .line 2171
    .local v9, builder:Landroid/net/Uri$Builder;
    const-string v1, "filter_index_on_sim"

    const-string v4, "1"

    invoke-virtual {v9, v1, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2172
    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    .line 2173
    sget-object v1, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, v7, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v8, v4, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2217
    .end local v8           #baseUri:Landroid/net/Uri;
    .end local v9           #builder:Landroid/net/Uri$Builder;
    .end local v16           #sContactId:Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->access$100(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    if-eqz v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->access$100(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->isNeedRequery()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 2218
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationList;->startAsyncQuery()V

    .line 2221
    :cond_1e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    if-eqz v1, :cond_1f

    .line 2222
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->sendEmptyMessage(I)Z

    .line 2223
    :cond_1f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->access$100(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/ConversationListAdapter;->setAutoQueryCursor(Z)V

    goto/16 :goto_0

    .line 1831
    :sswitch_data_0
    .sparse-switch
        0x2713 -> :sswitch_0
        0x2716 -> :sswitch_1
        0x4e2a -> :sswitch_2
        0x4e2b -> :sswitch_3
        0x4e2c -> :sswitch_4
        0x4e2d -> :sswitch_2
        0x4e2e -> :sswitch_5
        0x4e2f -> :sswitch_6
    .end sparse-switch
.end method
