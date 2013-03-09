.class Lcom/android/mms/ui/SearchResultActivity$1;
.super Ljava/lang/Object;
.source "SearchResultActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SearchResultActivity;->openThread(JLjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SearchResultActivity;

.field final synthetic val$fAddress:Ljava/lang/String;

.field final synthetic val$fRowId:I

.field final synthetic val$fThreadId:J


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SearchResultActivity;JILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 366
    iput-object p1, p0, Lcom/android/mms/ui/SearchResultActivity$1;->this$0:Lcom/android/mms/ui/SearchResultActivity;

    iput-wide p2, p0, Lcom/android/mms/ui/SearchResultActivity$1;->val$fThreadId:J

    iput p4, p0, Lcom/android/mms/ui/SearchResultActivity$1;->val$fRowId:I

    iput-object p5, p0, Lcom/android/mms/ui/SearchResultActivity$1;->val$fAddress:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 368
    iget-wide v7, p0, Lcom/android/mms/ui/SearchResultActivity$1;->val$fThreadId:J

    .line 369
    .local v7, id:J
    new-instance v9, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/ui/SearchResultActivity$1;->this$0:Lcom/android/mms/ui/SearchResultActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/SearchResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-class v1, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 370
    .local v9, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    const-string v0, "content://mms-sms-v2/get-contactID"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 373
    .local v10, threadIdUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/SearchResultActivity$1;->this$0:Lcom/android/mms/ui/SearchResultActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/SearchResultActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-wide v3, p0, Lcom/android/mms/ui/SearchResultActivity$1;->val$fThreadId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 374
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 375
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 376
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 378
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v10           #threadIdUri:Landroid/net/Uri;
    :cond_0
    const-string v0, "thread_id"

    invoke-virtual {v9, v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 379
    const-string v0, "category"

    sget v1, Lcom/android/mms/ui/ConversationList;->search_category:I

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 380
    const-string v0, "select_id"

    iget v1, p0, Lcom/android/mms/ui/SearchResultActivity$1;->val$fRowId:I

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 381
    const-string v0, "highlight"

    iget-object v1, p0, Lcom/android/mms/ui/SearchResultActivity$1;->this$0:Lcom/android/mms/ui/SearchResultActivity;

    #getter for: Lcom/android/mms/ui/SearchResultActivity;->mHighLight:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/SearchResultActivity;->access$000(Lcom/android/mms/ui/SearchResultActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    const-string v0, "select_msg_type"

    iget-object v1, p0, Lcom/android/mms/ui/SearchResultActivity$1;->this$0:Lcom/android/mms/ui/SearchResultActivity;

    #getter for: Lcom/android/mms/ui/SearchResultActivity;->mMsgType:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/SearchResultActivity;->access$100(Lcom/android/mms/ui/SearchResultActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    iget-object v0, p0, Lcom/android/mms/ui/SearchResultActivity$1;->val$fAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 384
    const-string v0, "address"

    iget-object v1, p0, Lcom/android/mms/ui/SearchResultActivity$1;->val$fAddress:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SearchResultActivity$1;->this$0:Lcom/android/mms/ui/SearchResultActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/SearchResultActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 391
    :goto_0
    return-void

    .line 389
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SearchResultActivity$1;->this$0:Lcom/android/mms/ui/SearchResultActivity;

    invoke-virtual {v0, v9}, Lcom/android/mms/ui/SearchResultActivity;->startActivity(Landroid/content/Intent;)V

    .line 390
    iget-object v0, p0, Lcom/android/mms/ui/SearchResultActivity$1;->this$0:Lcom/android/mms/ui/SearchResultActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/SearchResultActivity;->finish()V

    goto :goto_0
.end method
