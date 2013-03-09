.class Lcom/android/camera/effect/EffectControlUI$12;
.super Ljava/lang/Object;
.source "EffectControlUI.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/EffectControlUI;->initializeUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/EffectControlUI;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/EffectControlUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/EffectControlUI$12;->this$0:Lcom/android/camera/effect/EffectControlUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v3, p0, Lcom/android/camera/effect/EffectControlUI$12;->this$0:Lcom/android/camera/effect/EffectControlUI;

    invoke-virtual {v3}, Lcom/android/camera/effect/EffectControlUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/camera/effect/EffectControlUI$12;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;
    invoke-static {v3}, Lcom/android/camera/effect/EffectControlUI;->access$700(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/widget/EffectControlCircle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/widget/EffectControlCircle;->getCenterPoint()Landroid/graphics/Point;

    move-result-object v1

    sget v3, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Point;->set(II)V

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->disableTouchFocus()V

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/HTCCamera;->takeFocus(II)V

    invoke-virtual {v0, p2}, Lcom/android/camera/HTCCamera;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/camera/HTCCamera;->enableTouchFocus(Z)V

    :goto_0
    return v2

    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/camera/HTCCamera;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0
.end method
