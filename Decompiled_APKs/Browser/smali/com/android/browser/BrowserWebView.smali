.class public Lcom/android/browser/BrowserWebView;
.super Landroid/webkit/WebView;
.source "BrowserWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BrowserWebView$OnScrollChangedListener;
    }
.end annotation


# instance fields
.field private mBackgroundRemoved:Z

.field private mOnScrollChangedListener:Lcom/android/browser/BrowserWebView$OnScrollChangedListener;

.field private mTitleBar:Lcom/android/browser/TitleBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BrowserWebView;->mBackgroundRemoved:Z

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BrowserWebView;->mBackgroundRemoved:Z

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;Z)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter
    .parameter "privateBrowsing"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p4, javascriptInterfaces:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct/range {p0 .. p5}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;Z)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BrowserWebView;->mBackgroundRemoved:Z

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter "privateBrowsing"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BrowserWebView;->mBackgroundRemoved:Z

    .line 59
    return-void
.end method


# virtual methods
.method public drawContent(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserWebView;->onDraw(Landroid/graphics/Canvas;)V

    .line 110
    return-void
.end method

.method protected getTitleHeight()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/browser/BrowserWebView;->mTitleBar:Lcom/android/browser/TitleBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/BrowserWebView;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->getEmbeddedHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTitleBar()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/browser/BrowserWebView;->mTitleBar:Lcom/android/browser/TitleBar;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hideEmbeddedTitleBar()V
    .locals 2

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/browser/BrowserWebView;->getVisibleTitleHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BrowserWebView;->scrollBy(II)V

    .line 83
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    .line 98
    iget-boolean v0, p0, Lcom/android/browser/BrowserWebView;->mBackgroundRemoved:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/BrowserWebView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/BrowserWebView;->mBackgroundRemoved:Z

    .line 100
    new-instance v0, Lcom/android/browser/BrowserWebView$1;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserWebView$1;-><init>(Lcom/android/browser/BrowserWebView;)V

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserWebView;->post(Ljava/lang/Runnable;)Z

    .line 106
    :cond_0
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 114
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 115
    iget-object v0, p0, Lcom/android/browser/BrowserWebView;->mOnScrollChangedListener:Lcom/android/browser/BrowserWebView$OnScrollChangedListener;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/browser/BrowserWebView;->mOnScrollChangedListener:Lcom/android/browser/BrowserWebView$OnScrollChangedListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/browser/BrowserWebView$OnScrollChangedListener;->onScrollChanged(IIII)V

    .line 118
    :cond_0
    return-void
.end method

.method public setEmbeddedTitleBar(Landroid/view/View;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setEmbeddedTitleBar(Landroid/view/View;)V

    .line 88
    check-cast p1, Lcom/android/browser/TitleBar;

    .end local p1
    iput-object p1, p0, Lcom/android/browser/BrowserWebView;->mTitleBar:Lcom/android/browser/TitleBar;

    .line 89
    return-void
.end method

.method public setOnScrollChangedListener(Lcom/android/browser/BrowserWebView$OnScrollChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/browser/BrowserWebView;->mOnScrollChangedListener:Lcom/android/browser/BrowserWebView$OnScrollChangedListener;

    .line 122
    return-void
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 1
    .parameter "originalView"

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method
