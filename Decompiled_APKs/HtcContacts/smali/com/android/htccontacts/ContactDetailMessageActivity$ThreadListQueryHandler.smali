.class final Lcom/android/htccontacts/ContactDetailMessageActivity$ThreadListQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ContactDetailMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactDetailMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThreadListQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ContactDetailMessageActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ContactDetailMessageActivity;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 761
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailMessageActivity$ThreadListQueryHandler;->this$0:Lcom/android/htccontacts/ContactDetailMessageActivity;

    .line 762
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 763
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMessageActivity$ThreadListQueryHandler;->this$0:Lcom/android/htccontacts/ContactDetailMessageActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactDetailMessageActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 769
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 770
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 785
    :cond_0
    :goto_0
    return-void

    .line 774
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMessageActivity$ThreadListQueryHandler;->this$0:Lcom/android/htccontacts/ContactDetailMessageActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailMessageActivity;->mCursorLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailMessageActivity;->access$700(Lcom/android/htccontacts/ContactDetailMessageActivity;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 776
    :try_start_0
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMessageActivity$ThreadListQueryHandler;->this$0:Lcom/android/htccontacts/ContactDetailMessageActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailMessageActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailMessageActivity;->access$800(Lcom/android/htccontacts/ContactDetailMessageActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 778
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMessageActivity$ThreadListQueryHandler;->this$0:Lcom/android/htccontacts/ContactDetailMessageActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailMessageActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailMessageActivity;->access$800(Lcom/android/htccontacts/ContactDetailMessageActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 782
    :cond_2
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMessageActivity$ThreadListQueryHandler;->this$0:Lcom/android/htccontacts/ContactDetailMessageActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailMessageActivity;->mAdapter:Lcom/android/htccontacts/ContactDetailMessageActivity$MessagesAdapter;
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailMessageActivity;->access$900(Lcom/android/htccontacts/ContactDetailMessageActivity;)Lcom/android/htccontacts/ContactDetailMessageActivity$MessagesAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/htccontacts/ContactDetailMessageActivity$MessagesAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 783
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMessageActivity$ThreadListQueryHandler;->this$0:Lcom/android/htccontacts/ContactDetailMessageActivity;

    #setter for: Lcom/android/htccontacts/ContactDetailMessageActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0, p3}, Lcom/android/htccontacts/ContactDetailMessageActivity;->access$802(Lcom/android/htccontacts/ContactDetailMessageActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 784
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
