.class Lcom/android/camera/component/BurstController$5;
.super Ljava/lang/Object;
.source "BurstController.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/BurstController;->takePicture(Lcom/android/camera/CameraThread;Landroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/BurstController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/BurstController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/BurstController$5;->this$0:Lcom/android/camera/component/BurstController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/component/BurstController$5;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/BurstController;->access$1200(Lcom/android/camera/component/BurstController;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Burst Mode - Postview Call-back, raw-data size = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_2

    array-length v0, p1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/component/BurstController$5;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/component/BurstController;->m_postviewData:[[B
    invoke-static {v0}, Lcom/android/camera/component/BurstController;->access$1300(Lcom/android/camera/component/BurstController;)[[B

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/BurstController$5;->this$0:Lcom/android/camera/component/BurstController;

    const/4 v2, 0x5

    new-array v2, v2, [[B

    #setter for: Lcom/android/camera/component/BurstController;->m_postviewData:[[B
    invoke-static {v0, v2}, Lcom/android/camera/component/BurstController;->access$1302(Lcom/android/camera/component/BurstController;[[B)[[B

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/BurstController$5;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/component/BurstController;->m_postviewData:[[B
    invoke-static {v0}, Lcom/android/camera/component/BurstController;->access$1300(Lcom/android/camera/component/BurstController;)[[B

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/component/BurstController$5;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/component/BurstController;->m_CurrentCaptureIndex:I
    invoke-static {v2}, Lcom/android/camera/component/BurstController;->access$1100(Lcom/android/camera/component/BurstController;)I

    move-result v2

    aput-object p1, v0, v2

    iget-object v0, p0, Lcom/android/camera/component/BurstController$5;->this$0:Lcom/android/camera/component/BurstController;

    invoke-static {v0}, Lcom/android/camera/component/BurstController;->access$1104(Lcom/android/camera/component/BurstController;)I

    iget-object v0, p0, Lcom/android/camera/component/BurstController$5;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/component/BurstController;->m_CurrentCaptureIndex:I
    invoke-static {v0}, Lcom/android/camera/component/BurstController;->access$1100(Lcom/android/camera/component/BurstController;)I

    move-result v0

    iget-object v2, p0, Lcom/android/camera/component/BurstController$5;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/component/BurstController;->m_CaptureCount:I
    invoke-static {v2}, Lcom/android/camera/component/BurstController;->access$200(Lcom/android/camera/component/BurstController;)I

    move-result v2

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/BurstController$5;->this$0:Lcom/android/camera/component/BurstController;

    iget-object v2, p0, Lcom/android/camera/component/BurstController$5;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/component/BurstController;->m_BurstUI:Lcom/android/camera/component/BurstUI;
    invoke-static {v2}, Lcom/android/camera/component/BurstController;->access$000(Lcom/android/camera/component/BurstController;)Lcom/android/camera/component/BurstUI;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/component/BurstController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    iget-object v0, p0, Lcom/android/camera/component/BurstController$5;->this$0:Lcom/android/camera/component/BurstController;

    #setter for: Lcom/android/camera/component/BurstController;->m_CurrentCaptureIndex:I
    invoke-static {v0, v1}, Lcom/android/camera/component/BurstController;->access$1102(Lcom/android/camera/component/BurstController;I)I

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method
