.class Lcom/android/camera/actionscreen/ActionScreen$2;
.super Ljava/lang/Object;
.source "ActionScreen.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/actionscreen/ActionScreen;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actionscreen/ActionScreen;


# direct methods
.method constructor <init>(Lcom/android/camera/actionscreen/ActionScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/actionscreen/ActionScreen$2;->this$0:Lcom/android/camera/actionscreen/ActionScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 4

    move-object v0, p1

    check-cast v0, Lcom/android/camera/KeyEvent;

    iget-object v1, p0, Lcom/android/camera/actionscreen/ActionScreen$2;->this$0:Lcom/android/camera/actionscreen/ActionScreen;

    #getter for: Lcom/android/camera/actionscreen/ActionScreen;->m_State:I
    invoke-static {v1}, Lcom/android/camera/actionscreen/ActionScreen;->access$200(Lcom/android/camera/actionscreen/ActionScreen;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/camera/actionscreen/ActionScreen$2;->this$0:Lcom/android/camera/actionscreen/ActionScreen;

    invoke-virtual {v0}, Lcom/android/camera/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/camera/KeyEvent;->getNativeKeyEvent()Landroid/view/KeyEvent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/actionscreen/ActionScreen;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/KeyEvent;->setHandled()V

    :cond_0
    return-void
.end method
