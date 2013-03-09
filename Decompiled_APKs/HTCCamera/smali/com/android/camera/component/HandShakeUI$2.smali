.class Lcom/android/camera/component/HandShakeUI$2;
.super Ljava/lang/Object;
.source "HandShakeUI.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/HandShakeUI;->registerListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/HandShakeUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/HandShakeUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/HandShakeUI$2;->this$0:Lcom/android/camera/component/HandShakeUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 2

    check-cast p1, Lcom/android/camera/OrientationEvent;

    invoke-virtual {p1}, Lcom/android/camera/OrientationEvent;->getNewUIOrientation()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/component/HandShakeUI$2;->this$0:Lcom/android/camera/component/HandShakeUI;

    #getter for: Lcom/android/camera/component/HandShakeUI;->m_HandshakeContainer:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v1}, Lcom/android/camera/component/HandShakeUI;->access$000(Lcom/android/camera/component/HandShakeUI;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    return-void
.end method
