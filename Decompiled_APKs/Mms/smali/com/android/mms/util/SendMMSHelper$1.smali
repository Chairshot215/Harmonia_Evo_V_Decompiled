.class Lcom/android/mms/util/SendMMSHelper$1;
.super Ljava/lang/Object;
.source "MsgForwardReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/SendMMSHelper;->sendMessageAsync(Landroid/content/Context;JLandroid/net/Uri;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/SendMMSHelper;

.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$mmMessageUri:Landroid/net/Uri;

.field final synthetic val$mmThreadId:J

.field final synthetic val$nTimestamp:J

.field final synthetic val$strCSID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/util/SendMMSHelper;Landroid/content/Context;Landroid/net/Uri;JLjava/lang/String;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 882
    iput-object p1, p0, Lcom/android/mms/util/SendMMSHelper$1;->this$0:Lcom/android/mms/util/SendMMSHelper;

    iput-object p2, p0, Lcom/android/mms/util/SendMMSHelper$1;->val$ctx:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/mms/util/SendMMSHelper$1;->val$mmMessageUri:Landroid/net/Uri;

    iput-wide p4, p0, Lcom/android/mms/util/SendMMSHelper$1;->val$mmThreadId:J

    iput-object p6, p0, Lcom/android/mms/util/SendMMSHelper$1;->val$strCSID:Ljava/lang/String;

    iput-wide p7, p0, Lcom/android/mms/util/SendMMSHelper$1;->val$nTimestamp:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 884
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 885
    .local v7, failed:Ljava/lang/Boolean;
    const/4 v8, 0x0

    .line 887
    .local v8, msgSender:Lcom/android/mms/transaction/MessageSender;
    :try_start_0
    new-instance v9, Lcom/android/mms/transaction/MmsMessageSender;

    iget-object v0, p0, Lcom/android/mms/util/SendMMSHelper$1;->val$ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/util/SendMMSHelper$1;->val$mmMessageUri:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/android/mms/util/SendMMSHelper$1;->val$mmThreadId:J

    invoke-direct {v9, v0, v1, v2, v3}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 889
    .end local v8           #msgSender:Lcom/android/mms/transaction/MessageSender;
    .local v9, msgSender:Lcom/android/mms/transaction/MessageSender;
    :try_start_1
    iget-wide v0, p0, Lcom/android/mms/util/SendMMSHelper$1;->val$mmThreadId:J

    invoke-interface {v9, v0, v1}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/SendMMSHelper$1;->val$mmMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 890
    iget-object v0, p0, Lcom/android/mms/util/SendMMSHelper$1;->val$ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/util/SendMMSHelper$1;->val$ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/util/SendMMSHelper$1;->val$mmMessageUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 891
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v7

    :cond_0
    move-object v8, v9

    .line 902
    .end local v9           #msgSender:Lcom/android/mms/transaction/MessageSender;
    .restart local v8       #msgSender:Lcom/android/mms/transaction/MessageSender;
    :goto_0
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 903
    iget-object v0, p0, Lcom/android/mms/util/SendMMSHelper$1;->this$0:Lcom/android/mms/util/SendMMSHelper;

    #getter for: Lcom/android/mms/util/SendMMSHelper;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v0}, Lcom/android/mms/util/SendMMSHelper;->access$000(Lcom/android/mms/util/SendMMSHelper;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/android/mms/ui/MessageBodyEditor;->clear(Z)V

    .line 904
    iget-object v0, p0, Lcom/android/mms/util/SendMMSHelper$1;->this$0:Lcom/android/mms/util/SendMMSHelper;

    iget-object v1, p0, Lcom/android/mms/util/SendMMSHelper$1;->val$ctx:Landroid/content/Context;

    invoke-static {}, Lcom/android/mms/util/SendMMSHelper;->access$300()[Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/mms/util/SendMMSHelper;->getOrCreateThreadId(Landroid/content/Context;[Ljava/lang/String;)J
    invoke-static {v0, v1, v2}, Lcom/android/mms/util/SendMMSHelper;->access$800(Lcom/android/mms/util/SendMMSHelper;Landroid/content/Context;[Ljava/lang/String;)J

    move-result-wide v10

    .line 905
    .local v10, threadId:J
    iget-object v0, p0, Lcom/android/mms/util/SendMMSHelper$1;->val$ctx:Landroid/content/Context;

    #calls: Lcom/android/mms/util/SendMMSHelper;->deleteTemporarySmsMessage(Landroid/content/Context;J)V
    invoke-static {v0, v10, v11}, Lcom/android/mms/util/SendMMSHelper;->access$900(Landroid/content/Context;J)V

    .line 907
    if-eqz v8, :cond_1

    iget-object v0, p0, Lcom/android/mms/util/SendMMSHelper$1;->val$mmMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 908
    iget-object v0, p0, Lcom/android/mms/util/SendMMSHelper$1;->val$mmMessageUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 909
    .local v5, id:I
    iget-object v0, p0, Lcom/android/mms/util/SendMMSHelper$1;->val$ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/util/SendMMSHelper$1;->val$strCSID:Ljava/lang/String;

    sget-object v2, Lcom/android/mms/util/MsgComposeHelper;->MMS_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/mms/util/SendMMSHelper$1;->val$nTimestamp:J

    invoke-static/range {v0 .. v5}, Lcom/android/mms/util/MsgComposeHelper;->updateMsgDB(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;JI)I

    .line 912
    .end local v5           #id:I
    .end local v10           #threadId:J
    :cond_1
    return-void

    .line 893
    :catch_0
    move-exception v6

    .line 894
    .local v6, e:Landroid/database/sqlite/SQLiteException;
    :goto_1
    iget-object v0, p0, Lcom/android/mms/util/SendMMSHelper$1;->val$ctx:Landroid/content/Context;

    invoke-static {v0, v6}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    .line 895
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 900
    goto :goto_0

    .line 896
    .end local v6           #e:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v6

    .line 897
    .local v6, e:Lcom/google/android/mms/MmsException;
    :goto_2
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 900
    goto :goto_0

    .line 898
    .end local v6           #e:Lcom/google/android/mms/MmsException;
    :catch_2
    move-exception v6

    .line 899
    .local v6, e:Ljava/lang/Exception;
    :goto_3
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_0

    .line 898
    .end local v6           #e:Ljava/lang/Exception;
    .end local v8           #msgSender:Lcom/android/mms/transaction/MessageSender;
    .restart local v9       #msgSender:Lcom/android/mms/transaction/MessageSender;
    :catch_3
    move-exception v6

    move-object v8, v9

    .end local v9           #msgSender:Lcom/android/mms/transaction/MessageSender;
    .restart local v8       #msgSender:Lcom/android/mms/transaction/MessageSender;
    goto :goto_3

    .line 896
    .end local v8           #msgSender:Lcom/android/mms/transaction/MessageSender;
    .restart local v9       #msgSender:Lcom/android/mms/transaction/MessageSender;
    :catch_4
    move-exception v6

    move-object v8, v9

    .end local v9           #msgSender:Lcom/android/mms/transaction/MessageSender;
    .restart local v8       #msgSender:Lcom/android/mms/transaction/MessageSender;
    goto :goto_2

    .line 893
    .end local v8           #msgSender:Lcom/android/mms/transaction/MessageSender;
    .restart local v9       #msgSender:Lcom/android/mms/transaction/MessageSender;
    :catch_5
    move-exception v6

    move-object v8, v9

    .end local v9           #msgSender:Lcom/android/mms/transaction/MessageSender;
    .restart local v8       #msgSender:Lcom/android/mms/transaction/MessageSender;
    goto :goto_1
.end method
