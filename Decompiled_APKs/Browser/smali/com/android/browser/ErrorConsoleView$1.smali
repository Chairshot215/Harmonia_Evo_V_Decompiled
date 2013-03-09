.class Lcom/android/browser/ErrorConsoleView$1;
.super Ljava/lang/Object;
.source "ErrorConsoleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ErrorConsoleView;->commonSetupIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ErrorConsoleView;


# direct methods
.method constructor <init>(Lcom/android/browser/ErrorConsoleView;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/browser/ErrorConsoleView$1;->this$0:Lcom/android/browser/ErrorConsoleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/browser/ErrorConsoleView$1;->this$0:Lcom/android/browser/ErrorConsoleView;

    #getter for: Lcom/android/browser/ErrorConsoleView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/android/browser/ErrorConsoleView;->access$000(Lcom/android/browser/ErrorConsoleView;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/browser/ErrorConsoleView$1;->this$0:Lcom/android/browser/ErrorConsoleView;

    #getter for: Lcom/android/browser/ErrorConsoleView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/android/browser/ErrorConsoleView;->access$000(Lcom/android/browser/ErrorConsoleView;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/ErrorConsoleView$1;->this$0:Lcom/android/browser/ErrorConsoleView;

    #getter for: Lcom/android/browser/ErrorConsoleView;->mEvalEditText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/browser/ErrorConsoleView;->access$100(Lcom/android/browser/ErrorConsoleView;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/browser/ErrorConsoleView$1;->this$0:Lcom/android/browser/ErrorConsoleView;

    #getter for: Lcom/android/browser/ErrorConsoleView;->mEvalEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/browser/ErrorConsoleView;->access$100(Lcom/android/browser/ErrorConsoleView;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 97
    return-void
.end method
