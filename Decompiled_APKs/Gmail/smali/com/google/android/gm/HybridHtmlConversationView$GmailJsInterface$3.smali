.class Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface$3;
.super Ljava/lang/Object;
.source "HybridHtmlConversationView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;->revealOverlay()V
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
    .line 1479
    iput-object p1, p0, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface$3;->this$1:Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1482
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface$3;->this$1:Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;

    iget-object v0, v0, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    #calls: Lcom/google/android/gm/HybridHtmlConversationView;->revealOverlay()V
    invoke-static {v0}, Lcom/google/android/gm/HybridHtmlConversationView;->access$500(Lcom/google/android/gm/HybridHtmlConversationView;)V

    .line 1483
    return-void
.end method
