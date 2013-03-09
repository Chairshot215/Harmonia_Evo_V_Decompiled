.class Lcom/android/camera/effect/EffectPanelUI$18;
.super Ljava/lang/Object;
.source "EffectPanelUI.java"

# interfaces
.implements Lcom/android/camera/widget/SlidingPanel$OnPanelMovingListener;


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

    iput-object p1, p0, Lcom/android/camera/effect/EffectPanelUI$18;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMoving(Lcom/android/camera/widget/SlidingPanel;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI$18;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #calls: Lcom/android/camera/effect/EffectPanelUI;->updateEffectButtonPosition(I)V
    invoke-static {v0, p2}, Lcom/android/camera/effect/EffectPanelUI;->access$1700(Lcom/android/camera/effect/EffectPanelUI;I)V

    return-void
.end method
