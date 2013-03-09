.class Lcom/google/android/gm/ConversationListFragment$3;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/ConversationListFragment;->bindActivityInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/ConversationListFragment;


# direct methods
.method constructor <init>(Lcom/google/android/gm/ConversationListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/google/android/gm/ConversationListFragment$3;->this$0:Lcom/google/android/gm/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 239
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment$3;->this$0:Lcom/google/android/gm/ConversationListFragment;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/gm/ConversationListFragment;->mPostedUndoOp:Lcom/google/android/gm/UndoOperation;
    invoke-static {v0, v1}, Lcom/google/android/gm/ConversationListFragment;->access$302(Lcom/google/android/gm/ConversationListFragment;Lcom/google/android/gm/UndoOperation;)Lcom/google/android/gm/UndoOperation;

    .line 244
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 249
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 254
    return-void
.end method
