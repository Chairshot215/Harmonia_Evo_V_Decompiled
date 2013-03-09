.class public Lcom/htc/wrap/android/hardware/HtcWrapCamera;
.super Ljava/lang/Object;
.source "HtcWrapCamera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/wrap/android/hardware/HtcWrapCamera$1;,
        Lcom/htc/wrap/android/hardware/HtcWrapCamera$HtcInnerCallback;,
        Lcom/htc/wrap/android/hardware/HtcWrapCamera$HtcIfCallback;
    }
.end annotation


# instance fields
.field private mHtcIfCallback:Lcom/htc/wrap/android/hardware/HtcWrapCamera$HtcIfCallback;

.field private mHtcInnerCallback:Lcom/htc/wrap/android/hardware/HtcWrapCamera$HtcInnerCallback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/htc/wrap/android/hardware/HtcWrapCamera$HtcInnerCallback;

    invoke-direct {v0, p0, v1}, Lcom/htc/wrap/android/hardware/HtcWrapCamera$HtcInnerCallback;-><init>(Lcom/htc/wrap/android/hardware/HtcWrapCamera;Lcom/htc/wrap/android/hardware/HtcWrapCamera$1;)V

    iput-object v0, p0, Lcom/htc/wrap/android/hardware/HtcWrapCamera;->mHtcInnerCallback:Lcom/htc/wrap/android/hardware/HtcWrapCamera$HtcInnerCallback;

    .line 9
    iput-object v1, p0, Lcom/htc/wrap/android/hardware/HtcWrapCamera;->mHtcIfCallback:Lcom/htc/wrap/android/hardware/HtcWrapCamera$HtcIfCallback;

    .line 20
    return-void
.end method

.method static synthetic access$100(Lcom/htc/wrap/android/hardware/HtcWrapCamera;)Lcom/htc/wrap/android/hardware/HtcWrapCamera$HtcIfCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6
    iget-object v0, p0, Lcom/htc/wrap/android/hardware/HtcWrapCamera;->mHtcIfCallback:Lcom/htc/wrap/android/hardware/HtcWrapCamera$HtcIfCallback;

    return-object v0
.end method


# virtual methods
.method public setHtcCallback(Landroid/hardware/Camera;Lcom/htc/wrap/android/hardware/HtcWrapCamera$HtcIfCallback;)V
    .locals 1
    .parameter "camera"
    .parameter "cb"

    .prologue
    .line 16
    iput-object p2, p0, Lcom/htc/wrap/android/hardware/HtcWrapCamera;->mHtcIfCallback:Lcom/htc/wrap/android/hardware/HtcWrapCamera$HtcIfCallback;

    .line 17
    iget-object v0, p0, Lcom/htc/wrap/android/hardware/HtcWrapCamera;->mHtcInnerCallback:Lcom/htc/wrap/android/hardware/HtcWrapCamera$HtcInnerCallback;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setHtcCallback(Landroid/hardware/Camera$HtcCallback;)V

    .line 18
    return-void
.end method
