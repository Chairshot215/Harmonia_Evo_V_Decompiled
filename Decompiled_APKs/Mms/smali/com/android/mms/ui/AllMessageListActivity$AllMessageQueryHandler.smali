.class public Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;
.super Lcom/android/mms/util/MmsAsyncWorkHandler;
.source "AllMessageListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/AllMessageListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AllMessageQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/AllMessageListActivity;


# direct methods
.method protected constructor <init>(Lcom/android/mms/ui/AllMessageListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 913
    iput-object p1, p0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    invoke-direct {p0}, Lcom/android/mms/util/MmsAsyncWorkHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage_Debug(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 916
    iget-object v9, p0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    invoke-virtual {v9}, Lcom/android/mms/ui/AllMessageListActivity;->isFinishing()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1136
    :cond_0
    :goto_0
    return-void

    .line 919
    :cond_1
    if-eqz p1, :cond_0

    .line 922
    iget v8, p1, Landroid/os/Message;->what:I

    .line 923
    .local v8, token:I
    const/4 v1, 0x0

    .line 924
    .local v1, args:Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;
    sparse-switch v8, :sswitch_data_0

    goto :goto_0

    .line 926
    :sswitch_0
    invoke-static {}, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->closeHighPriorityCursorInArray()V

    .line 927
    iget-object v9, p0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    invoke-virtual {v9}, Lcom/android/mms/ui/AllMessageListActivity;->isFinishing()Z

    move-result v9

    if-nez v9, :cond_0

    .line 930
    iget-object v9, p0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    #getter for: Lcom/android/mms/ui/AllMessageListActivity;->ThreadListHandler:Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;
    invoke-static {v9}, Lcom/android/mms/ui/AllMessageListActivity;->access$200(Lcom/android/mms/ui/AllMessageListActivity;)Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;

    move-result-object v9

    const/16 v10, 0x2715

    invoke-virtual {v9, v10}, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->removeMessages(I)V

    .line 931
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1           #args:Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;
    check-cast v1, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;

    .line 932
    .restart local v1       #args:Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;
    const/4 v2, 0x0

    .line 933
    .local v2, c:Landroid/database/Cursor;
    iget-object v9, p0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    iget-object v9, v9, Lcom/android/mms/ui/AllMessageListActivity;->mListAdapter:Lcom/android/mms/ui/AllMessageListAdapter;

    iput-boolean v13, v9, Lcom/android/mms/ui/ConversationListBaseAdapter;->isRequerying:Z

    .line 934
    invoke-static {v1}, Lcom/android/mms/util/MmsAsyncWorkHandler;->queryDebug(Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;)Landroid/database/Cursor;

    move-result-object v2

    .line 935
    if-eqz v2, :cond_0

    .line 937
    iget-object v9, p0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    invoke-virtual {v9}, Lcom/android/mms/ui/AllMessageListActivity;->isFinishing()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 938
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 942
    :cond_2
    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 943
    if-eqz p0, :cond_3

    .line 944
    iget-object v9, p0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    iget-object v10, p0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    iget-object v10, v10, Lcom/android/mms/ui/AllMessageListActivity;->mListAdapter:Lcom/android/mms/ui/AllMessageListAdapter;

    invoke-virtual {v9, v10}, Lcom/android/mms/ui/AllMessageListActivity;->querFdn(Lcom/android/mms/ui/ConversationListBaseAdapter;)V

    .line 948
    :cond_3
    iget-object v9, p0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    invoke-virtual {v9}, Lcom/android/mms/ui/AllMessageListActivity;->isFinishing()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 949
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 961
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportCMASSort()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 966
    iget-object v9, p0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    #calls: Lcom/android/mms/ui/AllMessageListActivity;->queryAndSortCMAS(Landroid/database/Cursor;)Landroid/database/Cursor;
    invoke-static {v9, v2}, Lcom/android/mms/ui/AllMessageListActivity;->access$500(Lcom/android/mms/ui/AllMessageListActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v2

    .line 972
    :cond_5
    if-eqz v2, :cond_0

    .line 974
    iget-object v9, p0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    invoke-virtual {v9}, Lcom/android/mms/ui/AllMessageListActivity;->isFinishing()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 975
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 982
    :cond_6
    const-string v9, "AllMessageListActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "thread count  >"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    move-object v4, v2

    .line 1003
    .local v4, cursor:Landroid/database/Cursor;
    iget-object v9, p0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    #getter for: Lcom/android/mms/ui/AllMessageListActivity;->ThreadListHandler:Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;
    invoke-static {v9}, Lcom/android/mms/ui/AllMessageListActivity;->access$200(Lcom/android/mms/ui/AllMessageListActivity;)Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;

    move-result-object v9

    new-instance v10, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler$1;

    invoke-direct {v10, p0, v4}, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler$1;-><init>(Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;Landroid/database/Cursor;)V

    invoke-virtual {v9, v10}, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->runInUIthread(Ljava/lang/Runnable;)V

    .line 1027
    iget-object v9, p0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    invoke-virtual {v9}, Lcom/android/mms/ui/AllMessageListActivity;->isFinishing()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1031
    iget-object v9, p0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    invoke-virtual {v9}, Lcom/android/mms/ui/AllMessageListActivity;->updateUndeliveryCount()V

    .line 1033
    iget-object v9, p0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    #calls: Lcom/android/mms/ui/AllMessageListActivity;->getDraftCount()V
    invoke-static {v9}, Lcom/android/mms/ui/AllMessageListActivity;->access$600(Lcom/android/mms/ui/AllMessageListActivity;)V

    .line 1036
    iget-object v9, p0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    invoke-virtual {v9}, Lcom/android/mms/ui/AllMessageListActivity;->updateDeleteItemsCount()V

    .line 1046
    iget-object v9, p0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    invoke-virtual {v9}, Lcom/android/mms/ui/AllMessageListActivity;->isFinishing()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1050
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportVVMTab()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1051
    iget-object v9, p0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    invoke-virtual {v9}, Lcom/android/mms/ui/AllMessageListActivity;->getApplication()Landroid/app/Application;

    move-result-object v9

    invoke-static {v9}, Lcom/android/mms/ui/MessageUtils;->getAllMessagesUnreadCount(Landroid/content/Context;)[I

    move-result-object v3

    .line 1053
    .local v3, counts:[I
    iget-object v9, p0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    #getter for: Lcom/android/mms/ui/AllMessageListActivity;->ThreadListHandler:Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;
    invoke-static {v9}, Lcom/android/mms/ui/AllMessageListActivity;->access$200(Lcom/android/mms/ui/AllMessageListActivity;)Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;

    move-result-object v9

    new-instance v10, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler$2;

    invoke-direct {v10, p0, v3}, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler$2;-><init>(Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;[I)V

    invoke-virtual {v9, v10}, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->runInUIthread(Ljava/lang/Runnable;)V

    .line 1064
    .end local v3           #counts:[I
    :cond_7
    iget-object v9, p0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    iget-object v9, v9, Lcom/android/mms/ui/AllMessageListActivity;->mListAdapter:Lcom/android/mms/ui/AllMessageListAdapter;

    iput-boolean v12, v9, Lcom/android/mms/ui/ConversationListBaseAdapter;->isRequerying:Z

    .line 1065
    iget-object v9, p0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    iget-object v9, v9, Lcom/android/mms/ui/AllMessageListActivity;->mListAdapter:Lcom/android/mms/ui/AllMessageListAdapter;

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    iget-object v9, v9, Lcom/android/mms/ui/AllMessageListActivity;->mListAdapter:Lcom/android/mms/ui/AllMessageListAdapter;

    iget-boolean v9, v9, Lcom/android/mms/ui/ConversationListBaseAdapter;->isRequeryNeeded:Z

    if-eqz v9, :cond_9

    .line 1066
    iget-object v9, p0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    iget-object v9, v9, Lcom/android/mms/ui/AllMessageListActivity;->mListAdapter:Lcom/android/mms/ui/AllMessageListAdapter;

    invoke-virtual {v9}, Lcom/android/mms/ui/AllMessageListAdapter;->onContentChanged()V

    .line 1074
    :cond_8
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSimSmsAutoSync()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1075
    invoke-static {}, Lcom/android/mms/util/SimIoUtil;->hasDoneSimSmsAutoSync()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->isFirstExecute()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1076
    invoke-static {}, Lcom/android/mms/util/SimIoUtil;->syncSmsOnBG()V

    goto/16 :goto_0

    .line 1068
    :cond_9
    iget-object v9, p0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    iget-object v9, v9, Lcom/android/mms/ui/AllMessageListActivity;->mListAdapter:Lcom/android/mms/ui/AllMessageListAdapter;

    if-eqz v9, :cond_8

    .line 1069
    iget-object v9, p0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    iget-object v9, v9, Lcom/android/mms/ui/AllMessageListActivity;->mListAdapter:Lcom/android/mms/ui/AllMessageListAdapter;

    iput-boolean v12, v9, Lcom/android/mms/ui/ConversationListBaseAdapter;->isRequerying:Z

    goto :goto_1

    .line 1084
    .end local v2           #c:Landroid/database/Cursor;
    .end local v4           #cursor:Landroid/database/Cursor;
    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1           #args:Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;
    check-cast v1, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;

    .line 1087
    .restart local v1       #args:Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSimSms()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1088
    const/4 v0, 0x0

    .line 1090
    .local v0, SimDelUri:Landroid/net/Uri;
    :try_start_0
    iget-object v9, v1, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1092
    .local v6, threadId:J
    const-wide/16 v9, -0x1

    cmp-long v9, v6, v9

    if-eqz v9, :cond_c

    .line 1093
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1094
    sget-object v9, Landroid/provider/Telephony$Threads;->CONTENT_V2_URI:Landroid/net/Uri;

    invoke-static {v9, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1104
    .end local v6           #threadId:J
    :goto_2
    if-eqz v0, :cond_a

    .line 1105
    iget-object v9, p0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    invoke-virtual {v9}, Lcom/android/mms/ui/AllMessageListActivity;->getApplication()Landroid/app/Application;

    move-result-object v9

    invoke-static {v9, v0}, Lcom/android/mms/util/SimIoUtil;->deleteSimSms(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1107
    .end local v0           #SimDelUri:Landroid/net/Uri;
    :cond_a
    iget-object v9, p0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    invoke-virtual {v9}, Lcom/android/mms/ui/AllMessageListActivity;->getApplication()Landroid/app/Application;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, v1, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v11, v1, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->selection:Ljava/lang/String;

    iget-object v12, v1, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1108
    iget-object v9, p0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    invoke-virtual {v9}, Lcom/android/mms/ui/AllMessageListActivity;->updateStatusNotification()V

    .line 1109
    iget-object v9, p0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    invoke-virtual {v9}, Lcom/android/mms/ui/AllMessageListActivity;->startQueryConversation()V

    .line 1111
    iget-object v9, p0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    iget-object v9, v9, Lcom/android/mms/ui/AllMessageListActivity;->mListAdapter:Lcom/android/mms/ui/AllMessageListAdapter;

    if-eqz v9, :cond_0

    .line 1114
    iget-object v9, p0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    iget-object v9, v9, Lcom/android/mms/ui/AllMessageListActivity;->mListAdapter:Lcom/android/mms/ui/AllMessageListAdapter;

    iput-boolean v13, v9, Lcom/android/mms/ui/ConversationListBaseAdapter;->mAutoQuery:Z

    .line 1115
    iget-object v9, p0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    iget-object v9, v9, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    if-eqz v9, :cond_0

    .line 1116
    iget-object v9, p0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    iget-object v9, v9, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    const/4 v10, 0x7

    invoke-virtual {v9, v10}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1096
    .restart local v0       #SimDelUri:Landroid/net/Uri;
    .restart local v6       #threadId:J
    :cond_b
    :try_start_1
    sget-object v9, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_2

    .line 1098
    :cond_c
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1100
    .end local v6           #threadId:J
    :catch_0
    move-exception v5

    .line 1101
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1120
    .end local v0           #SimDelUri:Landroid/net/Uri;
    .end local v5           #e:Ljava/lang/Exception;
    :sswitch_2
    iget-object v9, p0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    #getter for: Lcom/android/mms/ui/AllMessageListActivity;->ThreadListHandler:Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;
    invoke-static {v9}, Lcom/android/mms/ui/AllMessageListActivity;->access$200(Lcom/android/mms/ui/AllMessageListActivity;)Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;

    move-result-object v9

    const/16 v10, 0x4e2b

    invoke-virtual {v9, v10}, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->removeMessages(I)V

    .line 1121
    iget-object v9, p0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    invoke-virtual {v9}, Lcom/android/mms/ui/AllMessageListActivity;->isFinishing()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1124
    iget-object v9, p0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    invoke-virtual {v9}, Lcom/android/mms/ui/AllMessageListActivity;->updateUndeliveryCount()V

    goto/16 :goto_0

    .line 1128
    :sswitch_3
    iget-object v9, p0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    #getter for: Lcom/android/mms/ui/AllMessageListActivity;->ThreadListHandler:Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;
    invoke-static {v9}, Lcom/android/mms/ui/AllMessageListActivity;->access$200(Lcom/android/mms/ui/AllMessageListActivity;)Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;

    move-result-object v9

    const/16 v10, 0x2716

    invoke-virtual {v9, v10}, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->removeMessages(I)V

    .line 1129
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportCMAS()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1131
    iget-object v9, p0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    iget-object v10, p0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    iget-object v10, v10, Lcom/android/mms/ui/AllMessageListActivity;->mListAdapter:Lcom/android/mms/ui/AllMessageListAdapter;

    invoke-virtual {v10}, Lcom/android/mms/ui/AllMessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v10

    #calls: Lcom/android/mms/ui/AllMessageListActivity;->queryAndSortCMAS(Landroid/database/Cursor;)Landroid/database/Cursor;
    invoke-static {v9, v10}, Lcom/android/mms/ui/AllMessageListActivity;->access$500(Lcom/android/mms/ui/AllMessageListActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    goto/16 :goto_0

    .line 924
    nop

    :sswitch_data_0
    .sparse-switch
        0x2715 -> :sswitch_0
        0x2716 -> :sswitch_3
        0x4e34 -> :sswitch_1
        0x4e35 -> :sswitch_2
    .end sparse-switch
.end method
