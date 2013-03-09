.class Lcom/android/camera/component/BurstController$1;
.super Ljava/lang/Object;
.source "BurstController.java"

# interfaces
.implements Lcom/android/camera/CameraThread$StorePictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/BurstController;
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

    iput-object p1, p0, Lcom/android/camera/component/BurstController$1;->this$0:Lcom/android/camera/component/BurstController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError([BLjava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public onPictureStored([BLandroid/net/Uri;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/camera/component/BurstController$1;->this$0:Lcom/android/camera/component/BurstController;

    iget-object v1, p0, Lcom/android/camera/component/BurstController$1;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/component/BurstController;->m_BurstUI:Lcom/android/camera/component/BurstUI;
    invoke-static {v1}, Lcom/android/camera/component/BurstController;->access$000(Lcom/android/camera/component/BurstController;)Lcom/android/camera/component/BurstUI;

    move-result-object v1

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/camera/component/BurstController$1;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/component/BurstController;->m_CurrentStoredIndex:I
    invoke-static {v3}, Lcom/android/camera/component/BurstController;->access$100(Lcom/android/camera/component/BurstController;)I

    move-result v3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/BurstController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/component/BurstController$1;->this$0:Lcom/android/camera/component/BurstController;

    invoke-static {v0}, Lcom/android/camera/component/BurstController;->access$104(Lcom/android/camera/component/BurstController;)I

    iget-object v0, p0, Lcom/android/camera/component/BurstController$1;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/component/BurstController;->m_CurrentStoredIndex:I
    invoke-static {v0}, Lcom/android/camera/component/BurstController;->access$100(Lcom/android/camera/component/BurstController;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/component/BurstController$1;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/component/BurstController;->m_CaptureCount:I
    invoke-static {v1}, Lcom/android/camera/component/BurstController;->access$200(Lcom/android/camera/component/BurstController;)I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/BurstController$1;->this$0:Lcom/android/camera/component/BurstController;

    #setter for: Lcom/android/camera/component/BurstController;->m_CurrentStoredIndex:I
    invoke-static {v0, v4}, Lcom/android/camera/component/BurstController;->access$102(Lcom/android/camera/component/BurstController;I)I

    :cond_0
    return-void
.end method

.method public storeImage(Ljava/io/OutputStream;[B)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
