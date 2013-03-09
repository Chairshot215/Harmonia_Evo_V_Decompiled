.class Landroid/webkit/PluginFullScreenHolder$CustomFrameLayout;
.super Landroid/widget/FrameLayout;
.source "PluginFullScreenHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/PluginFullScreenHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomFrameLayout"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/PluginFullScreenHolder;


# direct methods
.method constructor <init>(Landroid/webkit/PluginFullScreenHolder;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Landroid/webkit/PluginFullScreenHolder$CustomFrameLayout;->this$0:Landroid/webkit/PluginFullScreenHolder;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/webkit/PluginFullScreenHolder$CustomFrameLayout;->this$0:Landroid/webkit/PluginFullScreenHolder;

    #getter for: Landroid/webkit/PluginFullScreenHolder;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Landroid/webkit/PluginFullScreenHolder;->access$000(Landroid/webkit/PluginFullScreenHolder;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/webkit/PluginFullScreenHolder$CustomFrameLayout;->this$0:Landroid/webkit/PluginFullScreenHolder;

    #getter for: Landroid/webkit/PluginFullScreenHolder;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Landroid/webkit/PluginFullScreenHolder;->access$000(Landroid/webkit/PluginFullScreenHolder;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/webkit/PluginFullScreenHolder$CustomFrameLayout;->this$0:Landroid/webkit/PluginFullScreenHolder;

    #getter for: Landroid/webkit/PluginFullScreenHolder;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Landroid/webkit/PluginFullScreenHolder;->access$000(Landroid/webkit/PluginFullScreenHolder;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    return v0
.end method
