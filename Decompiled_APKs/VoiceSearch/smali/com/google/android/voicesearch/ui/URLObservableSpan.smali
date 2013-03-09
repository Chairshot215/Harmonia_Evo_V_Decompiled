.class public Lcom/google/android/voicesearch/ui/URLObservableSpan;
.super Landroid/text/style/URLSpan;
.source "URLObservableSpan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/ui/URLObservableSpan$URLSpanListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/google/android/voicesearch/ui/URLObservableSpan$URLSpanListener;


# direct methods
.method public constructor <init>(Landroid/text/style/URLSpan;Lcom/google/android/voicesearch/ui/URLObservableSpan$URLSpanListener;)V
    .locals 1
    .parameter "urlSpan"
    .parameter "listener"

    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 44
    iput-object p2, p0, Lcom/google/android/voicesearch/ui/URLObservableSpan;->mListener:Lcom/google/android/voicesearch/ui/URLObservableSpan$URLSpanListener;

    .line 45
    return-void
.end method

.method private getInputMethodService(Landroid/content/Context;)Landroid/inputmethodservice/InputMethodService;
    .locals 1
    .parameter "context"

    .prologue
    .line 71
    instance-of v0, p1, Landroid/inputmethodservice/InputMethodService;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 72
    check-cast v0, Landroid/inputmethodservice/InputMethodService;

    .line 81
    :goto_0
    return-object v0

    .line 75
    :cond_0
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 76
    check-cast p1, Landroid/content/ContextWrapper;

    .end local p1
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    .line 77
    .restart local p1
    instance-of v0, p1, Landroid/inputmethodservice/InputMethodService;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 78
    check-cast v0, Landroid/inputmethodservice/InputMethodService;

    goto :goto_0

    .line 81
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static replace(Landroid/text/Spanned;Lcom/google/android/voicesearch/ui/URLObservableSpan$URLSpanListener;)Landroid/text/Spanned;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 85
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 88
    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Ljava/lang/Object;

    invoke-interface {p0, v0, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    .line 90
    array-length v5, v4

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v1, v4, v2

    .line 91
    instance-of v0, v1, Landroid/text/style/URLSpan;

    if-eqz v0, :cond_0

    .line 92
    new-instance v6, Lcom/google/android/voicesearch/ui/URLObservableSpan;

    move-object v0, v1

    check-cast v0, Landroid/text/style/URLSpan;

    invoke-direct {v6, v0, p1}, Lcom/google/android/voicesearch/ui/URLObservableSpan;-><init>(Landroid/text/style/URLSpan;Lcom/google/android/voicesearch/ui/URLObservableSpan$URLSpanListener;)V

    .line 93
    invoke-interface {p0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p0, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {p0, v1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v3, v6, v0, v7, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 90
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 96
    :cond_0
    invoke-interface {p0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p0, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {p0, v1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v3, v1, v0, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 101
    :cond_1
    return-object v3
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "widget"

    .prologue
    .line 49
    iget-object v4, p0, Lcom/google/android/voicesearch/ui/URLObservableSpan;->mListener:Lcom/google/android/voicesearch/ui/URLObservableSpan$URLSpanListener;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/ui/URLObservableSpan;->getURL()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/android/voicesearch/ui/URLObservableSpan$URLSpanListener;->onClick(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/google/android/voicesearch/ui/URLObservableSpan;->getURL()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 54
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 56
    .local v0, context:Landroid/content/Context;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 57
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "com.android.browser.application_id"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/ui/URLObservableSpan;->getInputMethodService(Landroid/content/Context;)Landroid/inputmethodservice/InputMethodService;

    move-result-object v1

    .line 60
    .local v1, ims:Landroid/inputmethodservice/InputMethodService;
    if-eqz v1, :cond_0

    .line 61
    const/high16 v4, 0x1000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 64
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    .line 67
    :cond_0
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 68
    return-void
.end method
