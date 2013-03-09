.class Lcom/android/camera/CameraThread$5$1;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraThread$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/CameraThread$5;

.field final synthetic val$raisingEvent:Lcom/android/camera/Event;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraThread$5;Lcom/android/camera/Event;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/CameraThread$5$1;->this$1:Lcom/android/camera/CameraThread$5;

    iput-object p2, p0, Lcom/android/camera/CameraThread$5$1;->val$raisingEvent:Lcom/android/camera/Event;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/CameraThread$5$1;->this$1:Lcom/android/camera/CameraThread$5;

    iget-object v0, v0, Lcom/android/camera/CameraThread$5;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;
    invoke-static {v0}, Lcom/android/camera/CameraThread;->access$3600(Lcom/android/camera/CameraThread;)Lcom/android/camera/EventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraThread$5$1;->val$raisingEvent:Lcom/android/camera/Event;

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    return-void
.end method
