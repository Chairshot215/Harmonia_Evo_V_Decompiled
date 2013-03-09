.class Lcom/android/camera/effect/EffectControlUI$10;
.super Ljava/lang/Object;
.source "EffectControlUI.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/EffectControlUI;->initializeOverride()V
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

    iput-object p1, p0, Lcom/android/camera/effect/EffectControlUI$10;->this$0:Lcom/android/camera/effect/EffectControlUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 2

    check-cast p1, Lcom/android/camera/OrientationEvent;

    invoke-virtual {p1}, Lcom/android/camera/OrientationEvent;->getNewUIOrientation()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/effect/EffectControlUI$10;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_IncreaseButtonContainer:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v1}, Lcom/android/camera/effect/EffectControlUI;->access$1500(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/effect/EffectControlUI$10;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_IncreaseButtonContainer:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v1}, Lcom/android/camera/effect/EffectControlUI;->access$1500(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/camera/effect/EffectControlUI$10;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_DecreaseButtonContainer:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v1}, Lcom/android/camera/effect/EffectControlUI;->access$1600(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/effect/EffectControlUI$10;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_DecreaseButtonContainer:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v1}, Lcom/android/camera/effect/EffectControlUI;->access$1600(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    :cond_1
    return-void
.end method
