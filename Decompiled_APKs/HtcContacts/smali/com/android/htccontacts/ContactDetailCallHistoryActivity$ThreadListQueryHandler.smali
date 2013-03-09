.class final Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ThreadListQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ContactDetailCallHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactDetailCallHistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThreadListQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 1228
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ThreadListQueryHandler;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    .line 1229
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1230
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ThreadListQueryHandler;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mCursorLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->access$2800(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1235
    :try_start_0
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ThreadListQueryHandler;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->access$2400(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$RecentCallsAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1236
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ThreadListQueryHandler;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    #setter for: Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0, p3}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->access$2902(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1237
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$ThreadListQueryHandler;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->restoreList()V

    .line 1238
    monitor-exit v1

    .line 1239
    return-void

    .line 1238
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
