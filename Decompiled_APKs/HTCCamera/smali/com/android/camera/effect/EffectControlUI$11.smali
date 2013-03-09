.class Lcom/android/camera/effect/EffectControlUI$11;
.super Ljava/lang/Object;
.source "EffectControlUI.java"

# interfaces
.implements Lcom/android/camera/widget/EffectControlCircle$OnCenterPointChangedListener;


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

    iput-object p1, p0, Lcom/android/camera/effect/EffectControlUI$11;->this$0:Lcom/android/camera/effect/EffectControlUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCenterChanged(Lcom/android/camera/widget/EffectControlCircle;Landroid/graphics/Point;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectControlUI$11;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_ShowingInitValues:Z
    invoke-static {v0}, Lcom/android/camera/effect/EffectControlUI;->access$100(Lcom/android/camera/effect/EffectControlUI;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/effect/EffectControlUI$11;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;
    invoke-static {v0}, Lcom/android/camera/effect/EffectControlUI;->access$200(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/effect/EffectBase;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/effect/DistortionEffect;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/effect/EffectControlUI$11;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;
    invoke-static {v0}, Lcom/android/camera/effect/EffectControlUI;->access$200(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/effect/EffectBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/DistortionEffect;

    invoke-virtual {v0, p2}, Lcom/android/camera/effect/DistortionEffect;->setCenter(Landroid/graphics/Point;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/effect/EffectControlUI$11;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;
    invoke-static {v0}, Lcom/android/camera/effect/EffectControlUI;->access$200(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/effect/EffectBase;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/effect/DepthOfFieldEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/EffectControlUI$11;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;
    invoke-static {v0}, Lcom/android/camera/effect/EffectControlUI;->access$200(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/effect/EffectBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/DepthOfFieldEffect;

    invoke-virtual {v0, p2}, Lcom/android/camera/effect/DepthOfFieldEffect;->setCenter(Landroid/graphics/Point;)V

    goto :goto_0
.end method
