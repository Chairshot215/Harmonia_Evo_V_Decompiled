.class Lcom/android/camera/actionscreen/ActionScreen$1;
.super Ljava/lang/Object;
.source "ActionScreen.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actionscreen/ActionScreen;
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

    iput-object p1, p0, Lcom/android/camera/actionscreen/ActionScreen$1;->this$0:Lcom/android/camera/actionscreen/ActionScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/actionscreen/ActionScreen$1;->this$0:Lcom/android/camera/actionscreen/ActionScreen;

    invoke-virtual {v0}, Lcom/android/camera/actionscreen/ActionScreen;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/actionscreen/ActionScreen$1$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/actionscreen/ActionScreen$1$1;-><init>(Lcom/android/camera/actionscreen/ActionScreen$1;Lcom/android/camera/Event;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/actionscreen/ActionScreen$1;->this$0:Lcom/android/camera/actionscreen/ActionScreen;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/actionscreen/ActionScreen;->access$300(Lcom/android/camera/actionscreen/ActionScreen;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot handle event \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/Event;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
