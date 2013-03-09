.class Lcom/android/camera/effect/EffectPanelUI$13;
.super Ljava/lang/Object;
.source "EffectPanelUI.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/effect/EffectPanelUI;
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

    iput-object p1, p0, Lcom/android/camera/effect/EffectPanelUI$13;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI$13;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    check-cast p1, Lcom/android/camera/UIRequestEvent;

    invoke-virtual {p1}, Lcom/android/camera/UIRequestEvent;->isAnimationNeeded()Z

    move-result v1

    #calls: Lcom/android/camera/effect/EffectPanelUI;->togglePanel(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/effect/EffectPanelUI;->access$1000(Lcom/android/camera/effect/EffectPanelUI;Z)V

    return-void
.end method
