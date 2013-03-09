.class Lcom/android/mms/ui/QTextEdit$QTextViewAdapter;
.super Landroid/widget/CursorAdapter;
.source "QTextEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/QTextEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QTextViewAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/QTextEdit;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/QTextEdit;Landroid/database/Cursor;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "c"
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/mms/ui/QTextEdit$QTextViewAdapter;->this$0:Lcom/android/mms/ui/QTextEdit;

    .line 74
    invoke-direct {p0, p3, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 75
    return-void
.end method


# virtual methods
.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 4
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    .line 83
    .local v1, group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    iget-object v2, v1, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Text:Lcom/htc/widget/HtcListItem2LineText;

    .line 85
    .local v2, txt:Lcom/htc/widget/HtcListItem2LineText;
    const-string v3, "content"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, _subject:Ljava/lang/String;
    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/16 v3, 0x8

    .line 94
    iget-object v1, p0, Lcom/android/mms/ui/QTextEdit$QTextViewAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/mms/ui/HtcListItemComposer;->createCheckboxListItem(Landroid/content/Context;Z)Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    move-result-object v0

    .line 95
    .local v0, group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    iget-object v1, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Text:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 96
    iget-object v1, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Checkbox:Lcom/htc/widget/HtcListItemCheckBox;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListItemCheckBox;->setVisibility(I)V

    .line 97
    iget-object v1, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->ImgButton:Lcom/htc/widget/HtcListItemImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 98
    iget-object v1, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->ImgButton:Lcom/htc/widget/HtcListItemImageButton;

    const v2, 0x7f020181

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemImageButton;->setBackgroundResource(I)V

    .line 99
    iget-object v1, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->ListItem:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 101
    iget-object v1, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->ListItem:Landroid/view/View;

    return-object v1
.end method
