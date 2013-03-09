.class Lcom/android/camera/component/AutoSceneController$3;
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

    iput-object p1, p0, Lcom/android/camera/component/AutoSceneController$3;->this$0:Lcom/android/camera/component/AutoSceneController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 2

    check-cast p1, Lcom/android/camera/BooleanEvent;

    invoke-virtual {p1}, Lcom/android/camera/BooleanEvent;->getBoolean()Z

    move-result v0

    iget-object v1, p0, Lcom/android/camera/component/AutoSceneController$3;->this$0:Lcom/android/camera/component/AutoSceneController;

    #calls: Lcom/android/camera/component/AutoSceneController;->sendIsAutoScene(Z)V
    invoke-static {v1, v0}, Lcom/android/camera/component/AutoSceneController;->access$800(Lcom/android/camera/component/AutoSceneController;Z)V

    return-void
.end method
