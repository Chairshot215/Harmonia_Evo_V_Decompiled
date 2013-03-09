.class Lcom/android/browser/NavTabScroller$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NavTabScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/NavTabScroller;->animateOut(Landroid/view/View;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/NavTabScroller;

.field final synthetic val$pos:I

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/browser/NavTabScroller;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 346
    iput-object p1, p0, Lcom/android/browser/NavTabScroller$2;->this$0:Lcom/android/browser/NavTabScroller;

    iput p2, p0, Lcom/android/browser/NavTabScroller$2;->val$position:I

    iput p3, p0, Lcom/android/browser/NavTabScroller$2;->val$pos:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "a"

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/browser/NavTabScroller$2;->this$0:Lcom/android/browser/NavTabScroller;

    #getter for: Lcom/android/browser/NavTabScroller;->mRemoveListener:Lcom/android/browser/NavTabScroller$OnRemoveListener;
    invoke-static {v0}, Lcom/android/browser/NavTabScroller;->access$000(Lcom/android/browser/NavTabScroller;)Lcom/android/browser/NavTabScroller$OnRemoveListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/browser/NavTabScroller$2;->this$0:Lcom/android/browser/NavTabScroller;

    #getter for: Lcom/android/browser/NavTabScroller;->mRemoveListener:Lcom/android/browser/NavTabScroller$OnRemoveListener;
    invoke-static {v0}, Lcom/android/browser/NavTabScroller;->access$000(Lcom/android/browser/NavTabScroller;)Lcom/android/browser/NavTabScroller$OnRemoveListener;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/NavTabScroller$2;->val$position:I

    invoke-interface {v0, v1}, Lcom/android/browser/NavTabScroller$OnRemoveListener;->onRemovePosition(I)V

    .line 350
    iget-object v0, p0, Lcom/android/browser/NavTabScroller$2;->this$0:Lcom/android/browser/NavTabScroller;

    const/4 v1, 0x0

    #setter for: Lcom/android/browser/NavTabScroller;->mAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lcom/android/browser/NavTabScroller;->access$102(Lcom/android/browser/NavTabScroller;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 351
    iget-object v0, p0, Lcom/android/browser/NavTabScroller$2;->this$0:Lcom/android/browser/NavTabScroller;

    const/4 v1, -0x1

    #setter for: Lcom/android/browser/NavTabScroller;->mGapPosition:I
    invoke-static {v0, v1}, Lcom/android/browser/NavTabScroller;->access$202(Lcom/android/browser/NavTabScroller;I)I

    .line 352
    iget-object v0, p0, Lcom/android/browser/NavTabScroller$2;->this$0:Lcom/android/browser/NavTabScroller;

    const/4 v1, 0x0

    #setter for: Lcom/android/browser/NavTabScroller;->mGap:I
    invoke-static {v0, v1}, Lcom/android/browser/NavTabScroller;->access$302(Lcom/android/browser/NavTabScroller;I)I

    .line 353
    iget-object v0, p0, Lcom/android/browser/NavTabScroller$2;->this$0:Lcom/android/browser/NavTabScroller;

    iget v1, p0, Lcom/android/browser/NavTabScroller$2;->val$pos:I

    invoke-virtual {v0, v1}, Lcom/android/browser/NavTabScroller;->handleDataChanged(I)V

    .line 355
    :cond_0
    return-void
.end method
