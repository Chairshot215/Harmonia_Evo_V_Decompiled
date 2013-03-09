.class Lcom/android/facelock/Draw$2;
.super Ljava/lang/Object;
.source "Draw.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/facelock/Draw;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/facelock/Draw;


# direct methods
.method constructor <init>(Lcom/android/facelock/Draw;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/facelock/Draw$2;->this$0:Lcom/android/facelock/Draw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 137
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/facelock/Draw$2;->this$0:Lcom/android/facelock/Draw;

    sget-object v1, Lcom/android/facelock/Draw$State;->CHECK:Lcom/android/facelock/Draw$State;

    #setter for: Lcom/android/facelock/Draw;->mState:Lcom/android/facelock/Draw$State;
    invoke-static {v0, v1}, Lcom/android/facelock/Draw;->access$102(Lcom/android/facelock/Draw;Lcom/android/facelock/Draw$State;)Lcom/android/facelock/Draw$State;

    .line 140
    iget-object v0, p0, Lcom/android/facelock/Draw$2;->this$0:Lcom/android/facelock/Draw;

    #getter for: Lcom/android/facelock/Draw;->mCheckAlphaAnim:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/android/facelock/Draw;->access$200(Lcom/android/facelock/Draw;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 141
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 142
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 143
    return-void
.end method
