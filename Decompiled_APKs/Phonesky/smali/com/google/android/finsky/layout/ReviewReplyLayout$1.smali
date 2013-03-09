.class Lcom/google/android/finsky/layout/ReviewReplyLayout$1;
.super Ljava/lang/Object;
.source "ReviewReplyLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/ReviewReplyLayout;->enableToggle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/ReviewReplyLayout;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/ReviewReplyLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/finsky/layout/ReviewReplyLayout$1;->this$0:Lcom/google/android/finsky/layout/ReviewReplyLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v0, 0x0

    .line 96
    iget-object v1, p0, Lcom/google/android/finsky/layout/ReviewReplyLayout$1;->this$0:Lcom/google/android/finsky/layout/ReviewReplyLayout;

    #getter for: Lcom/google/android/finsky/layout/ReviewReplyLayout;->mIsExpanded:Z
    invoke-static {v1}, Lcom/google/android/finsky/layout/ReviewReplyLayout;->access$000(Lcom/google/android/finsky/layout/ReviewReplyLayout;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/google/android/finsky/layout/ReviewReplyLayout$1;->this$0:Lcom/google/android/finsky/layout/ReviewReplyLayout;

    #calls: Lcom/google/android/finsky/layout/ReviewReplyLayout;->showMoreIndicator()V
    invoke-static {v1}, Lcom/google/android/finsky/layout/ReviewReplyLayout;->access$100(Lcom/google/android/finsky/layout/ReviewReplyLayout;)V

    .line 98
    iget-object v1, p0, Lcom/google/android/finsky/layout/ReviewReplyLayout$1;->this$0:Lcom/google/android/finsky/layout/ReviewReplyLayout;

    iget-object v1, v1, Lcom/google/android/finsky/layout/ReviewReplyLayout;->mReplyText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    :goto_0
    iget-object v1, p0, Lcom/google/android/finsky/layout/ReviewReplyLayout$1;->this$0:Lcom/google/android/finsky/layout/ReviewReplyLayout;

    iget-object v2, p0, Lcom/google/android/finsky/layout/ReviewReplyLayout$1;->this$0:Lcom/google/android/finsky/layout/ReviewReplyLayout;

    #getter for: Lcom/google/android/finsky/layout/ReviewReplyLayout;->mIsExpanded:Z
    invoke-static {v2}, Lcom/google/android/finsky/layout/ReviewReplyLayout;->access$000(Lcom/google/android/finsky/layout/ReviewReplyLayout;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    #setter for: Lcom/google/android/finsky/layout/ReviewReplyLayout;->mIsExpanded:Z
    invoke-static {v1, v0}, Lcom/google/android/finsky/layout/ReviewReplyLayout;->access$002(Lcom/google/android/finsky/layout/ReviewReplyLayout;Z)Z

    .line 104
    return-void

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/layout/ReviewReplyLayout$1;->this$0:Lcom/google/android/finsky/layout/ReviewReplyLayout;

    #calls: Lcom/google/android/finsky/layout/ReviewReplyLayout;->showLessIndicator()V
    invoke-static {v1}, Lcom/google/android/finsky/layout/ReviewReplyLayout;->access$200(Lcom/google/android/finsky/layout/ReviewReplyLayout;)V

    .line 101
    iget-object v1, p0, Lcom/google/android/finsky/layout/ReviewReplyLayout$1;->this$0:Lcom/google/android/finsky/layout/ReviewReplyLayout;

    iget-object v1, v1, Lcom/google/android/finsky/layout/ReviewReplyLayout;->mReplyText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
