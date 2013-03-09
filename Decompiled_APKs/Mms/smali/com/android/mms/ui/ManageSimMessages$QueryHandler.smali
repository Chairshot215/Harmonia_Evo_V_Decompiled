.class Lcom/android/mms/ui/ManageSimMessages$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ManageSimMessages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ManageSimMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field private final mParent:Lcom/android/mms/ui/ManageSimMessages;

.field final synthetic this$0:Lcom/android/mms/ui/ManageSimMessages;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ManageSimMessages;Landroid/content/ContentResolver;Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0
    .parameter
    .parameter "contentResolver"
    .parameter "parent"

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    .line 214
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 215
    iput-object p3, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->mParent:Lcom/android/mms/ui/ManageSimMessages;

    .line 216
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 8
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 222
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #setter for: Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;
    invoke-static {v2, p3}, Lcom/android/mms/ui/ManageSimMessages;->access$102(Lcom/android/mms/ui/ManageSimMessages;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 223
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/mms/ui/ManageSimMessages;->access$100(Lcom/android/mms/ui/ManageSimMessages;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 224
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/mms/ui/ManageSimMessages;->access$100(Lcom/android/mms/ui/ManageSimMessages;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_2

    .line 226
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #calls: Lcom/android/mms/ui/ManageSimMessages;->updateState(I)V
    invoke-static {v2, v7}, Lcom/android/mms/ui/ManageSimMessages;->access$200(Lcom/android/mms/ui/ManageSimMessages;I)V

    .line 257
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/android/mms/ui/ManageSimMessages;->access$100(Lcom/android/mms/ui/ManageSimMessages;)Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ManageSimMessages;->startManagingCursor(Landroid/database/Cursor;)V

    .line 258
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #calls: Lcom/android/mms/ui/ManageSimMessages;->registerSimChangeObserver()V
    invoke-static {v2}, Lcom/android/mms/ui/ManageSimMessages;->access$600(Lcom/android/mms/ui/ManageSimMessages;)V

    .line 261
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ManageSimMessages;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 262
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v2, v7, :cond_1

    .line 264
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    const/4 v3, 0x3

    #calls: Lcom/android/mms/ui/ManageSimMessages;->updateState(I)V
    invoke-static {v2, v3}, Lcom/android/mms/ui/ManageSimMessages;->access$200(Lcom/android/mms/ui/ManageSimMessages;I)V

    .line 268
    .end local v0           #tm:Landroid/telephony/TelephonyManager;
    :cond_1
    :goto_1
    return-void

    .line 227
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SIMMessageListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/ManageSimMessages;->access$300(Lcom/android/mms/ui/ManageSimMessages;)Lcom/android/mms/ui/SIMMessageListAdapter;

    move-result-object v2

    if-nez v2, :cond_4

    .line 234
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/android/mms/ui/ManageSimMessages;->access$100(Lcom/android/mms/ui/ManageSimMessages;)Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ManageSimMessages;->copyCursorUnreadIndexToStructure(Landroid/database/Cursor;)[Lcom/android/mms/ui/ManageSimMessages$SimSms;

    move-result-object v1

    .line 235
    .local v1, unreadSms:[Lcom/android/mms/ui/ManageSimMessages$SimSms;
    array-length v2, v1

    if-eqz v2, :cond_3

    .line 236
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/mms/ui/ManageSimMessages;->access$100(Lcom/android/mms/ui/ManageSimMessages;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 237
    new-instance v2, Lcom/android/mms/ui/ManageSimMessages$ChangeReadStatusTask;

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {v2, v3, v4}, Lcom/android/mms/ui/ManageSimMessages$ChangeReadStatusTask;-><init>(Lcom/android/mms/ui/ManageSimMessages;Lcom/android/mms/ui/ManageSimMessages$1;)V

    invoke-virtual {v2, v1}, Lcom/android/mms/ui/ManageSimMessages$ChangeReadStatusTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 240
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    new-instance v3, Lcom/android/mms/ui/SIMMessageListAdapter;

    iget-object v4, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->mParent:Lcom/android/mms/ui/ManageSimMessages;

    iget-object v5, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/android/mms/ui/ManageSimMessages;->access$100(Lcom/android/mms/ui/ManageSimMessages;)Landroid/database/Cursor;

    move-result-object v5

    invoke-direct {v3, v4, v5, v6, v6}, Lcom/android/mms/ui/SIMMessageListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;ZI)V

    #setter for: Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SIMMessageListAdapter;
    invoke-static {v2, v3}, Lcom/android/mms/ui/ManageSimMessages;->access$302(Lcom/android/mms/ui/ManageSimMessages;Lcom/android/mms/ui/SIMMessageListAdapter;)Lcom/android/mms/ui/SIMMessageListAdapter;

    .line 244
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mSimList:Lcom/htc/widget/HtcListView;
    invoke-static {v2}, Lcom/android/mms/ui/ManageSimMessages;->access$500(Lcom/android/mms/ui/ManageSimMessages;)Lcom/htc/widget/HtcListView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SIMMessageListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/ManageSimMessages;->access$300(Lcom/android/mms/ui/ManageSimMessages;)Lcom/android/mms/ui/SIMMessageListAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 245
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mSimList:Lcom/htc/widget/HtcListView;
    invoke-static {v2}, Lcom/android/mms/ui/ManageSimMessages;->access$500(Lcom/android/mms/ui/ManageSimMessages;)Lcom/htc/widget/HtcListView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->mParent:Lcom/android/mms/ui/ManageSimMessages;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 246
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #calls: Lcom/android/mms/ui/ManageSimMessages;->updateState(I)V
    invoke-static {v2, v6}, Lcom/android/mms/ui/ManageSimMessages;->access$200(Lcom/android/mms/ui/ManageSimMessages;I)V

    goto/16 :goto_0

    .line 248
    .end local v1           #unreadSms:[Lcom/android/mms/ui/ManageSimMessages$SimSms;
    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/android/mms/ui/ManageSimMessages;->access$100(Lcom/android/mms/ui/ManageSimMessages;)Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ManageSimMessages;->copyCursorUnreadIndexToStructure(Landroid/database/Cursor;)[Lcom/android/mms/ui/ManageSimMessages$SimSms;

    move-result-object v1

    .line 249
    .restart local v1       #unreadSms:[Lcom/android/mms/ui/ManageSimMessages$SimSms;
    array-length v2, v1

    if-eqz v2, :cond_5

    .line 250
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/mms/ui/ManageSimMessages;->access$100(Lcom/android/mms/ui/ManageSimMessages;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 251
    new-instance v2, Lcom/android/mms/ui/ManageSimMessages$ChangeReadStatusTask;

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {v2, v3, v4}, Lcom/android/mms/ui/ManageSimMessages$ChangeReadStatusTask;-><init>(Lcom/android/mms/ui/ManageSimMessages;Lcom/android/mms/ui/ManageSimMessages$1;)V

    invoke-virtual {v2, v1}, Lcom/android/mms/ui/ManageSimMessages$ChangeReadStatusTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 254
    :cond_5
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SIMMessageListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/ManageSimMessages;->access$300(Lcom/android/mms/ui/ManageSimMessages;)Lcom/android/mms/ui/SIMMessageListAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/android/mms/ui/ManageSimMessages;->access$100(Lcom/android/mms/ui/ManageSimMessages;)Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/SIMMessageListAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 255
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #calls: Lcom/android/mms/ui/ManageSimMessages;->updateState(I)V
    invoke-static {v2, v6}, Lcom/android/mms/ui/ManageSimMessages;->access$200(Lcom/android/mms/ui/ManageSimMessages;I)V

    goto/16 :goto_0
.end method
