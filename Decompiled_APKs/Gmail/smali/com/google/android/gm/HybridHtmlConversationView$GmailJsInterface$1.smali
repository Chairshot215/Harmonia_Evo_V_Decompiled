.class Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface$1;
.super Ljava/lang/Object;
.source "HybridHtmlConversationView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;->onConversationInitialized()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;


# direct methods
.method constructor <init>(Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;)V
    .locals 0
    .parameter

    .prologue
    .line 1413
    iput-object p1, p0, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface$1;->this$1:Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface$1;->this$1:Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;

    iget-object v0, v0, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    #getter for: Lcom/google/android/gm/HybridHtmlConversationView;->mViewState:Lcom/google/android/gm/ConversationViewState;
    invoke-static {v0}, Lcom/google/android/gm/HybridHtmlConversationView;->access$700(Lcom/google/android/gm/HybridHtmlConversationView;)Lcom/google/android/gm/ConversationViewState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface$1;->this$1:Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;

    iget-object v0, v0, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    #getter for: Lcom/google/android/gm/HybridHtmlConversationView;->mWebView:Lcom/google/android/gm/CustomWebView;
    invoke-static {v0}, Lcom/google/android/gm/HybridHtmlConversationView;->access$400(Lcom/google/android/gm/HybridHtmlConversationView;)Lcom/google/android/gm/CustomWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1419
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface$1;->this$1:Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;

    iget-object v0, v0, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    #getter for: Lcom/google/android/gm/HybridHtmlConversationView;->mWebView:Lcom/google/android/gm/CustomWebView;
    invoke-static {v0}, Lcom/google/android/gm/HybridHtmlConversationView;->access$400(Lcom/google/android/gm/HybridHtmlConversationView;)Lcom/google/android/gm/CustomWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/CustomWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface$1;->this$1:Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;

    iget-object v0, v0, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    #getter for: Lcom/google/android/gm/HybridHtmlConversationView;->mRenderState:Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;
    invoke-static {v0}, Lcom/google/android/gm/HybridHtmlConversationView;->access$800(Lcom/google/android/gm/HybridHtmlConversationView;)Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;->shouldShowImages()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 1422
    :cond_0
    return-void

    .line 1419
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
