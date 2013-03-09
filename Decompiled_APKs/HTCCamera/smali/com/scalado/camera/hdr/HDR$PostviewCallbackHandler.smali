.class Lcom/scalado/camera/hdr/HDR$PostviewCallbackHandler;
.super Ljava/lang/Object;
.source "HDR.java"

# interfaces
.implements Lcom/scalado/camera/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/hdr/HDR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostviewCallbackHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/camera/hdr/HDR;


# direct methods
.method private constructor <init>(Lcom/scalado/camera/hdr/HDR;)V
    .locals 0

    iput-object p1, p0, Lcom/scalado/camera/hdr/HDR$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/camera/hdr/HDR;Lcom/scalado/camera/hdr/HDR$PostviewCallbackHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scalado/camera/hdr/HDR$PostviewCallbackHandler;-><init>(Lcom/scalado/camera/hdr/HDR;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/scalado/camera/Camera;)V
    .locals 4

    iget-object v0, p0, Lcom/scalado/camera/hdr/HDR$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mHDRListener:Lcom/scalado/camera/hdr/HDR$HDRListener;
    invoke-static {v0}, Lcom/scalado/camera/hdr/HDR;->access$21(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/hdr/HDR$HDRListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scalado/camera/hdr/HDR$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mHDRListener:Lcom/scalado/camera/hdr/HDR$HDRListener;
    invoke-static {v0}, Lcom/scalado/camera/hdr/HDR;->access$21(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/hdr/HDR$HDRListener;

    move-result-object v0

    iget-object v1, p0, Lcom/scalado/camera/hdr/HDR$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mCapturedImages:I
    invoke-static {v1}, Lcom/scalado/camera/hdr/HDR;->access$22(Lcom/scalado/camera/hdr/HDR;)I

    move-result v1

    iget-object v2, p0, Lcom/scalado/camera/hdr/HDR$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mExposures:[I
    invoke-static {v2}, Lcom/scalado/camera/hdr/HDR;->access$1(Lcom/scalado/camera/hdr/HDR;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/scalado/camera/hdr/HDR$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mCapturedImages:I
    invoke-static {v3}, Lcom/scalado/camera/hdr/HDR;->access$22(Lcom/scalado/camera/hdr/HDR;)I

    move-result v3

    aget v2, v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/scalado/camera/hdr/HDR$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mExposureCompensationStep:F
    invoke-static {v3}, Lcom/scalado/camera/hdr/HDR;->access$12(Lcom/scalado/camera/hdr/HDR;)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-interface {v0, p1, v1, v2}, Lcom/scalado/camera/hdr/HDR$HDRListener;->onIntermediatePostview([BIF)V

    :cond_0
    return-void
.end method
