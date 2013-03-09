.class Lcom/android/camera/component/SelfTimerUI$4;
.super Ljava/lang/Object;
.source "SelfTimerUI.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/SelfTimerUI;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/SelfTimerUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/SelfTimerUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/SelfTimerUI$4;->this$0:Lcom/android/camera/component/SelfTimerUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/component/SelfTimerUI$4;->this$0:Lcom/android/camera/component/SelfTimerUI;

    #calls: Lcom/android/camera/component/SelfTimerUI;->initializeUI()V
    invoke-static {v0}, Lcom/android/camera/component/SelfTimerUI;->access$300(Lcom/android/camera/component/SelfTimerUI;)V

    iget-object v0, p0, Lcom/android/camera/component/SelfTimerUI$4;->this$0:Lcom/android/camera/component/SelfTimerUI;

    #getter for: Lcom/android/camera/component/SelfTimerUI;->m_TimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v0}, Lcom/android/camera/component/SelfTimerUI;->access$100(Lcom/android/camera/component/SelfTimerUI;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/android/camera/component/SelfTimerUI$4;->this$0:Lcom/android/camera/component/SelfTimerUI;

    iget-object v1, p0, Lcom/android/camera/component/SelfTimerUI$4;->this$0:Lcom/android/camera/component/SelfTimerUI;

    #getter for: Lcom/android/camera/component/SelfTimerUI;->m_TimerBackground:Landroid/view/View;
    invoke-static {v1}, Lcom/android/camera/component/SelfTimerUI;->access$000(Lcom/android/camera/component/SelfTimerUI;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/component/SelfTimerUI;->showUI(Landroid/view/View;ZZ)V

    return-void
.end method
