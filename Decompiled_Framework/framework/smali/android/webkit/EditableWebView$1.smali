.class Landroid/webkit/EditableWebView$1;
.super Ljava/lang/Object;
.source "EditableWebView.java"

# interfaces
.implements Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/EditableWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/EditableWebView;


# direct methods
.method constructor <init>(Landroid/webkit/EditableWebView;)V
    .locals 0

    iput-object p1, p0, Landroid/webkit/EditableWebView$1;->this$0:Landroid/webkit/EditableWebView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrimaryClipChanged()V
    .locals 2

    iget-object v0, p0, Landroid/webkit/EditableWebView$1;->this$0:Landroid/webkit/EditableWebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/webkit/EditableWebView$1;->this$0:Landroid/webkit/EditableWebView;

    iget-object v0, v0, Landroid/webkit/EditableWebView;->mClipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    const-string/jumbo v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/EditableWebView$1;->this$0:Landroid/webkit/EditableWebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v0}, Landroid/webkit/HTCWebCore;->isSkipClipboardChang()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/webkit/EditableWebView$1;->this$0:Landroid/webkit/EditableWebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/HTCWebCore;->setSkipClipboardChang(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/webkit/EditableWebView$1;->this$0:Landroid/webkit/EditableWebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/webkit/HTCWebCore;->setCopiedStyleText(Ljava/lang/String;)V

    goto :goto_0
.end method
