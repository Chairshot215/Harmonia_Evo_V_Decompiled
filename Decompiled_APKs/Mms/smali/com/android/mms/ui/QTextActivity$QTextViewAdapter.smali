.class Lcom/android/mms/ui/QTextActivity$QTextViewAdapter;
.super Landroid/widget/CursorAdapter;
.source "QTextActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/QTextActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QTextViewAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/QTextActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/QTextActivity;Landroid/database/Cursor;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter "c"
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/mms/ui/QTextActivity$QTextViewAdapter;->this$0:Lcom/android/mms/ui/QTextActivity;

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p3, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 70
    return-void
.end method


# virtual methods
.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 4
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    .line 79
    .local v1, group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    iget-object v2, v1, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Text:Lcom/htc/widget/HtcListItem2LineText;

    .line 81
    .local v2, txt:Lcom/htc/widget/HtcListItem2LineText;
    const-string v3, "content"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, _subject:Ljava/lang/String;
    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/mms/ui/QTextActivity$QTextViewAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/QTextActivity$QTextViewAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/android/mms/ui/QTextActivity$QTextViewAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/ui/QTextActivity$QTextViewAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 105
    iget-object v0, p0, Lcom/android/mms/ui/QTextActivity$QTextViewAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/ui/QTextActivity$QTextViewAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 106
    iget-object v0, p0, Lcom/android/mms/ui/QTextActivity$QTextViewAdapter;->mCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/android/mms/util/MmsAsyncWorkHandler;->CloseCursorInBG(Landroid/database/Cursor;)V

    .line 108
    :cond_1
    iput-object p1, p0, Lcom/android/mms/ui/QTextActivity$QTextViewAdapter;->mCursor:Landroid/database/Cursor;

    .line 109
    if-eqz p1, :cond_2

    .line 110
    iget-object v0, p0, Lcom/android/mms/ui/QTextActivity$QTextViewAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 111
    iget-object v0, p0, Lcom/android/mms/ui/QTextActivity$QTextViewAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 112
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/QTextActivity$QTextViewAdapter;->mRowIDColumn:I

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/QTextActivity$QTextViewAdapter;->mDataValid:Z

    .line 115
    invoke-virtual {p0}, Lcom/android/mms/ui/QTextActivity$QTextViewAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 117
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/QTextActivity$QTextViewAdapter;->mRowIDColumn:I

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/QTextActivity$QTextViewAdapter;->mDataValid:Z

    .line 120
    invoke-virtual {p0}, Lcom/android/mms/ui/QTextActivity$QTextViewAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/16 v3, 0x8

    .line 90
    iget-object v1, p0, Lcom/android/mms/ui/QTextActivity$QTextViewAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/mms/ui/HtcListItemComposer;->createCheckboxListItem(Landroid/content/Context;Z)Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    move-result-object v0

    .line 91
    .local v0, group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    iget-object v1, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Checkbox:Lcom/htc/widget/HtcListItemCheckBox;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListItemCheckBox;->setVisibility(I)V

    .line 92
    iget-object v1, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Text:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 93
    iget-object v1, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->ListItem:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 95
    iget-object v1, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->ListItem:Landroid/view/View;

    return-object v1
.end method

.method protected onContentChanged()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/mms/ui/QTextActivity$QTextViewAdapter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/QTextActivity$QTextViewAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/mms/ui/QTextActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/QTextActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/QTextActivity$QTextViewAdapter;->this$0:Lcom/android/mms/ui/QTextActivity;

    iget-boolean v0, v0, Lcom/android/mms/ui/QTextActivity;->mBackground:Z

    if-eqz v0, :cond_2

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/QTextActivity$QTextViewAdapter;->this$0:Lcom/android/mms/ui/QTextActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/mms/ui/QTextActivity;->mNeedQuery:Z

    .line 134
    :cond_1
    :goto_0
    return-void

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/QTextActivity$QTextViewAdapter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/android/mms/ui/QTextActivity$QTextViewAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/mms/ui/QTextActivity;

    #calls: Lcom/android/mms/ui/QTextActivity;->StartQuery()V
    invoke-static {v0}, Lcom/android/mms/ui/QTextActivity;->access$000(Lcom/android/mms/ui/QTextActivity;)V

    .line 132
    iget-object v0, p0, Lcom/android/mms/ui/QTextActivity$QTextViewAdapter;->this$0:Lcom/android/mms/ui/QTextActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/mms/ui/QTextActivity;->mNeedQuery:Z

    goto :goto_0
.end method
