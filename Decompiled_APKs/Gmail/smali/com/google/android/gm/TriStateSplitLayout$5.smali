.class Lcom/google/android/gm/TriStateSplitLayout$5;
.super Ljava/lang/Object;
.source "TriStateSplitLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/TriStateSplitLayout;->dispatchConversationListVisibilityChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/TriStateSplitLayout;


# direct methods
.method constructor <init>(Lcom/google/android/gm/TriStateSplitLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 759
    iput-object p1, p0, Lcom/google/android/gm/TriStateSplitLayout$5;->this$0:Lcom/google/android/gm/TriStateSplitLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 762
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout$5;->this$0:Lcom/google/android/gm/TriStateSplitLayout;

    #getter for: Lcom/google/android/gm/TriStateSplitLayout;->mListener:Lcom/google/android/gm/TriStateSplitLayout$LayoutListener;
    invoke-static {v0}, Lcom/google/android/gm/TriStateSplitLayout;->access$700(Lcom/google/android/gm/TriStateSplitLayout;)Lcom/google/android/gm/TriStateSplitLayout$LayoutListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/TriStateSplitLayout$5;->this$0:Lcom/google/android/gm/TriStateSplitLayout;

    invoke-virtual {v1}, Lcom/google/android/gm/TriStateSplitLayout;->isConversationListVisible()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gm/TriStateSplitLayout$LayoutListener;->onConversationListVisibilityChanged(Z)V

    .line 763
    return-void
.end method
