.class Lcom/android/camera/effect/EffectPanelUI$21;
.super Ljava/lang/Object;
.source "EffectPanelUI.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/EffectPanelUI;->initializeUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/EffectPanelUI;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/EffectPanelUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/EffectPanelUI$21;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI$21;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #getter for: Lcom/android/camera/effect/EffectPanelUI;->m_EffectPanel:Lcom/android/camera/widget/SlidingPanel;
    invoke-static {v0}, Lcom/android/camera/effect/EffectPanelUI;->access$500(Lcom/android/camera/effect/EffectPanelUI;)Lcom/android/camera/widget/SlidingPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingPanel;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI$21;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI$21;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    const/4 v5, 0x0

    const/16 v6, 0x1388

    move v4, v3

    move v7, v2

    #calls: Lcom/android/camera/effect/EffectPanelUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;IZ)Z
    invoke-static/range {v0 .. v7}, Lcom/android/camera/effect/EffectPanelUI;->access$2100(Lcom/android/camera/effect/EffectPanelUI;Lcom/android/camera/component/Component;IIILjava/lang/Object;IZ)Z

    :cond_0
    return v3
.end method
