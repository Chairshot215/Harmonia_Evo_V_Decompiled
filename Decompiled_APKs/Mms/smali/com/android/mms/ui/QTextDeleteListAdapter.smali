.class public Lcom/android/mms/ui/QTextDeleteListAdapter;
.super Landroid/widget/CursorAdapter;
.source "QTextDeleteListAdapter.java"


# static fields
.field static final mCOLUMN_ID:I = 0x0

.field static final mCOLUMN_MSG:I = 0x1


# instance fields
.field private final mListView:Lcom/htc/widget/HtcListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/widget/HtcListView;)V
    .locals 0
    .parameter "context"
    .parameter "c"
    .parameter "listView"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 58
    iput-object p3, p0, Lcom/android/mms/ui/QTextDeleteListAdapter;->mListView:Lcom/htc/widget/HtcListView;

    .line 59
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v5, 0x1

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    .line 68
    .local v1, group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    iget-object v2, v1, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Text:Lcom/htc/widget/HtcListItem2LineText;

    .line 69
    .local v2, txt:Lcom/htc/widget/HtcListItem2LineText;
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, body:Ljava/lang/String;
    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 72
    iget-object v3, p0, Lcom/android/mms/ui/QTextDeleteListAdapter;->mListView:Lcom/htc/widget/HtcListView;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 73
    iget-object v3, v1, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Checkbox:Lcom/htc/widget/HtcListItemCheckBox;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 79
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v3, v1, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Checkbox:Lcom/htc/widget/HtcListItemCheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 92
    iget-object v1, p0, Lcom/android/mms/ui/QTextDeleteListAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/mms/ui/HtcListItemComposer;->createCheckboxListItem(Landroid/content/Context;Z)Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    move-result-object v0

    .line 93
    .local v0, group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    iget-object v1, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Text:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 94
    iget-object v1, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->ListItem:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 96
    iget-object v1, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->ListItem:Landroid/view/View;

    return-object v1
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 102
    iget-object v0, p0, Lcom/android/mms/ui/QTextDeleteListAdapter;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/android/mms/ui/QTextDeleteListAdapter;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    .line 103
    return-void
.end method
