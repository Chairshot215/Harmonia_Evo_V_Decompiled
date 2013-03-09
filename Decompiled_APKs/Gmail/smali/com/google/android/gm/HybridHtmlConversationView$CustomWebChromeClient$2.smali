.class Lcom/google/android/gm/HybridHtmlConversationView$CustomWebChromeClient$2;
.super Ljava/lang/Object;
.source "HybridHtmlConversationView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/HybridHtmlConversationView$CustomWebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/HybridHtmlConversationView$CustomWebChromeClient;

.field final synthetic val$result:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Lcom/google/android/gm/HybridHtmlConversationView$CustomWebChromeClient;Landroid/webkit/JsResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1797
    iput-object p1, p0, Lcom/google/android/gm/HybridHtmlConversationView$CustomWebChromeClient$2;->this$0:Lcom/google/android/gm/HybridHtmlConversationView$CustomWebChromeClient;

    iput-object p2, p0, Lcom/google/android/gm/HybridHtmlConversationView$CustomWebChromeClient$2;->val$result:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1800
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView$CustomWebChromeClient$2;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->cancel()V

    .line 1801
    return-void
.end method
