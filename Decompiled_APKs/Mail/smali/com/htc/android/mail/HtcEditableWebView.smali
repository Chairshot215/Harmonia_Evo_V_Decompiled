.class public Lcom/htc/android/mail/HtcEditableWebView;
.super Landroid/webkit/EditableWebView;
.source "HtcEditableWebView.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field isPreventParentIntecept:Z

.field private mDestory:Z

.field mDownX:F

.field mDownY:F

.field private mReadScreenScrollView:Lcom/htc/android/mail/ReadScreenScrollView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/HtcEditableWebView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1}, Landroid/webkit/EditableWebView;-><init>(Landroid/content/Context;)V

    .line 12
    iput-boolean v1, p0, Lcom/htc/android/mail/HtcEditableWebView;->mDestory:Z

    .line 45
    iput v0, p0, Lcom/htc/android/mail/HtcEditableWebView;->mDownX:F

    .line 46
    iput v0, p0, Lcom/htc/android/mail/HtcEditableWebView;->mDownY:F

    .line 48
    iput-boolean v1, p0, Lcom/htc/android/mail/HtcEditableWebView;->isPreventParentIntecept:Z

    .line 18
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/HtcEditableWebView;->clearCache(Z)V

    .line 22
    invoke-virtual {p0, v1}, Lcom/htc/android/mail/HtcEditableWebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    .line 23
    invoke-virtual {p0, v1}, Lcom/htc/android/mail/HtcEditableWebView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 24
    invoke-virtual {p0, v1}, Lcom/htc/android/mail/HtcEditableWebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 25
    invoke-virtual {p0, v1}, Lcom/htc/android/mail/HtcEditableWebView;->setOnContentChangedListener(Landroid/webkit/EditableWebView$OnContentChangedListener;)V

    .line 26
    invoke-virtual {p0, v1}, Lcom/htc/android/mail/HtcEditableWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 27
    invoke-virtual {p0, v1}, Lcom/htc/android/mail/HtcEditableWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 28
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/HtcEditableWebView;->mDestory:Z

    .line 42
    invoke-super {p0}, Landroid/webkit/EditableWebView;->destroy()V

    .line 43
    return-void
.end method

.method public onEndSelect(Z)V
    .locals 2
    .parameter "removeSelection"

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/webkit/EditableWebView;->onEndSelect(Z)V

    .line 100
    iget-object v0, p0, Lcom/htc/android/mail/HtcEditableWebView;->mReadScreenScrollView:Lcom/htc/android/mail/ReadScreenScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ReadScreenScrollView;->setMode(I)V

    .line 101
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "ev"

    .prologue
    const/4 v6, 0x1

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 61
    .local v0, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 63
    .local v2, y:F
    sget-boolean v3, Lcom/htc/android/mail/HtcEditableWebView;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 64
    const-string v3, "HtcEditableWebView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HtcEditableWebView::onTouchEvent] >> ev="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 90
    :pswitch_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/android/mail/HtcEditableWebView;->isPreventParentIntecept:Z

    .line 94
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/webkit/EditableWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 68
    :pswitch_1
    iput v0, p0, Lcom/htc/android/mail/HtcEditableWebView;->mDownX:F

    .line 69
    iput v2, p0, Lcom/htc/android/mail/HtcEditableWebView;->mDownY:F

    .line 72
    invoke-virtual {p0}, Lcom/htc/android/mail/HtcEditableWebView;->getSelectionMethod()Landroid/webkit/WebViewSelectionMethod;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v3

    sget-object v4, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->NONE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-eq v3, v4, :cond_1

    .line 73
    iget-object v3, p0, Lcom/htc/android/mail/HtcEditableWebView;->mReadScreenScrollView:Lcom/htc/android/mail/ReadScreenScrollView;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/ReadScreenScrollView;->setMode(I)V

    goto :goto_0

    .line 78
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/android/mail/HtcEditableWebView;->getSelectionMethod()Landroid/webkit/WebViewSelectionMethod;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v3

    sget-object v4, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v3, v4, :cond_1

    .line 79
    iget-boolean v3, p0, Lcom/htc/android/mail/HtcEditableWebView;->isPreventParentIntecept:Z

    if-nez v3, :cond_2

    .line 80
    iget v3, p0, Lcom/htc/android/mail/HtcEditableWebView;->mDownX:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 81
    .local v1, xDiff:F
    const/high16 v3, 0x4120

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_2

    invoke-virtual {p0}, Lcom/htc/android/mail/HtcEditableWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 82
    invoke-virtual {p0}, Lcom/htc/android/mail/HtcEditableWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 83
    iput-boolean v6, p0, Lcom/htc/android/mail/HtcEditableWebView;->isPreventParentIntecept:Z

    .line 86
    .end local v1           #xDiff:F
    :cond_2
    const/4 v3, 0x0

    iget v4, p0, Lcom/htc/android/mail/HtcEditableWebView;->mDownY:F

    sub-float v4, v2, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasWindowFocus"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/htc/android/mail/HtcEditableWebView;->mDestory:Z

    if-eqz v0, :cond_0

    .line 36
    :goto_0
    return-void

    .line 35
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/EditableWebView;->onWindowFocusChanged(Z)V

    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/htc/android/mail/HtcEditableWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/htc/android/mail/HtcEditableWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 54
    :cond_0
    invoke-super {p0}, Landroid/webkit/EditableWebView;->performLongClick()Z

    move-result v0

    return v0
.end method

.method public pinLocXInternal(I)I
    .locals 3
    .parameter "x"

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/htc/android/mail/HtcEditableWebView;->getWidth()I

    move-result v1

    .line 109
    .local v1, viewMax:I
    invoke-virtual {p0}, Lcom/htc/android/mail/HtcEditableWebView;->computeHorizontalScrollRange()I

    move-result v0

    .line 111
    .local v0, docMax:I
    if-ge v0, v1, :cond_1

    .line 112
    const/4 p1, 0x0

    .line 118
    :cond_0
    :goto_0
    return p1

    .line 113
    :cond_1
    if-gez p1, :cond_2

    .line 114
    const/4 p1, 0x0

    goto :goto_0

    .line 115
    :cond_2
    add-int v2, p1, v1

    if-le v2, v0, :cond_0

    .line 116
    sub-int p1, v0, v1

    goto :goto_0
.end method

.method setScrollView(Lcom/htc/android/mail/ReadScreenScrollView;)V
    .locals 0
    .parameter "scrollView"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/htc/android/mail/HtcEditableWebView;->mReadScreenScrollView:Lcom/htc/android/mail/ReadScreenScrollView;

    .line 105
    return-void
.end method
