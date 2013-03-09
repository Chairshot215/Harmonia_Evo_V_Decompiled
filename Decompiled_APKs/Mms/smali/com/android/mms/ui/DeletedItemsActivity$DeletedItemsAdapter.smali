.class Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsAdapter;
.super Lcom/android/mms/ui/DraftMessagesListAdapter;
.source "DeletedItemsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/DeletedItemsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeletedItemsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DeletedItemsActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/DeletedItemsActivity;Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/widget/HtcListView;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "c"
    .parameter "listView"

    .prologue
    .line 672
    iput-object p1, p0, Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsAdapter;->this$0:Lcom/android/mms/ui/DeletedItemsActivity;

    .line 673
    invoke-direct {p0, p2, p3, p4}, Lcom/android/mms/ui/DraftMessagesListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/widget/HtcListView;)V

    .line 674
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsAdapter;->mAutoRequery:Z

    .line 675
    return-void
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 679
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v0, :cond_0

    .line 705
    :goto_0
    return-void

    .line 682
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 683
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 684
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 685
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/android/mms/util/MmsAsyncWorkHandler;->CloseCursorInBG(Landroid/database/Cursor;)V

    .line 687
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsAdapter;->this$0:Lcom/android/mms/ui/DeletedItemsActivity;

    #getter for: Lcom/android/mms/ui/DeletedItemsActivity;->mDataCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/mms/ui/DeletedItemsActivity;->access$700(Lcom/android/mms/ui/DeletedItemsActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 688
    iget-object v0, p0, Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsAdapter;->this$0:Lcom/android/mms/ui/DeletedItemsActivity;

    #getter for: Lcom/android/mms/ui/DeletedItemsActivity;->mDataCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/mms/ui/DeletedItemsActivity;->access$700(Lcom/android/mms/ui/DeletedItemsActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/util/MmsAsyncWorkHandler;->CloseCursorInBG(Landroid/database/Cursor;)V

    .line 689
    :cond_2
    if-eqz p1, :cond_3

    .line 690
    iget-object v0, p0, Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsAdapter;->this$0:Lcom/android/mms/ui/DeletedItemsActivity;

    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->duplicateCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v1

    #setter for: Lcom/android/mms/ui/DeletedItemsActivity;->mDataCursor:Landroid/database/Cursor;
    invoke-static {v0, v1}, Lcom/android/mms/ui/DeletedItemsActivity;->access$702(Lcom/android/mms/ui/DeletedItemsActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 691
    :cond_3
    iput-object p1, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mCursor:Landroid/database/Cursor;

    .line 692
    if-eqz p1, :cond_4

    .line 693
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 694
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 695
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mRowIDColumn:I

    .line 696
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mDataValid:Z

    .line 698
    invoke-virtual {p0}, Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 700
    :cond_4
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mRowIDColumn:I

    .line 701
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mDataValid:Z

    .line 703
    invoke-virtual {p0}, Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

.method protected onContentChanged()V
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/mms/ui/DeletedItemsActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/DeletedItemsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mBackground:Z

    if-eqz v0, :cond_2

    .line 710
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mNeedQuery:Z

    .line 717
    :cond_1
    :goto_0
    return-void

    .line 713
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 714
    iget-object v0, p0, Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsAdapter;->this$0:Lcom/android/mms/ui/DeletedItemsActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/DeletedItemsActivity;->StartQuery()V

    .line 715
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mNeedQuery:Z

    goto :goto_0
.end method
