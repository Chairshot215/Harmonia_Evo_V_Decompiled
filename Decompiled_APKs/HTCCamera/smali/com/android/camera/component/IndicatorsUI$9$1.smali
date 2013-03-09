.class Lcom/android/camera/component/IndicatorsUI$9$1;
.super Ljava/lang/Object;
.source "IndicatorsUI.java"

# interfaces
.implements Lcom/android/camera/AnimationManager$AlphaRotateAnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/IndicatorsUI$9;->onEvent(Lcom/android/camera/Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/component/IndicatorsUI$9;


# direct methods
.method constructor <init>(Lcom/android/camera/component/IndicatorsUI$9;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/IndicatorsUI$9$1;->this$1:Lcom/android/camera/component/IndicatorsUI$9;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateOrientation(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI$9$1;->this$1:Lcom/android/camera/component/IndicatorsUI$9;

    iget-object v0, v0, Lcom/android/camera/component/IndicatorsUI$9;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #calls: Lcom/android/camera/component/IndicatorsUI;->updateRemainingCounterLayout(I)V
    invoke-static {v0, p2}, Lcom/android/camera/component/IndicatorsUI;->access$1200(Lcom/android/camera/component/IndicatorsUI;I)V

    return-void
.end method
