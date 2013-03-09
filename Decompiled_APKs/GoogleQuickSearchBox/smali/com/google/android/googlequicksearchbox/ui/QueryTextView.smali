.class public Lcom/google/android/googlequicksearchbox/ui/QueryTextView;
.super Landroid/widget/EditText;
.source "QueryTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/ui/QueryTextView$DrawableStateChangeListener;,
        Lcom/google/android/googlequicksearchbox/ui/QueryTextView$CommitCompletionListener;
    }
.end annotation


# instance fields
.field private mCommitCompletionListener:Lcom/google/android/googlequicksearchbox/ui/QueryTextView$CommitCompletionListener;

.field private mDrawableStateChangeListener:Lcom/google/android/googlequicksearchbox/ui/QueryTextView$DrawableStateChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method private getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method


# virtual methods
.method public addQueryTextWatcher(Lcom/google/android/googlequicksearchbox/util/TextChangeWatcher;)V
    .locals 1
    .parameter "watcher"

    .prologue
    .line 53
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/QueryTextView$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView$1;-><init>(Lcom/google/android/googlequicksearchbox/ui/QueryTextView;Lcom/google/android/googlequicksearchbox/util/TextChangeWatcher;)V

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 62
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 129
    invoke-super {p0}, Landroid/widget/EditText;->drawableStateChanged()V

    .line 130
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->mDrawableStateChangeListener:Lcom/google/android/googlequicksearchbox/ui/QueryTextView$DrawableStateChangeListener;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->mDrawableStateChangeListener:Lcom/google/android/googlequicksearchbox/ui/QueryTextView$DrawableStateChangeListener;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->getDrawableState()[I

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView$DrawableStateChangeListener;->onDrawableStateChange([I)V

    .line 133
    :cond_0
    return-void
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideNonFullscreenInputMethod()V
    .locals 3

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 108
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 111
    :cond_0
    return-void
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 2
    .parameter "completion"

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->hideNonFullscreenInputMethod()V

    .line 117
    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->replaceText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->mCommitCompletionListener:Lcom/google/android/googlequicksearchbox/ui/QueryTextView$CommitCompletionListener;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->mCommitCompletionListener:Lcom/google/android/googlequicksearchbox/ui/QueryTextView$CommitCompletionListener;

    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView$CommitCompletionListener;->onCommitCompletion(I)V

    .line 121
    :cond_0
    return-void
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->clearComposingText()V

    .line 85
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->setTextSelection(Z)V

    .line 87
    return-void
.end method

.method public setCommitCompletionListener(Lcom/google/android/googlequicksearchbox/ui/QueryTextView$CommitCompletionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->mCommitCompletionListener:Lcom/google/android/googlequicksearchbox/ui/QueryTextView$CommitCompletionListener;

    .line 91
    return-void
.end method

.method public setTextSelection(Z)V
    .locals 1
    .parameter "selectAll"

    .prologue
    .line 76
    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->selectAll()V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->setSelection(I)V

    goto :goto_0
.end method

.method public showInputMethod()V
    .locals 2

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 100
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 101
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 103
    :cond_0
    return-void
.end method
