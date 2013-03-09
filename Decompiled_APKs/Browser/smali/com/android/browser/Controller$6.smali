.class Lcom/android/browser/Controller$6;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/Controller;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/Controller;

.field final synthetic val$webview:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/android/browser/Controller;Landroid/webkit/WebView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1362
    iput-object p1, p0, Lcom/android/browser/Controller$6;->this$0:Lcom/android/browser/Controller;

    iput-object p2, p0, Lcom/android/browser/Controller$6;->val$webview:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    .line 1365
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1367
    .local v0, hrefMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/webkit/WebView;>;"
    const-string v2, "webview"

    iget-object v3, p0, Lcom/android/browser/Controller$6;->val$webview:Landroid/webkit/WebView;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1368
    iget-object v2, p0, Lcom/android/browser/Controller$6;->this$0:Lcom/android/browser/Controller;

    #getter for: Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/browser/Controller;->access$700(Lcom/android/browser/Controller;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x66

    const v4, 0x7f0d00d2

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1372
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/browser/Controller$6;->val$webview:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->requestFocusNodeHref(Landroid/os/Message;)V

    .line 1373
    const/4 v2, 0x1

    return v2
.end method
