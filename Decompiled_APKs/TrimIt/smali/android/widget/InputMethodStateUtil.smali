.class public Landroid/widget/InputMethodStateUtil;
.super Ljava/lang/Object;
.source "InputMethodStateUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static focusIn(Landroid/view/View;Landroid/content/Context;)V
    .locals 2
    .parameter "view"
    .parameter "context"

    .prologue
    .line 35
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    const-string v1, "input_method"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 39
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    goto :goto_0
.end method

.method public static getCursorRectInWindow(Landroid/widget/TextView;)Landroid/graphics/Rect;
    .locals 1
    .parameter "tv"

    .prologue
    .line 19
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    .line 22
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static initInputMethodState(Landroid/widget/TextView;)V
    .locals 1
    .parameter "tv"

    .prologue
    .line 14
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Landroid/widget/TextView$InputMethodState;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0}, Landroid/widget/TextView$InputMethodState;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 16
    :cond_0
    return-void
.end method

.method public static showSoftInputUnchecked(ILandroid/os/ResultReceiver;Landroid/content/Context;)V
    .locals 2
    .parameter "flags"
    .parameter "resultReceiver"
    .parameter "context"

    .prologue
    .line 26
    if-nez p2, :cond_1

    .line 32
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    const-string v1, "input_method"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 30
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {v0, p0, p1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V

    goto :goto_0
.end method
