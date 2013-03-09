.class Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface$2;
.super Ljava/lang/Object;
.source "HybridHtmlConversationView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;->onWebContentGeometryChange([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;

.field final synthetic val$bodyHeightStrs:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1438
    iput-object p1, p0, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface$2;->this$1:Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;

    iput-object p2, p0, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface$2;->val$bodyHeightStrs:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1443
    iget-object v3, p0, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface$2;->val$bodyHeightStrs:[Ljava/lang/String;

    array-length v2, v3

    .line 1444
    .local v2, len:I
    new-array v0, v2, [I

    .line 1445
    .local v0, bodyHeights:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1446
    iget-object v3, p0, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface$2;->val$bodyHeightStrs:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v1

    .line 1445
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1448
    :cond_0
    iget-object v3, p0, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface$2;->this$1:Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;

    iget-object v3, v3, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    #calls: Lcom/google/android/gm/HybridHtmlConversationView;->layoutMessageHeaders([I)V
    invoke-static {v3, v0}, Lcom/google/android/gm/HybridHtmlConversationView;->access$1000(Lcom/google/android/gm/HybridHtmlConversationView;[I)V

    .line 1449
    return-void
.end method
