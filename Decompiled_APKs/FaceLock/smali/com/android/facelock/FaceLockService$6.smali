.class Lcom/android/facelock/FaceLockService$6;
.super Lcom/android/internal/policy/IFaceLockInterface$Stub;
.source "FaceLockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/facelock/FaceLockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/facelock/FaceLockService;


# direct methods
.method constructor <init>(Lcom/android/facelock/FaceLockService;)V
    .locals 0
    .parameter

    .prologue
    .line 820
    iput-object p1, p0, Lcom/android/facelock/FaceLockService$6;->this$0:Lcom/android/facelock/FaceLockService;

    invoke-direct {p0}, Lcom/android/internal/policy/IFaceLockInterface$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public registerCallback(Lcom/android/internal/policy/IFaceLockCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 857
    if-eqz p1, :cond_0

    .line 858
    iget-object v0, p0, Lcom/android/facelock/FaceLockService$6;->this$0:Lcom/android/facelock/FaceLockService;

    iget-object v0, v0, Lcom/android/facelock/FaceLockService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 860
    :cond_0
    return-void
.end method

.method public startUi(Landroid/os/IBinder;IIII)V
    .locals 4
    .parameter "containingWindowToken"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 827
    if-nez p1, :cond_0

    .line 828
    const-string v1, "FaceLockService"

    const-string v2, "containingWindowToken is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    iget-object v1, p0, Lcom/android/facelock/FaceLockService$6;->this$0:Lcom/android/facelock/FaceLockService;

    #getter for: Lcom/android/facelock/FaceLockService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/facelock/FaceLockService;->access$700(Lcom/android/facelock/FaceLockService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 845
    :goto_0
    return-void

    .line 832
    :cond_0
    iget-object v1, p0, Lcom/android/facelock/FaceLockService$6;->this$0:Lcom/android/facelock/FaceLockService;

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x3e8

    invoke-direct {v2, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    #setter for: Lcom/android/facelock/FaceLockService;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v1, v2}, Lcom/android/facelock/FaceLockService;->access$902(Lcom/android/facelock/FaceLockService;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    .line 835
    iget-object v1, p0, Lcom/android/facelock/FaceLockService$6;->this$0:Lcom/android/facelock/FaceLockService;

    #getter for: Lcom/android/facelock/FaceLockService;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v1}, Lcom/android/facelock/FaceLockService;->access$900(Lcom/android/facelock/FaceLockService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const v2, 0x1000008

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 837
    iget-object v1, p0, Lcom/android/facelock/FaceLockService$6;->this$0:Lcom/android/facelock/FaceLockService;

    #getter for: Lcom/android/facelock/FaceLockService;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v1}, Lcom/android/facelock/FaceLockService;->access$900(Lcom/android/facelock/FaceLockService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput-object p1, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 838
    iget-object v1, p0, Lcom/android/facelock/FaceLockService$6;->this$0:Lcom/android/facelock/FaceLockService;

    #getter for: Lcom/android/facelock/FaceLockService;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v1}, Lcom/android/facelock/FaceLockService;->access$900(Lcom/android/facelock/FaceLockService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput p2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 839
    iget-object v1, p0, Lcom/android/facelock/FaceLockService$6;->this$0:Lcom/android/facelock/FaceLockService;

    #getter for: Lcom/android/facelock/FaceLockService;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v1}, Lcom/android/facelock/FaceLockService;->access$900(Lcom/android/facelock/FaceLockService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput p3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 840
    iget-object v1, p0, Lcom/android/facelock/FaceLockService$6;->this$0:Lcom/android/facelock/FaceLockService;

    #getter for: Lcom/android/facelock/FaceLockService;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v1}, Lcom/android/facelock/FaceLockService;->access$900(Lcom/android/facelock/FaceLockService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput p4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 841
    iget-object v1, p0, Lcom/android/facelock/FaceLockService$6;->this$0:Lcom/android/facelock/FaceLockService;

    #getter for: Lcom/android/facelock/FaceLockService;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v1}, Lcom/android/facelock/FaceLockService;->access$900(Lcom/android/facelock/FaceLockService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput p5, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 842
    iget-object v1, p0, Lcom/android/facelock/FaceLockService$6;->this$0:Lcom/android/facelock/FaceLockService;

    #getter for: Lcom/android/facelock/FaceLockService;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v1}, Lcom/android/facelock/FaceLockService;->access$900(Lcom/android/facelock/FaceLockService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 843
    iget-object v1, p0, Lcom/android/facelock/FaceLockService$6;->this$0:Lcom/android/facelock/FaceLockService;

    #getter for: Lcom/android/facelock/FaceLockService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/facelock/FaceLockService;->access$700(Lcom/android/facelock/FaceLockService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/facelock/FaceLockService$6;->this$0:Lcom/android/facelock/FaceLockService;

    #getter for: Lcom/android/facelock/FaceLockService;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v3}, Lcom/android/facelock/FaceLockService;->access$900(Lcom/android/facelock/FaceLockService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 844
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public stopUi()V
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lcom/android/facelock/FaceLockService$6;->this$0:Lcom/android/facelock/FaceLockService;

    #calls: Lcom/android/facelock/FaceLockService;->sendRemoveViewMessage()V
    invoke-static {v0}, Lcom/android/facelock/FaceLockService;->access$1500(Lcom/android/facelock/FaceLockService;)V

    .line 852
    return-void
.end method

.method public unregisterCallback(Lcom/android/internal/policy/IFaceLockCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 865
    if-eqz p1, :cond_0

    .line 866
    iget-object v0, p0, Lcom/android/facelock/FaceLockService$6;->this$0:Lcom/android/facelock/FaceLockService;

    iget-object v0, v0, Lcom/android/facelock/FaceLockService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 868
    :cond_0
    return-void
.end method
