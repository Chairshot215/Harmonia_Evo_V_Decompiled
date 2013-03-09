.class Lcom/android/facelock/Draw$1;
.super Ljava/lang/Object;
.source "Draw.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 124
    iput-object p1, p0, Lcom/android/facelock/Draw$1;->this$0:Lcom/android/facelock/Draw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 127
    iget-object v1, p0, Lcom/android/facelock/Draw$1;->this$0:Lcom/android/facelock/Draw;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    #setter for: Lcom/android/facelock/Draw;->mPointAlpha:F
    invoke-static {v1, v0}, Lcom/android/facelock/Draw;->access$002(Lcom/android/facelock/Draw;F)F

    .line 128
    iget-object v0, p0, Lcom/android/facelock/Draw$1;->this$0:Lcom/android/facelock/Draw;

    invoke-virtual {v0}, Lcom/android/facelock/Draw;->invalidate()V

    .line 129
    return-void
.end method
