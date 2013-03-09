.class final Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ContactDetailCommunicationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactDetailCommunicationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallLogListQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ContactDetailCommunicationActivity;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 2148
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListQueryHandler;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    .line 2149
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 2150
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 2154
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListQueryHandler;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mCursorLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$3500(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2155
    :try_start_0
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListQueryHandler;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mRecentCallAdapter:Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$3600(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 2156
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListQueryHandler;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    #setter for: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mRecentCallCursor:Landroid/database/Cursor;
    invoke-static {v0, p3}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$3702(Lcom/android/htccontacts/ContactDetailCommunicationActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 2157
    monitor-exit v1

    .line 2158
    return-void

    .line 2157
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
