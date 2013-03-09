.class Lcom/android/camera/component/AutoSceneController$2;
.super Ljava/lang/Object;
.source "AutoSceneController.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/AutoSceneController;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/AutoSceneController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/AutoSceneController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/AutoSceneController$2;->this$0:Lcom/android/camera/component/AutoSceneController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 3

    check-cast p1, Lcom/android/camera/HTCCallbackEvent;

    invoke-virtual {p1}, Lcom/android/camera/HTCCallbackEvent;->getArg1()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/component/AutoSceneController$2;->this$0:Lcom/android/camera/component/AutoSceneController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/component/AutoSceneController;->access$400(Lcom/android/camera/component/AutoSceneController;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Leave macro"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/component/AutoSceneController$2;->this$0:Lcom/android/camera/component/AutoSceneController;

    #calls: Lcom/android/camera/component/AutoSceneController;->sendLeaveMacro()V
    invoke-static {v1}, Lcom/android/camera/component/AutoSceneController;->access$500(Lcom/android/camera/component/AutoSceneController;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/AutoSceneController$2;->this$0:Lcom/android/camera/component/AutoSceneController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/component/AutoSceneController;->access$600(Lcom/android/camera/component/AutoSceneController;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Enter macro"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/component/AutoSceneController$2;->this$0:Lcom/android/camera/component/AutoSceneController;

    #calls: Lcom/android/camera/component/AutoSceneController;->sendEnterMacro()V
    invoke-static {v1}, Lcom/android/camera/component/AutoSceneController;->access$700(Lcom/android/camera/component/AutoSceneController;)V

    goto :goto_0
.end method
