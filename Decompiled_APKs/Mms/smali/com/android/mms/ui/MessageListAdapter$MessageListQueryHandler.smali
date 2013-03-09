.class final Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;
.super Lcom/android/mms/util/MmsAsyncWorkHandler;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MessageListQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListAdapter;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/MessageListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 974
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    invoke-direct {p0}, Lcom/android/mms/util/MmsAsyncWorkHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/MessageListAdapter;Lcom/android/mms/ui/MessageListAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 974
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;-><init>(Lcom/android/mms/ui/MessageListAdapter;)V

    return-void
.end method


# virtual methods
.method public handleMessage_Debug(Landroid/os/Message;)V
    .locals 17
    .parameter "msg"

    .prologue
    .line 977
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    #getter for: Lcom/android/mms/ui/MessageListAdapter;->callerCache:Ljava/lang/ref/WeakReference;
    invoke-static {v13}, Lcom/android/mms/ui/MessageListAdapter;->access$200(Lcom/android/mms/ui/MessageListAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 978
    .local v1, act:Landroid/app/Activity;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 979
    :cond_0
    const/16 v13, 0x4e3f

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->removeMessages(I)V

    .line 980
    const/16 v13, 0x4e40

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->removeMessages(I)V

    .line 1216
    :cond_1
    :goto_0
    return-void

    .line 984
    :cond_2
    if-eqz p1, :cond_1

    .line 987
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    .line 988
    .local v12, token:I
    const/4 v2, 0x0

    .line 989
    .local v2, args:Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;
    packed-switch v12, :pswitch_data_0

    goto :goto_0

    .line 995
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v14, 0x1

    #setter for: Lcom/android/mms/ui/MessageListAdapter;->isRequerying:Z
    invoke-static {v13, v14}, Lcom/android/mms/ui/MessageListAdapter;->access$402(Lcom/android/mms/ui/MessageListAdapter;Z)Z

    .line 996
    const/16 v13, 0x4e3f

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->removeMessages(I)V

    .line 997
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v2           #args:Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;
    check-cast v2, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;

    .line 998
    .restart local v2       #args:Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;
    const/4 v3, 0x0

    .line 999
    .local v3, c:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/mms/util/MmsAsyncWorkHandler;->queryDebug(Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;)Landroid/database/Cursor;

    move-result-object v3

    .line 1000
    if-eqz v3, :cond_10

    .line 1001
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1002
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 991
    .end local v3           #c:Landroid/database/Cursor;
    :pswitch_1
    const/16 v13, 0x4e40

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->removeMessages(I)V

    .line 992
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    #calls: Lcom/android/mms/ui/MessageListAdapter;->preloadMMStoCacheStep2(Landroid/app/Activity;)V
    invoke-static {v13, v1}, Lcom/android/mms/ui/MessageListAdapter;->access$300(Lcom/android/mms/ui/MessageListAdapter;Landroid/app/Activity;)V

    goto :goto_0

    .line 1006
    .restart local v3       #c:Landroid/database/Cursor;
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    #getter for: Lcom/android/mms/ui/MessageListAdapter;->mUseDefaultColumnsMap:Z
    invoke-static {v13}, Lcom/android/mms/ui/MessageListAdapter;->access$500(Lcom/android/mms/ui/MessageListAdapter;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 1007
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    new-instance v14, Lcom/android/mms/msg/util/ColumnsMap;

    invoke-direct {v14, v3}, Lcom/android/mms/msg/util/ColumnsMap;-><init>(Landroid/database/Cursor;)V

    iput-object v14, v13, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    .line 1013
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    #getter for: Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v13}, Lcom/android/mms/ui/MessageListAdapter;->access$600(Lcom/android/mms/ui/MessageListAdapter;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    #getter for: Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v13}, Lcom/android/mms/ui/MessageListAdapter;->access$700(Lcom/android/mms/ui/MessageListAdapter;)Landroid/database/Cursor;

    move-result-object v13

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v13

    if-gtz v13, :cond_7

    .line 1014
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v14, 0x1

    #setter for: Lcom/android/mms/ui/MessageListAdapter;->mHasNewMsg:Z
    invoke-static {v13, v14}, Lcom/android/mms/ui/MessageListAdapter;->access$802(Lcom/android/mms/ui/MessageListAdapter;Z)Z

    .line 1020
    :cond_6
    :goto_1
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 1021
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1022
    const/16 v13, 0x4e3f

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 1016
    :cond_7
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    #getter for: Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v14}, Lcom/android/mms/ui/MessageListAdapter;->access$900(Lcom/android/mms/ui/MessageListAdapter;)Landroid/database/Cursor;

    move-result-object v14

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v14

    if-le v13, v14, :cond_6

    .line 1017
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v14, 0x1

    #setter for: Lcom/android/mms/ui/MessageListAdapter;->mHasNewMsg:Z
    invoke-static {v13, v14}, Lcom/android/mms/ui/MessageListAdapter;->access$802(Lcom/android/mms/ui/MessageListAdapter;Z)Z

    goto :goto_1

    .line 1027
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    #calls: Lcom/android/mms/ui/MessageListAdapter;->preloadMMStoCacheStep1(Landroid/database/Cursor;Landroid/app/Activity;)V
    invoke-static {v13, v3, v1}, Lcom/android/mms/ui/MessageListAdapter;->access$1000(Lcom/android/mms/ui/MessageListAdapter;Landroid/database/Cursor;Landroid/app/Activity;)V

    .line 1029
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 1030
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1031
    const/16 v13, 0x4e3f

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 1037
    :cond_9
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportShowNumberInDetailView()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 1039
    :try_start_0
    iget-object v13, v2, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->uri:Landroid/net/Uri;

    invoke-virtual {v13}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    .line 1040
    .local v11, strID:Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 1041
    .local v7, id:J
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v7, v8}, Lcom/android/mms/ui/MessageUtils;->getContactAddressesCount(Landroid/content/Context;J)I

    move-result v13

    sput v13, Lcom/android/mms/ui/ComposeMessageActivity;->sThreadContactNumberCount:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1047
    .end local v7           #id:J
    .end local v11           #strID:Ljava/lang/String;
    :cond_a
    :goto_2
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 1048
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1049
    const/16 v13, 0x4e3f

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 1042
    :catch_0
    move-exception v6

    .line 1043
    .local v6, e:Ljava/lang/NumberFormatException;
    const-string v13, "MessageListAdapter"

    const-string v14, "getThreadUri() Unexpected NumberFormatException."

    invoke-static {v13, v14, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1059
    .end local v6           #e:Ljava/lang/NumberFormatException;
    :cond_b
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportTimestampIndicator()Z

    move-result v13

    if-nez v13, :cond_d

    .line 1060
    if-eqz v3, :cond_d

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v13

    if-lez v13, :cond_d

    .line 1061
    invoke-interface {v3}, Landroid/database/Cursor;->moveToLast()Z

    .line 1063
    :cond_c
    const/4 v13, 0x0

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1064
    .local v10, msg_type:Ljava/lang/String;
    const-string v13, "mms"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 1066
    const/16 v13, 0x14

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    if-nez v13, :cond_12

    .line 1067
    const/16 v13, 0x12

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    if-lez v13, :cond_11

    .line 1068
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v14, 0x0

    #setter for: Lcom/android/mms/ui/MessageListAdapter;->mHasMmsUnread:Z
    invoke-static {v13, v14}, Lcom/android/mms/ui/MessageListAdapter;->access$1102(Lcom/android/mms/ui/MessageListAdapter;Z)Z

    .line 1103
    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1108
    .end local v10           #msg_type:Ljava/lang/String;
    :cond_d
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportLocationOfAddress()Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_f

    .line 1110
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    #getter for: Lcom/android/mms/ui/MessageListAdapter;->mUri:Landroid/net/Uri;
    invoke-static {v13}, Lcom/android/mms/ui/MessageListAdapter;->access$1400(Lcom/android/mms/ui/MessageListAdapter;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 1111
    .restart local v7       #id:J
    const-wide/32 v13, 0x5f5e100

    cmp-long v13, v7, v13

    if-lez v13, :cond_17

    .line 1112
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    #getter for: Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/mms/ui/MessageListAdapter;->access$1500(Lcom/android/mms/ui/MessageListAdapter;)Landroid/content/Context;

    move-result-object v14

    invoke-static {v14, v7, v8}, Lcom/android/mms/ui/MessageUtils;->getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/android/mms/ui/MessageListAdapter;->mPrimaryNumber:Ljava/lang/String;

    .line 1116
    :goto_4
    const-wide/32 v13, 0x5f5e100

    cmp-long v13, v7, v13

    if-gtz v13, :cond_e

    sget v13, Lcom/android/mms/ui/ComposeMessageActivity;->sThreadContactNumberCount:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_18

    .line 1119
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    iget-object v14, v14, Lcom/android/mms/ui/MessageListAdapter;->mPrimaryNumber:Ljava/lang/String;

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lcom/android/mms/ui/MessageUtils;->getLocationAppendString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/android/mms/ui/MessageListAdapter;->mPrimaryNumberLocationAppendAtring:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1141
    .end local v7           #id:J
    :cond_f
    :goto_5
    move-object v5, v3

    .line 1142
    .local v5, cursor:Landroid/database/Cursor;
    new-instance v13, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v1, v5}, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler$1;-><init>(Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;Landroid/app/Activity;Landroid/database/Cursor;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->runInUIthread(Ljava/lang/Runnable;)V

    .line 1175
    .end local v5           #cursor:Landroid/database/Cursor;
    :cond_10
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v13

    if-eqz v13, :cond_1b

    .line 1176
    const/16 v13, 0x4e3f

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 1070
    .restart local v10       #msg_type:Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v14, 0x1

    #setter for: Lcom/android/mms/ui/MessageListAdapter;->mHasMmsUnread:Z
    invoke-static {v13, v14}, Lcom/android/mms/ui/MessageListAdapter;->access$1102(Lcom/android/mms/ui/MessageListAdapter;Z)Z

    .line 1071
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    const/16 v14, 0x11

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    #setter for: Lcom/android/mms/ui/MessageListAdapter;->mUnreadTimestamp:J
    invoke-static {v13, v14, v15}, Lcom/android/mms/ui/MessageListAdapter;->access$1202(Lcom/android/mms/ui/MessageListAdapter;J)J

    .line 1072
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    const-wide/16 v14, 0x3e8

    invoke-static {v13, v14, v15}, Lcom/android/mms/ui/MessageListAdapter;->access$1230(Lcom/android/mms/ui/MessageListAdapter;J)J

    goto/16 :goto_3

    .line 1076
    :cond_12
    const/16 v13, 0x12

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    if-nez v13, :cond_16

    .line 1077
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v14, 0x1

    #setter for: Lcom/android/mms/ui/MessageListAdapter;->mHasMmsUnread:Z
    invoke-static {v13, v14}, Lcom/android/mms/ui/MessageListAdapter;->access$1102(Lcom/android/mms/ui/MessageListAdapter;Z)Z

    .line 1078
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    const/16 v14, 0x11

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    #setter for: Lcom/android/mms/ui/MessageListAdapter;->mUnreadTimestamp:J
    invoke-static {v13, v14, v15}, Lcom/android/mms/ui/MessageListAdapter;->access$1202(Lcom/android/mms/ui/MessageListAdapter;J)J

    .line 1079
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    const-wide/16 v14, 0x3e8

    invoke-static {v13, v14, v15}, Lcom/android/mms/ui/MessageListAdapter;->access$1230(Lcom/android/mms/ui/MessageListAdapter;J)J

    goto/16 :goto_3

    .line 1083
    :cond_13
    const-string v13, "sms"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_16

    .line 1085
    const/4 v13, 0x7

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    if-nez v13, :cond_15

    .line 1086
    const/4 v13, 0x6

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    if-lez v13, :cond_14

    .line 1087
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v14, 0x0

    #setter for: Lcom/android/mms/ui/MessageListAdapter;->mHasSmsUnread:Z
    invoke-static {v13, v14}, Lcom/android/mms/ui/MessageListAdapter;->access$1302(Lcom/android/mms/ui/MessageListAdapter;Z)Z

    goto/16 :goto_3

    .line 1089
    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v14, 0x1

    #setter for: Lcom/android/mms/ui/MessageListAdapter;->mHasSmsUnread:Z
    invoke-static {v13, v14}, Lcom/android/mms/ui/MessageListAdapter;->access$1302(Lcom/android/mms/ui/MessageListAdapter;Z)Z

    .line 1090
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v14, 0x5

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    #setter for: Lcom/android/mms/ui/MessageListAdapter;->mUnreadTimestamp:J
    invoke-static {v13, v14, v15}, Lcom/android/mms/ui/MessageListAdapter;->access$1202(Lcom/android/mms/ui/MessageListAdapter;J)J

    goto/16 :goto_3

    .line 1094
    :cond_15
    const/4 v13, 0x6

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    if-nez v13, :cond_16

    .line 1095
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v14, 0x1

    #setter for: Lcom/android/mms/ui/MessageListAdapter;->mHasSmsUnread:Z
    invoke-static {v13, v14}, Lcom/android/mms/ui/MessageListAdapter;->access$1302(Lcom/android/mms/ui/MessageListAdapter;Z)Z

    .line 1096
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v14, 0x5

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    #setter for: Lcom/android/mms/ui/MessageListAdapter;->mUnreadTimestamp:J
    invoke-static {v13, v14, v15}, Lcom/android/mms/ui/MessageListAdapter;->access$1202(Lcom/android/mms/ui/MessageListAdapter;J)J

    goto/16 :goto_3

    .line 1101
    :cond_16
    invoke-interface {v3}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v13

    if-nez v13, :cond_c

    goto/16 :goto_3

    .line 1114
    .end local v10           #msg_type:Ljava/lang/String;
    .restart local v7       #id:J
    :cond_17
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    invoke-static {v7, v8}, Lcom/android/mms/ui/MessageUtils;->getMainPhoneNumberFromContactId(J)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/android/mms/ui/MessageListAdapter;->mPrimaryNumber:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    .line 1133
    .end local v7           #id:J
    :catch_1
    move-exception v6

    .line 1134
    .restart local v6       #e:Ljava/lang/NumberFormatException;
    const-string v13, "MessageListAdapter"

    const-string v14, "getThreadUri() Unexpected NumberFormatException."

    invoke-static {v13, v14, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 1122
    .end local v6           #e:Ljava/lang/NumberFormatException;
    .restart local v7       #id:J
    :cond_18
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    iget-object v13, v13, Lcom/android/mms/ui/MessageListAdapter;->mPrimaryNumber:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_19

    .line 1123
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    const-string v14, ""

    iput-object v14, v13, Lcom/android/mms/ui/MessageListAdapter;->mPrimaryNumberLocationAppendAtring:Ljava/lang/String;

    goto/16 :goto_5

    .line 1125
    :cond_19
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    iget-object v13, v13, Lcom/android/mms/ui/MessageListAdapter;->mPrimaryNumber:Ljava/lang/String;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/android/mms/ui/MessageUtils;->getLocation(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    .line 1127
    .local v9, location:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1a

    .line 1128
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    const-string v14, ""

    iput-object v14, v13, Lcom/android/mms/ui/MessageListAdapter;->mPrimaryNumberLocationAppendAtring:Ljava/lang/String;

    goto/16 :goto_5

    .line 1130
    :cond_1a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    iget-object v15, v15, Lcom/android/mms/ui/MessageListAdapter;->mPrimaryNumber:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    iget-object v15, v15, Lcom/android/mms/ui/MessageListAdapter;->mPrimaryNumber:Ljava/lang/String;

    const/16 v16, 0x1

    invoke-static/range {v15 .. v16}, Lcom/android/mms/ui/MessageUtils;->getLocation(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/android/mms/ui/MessageListAdapter;->mPrimaryNumberLocationAppendAtring:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_5

    .line 1180
    .end local v7           #id:J
    .end local v9           #location:Ljava/lang/String;
    :cond_1b
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportShowNumberInDetailView()Z

    move-result v13

    if-eqz v13, :cond_1c

    .line 1182
    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    #getter for: Lcom/android/mms/ui/MessageListAdapter;->mUri:Landroid/net/Uri;
    invoke-static {v13}, Lcom/android/mms/ui/MessageListAdapter;->access$1400(Lcom/android/mms/ui/MessageListAdapter;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 1183
    .restart local v7       #id:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    #getter for: Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/mms/ui/MessageListAdapter;->access$1800(Lcom/android/mms/ui/MessageListAdapter;)Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v7, v8}, Lcom/android/mms/ui/MessageUtils;->getContactAddressesCount(Landroid/content/Context;J)I

    move-result v13

    sput v13, Lcom/android/mms/ui/ComposeMessageActivity;->sThreadContactNumberCount:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1189
    .end local v7           #id:J
    :cond_1c
    :goto_6
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v13

    if-eqz v13, :cond_1d

    .line 1190
    const/16 v13, 0x4e3f

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 1184
    :catch_2
    move-exception v6

    .line 1185
    .restart local v6       #e:Ljava/lang/NumberFormatException;
    const-string v13, "MessageListAdapter"

    const-string v14, "getThreadUri() Unexpected NumberFormatException."

    invoke-static {v13, v14, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 1195
    .end local v6           #e:Ljava/lang/NumberFormatException;
    :cond_1d
    :try_start_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    #getter for: Lcom/android/mms/ui/MessageListAdapter;->callerCache:Ljava/lang/ref/WeakReference;
    invoke-static {v13}, Lcom/android/mms/ui/MessageListAdapter;->access$200(Lcom/android/mms/ui/MessageListAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/ComposeMessageActivity;

    .line 1196
    .local v4, context:Lcom/android/mms/ui/ComposeMessageActivity;
    if-eqz v4, :cond_1e

    .line 1197
    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->PhoneNumberCount()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1202
    .end local v4           #context:Lcom/android/mms/ui/ComposeMessageActivity;
    :cond_1e
    :goto_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    #getter for: Lcom/android/mms/ui/MessageListAdapter;->isRequeryNeeded:Z
    invoke-static {v13}, Lcom/android/mms/ui/MessageListAdapter;->access$1900(Lcom/android/mms/ui/MessageListAdapter;)Z

    move-result v13

    if-eqz v13, :cond_1f

    .line 1203
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v14, 0x1

    #setter for: Lcom/android/mms/ui/MessageListAdapter;->mIsDisableCache:Z
    invoke-static {v13, v14}, Lcom/android/mms/ui/MessageListAdapter;->access$1602(Lcom/android/mms/ui/MessageListAdapter;Z)Z

    .line 1204
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v14, 0x0

    #setter for: Lcom/android/mms/ui/MessageListAdapter;->isRequeryNeeded:Z
    invoke-static {v13, v14}, Lcom/android/mms/ui/MessageListAdapter;->access$1902(Lcom/android/mms/ui/MessageListAdapter;Z)Z

    .line 1205
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v14, 0x0

    #setter for: Lcom/android/mms/ui/MessageListAdapter;->isRequerying:Z
    invoke-static {v13, v14}, Lcom/android/mms/ui/MessageListAdapter;->access$402(Lcom/android/mms/ui/MessageListAdapter;Z)Z

    .line 1206
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v13}, Lcom/android/mms/ui/MessageListAdapter;->onContentChanged()V

    goto/16 :goto_0

    .line 1198
    :catch_3
    move-exception v6

    .line 1199
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 1209
    .end local v6           #e:Ljava/lang/Exception;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v14, 0x0

    #setter for: Lcom/android/mms/ui/MessageListAdapter;->isRequerying:Z
    invoke-static {v13, v14}, Lcom/android/mms/ui/MessageListAdapter;->access$402(Lcom/android/mms/ui/MessageListAdapter;Z)Z

    goto/16 :goto_0

    .line 989
    nop

    :pswitch_data_0
    .packed-switch 0x4e3f
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
