.class Lcom/android/browser/Tab$3$3;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/Tab$3;->setupAutoFill(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/Tab$3;

.field final synthetic val$layout:Landroid/view/View;

.field final synthetic val$msg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/android/browser/Tab$3;Landroid/view/View;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1270
    iput-object p1, p0, Lcom/android/browser/Tab$3$3;->this$1:Lcom/android/browser/Tab$3;

    iput-object p2, p0, Lcom/android/browser/Tab$3$3;->val$layout:Landroid/view/View;

    iput-object p3, p0, Lcom/android/browser/Tab$3$3;->val$msg:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 1273
    iget-object v1, p0, Lcom/android/browser/Tab$3$3;->val$layout:Landroid/view/View;

    const v2, 0x7f0d0064

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1276
    .local v0, disableAutoFill:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1278
    iget-object v1, p0, Lcom/android/browser/Tab$3$3;->this$1:Lcom/android/browser/Tab$3;

    iget-object v1, v1, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mSettings:Lcom/android/browser/BrowserSettings;
    invoke-static {v1}, Lcom/android/browser/Tab;->access$1300(Lcom/android/browser/Tab;)Lcom/android/browser/BrowserSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/browser/BrowserSettings;->setAutofillEnabled(Z)V

    .line 1279
    iget-object v1, p0, Lcom/android/browser/Tab$3$3;->this$1:Lcom/android/browser/Tab$3;

    iget-object v1, v1, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    const v2, 0x7f0c009d

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1288
    :goto_0
    return-void

    .line 1286
    :cond_0
    iget-object v1, p0, Lcom/android/browser/Tab$3$3;->this$1:Lcom/android/browser/Tab$3;

    iget-object v1, v1, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    iget-object v2, p0, Lcom/android/browser/Tab$3$3;->val$msg:Landroid/os/Message;

    invoke-interface {v1, v2}, Lcom/android/browser/WebViewController;->setupAutoFill(Landroid/os/Message;)V

    goto :goto_0
.end method
