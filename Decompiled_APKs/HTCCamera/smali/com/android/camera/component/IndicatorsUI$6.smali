.class Lcom/android/camera/component/IndicatorsUI$6;
.super Ljava/lang/Object;
.source "IndicatorsUI.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/IndicatorsUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/IndicatorsUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/IndicatorsUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/IndicatorsUI$6;->this$0:Lcom/android/camera/component/IndicatorsUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI$6;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #calls: Lcom/android/camera/component/IndicatorsUI;->updateSelfTimerIndicator()V
    invoke-static {v0}, Lcom/android/camera/component/IndicatorsUI;->access$100(Lcom/android/camera/component/IndicatorsUI;)V

    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI$6;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #calls: Lcom/android/camera/component/IndicatorsUI;->updateMuteIndicator()V
    invoke-static {v0}, Lcom/android/camera/component/IndicatorsUI;->access$200(Lcom/android/camera/component/IndicatorsUI;)V

    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI$6;->this$0:Lcom/android/camera/component/IndicatorsUI;

    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI$6;->this$0:Lcom/android/camera/component/IndicatorsUI;

    invoke-virtual {v1}, Lcom/android/camera/component/IndicatorsUI;->getBaseLayout()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/camera/component/IndicatorsUI;->showUI(Landroid/view/View;ZZ)V

    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI$6;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #getter for: Lcom/android/camera/component/IndicatorsUI;->m_ShowIndicatorsEventHandler:Lcom/android/camera/IEventHandler;
    invoke-static {v0}, Lcom/android/camera/component/IndicatorsUI;->access$800(Lcom/android/camera/component/IndicatorsUI;)Lcom/android/camera/IEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/IEventHandler;->onEvent(Lcom/android/camera/Event;)V

    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI$6;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #calls: Lcom/android/camera/component/IndicatorsUI;->showRemainingCounter()V
    invoke-static {v0}, Lcom/android/camera/component/IndicatorsUI;->access$900(Lcom/android/camera/component/IndicatorsUI;)V

    return-void
.end method
