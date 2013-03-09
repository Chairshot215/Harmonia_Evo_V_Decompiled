.class Lcom/google/android/gm/HybridHtmlConversationView$3;
.super Ljava/lang/Object;
.source "HybridHtmlConversationView.java"

# interfaces
.implements Lcom/google/android/gm/ScrollNotifier$ScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/HybridHtmlConversationView;->showConversationInternal(Lcom/google/android/gm/provider/Gmail$MessageCursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/HybridHtmlConversationView;


# direct methods
.method constructor <init>(Lcom/google/android/gm/HybridHtmlConversationView;)V
    .locals 0
    .parameter

    .prologue
    .line 753
    iput-object p1, p0, Lcom/google/android/gm/HybridHtmlConversationView$3;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotifierScroll(II)V
    .locals 1
    .parameter "left"
    .parameter "top"

    .prologue
    .line 756
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView$3;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    #calls: Lcom/google/android/gm/HybridHtmlConversationView;->revealOverlay()V
    invoke-static {v0}, Lcom/google/android/gm/HybridHtmlConversationView;->access$500(Lcom/google/android/gm/HybridHtmlConversationView;)V

    .line 757
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView$3;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    #getter for: Lcom/google/android/gm/HybridHtmlConversationView;->mWebView:Lcom/google/android/gm/CustomWebView;
    invoke-static {v0}, Lcom/google/android/gm/HybridHtmlConversationView;->access$400(Lcom/google/android/gm/HybridHtmlConversationView;)Lcom/google/android/gm/CustomWebView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gm/CustomWebView;->removeScrollListener(Lcom/google/android/gm/ScrollNotifier$ScrollListener;)V

    .line 758
    return-void
.end method
