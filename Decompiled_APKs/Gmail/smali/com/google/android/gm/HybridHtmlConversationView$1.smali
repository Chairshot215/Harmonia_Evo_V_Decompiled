.class Lcom/google/android/gm/HybridHtmlConversationView$1;
.super Ljava/lang/Object;
.source "HybridHtmlConversationView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/HybridHtmlConversationView;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 325
    iput-object p1, p0, Lcom/google/android/gm/HybridHtmlConversationView$1;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView$1;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    #calls: Lcom/google/android/gm/HybridHtmlConversationView;->refreshWithPendingData()V
    invoke-static {v0}, Lcom/google/android/gm/HybridHtmlConversationView;->access$300(Lcom/google/android/gm/HybridHtmlConversationView;)V

    .line 329
    return-void
.end method
