.class Lcom/scalado/camera/hdr/HDR$ShutterCallbackHandler;
.super Ljava/lang/Object;
.source "HDR.java"

# interfaces
.implements Lcom/scalado/camera/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/hdr/HDR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShutterCallbackHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/camera/hdr/HDR;


# direct methods
.method private constructor <init>(Lcom/scalado/camera/hdr/HDR;)V
    .locals 0
    .parameter

    .prologue
    .line 411
    iput-object p1, p0, Lcom/scalado/camera/hdr/HDR$ShutterCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/camera/hdr/HDR;Lcom/scalado/camera/hdr/HDR$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 411
    invoke-direct {p0, p1}, Lcom/scalado/camera/hdr/HDR$ShutterCallbackHandler;-><init>(Lcom/scalado/camera/hdr/HDR;)V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/scalado/camera/hdr/HDR$ShutterCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mHDRListener:Lcom/scalado/camera/hdr/HDR$HDRListener;
    invoke-static {v0}, Lcom/scalado/camera/hdr/HDR;->access$2000(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/hdr/HDR$HDRListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/scalado/camera/hdr/HDR$ShutterCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mHDRListener:Lcom/scalado/camera/hdr/HDR$HDRListener;
    invoke-static {v0}, Lcom/scalado/camera/hdr/HDR;->access$2000(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/hdr/HDR$HDRListener;

    move-result-object v0

    iget-object v1, p0, Lcom/scalado/camera/hdr/HDR$ShutterCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mCapturedImages:I
    invoke-static {v1}, Lcom/scalado/camera/hdr/HDR;->access$2100(Lcom/scalado/camera/hdr/HDR;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/scalado/camera/hdr/HDR$HDRListener;->onIntermediateShutter(I)V

    .line 418
    :cond_0
    return-void
.end method
