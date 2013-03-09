.class public Landroid/webkit/WebViewInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "WebViewInputConnection.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WebViewInputConnection"


# instance fields
.field private final mWebView:Landroid/webkit/EditableWebView;


# direct methods
.method public constructor <init>(Landroid/webkit/EditableWebView;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object p1, p0, Landroid/webkit/WebViewInputConnection;->mWebView:Landroid/webkit/EditableWebView;

    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebViewInputConnection;->mWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v0}, Landroid/webkit/EditableWebView;->beginBatchEdit()V

    const/4 v0, 0x1

    return v0
.end method

.method public clearMetaKeyStates(I)Z
    .locals 3

    invoke-virtual {p0}, Landroid/webkit/WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Landroid/webkit/WebViewInputConnection;->mWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v2}, Landroid/webkit/EditableWebView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v2, p0, Landroid/webkit/WebViewInputConnection;->mWebView:Landroid/webkit/EditableWebView;

    invoke-interface {v1, v2, v0, p1}, Landroid/text/method/KeyListener;->clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebViewInputConnection;->mWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v0}, Landroid/webkit/EditableWebView;->beginBatchEdit()V

    iget-object v0, p0, Landroid/webkit/WebViewInputConnection;->mWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v0, p1}, Landroid/webkit/EditableWebView;->onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V

    iget-object v0, p0, Landroid/webkit/WebViewInputConnection;->mWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v0}, Landroid/webkit/EditableWebView;->endBatchEdit()V

    const/4 v0, 0x1

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    iget-object v0, p0, Landroid/webkit/WebViewInputConnection;->mWebView:Landroid/webkit/EditableWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewInputConnection;->mWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/EditableWebView;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteSurroundingText(II)Z
    .locals 15

    invoke-virtual {p0}, Landroid/webkit/WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 v14, 0x0

    :goto_0
    return v14

    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebViewInputConnection;->beginBatchEdit()Z

    invoke-static {v4}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {v4}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    if-le v0, v1, :cond_1

    move v13, v0

    move v0, v1

    move v1, v13

    :cond_1
    invoke-static {v4}, Landroid/webkit/WebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v2

    invoke-static {v4}, Landroid/webkit/WebViewInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v3

    if-ge v3, v2, :cond_2

    move v13, v2

    move v2, v3

    move v3, v13

    :cond_2
    const/4 v14, -0x1

    if-eq v2, v14, :cond_4

    const/4 v14, -0x1

    if-eq v3, v14, :cond_4

    if-ge v2, v0, :cond_3

    move v0, v2

    :cond_3
    if-le v3, v1, :cond_4

    move v1, v3

    :cond_4
    const/4 v11, 0x0

    const/4 v8, -0x1

    const/4 v7, -0x1

    if-lez p1, :cond_6

    move v7, v0

    sub-int v8, v7, p1

    if-gez v8, :cond_5

    const/4 v8, 0x0

    :cond_5
    const/4 v11, 0x1

    :cond_6
    const/4 v10, -0x1

    const/4 v9, -0x1

    if-lez p2, :cond_8

    move v10, v1

    add-int v9, v10, p2

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v14

    if-le v9, v14, :cond_7

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v9

    :cond_7
    const/4 v11, 0x1

    :cond_8
    if-eqz v11, :cond_a

    if-gtz p1, :cond_f

    move v7, v10

    move v8, v10

    :cond_9
    :goto_1
    iget-object v14, p0, Landroid/webkit/WebViewInputConnection;->mWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v14, v8, v7, v10, v9}, Landroid/webkit/EditableWebView;->deleteSurroundingText(IIII)V

    :cond_a
    const/4 v5, 0x0

    if-lez p1, :cond_c

    sub-int v12, v0, p1

    if-gez v12, :cond_b

    const/4 v12, 0x0

    :cond_b
    invoke-interface {v4, v12, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    sub-int v5, v0, v12

    :cond_c
    if-lez p2, :cond_e

    sub-int/2addr v1, v5

    add-int v6, v1, p2

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v14

    if-le v6, v14, :cond_d

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v6

    :cond_d
    invoke-interface {v4, v1, v6}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    :cond_e
    invoke-virtual {p0}, Landroid/webkit/WebViewInputConnection;->endBatchEdit()Z

    const/4 v14, 0x1

    goto :goto_0

    :cond_f
    if-gtz p2, :cond_9

    move v9, v7

    move v10, v7

    goto :goto_1
.end method

.method public endBatchEdit()Z
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebViewInputConnection;->mWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v0}, Landroid/webkit/EditableWebView;->endBatchEdit()V

    const/4 v0, 0x1

    return v0
.end method

.method public finishComposingText()Z
    .locals 7

    const/4 v5, -0x1

    invoke-virtual {p0}, Landroid/webkit/WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/webkit/WebViewInputConnection;->beginBatchEdit()Z

    invoke-static {v3}, Landroid/webkit/WebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v0

    invoke-static {v3}, Landroid/webkit/WebViewInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v1

    if-ge v1, v0, :cond_0

    move v4, v0

    move v0, v1

    move v1, v4

    :cond_0
    if-eq v0, v5, :cond_1

    if-eq v1, v5, :cond_1

    invoke-interface {v3, v0, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v3}, Landroid/webkit/WebViewInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    iget-object v5, p0, Landroid/webkit/WebViewInputConnection;->mWebView:Landroid/webkit/EditableWebView;

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Landroid/webkit/EditableWebView;->commitText(Ljava/lang/CharSequence;I)Z

    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebViewInputConnection;->endBatchEdit()Z

    :cond_2
    const/4 v5, 0x1

    return v5
.end method

.method public getCursorCapsMode(I)I
    .locals 5

    invoke-virtual {p0}, Landroid/webkit/WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    if-le v0, v1, :cond_1

    move v4, v0

    move v0, v1

    move v1, v4

    :cond_1
    invoke-static {v2, v0, p1}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v3

    goto :goto_0
.end method

.method public getEditable()Landroid/text/Editable;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebViewInputConnection;->mWebView:Landroid/webkit/EditableWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewInputConnection;->mWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v0}, Landroid/webkit/EditableWebView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/webkit/WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    iget-object v2, p0, Landroid/webkit/WebViewInputConnection;->mWebView:Landroid/webkit/EditableWebView;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    iput v4, v1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    invoke-virtual {p0}, Landroid/webkit/WebViewInputConnection;->getSelectionStart()I

    move-result v2

    iput v2, v1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    invoke-virtual {p0}, Landroid/webkit/WebViewInputConnection;->getSelectionEnd()I

    move-result v2

    iput v2, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v4, v1, Landroid/view/inputmethod/ExtractedText;->flags:I

    iget v2, p1, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    iput-object v0, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public performContextMenuAction(I)Z
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebViewInputConnection;->mWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v0}, Landroid/webkit/EditableWebView;->beginBatchEdit()V

    iget-object v0, p0, Landroid/webkit/WebViewInputConnection;->mWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v0, p1}, Landroid/webkit/EditableWebView;->onTextContextMenuItem(I)Z

    iget-object v0, p0, Landroid/webkit/WebViewInputConnection;->mWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v0}, Landroid/webkit/EditableWebView;->endBatchEdit()V

    const/4 v0, 0x1

    return v0
.end method

.method public performEditorAction(I)Z
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebViewInputConnection;->mWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v0, p1}, Landroid/webkit/EditableWebView;->onEditorAction(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebViewInputConnection;->mWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/EditableWebView;->onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result v0

    iget-object v1, p0, Landroid/webkit/WebViewInputConnection;->mWebView:Landroid/webkit/EditableWebView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebViewInputConnection;->mWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v1, p1, p2}, Landroid/webkit/EditableWebView;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result v0

    :cond_0
    return v0
.end method
