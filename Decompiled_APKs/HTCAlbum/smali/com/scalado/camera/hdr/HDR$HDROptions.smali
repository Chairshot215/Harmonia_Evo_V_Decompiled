.class public Lcom/scalado/camera/hdr/HDR$HDROptions;
.super Ljava/lang/Object;
.source "HDR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/hdr/HDR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HDROptions"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/camera/hdr/HDR;


# direct methods
.method public constructor <init>(Lcom/scalado/camera/hdr/HDR;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/scalado/camera/hdr/HDR$HDROptions;->this$0:Lcom/scalado/camera/hdr/HDR;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExposures()[I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/scalado/camera/hdr/HDR$HDROptions;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mExposures:[I
    invoke-static {v0}, Lcom/scalado/camera/hdr/HDR;->access$400(Lcom/scalado/camera/hdr/HDR;)[I

    move-result-object v0

    if-nez v0, :cond_0

    .line 128
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 130
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/scalado/camera/hdr/HDR$HDROptions;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mExposures:[I
    invoke-static {v0}, Lcom/scalado/camera/hdr/HDR;->access$400(Lcom/scalado/camera/hdr/HDR;)[I

    move-result-object v0

    goto :goto_0

    .line 128
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getGamma()F
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/scalado/camera/hdr/HDR$HDROptions;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mHDRImageOptions:Lcom/scalado/caps/hdrimage/HDRImage$Options;
    invoke-static {v0}, Lcom/scalado/camera/hdr/HDR;->access$500(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/caps/hdrimage/HDRImage$Options;

    move-result-object v0

    iget v0, v0, Lcom/scalado/caps/hdrimage/HDRImage$Options;->gamma:F

    return v0
.end method

.method public varargs setExposures([I)V
    .locals 2
    .parameter "exposures"

    .prologue
    .line 114
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exposures must not be null or have 0 values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/scalado/camera/hdr/HDR$HDROptions;->this$0:Lcom/scalado/camera/hdr/HDR;

    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    #setter for: Lcom/scalado/camera/hdr/HDR;->mExposures:[I
    invoke-static {v1, v0}, Lcom/scalado/camera/hdr/HDR;->access$402(Lcom/scalado/camera/hdr/HDR;[I)[I

    .line 118
    return-void
.end method

.method public setGamma(F)V
    .locals 3
    .parameter "gamma"

    .prologue
    .line 141
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x4000

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 142
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Gamma value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " outside valid range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/scalado/camera/hdr/HDR$HDROptions;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mHDRImageOptions:Lcom/scalado/caps/hdrimage/HDRImage$Options;
    invoke-static {v0}, Lcom/scalado/camera/hdr/HDR;->access$500(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/caps/hdrimage/HDRImage$Options;

    move-result-object v0

    iput p1, v0, Lcom/scalado/caps/hdrimage/HDRImage$Options;->gamma:F

    .line 145
    return-void
.end method
