.class Lcom/android/camera/component/HandShakeUI$11;
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

    iput-object p1, p0, Lcom/android/camera/component/HandShakeUI$11;->this$0:Lcom/android/camera/component/HandShakeUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/HandShakeUI$11;->this$0:Lcom/android/camera/component/HandShakeUI;

    const/4 v1, 0x1

    #setter for: Lcom/android/camera/component/HandShakeUI;->m_menuIsOpen:Z
    invoke-static {v0, v1}, Lcom/android/camera/component/HandShakeUI;->access$702(Lcom/android/camera/component/HandShakeUI;Z)Z

    iget-object v0, p0, Lcom/android/camera/component/HandShakeUI$11;->this$0:Lcom/android/camera/component/HandShakeUI;

    #calls: Lcom/android/camera/component/HandShakeUI;->HideDisable()V
    invoke-static {v0}, Lcom/android/camera/component/HandShakeUI;->access$400(Lcom/android/camera/component/HandShakeUI;)V

    return-void
.end method
