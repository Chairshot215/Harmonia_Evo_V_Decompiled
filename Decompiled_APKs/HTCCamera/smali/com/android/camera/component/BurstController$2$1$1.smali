.class Lcom/android/camera/component/BurstController$2$1$1;
.super Ljava/lang/Object;
.source "BurstController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/BurstController$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/component/BurstController$2$1;

.field final synthetic val$cameraThread:Lcom/android/camera/CameraThread;

.field final synthetic val$raisingEvent:Lcom/android/camera/Event;


# direct methods
.method constructor <init>(Lcom/android/camera/component/BurstController$2$1;Lcom/android/camera/CameraThread;Lcom/android/camera/Event;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/BurstController$2$1$1;->this$2:Lcom/android/camera/component/BurstController$2$1;

    iput-object p2, p0, Lcom/android/camera/component/BurstController$2$1$1;->val$cameraThread:Lcom/android/camera/CameraThread;

    iput-object p3, p0, Lcom/android/camera/component/BurstController$2$1$1;->val$raisingEvent:Lcom/android/camera/Event;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/BurstController$2$1$1;->val$cameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/component/BurstController$2$1$1;->val$raisingEvent:Lcom/android/camera/Event;

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    return-void
.end method
