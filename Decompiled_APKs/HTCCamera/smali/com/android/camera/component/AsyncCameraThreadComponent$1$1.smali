.class Lcom/android/camera/component/AsyncCameraThreadComponent$1$1;
.super Ljava/lang/Object;
.source "AsyncCameraThreadComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/AsyncCameraThreadComponent$1;->onEnter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/component/AsyncCameraThreadComponent$1;


# direct methods
.method constructor <init>(Lcom/android/camera/component/AsyncCameraThreadComponent$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/AsyncCameraThreadComponent$1$1;->this$1:Lcom/android/camera/component/AsyncCameraThreadComponent$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/AsyncCameraThreadComponent$1$1;->this$1:Lcom/android/camera/component/AsyncCameraThreadComponent$1;

    iget-object v0, v0, Lcom/android/camera/component/AsyncCameraThreadComponent$1;->this$0:Lcom/android/camera/component/AsyncCameraThreadComponent;

    invoke-virtual {v0}, Lcom/android/camera/component/AsyncCameraThreadComponent;->onWorkerThreadRunning()V

    return-void
.end method
