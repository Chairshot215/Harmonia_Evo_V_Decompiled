.class Lcom/android/camera/component/IndicatorsUI$9;
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

    iput-object p1, p0, Lcom/android/camera/component/IndicatorsUI$9;->this$0:Lcom/android/camera/component/IndicatorsUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 4

    check-cast p1, Lcom/android/camera/OrientationEvent;

    invoke-virtual {p1}, Lcom/android/camera/OrientationEvent;->getNewUIOrientation()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI$9;->this$0:Lcom/android/camera/component/IndicatorsUI;

    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI$9;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #getter for: Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v2}, Lcom/android/camera/component/IndicatorsUI;->access$300(Lcom/android/camera/component/IndicatorsUI;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/component/IndicatorsUI$9;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #getter for: Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerIndicator:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/component/IndicatorsUI;->access$400(Lcom/android/camera/component/IndicatorsUI;)Landroid/widget/ImageView;

    move-result-object v3

    #calls: Lcom/android/camera/component/IndicatorsUI;->rotateIndicator(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;I)V
    invoke-static {v1, v2, v3, v0}, Lcom/android/camera/component/IndicatorsUI;->access$1000(Lcom/android/camera/component/IndicatorsUI;Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;I)V

    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI$9;->this$0:Lcom/android/camera/component/IndicatorsUI;

    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI$9;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #getter for: Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v2}, Lcom/android/camera/component/IndicatorsUI;->access$600(Lcom/android/camera/component/IndicatorsUI;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/component/IndicatorsUI$9;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #getter for: Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicator:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/component/IndicatorsUI;->access$700(Lcom/android/camera/component/IndicatorsUI;)Landroid/widget/ImageView;

    move-result-object v3

    #calls: Lcom/android/camera/component/IndicatorsUI;->rotateIndicator(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;I)V
    invoke-static {v1, v2, v3, v0}, Lcom/android/camera/component/IndicatorsUI;->access$1000(Lcom/android/camera/component/IndicatorsUI;Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;I)V

    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI$9;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #getter for: Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v1}, Lcom/android/camera/component/IndicatorsUI;->access$1100(Lcom/android/camera/component/IndicatorsUI;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI$9;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #getter for: Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v1}, Lcom/android/camera/component/IndicatorsUI;->access$1100(Lcom/android/camera/component/IndicatorsUI;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI$9;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #getter for: Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v1}, Lcom/android/camera/component/IndicatorsUI;->access$1100(Lcom/android/camera/component/IndicatorsUI;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v1

    const/16 v2, 0x190

    new-instance v3, Lcom/android/camera/component/IndicatorsUI$9$1;

    invoke-direct {v3, p0}, Lcom/android/camera/component/IndicatorsUI$9$1;-><init>(Lcom/android/camera/component/IndicatorsUI$9;)V

    invoke-static {v1, v0, v2, v3}, Lcom/android/camera/AnimationManager;->showAlphaRotateAnimation(Landroid/view/View;IILcom/android/camera/AnimationManager$AlphaRotateAnimationCallback;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI$9;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #calls: Lcom/android/camera/component/IndicatorsUI;->updateRemainingCounterLayout(I)V
    invoke-static {v1, v0}, Lcom/android/camera/component/IndicatorsUI;->access$1200(Lcom/android/camera/component/IndicatorsUI;I)V

    goto :goto_0
.end method
