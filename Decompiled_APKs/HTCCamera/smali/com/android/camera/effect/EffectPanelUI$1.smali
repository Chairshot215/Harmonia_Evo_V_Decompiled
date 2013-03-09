.class Lcom/android/camera/effect/EffectPanelUI$1;
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

    iput-object p1, p0, Lcom/android/camera/effect/EffectPanelUI$1;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI$1;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;
    invoke-static {v0, v1}, Lcom/android/camera/effect/EffectPanelUI;->access$002(Lcom/android/camera/effect/EffectPanelUI;Lcom/android/camera/actionscreen/CommonActionScreen;)Lcom/android/camera/actionscreen/CommonActionScreen;

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI$1;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #calls: Lcom/android/camera/effect/EffectPanelUI;->updateEffectButtonAvailability()V
    invoke-static {v0}, Lcom/android/camera/effect/EffectPanelUI;->access$100(Lcom/android/camera/effect/EffectPanelUI;)V

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI$1;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #calls: Lcom/android/camera/effect/EffectPanelUI;->updateEffectButtonContent()V
    invoke-static {v0}, Lcom/android/camera/effect/EffectPanelUI;->access$200(Lcom/android/camera/effect/EffectPanelUI;)V

    return-void
.end method
