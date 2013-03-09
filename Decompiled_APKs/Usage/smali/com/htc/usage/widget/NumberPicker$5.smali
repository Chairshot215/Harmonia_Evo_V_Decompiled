.class Lcom/htc/usage/widget/NumberPicker$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/usage/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Lcom/htc/usage/widget/NumberPicker;


# direct methods
.method constructor <init>(Lcom/htc/usage/widget/NumberPicker;)V
    .locals 1
    .parameter

    .prologue
    .line 678
    iput-object p1, p0, Lcom/htc/usage/widget/NumberPicker$5;->this$0:Lcom/htc/usage/widget/NumberPicker;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 679
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/usage/widget/NumberPicker$5;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 692
    iget-object v0, p0, Lcom/htc/usage/widget/NumberPicker$5;->this$0:Lcom/htc/usage/widget/NumberPicker;

    #getter for: Lcom/htc/usage/widget/NumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/htc/usage/widget/NumberPicker;->access$500(Lcom/htc/usage/widget/NumberPicker;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 693
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/usage/widget/NumberPicker$5;->mCanceled:Z

    .line 695
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 683
    iget-boolean v0, p0, Lcom/htc/usage/widget/NumberPicker$5;->mCanceled:Z

    if-nez v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/htc/usage/widget/NumberPicker$5;->this$0:Lcom/htc/usage/widget/NumberPicker;

    const/4 v1, 0x1

    #calls: Lcom/htc/usage/widget/NumberPicker;->setSelectorWheelState(I)V
    invoke-static {v0, v1}, Lcom/htc/usage/widget/NumberPicker;->access$400(Lcom/htc/usage/widget/NumberPicker;I)V

    .line 687
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/usage/widget/NumberPicker$5;->mCanceled:Z

    .line 688
    return-void
.end method
