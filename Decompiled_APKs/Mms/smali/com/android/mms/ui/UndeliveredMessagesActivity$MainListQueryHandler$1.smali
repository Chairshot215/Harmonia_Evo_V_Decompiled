.class Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler$1;
.super Ljava/lang/Object;
.source "UndeliveredMessagesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler;

.field final synthetic val$body:Ljava/lang/String;

.field final synthetic val$cursor1:Landroid/database/Cursor;

.field final synthetic val$dest:Ljava/lang/String;

.field final synthetic val$locked:Z

.field final synthetic val$msgId:J

.field final synthetic val$realTid:J

.field final synthetic val$threadId:J

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler;Ljava/lang/String;Ljava/lang/String;JJJZLandroid/net/Uri;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 854
    iput-object p1, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler$1;->this$1:Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler;

    iput-object p2, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler$1;->val$dest:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler$1;->val$body:Ljava/lang/String;

    iput-wide p4, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler$1;->val$threadId:J

    iput-wide p6, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler$1;->val$realTid:J

    iput-wide p8, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler$1;->val$msgId:J

    iput-boolean p10, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler$1;->val$locked:Z

    iput-object p11, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler$1;->val$uri:Landroid/net/Uri;

    iput-object p12, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler$1;->val$cursor1:Landroid/database/Cursor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 859
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler$1;->val$dest:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler$1;->val$body:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler$1;->val$threadId:J

    iget-wide v4, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler$1;->val$realTid:J

    iget-wide v6, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler$1;->val$msgId:J

    invoke-static/range {v0 .. v7}, Lcom/android/mms/ui/MessageUtils;->createSmsMessageSenderIntent(Ljava/lang/String;Ljava/lang/String;JJJ)Landroid/content/Intent;

    move-result-object v8

    .line 862
    .local v8, intent:Landroid/content/Intent;
    iget-boolean v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler$1;->val$locked:Z

    if-eqz v0, :cond_0

    const-string v0, "locked"

    iget-boolean v1, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler$1;->val$locked:Z

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 863
    :cond_0
    new-instance v9, Lcom/android/mms/transaction/SmsMessageSender;

    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler$1;->this$1:Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler;

    iget-object v0, v0, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-direct {v9, v0, v8}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 866
    .local v9, sender:Lcom/android/mms/transaction/MessageSender;
    iget-wide v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler$1;->val$threadId:J

    invoke-interface {v9, v0, v1}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    .line 867
    invoke-static {}, Lcom/android/mms/MmsApp;->isImproveSmsSending()Z

    move-result v0

    if-nez v0, :cond_1

    .line 871
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler$1;->this$1:Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler;

    iget-object v0, v0, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    #getter for: Lcom/android/mms/ui/UndeliveredMessagesActivity;->mQueryHandler:Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler;
    invoke-static {v0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->access$400(Lcom/android/mms/ui/UndeliveredMessagesActivity;)Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler$1;->val$uri:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 876
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler$1;->val$cursor1:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 879
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #sender:Lcom/android/mms/transaction/MessageSender;
    :goto_0
    return-void

    .line 874
    :catch_0
    move-exception v0

    .line 876
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler$1;->val$cursor1:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler$1;->val$cursor1:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method
