.class Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface$4;
.super Ljava/lang/Object;
.source "HybridHtmlConversationView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;->onContentReady()V
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
    .line 1491
    iput-object p1, p0, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface$4;->this$1:Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1494
    const-string v0, "Gmail"

    const-string v1, "ANIMATION STARTED, ready to draw. t=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1496
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface$4;->this$1:Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;

    iget-object v0, v0, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface$4;->this$1:Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;

    iget-object v1, v1, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    iget-object v1, v1, Lcom/google/android/gm/HybridHtmlConversationView;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/HybridHtmlConversationView;->notifyConversationLoaded(Lcom/google/android/gm/ConversationInfo;)V

    .line 1497
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface$4;->this$1:Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;

    iget-object v0, v0, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    #calls: Lcom/google/android/gm/HybridHtmlConversationView;->dismissLoadingStatus()V
    invoke-static {v0}, Lcom/google/android/gm/HybridHtmlConversationView;->access$1200(Lcom/google/android/gm/HybridHtmlConversationView;)V

    .line 1498
    return-void
.end method
