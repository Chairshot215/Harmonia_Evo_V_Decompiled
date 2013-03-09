.class Lcom/android/camera/component/DOTIndicatorUI$1;
.super Ljava/lang/Object;
.source "DOTIndicatorUI.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/DOTIndicatorUI;->registerListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/DOTIndicatorUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/DOTIndicatorUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/DOTIndicatorUI$1;->this$0:Lcom/android/camera/component/DOTIndicatorUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 5

    check-cast p1, Lcom/android/camera/OrientationEvent;

    invoke-virtual {p1}, Lcom/android/camera/OrientationEvent;->getNewUIOrientation()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/component/DOTIndicatorUI$1;->this$0:Lcom/android/camera/component/DOTIndicatorUI;

    iget-object v2, p0, Lcom/android/camera/component/DOTIndicatorUI$1;->this$0:Lcom/android/camera/component/DOTIndicatorUI;

    #getter for: Lcom/android/camera/component/DOTIndicatorUI;->mHintShakeLayout:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v2}, Lcom/android/camera/component/DOTIndicatorUI;->access$000(Lcom/android/camera/component/DOTIndicatorUI;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v2

    const/16 v3, 0x1ae

    const/16 v4, 0x2e4

    #calls: Lcom/android/camera/component/DOTIndicatorUI;->setIndicatorPosition(ILcom/android/camera/rotate/RotateRelativeLayout;II)V
    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/camera/component/DOTIndicatorUI;->access$100(Lcom/android/camera/component/DOTIndicatorUI;ILcom/android/camera/rotate/RotateRelativeLayout;II)V

    iget-object v1, p0, Lcom/android/camera/component/DOTIndicatorUI$1;->this$0:Lcom/android/camera/component/DOTIndicatorUI;

    iget-object v2, p0, Lcom/android/camera/component/DOTIndicatorUI$1;->this$0:Lcom/android/camera/component/DOTIndicatorUI;

    #getter for: Lcom/android/camera/component/DOTIndicatorUI;->mHintSmileLayout:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v2}, Lcom/android/camera/component/DOTIndicatorUI;->access$200(Lcom/android/camera/component/DOTIndicatorUI;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v2

    const/16 v3, 0x186

    const/16 v4, 0x2bc

    #calls: Lcom/android/camera/component/DOTIndicatorUI;->setIndicatorPosition(ILcom/android/camera/rotate/RotateRelativeLayout;II)V
    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/camera/component/DOTIndicatorUI;->access$100(Lcom/android/camera/component/DOTIndicatorUI;ILcom/android/camera/rotate/RotateRelativeLayout;II)V

    iget-object v1, p0, Lcom/android/camera/component/DOTIndicatorUI$1;->this$0:Lcom/android/camera/component/DOTIndicatorUI;

    iget-object v2, p0, Lcom/android/camera/component/DOTIndicatorUI$1;->this$0:Lcom/android/camera/component/DOTIndicatorUI;

    #getter for: Lcom/android/camera/component/DOTIndicatorUI;->mHintBlinkLayout:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v2}, Lcom/android/camera/component/DOTIndicatorUI;->access$300(Lcom/android/camera/component/DOTIndicatorUI;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v2

    const/16 v3, 0x15e

    const/16 v4, 0x294

    #calls: Lcom/android/camera/component/DOTIndicatorUI;->setIndicatorPosition(ILcom/android/camera/rotate/RotateRelativeLayout;II)V
    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/camera/component/DOTIndicatorUI;->access$100(Lcom/android/camera/component/DOTIndicatorUI;ILcom/android/camera/rotate/RotateRelativeLayout;II)V

    return-void
.end method
