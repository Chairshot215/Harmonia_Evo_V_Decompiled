.class public Lcom/htc/launcher/SearchAutoCompleteTextView;
.super Landroid/widget/AutoCompleteTextView;
.source "SearchAutoCompleteTextView.java"


# instance fields
.field private mLoseFocusHandler:Landroid/os/Handler;

.field private mShowKeyboard:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v0, Lcom/htc/launcher/SearchAutoCompleteTextView$1;

    invoke-direct {v0, p0}, Lcom/htc/launcher/SearchAutoCompleteTextView$1;-><init>(Lcom/htc/launcher/SearchAutoCompleteTextView;)V

    iput-object v0, p0, Lcom/htc/launcher/SearchAutoCompleteTextView;->mLoseFocusHandler:Landroid/os/Handler;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance v0, Lcom/htc/launcher/SearchAutoCompleteTextView$1;

    invoke-direct {v0, p0}, Lcom/htc/launcher/SearchAutoCompleteTextView$1;-><init>(Lcom/htc/launcher/SearchAutoCompleteTextView;)V

    iput-object v0, p0, Lcom/htc/launcher/SearchAutoCompleteTextView;->mLoseFocusHandler:Landroid/os/Handler;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance v0, Lcom/htc/launcher/SearchAutoCompleteTextView$1;

    invoke-direct {v0, p0}, Lcom/htc/launcher/SearchAutoCompleteTextView$1;-><init>(Lcom/htc/launcher/SearchAutoCompleteTextView;)V

    iput-object v0, p0, Lcom/htc/launcher/SearchAutoCompleteTextView;->mLoseFocusHandler:Landroid/os/Handler;

    .line 60
    return-void
.end method


# virtual methods
.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 6
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v5, 0x0

    .line 64
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 66
    invoke-virtual {p0}, Lcom/htc/launcher/SearchAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 67
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_2

    .line 68
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit8 v3, v3, -0x10

    or-int/lit8 v3, v3, 0x1

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 80
    :goto_0
    invoke-virtual {p0}, Lcom/htc/launcher/SearchAutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 81
    invoke-virtual {p0}, Lcom/htc/launcher/SearchAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 83
    .local v2, manager:Landroid/view/WindowManager;
    invoke-virtual {p0}, Lcom/htc/launcher/SearchAutoCompleteTextView;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    iget-boolean v3, p0, Lcom/htc/launcher/SearchAutoCompleteTextView;->mShowKeyboard:Z

    if-eqz v3, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/htc/launcher/SearchAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/htc/launcher/SearchAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 90
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, p0, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 92
    .end local v0           #inputManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    iput-boolean v5, p0, Lcom/htc/launcher/SearchAutoCompleteTextView;->mShowKeyboard:Z

    .line 95
    .end local v2           #manager:Landroid/view/WindowManager;
    :cond_1
    return-void

    .line 73
    :cond_2
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit8 v3, v3, -0x10

    or-int/lit8 v3, v3, 0x0

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 77
    iget-object v3, p0, Lcom/htc/launcher/SearchAutoCompleteTextView;->mLoseFocusHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasWindowFocus"

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onWindowFocusChanged(Z)V

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/launcher/SearchAutoCompleteTextView;->setFocusableInTouchMode(Z)V

    .line 102
    return-void
.end method

.method showKeyboardOnNextFocus()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/launcher/SearchAutoCompleteTextView;->mShowKeyboard:Z

    .line 106
    return-void
.end method
