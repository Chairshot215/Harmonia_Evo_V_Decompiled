.class Lcom/android/camera/component/IndicatorsUI$2;
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

    iput-object p1, p0, Lcom/android/camera/component/IndicatorsUI$2;->this$0:Lcom/android/camera/component/IndicatorsUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI$2;->this$0:Lcom/android/camera/component/IndicatorsUI;

    invoke-virtual {v1}, Lcom/android/camera/component/IndicatorsUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isPaused()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isPreviewStarted()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI$2;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #calls: Lcom/android/camera/component/IndicatorsUI;->updateSelfTimerIndicator()V
    invoke-static {v1}, Lcom/android/camera/component/IndicatorsUI;->access$100(Lcom/android/camera/component/IndicatorsUI;)V

    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI$2;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #calls: Lcom/android/camera/component/IndicatorsUI;->updateMuteIndicator()V
    invoke-static {v1}, Lcom/android/camera/component/IndicatorsUI;->access$200(Lcom/android/camera/component/IndicatorsUI;)V

    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI$2;->this$0:Lcom/android/camera/component/IndicatorsUI;

    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI$2;->this$0:Lcom/android/camera/component/IndicatorsUI;

    invoke-virtual {v2}, Lcom/android/camera/component/IndicatorsUI;->getBaseLayout()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3}, Lcom/android/camera/component/IndicatorsUI;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0
.end method
