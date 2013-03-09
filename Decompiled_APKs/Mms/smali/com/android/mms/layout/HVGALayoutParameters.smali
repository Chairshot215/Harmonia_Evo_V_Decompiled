.class public Lcom/android/mms/layout/HVGALayoutParameters;
.super Ljava/lang/Object;
.source "HVGALayoutParameters.java"

# interfaces
.implements Lcom/android/mms/layout/LayoutParameters;


# static fields
.field private static final DEBUG:Z = false

.field private static final IMAGE_HEIGHT_LANDSCAPE:I = 0xb4

.field private static final IMAGE_HEIGHT_PORTRAIT:I = 0xdc

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "HVGALayoutParameters"

.field private static final TEXT_HEIGHT_LANDSCAPE:I = 0x3c

.field private static final TEXT_HEIGHT_PORTRAIT:I = 0x64


# instance fields
.field private mType:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/layout/HVGALayoutParameters;->mType:I

    .line 36
    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad layout type detected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    iput p1, p0, Lcom/android/mms/layout/HVGALayoutParameters;->mType:I

    .line 45
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 2

    .prologue
    .line 53
    iget v0, p0, Lcom/android/mms/layout/HVGALayoutParameters;->mType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/16 v0, 0xf0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x140

    goto :goto_0
.end method

.method public getImageHeight()I
    .locals 2

    .prologue
    .line 58
    iget v0, p0, Lcom/android/mms/layout/HVGALayoutParameters;->mType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/16 v0, 0xb4

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xdc

    goto :goto_0
.end method

.method public getTextHeight()I
    .locals 2

    .prologue
    .line 63
    iget v0, p0, Lcom/android/mms/layout/HVGALayoutParameters;->mType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/16 v0, 0x3c

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x64

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/android/mms/layout/HVGALayoutParameters;->mType:I

    return v0
.end method

.method public getTypeDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    iget v0, p0, Lcom/android/mms/layout/HVGALayoutParameters;->mType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const-string v0, "HVGA-L"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "HVGA-P"

    goto :goto_0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 48
    iget v0, p0, Lcom/android/mms/layout/HVGALayoutParameters;->mType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/16 v0, 0x140

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xf0

    goto :goto_0
.end method
