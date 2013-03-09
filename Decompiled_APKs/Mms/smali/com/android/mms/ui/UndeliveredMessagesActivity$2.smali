.class Lcom/android/mms/ui/UndeliveredMessagesActivity$2;
.super Ljava/lang/Object;
.source "UndeliveredMessagesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/UndeliveredMessagesActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/UndeliveredMessagesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 448
    iput-object p1, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$2;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v6, 0x1

    .line 450
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$2;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    #getter for: Lcom/android/mms/ui/UndeliveredMessagesActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->access$000(Lcom/android/mms/ui/UndeliveredMessagesActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 451
    .local v7, count:I
    new-array v11, v7, [J

    .line 452
    .local v11, threadIds:[J
    new-array v9, v7, [J

    .line 453
    .local v9, msgIds:[J
    new-array v10, v7, [Ljava/lang/String;

    .line 454
    .local v10, msgType:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 455
    .local v8, index:I
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$2;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    #getter for: Lcom/android/mms/ui/UndeliveredMessagesActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->access$000(Lcom/android/mms/ui/UndeliveredMessagesActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$2;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    #getter for: Lcom/android/mms/ui/UndeliveredMessagesActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->access$000(Lcom/android/mms/ui/UndeliveredMessagesActivity;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    aput-wide v0, v11, v8

    .line 457
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$2;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    #getter for: Lcom/android/mms/ui/UndeliveredMessagesActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->access$000(Lcom/android/mms/ui/UndeliveredMessagesActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    aput-wide v0, v9, v8

    .line 458
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$2;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    #getter for: Lcom/android/mms/ui/UndeliveredMessagesActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->access$000(Lcom/android/mms/ui/UndeliveredMessagesActivity;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v8

    .line 459
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 461
    :cond_0
    add-int/lit8 v8, v7, -0x1

    :goto_1
    if-ltz v8, :cond_1

    .line 463
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$2;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    aget-wide v1, v11, v8

    aget-wide v3, v9, v8

    aget-object v5, v10, v8

    #calls: Lcom/android/mms/ui/UndeliveredMessagesActivity;->retryToSendMessage(JJLjava/lang/String;Z)V
    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->access$200(Lcom/android/mms/ui/UndeliveredMessagesActivity;JJLjava/lang/String;Z)V

    .line 461
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 466
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$2;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    iget-object v0, v0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mprogressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    .line 467
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$2;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    iget-object v0, v0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mprogressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 468
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$2;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mprogressDialog:Landroid/app/ProgressDialog;

    .line 470
    :cond_2
    return-void
.end method
