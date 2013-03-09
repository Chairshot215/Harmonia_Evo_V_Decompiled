.class Lcom/android/camera/AutoUploader$5;
.super Ljava/lang/Object;
.source "AutoUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/AutoUploader;->setSaveDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/AutoUploader;


# direct methods
.method constructor <init>(Lcom/android/camera/AutoUploader;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/AutoUploader$5;->this$0:Lcom/android/camera/AutoUploader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/AutoUploader$5;->this$0:Lcom/android/camera/AutoUploader;

    #getter for: Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;
    invoke-static {v0}, Lcom/android/camera/AutoUploader;->access$000(Lcom/android/camera/AutoUploader;)Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->needsActionScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/AutoUploader$5;->this$0:Lcom/android/camera/AutoUploader;

    #getter for: Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;
    invoke-static {v0}, Lcom/android/camera/AutoUploader;->access$000(Lcom/android/camera/AutoUploader;)Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "AutoUploader"

    const-string v1, "setSaveDone=>triggerAutoUpload"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/AutoUploader$5;->this$0:Lcom/android/camera/AutoUploader;

    invoke-virtual {v0}, Lcom/android/camera/AutoUploader;->triggerAutoUpload()V

    :cond_1
    return-void
.end method
