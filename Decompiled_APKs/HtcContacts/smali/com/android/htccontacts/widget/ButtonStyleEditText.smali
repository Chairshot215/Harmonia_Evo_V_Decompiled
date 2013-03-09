.class public Lcom/android/htccontacts/widget/ButtonStyleEditText;
.super Landroid/widget/EditText;
.source "ButtonStyleEditText.java"


# instance fields
.field mButtonType:Z

.field mOriginalKeyListener:Landroid/text/method/KeyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/htccontacts/widget/ButtonStyleEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Lcom/android/htccontacts/widget/ButtonStyleEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method


# virtual methods
.method public enableButtonType()V
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/htccontacts/widget/ButtonStyleEditText;->mButtonType:Z

    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/ButtonStyleEditText;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/widget/ButtonStyleEditText;->mOriginalKeyListener:Landroid/text/method/KeyListener;

    .line 59
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/widget/ButtonStyleEditText;->mButtonType:Z

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/ButtonStyleEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/ButtonStyleEditText;->setCursorVisible(Z)V

    .line 63
    new-instance v0, Lcom/android/htccontacts/widget/ButtonStyleEditText$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/widget/ButtonStyleEditText$1;-><init>(Lcom/android/htccontacts/widget/ButtonStyleEditText;)V

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/ButtonStyleEditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 67
    return-void
.end method

.method public enableEditType()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/widget/ButtonStyleEditText;->mButtonType:Z

    .line 71
    iget-object v0, p0, Lcom/android/htccontacts/widget/ButtonStyleEditText;->mOriginalKeyListener:Landroid/text/method/KeyListener;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/ButtonStyleEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 72
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/ButtonStyleEditText;->setCursorVisible(Z)V

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/ButtonStyleEditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 74
    return-void
.end method

.method public extendSelection(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/ButtonStyleEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 130
    return-void
.end method

.method protected getDefaultEditable()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/htccontacts/widget/ButtonStyleEditText;->mButtonType:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getDefaultMovementMethod()Landroid/text/method/MovementMethod;
    .locals 2

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, method:Landroid/text/method/MovementMethod;
    iget-boolean v1, p0, Lcom/android/htccontacts/widget/ButtonStyleEditText;->mButtonType:Z

    if-nez v1, :cond_0

    .line 90
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 91
    :cond_0
    return-object v0
.end method

.method public getText()Landroid/text/Editable;
    .locals 1

    .prologue
    .line 96
    invoke-super {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/ButtonStyleEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public isEditable()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/htccontacts/widget/ButtonStyleEditText;->mButtonType:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInputMethodTarget()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/htccontacts/widget/ButtonStyleEditText;->mButtonType:Z

    if-eqz v0, :cond_0

    .line 144
    const/4 v0, 0x0

    .line 146
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/EditText;->isInputMethodTarget()Z

    move-result v0

    goto :goto_0
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .prologue
    .line 150
    invoke-super {p0}, Landroid/widget/EditText;->onCheckIsTextEditor()Z

    move-result v0

    return v0
.end method

.method public selectAll()V
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/ButtonStyleEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->selectAll(Landroid/text/Spannable;)V

    .line 123
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 2
    .parameter "ellipsis"

    .prologue
    .line 134
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne p1, v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EditText cannot use the ellipsize mode TextUtils.TruncateAt.MARQUEE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 139
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/ButtonStyleEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 116
    return-void
.end method

.method public setSelection(II)V
    .locals 1
    .parameter "start"
    .parameter "stop"

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/ButtonStyleEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 109
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1
    .parameter "text"
    .parameter "type"

    .prologue
    .line 101
    sget-object v0, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-super {p0, p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 102
    return-void
.end method
