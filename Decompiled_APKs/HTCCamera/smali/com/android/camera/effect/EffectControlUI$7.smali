.class Lcom/android/camera/effect/EffectControlUI$7;
.super Ljava/lang/Object;
.source "EffectControlUI.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/effect/EffectControlUI;
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

    iput-object p1, p0, Lcom/android/camera/effect/EffectControlUI$7;->this$0:Lcom/android/camera/effect/EffectControlUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/effect/EffectControlUI$7;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_IsControlsNeeded:Z
    invoke-static {v1}, Lcom/android/camera/effect/EffectControlUI;->access$500(Lcom/android/camera/effect/EffectControlUI;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/effect/EffectControlUI$7;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;
    invoke-static {v1}, Lcom/android/camera/effect/EffectControlUI;->access$700(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/widget/EffectControlCircle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/widget/EffectControlCircle;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/effect/EffectControlUI$7;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;
    invoke-static {v1}, Lcom/android/camera/effect/EffectControlUI;->access$700(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/widget/EffectControlCircle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/widget/EffectControlCircle;->getCenterPoint()Landroid/graphics/Point;

    move-result-object v0

    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    check-cast p1, Lcom/android/camera/QueryEvent;

    invoke-virtual {p1, v0}, Lcom/android/camera/QueryEvent;->setResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
