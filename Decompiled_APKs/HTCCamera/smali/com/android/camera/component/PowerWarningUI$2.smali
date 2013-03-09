.class Lcom/android/camera/component/PowerWarningUI$2;
.super Ljava/lang/Object;
.source "PowerWarningUI.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/PowerWarningUI;->registerListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/PowerWarningUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/PowerWarningUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/PowerWarningUI$2;->this$0:Lcom/android/camera/component/PowerWarningUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Lcom/android/camera/KeyEvent;

    iget-object v1, p0, Lcom/android/camera/component/PowerWarningUI$2;->this$0:Lcom/android/camera/component/PowerWarningUI;

    #getter for: Lcom/android/camera/component/PowerWarningUI;->m_IsShown:Z
    invoke-static {v1}, Lcom/android/camera/component/PowerWarningUI;->access$000(Lcom/android/camera/component/PowerWarningUI;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/KeyEvent;->setHandled()V

    :cond_0
    return-void
.end method
