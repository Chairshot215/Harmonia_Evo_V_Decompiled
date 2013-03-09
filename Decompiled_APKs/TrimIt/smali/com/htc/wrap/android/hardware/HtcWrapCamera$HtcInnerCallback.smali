.class final Lcom/htc/wrap/android/hardware/HtcWrapCamera$HtcInnerCallback;
.super Ljava/lang/Object;
.source "HtcWrapCamera.java"

# interfaces
.implements Landroid/hardware/Camera$HtcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/hardware/HtcWrapCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HtcInnerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/wrap/android/hardware/HtcWrapCamera;


# direct methods
.method private constructor <init>(Lcom/htc/wrap/android/hardware/HtcWrapCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/htc/wrap/android/hardware/HtcWrapCamera$HtcInnerCallback;->this$0:Lcom/htc/wrap/android/hardware/HtcWrapCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/wrap/android/hardware/HtcWrapCamera;Lcom/htc/wrap/android/hardware/HtcWrapCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/htc/wrap/android/hardware/HtcWrapCamera$HtcInnerCallback;-><init>(Lcom/htc/wrap/android/hardware/HtcWrapCamera;)V

    return-void
.end method


# virtual methods
.method public OnReceive(IIILandroid/hardware/Camera;)V
    .locals 1
    .parameter "callbackType"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "camera"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/wrap/android/hardware/HtcWrapCamera$HtcInnerCallback;->this$0:Lcom/htc/wrap/android/hardware/HtcWrapCamera;

    #getter for: Lcom/htc/wrap/android/hardware/HtcWrapCamera;->mHtcIfCallback:Lcom/htc/wrap/android/hardware/HtcWrapCamera$HtcIfCallback;
    invoke-static {v0}, Lcom/htc/wrap/android/hardware/HtcWrapCamera;->access$100(Lcom/htc/wrap/android/hardware/HtcWrapCamera;)Lcom/htc/wrap/android/hardware/HtcWrapCamera$HtcIfCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/htc/wrap/android/hardware/HtcWrapCamera$HtcInnerCallback;->this$0:Lcom/htc/wrap/android/hardware/HtcWrapCamera;

    #getter for: Lcom/htc/wrap/android/hardware/HtcWrapCamera;->mHtcIfCallback:Lcom/htc/wrap/android/hardware/HtcWrapCamera$HtcIfCallback;
    invoke-static {v0}, Lcom/htc/wrap/android/hardware/HtcWrapCamera;->access$100(Lcom/htc/wrap/android/hardware/HtcWrapCamera;)Lcom/htc/wrap/android/hardware/HtcWrapCamera$HtcIfCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/htc/wrap/android/hardware/HtcWrapCamera$HtcIfCallback;->OnReceive(IIILandroid/hardware/Camera;)V

    .line 25
    :cond_0
    return-void
.end method
