.class Lcom/google/android/gm/HybridHtmlConversationView$2;
.super Ljava/lang/Object;
.source "HybridHtmlConversationView.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/HybridHtmlConversationView;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/HybridHtmlConversationView;

.field final synthetic val$callback:Landroid/view/ActionMode$Callback;


# direct methods
.method constructor <init>(Lcom/google/android/gm/HybridHtmlConversationView;Landroid/view/ActionMode$Callback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 480
    iput-object p1, p0, Lcom/google/android/gm/HybridHtmlConversationView$2;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    iput-object p2, p0, Lcom/google/android/gm/HybridHtmlConversationView$2;->val$callback:Landroid/view/ActionMode$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 493
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView$2;->val$callback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 483
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView$2;->val$callback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 498
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView$2;->val$callback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 499
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView$2;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    #getter for: Lcom/google/android/gm/HybridHtmlConversationView;->mWebView:Lcom/google/android/gm/CustomWebView;
    invoke-static {v0}, Lcom/google/android/gm/HybridHtmlConversationView;->access$400(Lcom/google/android/gm/HybridHtmlConversationView;)Lcom/google/android/gm/CustomWebView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/CustomWebView;->setPagingEnabled(Z)V

    .line 500
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 488
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView$2;->val$callback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
