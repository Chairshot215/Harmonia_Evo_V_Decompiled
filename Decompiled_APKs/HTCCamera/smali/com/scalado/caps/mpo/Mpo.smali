.class public Lcom/scalado/caps/mpo/Mpo;
.super Lcom/scalado/caps/PeerBase;
.source "Mpo.java"


# instance fields
.field private mAccess:Lcom/scalado/stream/FileStream$Access;

.field private mStream:Lcom/scalado/stream/Stream;


# direct methods
.method public constructor <init>(Lcom/scalado/stream/Stream;Lcom/scalado/stream/FileStream$Access;)V
    .locals 2

    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/caps/mpo/Mpo;->mStream:Lcom/scalado/stream/Stream;

    sget-object v0, Lcom/scalado/stream/FileStream$Access;->READ:Lcom/scalado/stream/FileStream$Access;

    iput-object v0, p0, Lcom/scalado/caps/mpo/Mpo;->mAccess:Lcom/scalado/stream/FileStream$Access;

    iput-object p1, p0, Lcom/scalado/caps/mpo/Mpo;->mStream:Lcom/scalado/stream/Stream;

    iput-object p2, p0, Lcom/scalado/caps/mpo/Mpo;->mAccess:Lcom/scalado/stream/FileStream$Access;

    iget-object v0, p0, Lcom/scalado/caps/mpo/Mpo;->mAccess:Lcom/scalado/stream/FileStream$Access;

    sget-object v1, Lcom/scalado/stream/FileStream$Access;->READ:Lcom/scalado/stream/FileStream$Access;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/scalado/caps/mpo/Mpo;->mStream:Lcom/scalado/stream/Stream;

    invoke-direct {p0, v0}, Lcom/scalado/caps/mpo/Mpo;->nativeCreateFromMpo(Lcom/scalado/stream/Stream;)I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/scalado/caps/mpo/Mpo;->nativeCreate()I

    goto :goto_0
.end method

.method private native nativeClearAxisDistance_X(I)I
.end method

.method private native nativeClearAxisDistance_Y(I)I
.end method

.method private native nativeClearAxisDistance_Z(I)I
.end method

.method private native nativeClearBaseViewpointNum(I)I
.end method

.method private native nativeClearBaselineLength(I)I
.end method

.method private native nativeClearConvergenceAngle(I)I
.end method

.method private native nativeClearPanOrientation(I)I
.end method

.method private native nativeClearPanOverlap_H(I)I
.end method

.method private native nativeClearPanOverlap_V(I)I
.end method

.method private native nativeClearPitchAngle(I)I
.end method

.method private native nativeClearRollAngle(I)I
.end method

.method private native nativeClearTotalFrames()I
.end method

.method private native nativeClearVerticalDivergence(I)I
.end method

.method private native nativeClearYawAngle(I)I
.end method

.method private native nativeCreate()I
.end method

.method private native nativeCreateFromMpo(Lcom/scalado/stream/Stream;)I
.end method

.method private native nativeGetAxisDistance_X_den(I)I
.end method

.method private native nativeGetAxisDistance_X_num(I)I
.end method

.method private native nativeGetAxisDistance_Y_den(I)I
.end method

.method private native nativeGetAxisDistance_Y_num(I)I
.end method

.method private native nativeGetAxisDistance_Z_den(I)I
.end method

.method private native nativeGetAxisDistance_Z_num(I)I
.end method

.method private native nativeGetBaseViewpointNum(I)I
.end method

.method private native nativeGetBaselineLength_den(I)I
.end method

.method private native nativeGetBaselineLength_num(I)I
.end method

.method private native nativeGetConvergenceAngle_den(I)I
.end method

.method private native nativeGetConvergenceAngle_num(I)I
.end method

.method private native nativeGetDependentImage1EntryNumber(I)S
.end method

.method private native nativeGetDependentImage2EntryNumber(I)S
.end method

.method private native nativeGetImageByteBuffer(I)Ljava/nio/ByteBuffer;
.end method

.method private native nativeGetIndividualImageAttribute(I)I
.end method

.method private native nativeGetIndividualImageUniqueID(I)Ljava/lang/String;
.end method

.method private native nativeGetMPIndividualNum(I)I
.end method

.method private native nativeGetNumberOfImages()I
.end method

.method private native nativeGetPanOrientation(I)I
.end method

.method private native nativeGetPanOverlap_H_den(I)I
.end method

.method private native nativeGetPanOverlap_H_num(I)I
.end method

.method private native nativeGetPanOverlap_V_den(I)I
.end method

.method private native nativeGetPanOverlap_V_num(I)I
.end method

.method private native nativeGetPitchAngle_den(I)I
.end method

.method private native nativeGetPitchAngle_num(I)I
.end method

.method private native nativeGetRollAngle_den(I)I
.end method

.method private native nativeGetRollAngle_num(I)I
.end method

.method private native nativeGetTotalFrames()I
.end method

.method private native nativeGetVerticalDivergence_den(I)I
.end method

.method private native nativeGetVerticalDivergence_num(I)I
.end method

.method private native nativeGetYawAngle_den(I)I
.end method

.method private native nativeGetYawAngle_num(I)I
.end method

.method private native nativeMpoSessionAddStream(Lcom/scalado/stream/Stream;)I
.end method

.method private native nativeMpoSessionFlush(Lcom/scalado/stream/Stream;)I
.end method

.method private native nativeSetAxisDistance_X(III)I
.end method

.method private native nativeSetAxisDistance_Y(III)I
.end method

.method private native nativeSetAxisDistance_Z(III)I
.end method

.method private native nativeSetBaseViewpointNum(II)I
.end method

.method private native nativeSetBaselineLength(III)I
.end method

.method private native nativeSetConvergenceAngle(III)I
.end method

.method private native nativeSetDependentImage1EntryNumber(IS)I
.end method

.method private native nativeSetDependentImage2EntryNumber(IS)I
.end method

.method private native nativeSetIndividualImageAttribute(II)I
.end method

.method private native nativeSetIndividualImageUniqueID(ILjava/lang/String;)I
.end method

.method private native nativeSetPanOrientation(II)I
.end method

.method private native nativeSetPanOverlap_H(III)I
.end method

.method private native nativeSetPanOverlap_V(III)I
.end method

.method private native nativeSetPitchAngle(III)I
.end method

.method private native nativeSetRollAngle(III)I
.end method

.method private native nativeSetTotalFrames(I)I
.end method

.method private native nativeSetVerticalDivergence(III)I
.end method

.method private native nativeSetYawAngle(III)I
.end method


# virtual methods
.method public addStream(Lcom/scalado/stream/Stream;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeMpoSessionAddStream(Lcom/scalado/stream/Stream;)I

    return-void
.end method

.method public clearAxisDistance_X(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeClearAxisDistance_X(I)I

    return-void
.end method

.method public clearAxisDistance_Y(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeClearAxisDistance_Y(I)I

    return-void
.end method

.method public clearAxisDistance_Z(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeClearAxisDistance_Z(I)I

    return-void
.end method

.method public clearBaseViewpointNum(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeClearBaseViewpointNum(I)I

    return-void
.end method

.method public clearBaselineLength(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeClearBaselineLength(I)I

    return-void
.end method

.method public clearConvergenceAngle(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeClearConvergenceAngle(I)I

    return-void
.end method

.method public clearPanOrientation(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeClearPanOrientation(I)I

    return-void
.end method

.method public clearPanOverlapH(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeClearPanOverlap_H(I)I

    return-void
.end method

.method public clearPanOverlapV(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeClearPanOverlap_V(I)I

    return-void
.end method

.method public clearPitchAngle(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeClearPitchAngle(I)I

    return-void
.end method

.method public clearRollAngle(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeClearRollAngle(I)I

    return-void
.end method

.method public clearTotalFrames()V
    .locals 0

    invoke-direct {p0}, Lcom/scalado/caps/mpo/Mpo;->nativeClearTotalFrames()I

    return-void
.end method

.method public clearVerticalDivergence(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeClearVerticalDivergence(I)I

    return-void
.end method

.method public clearYawAngle(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeClearYawAngle(I)I

    return-void
.end method

.method public flush()V
    .locals 2

    iget-object v0, p0, Lcom/scalado/caps/mpo/Mpo;->mAccess:Lcom/scalado/stream/FileStream$Access;

    sget-object v1, Lcom/scalado/stream/FileStream$Access;->WRITE:Lcom/scalado/stream/FileStream$Access;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/scalado/caps/mpo/Mpo;->mStream:Lcom/scalado/stream/Stream;

    invoke-direct {p0, v0}, Lcom/scalado/caps/mpo/Mpo;->nativeMpoSessionFlush(Lcom/scalado/stream/Stream;)I

    :cond_0
    return-void
.end method

.method public getAxisDistance_X(I)Lcom/scalado/base/Rational;
    .locals 3

    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetAxisDistance_X_num(I)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetAxisDistance_X_den(I)I

    move-result v0

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Lcom/scalado/base/Rational;

    invoke-direct {v2, v1, v0}, Lcom/scalado/base/Rational;-><init>(II)V

    goto :goto_0
.end method

.method public getAxisDistance_Y(I)Lcom/scalado/base/Rational;
    .locals 3

    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetAxisDistance_Y_num(I)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetAxisDistance_Y_den(I)I

    move-result v0

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Lcom/scalado/base/Rational;

    invoke-direct {v2, v1, v0}, Lcom/scalado/base/Rational;-><init>(II)V

    goto :goto_0
.end method

.method public getAxisDistance_Z(I)Lcom/scalado/base/Rational;
    .locals 3

    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetAxisDistance_Z_num(I)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetAxisDistance_Z_den(I)I

    move-result v0

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Lcom/scalado/base/Rational;

    invoke-direct {v2, v1, v0}, Lcom/scalado/base/Rational;-><init>(II)V

    goto :goto_0
.end method

.method public getBaseViewpointNum(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetBaseViewpointNum(I)I

    move-result v0

    return v0
.end method

.method public getBaselineLength(I)Lcom/scalado/base/Rational;
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetBaselineLength_num(I)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetBaselineLength_den(I)I

    move-result v0

    if-eq v1, v2, :cond_0

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Lcom/scalado/base/Rational;

    invoke-direct {v2, v1, v0}, Lcom/scalado/base/Rational;-><init>(II)V

    goto :goto_0
.end method

.method public getConvergenceAngle(I)Lcom/scalado/base/Rational;
    .locals 3

    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetConvergenceAngle_num(I)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetConvergenceAngle_den(I)I

    move-result v0

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Lcom/scalado/base/Rational;

    invoke-direct {v2, v1, v0}, Lcom/scalado/base/Rational;-><init>(II)V

    goto :goto_0
.end method

.method public getDependentImage1EntryNumber(I)S
    .locals 1

    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetDependentImage1EntryNumber(I)S

    move-result v0

    return v0
.end method

.method public getDependentImage2EntryNumber(I)S
    .locals 1

    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetDependentImage2EntryNumber(I)S

    move-result v0

    return v0
.end method

.method public getImageByteBuffer(I)Ljava/nio/ByteBuffer;
    .locals 1

    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetImageByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getIndividualImageAttribute(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetIndividualImageAttribute(I)I

    move-result v0

    return v0
.end method

.method public getIndividualImageUniqueID(I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetIndividualImageUniqueID(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMPIndividualNum(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetMPIndividualNum(I)I

    move-result v0

    return v0
.end method

.method public getNumberOfImages()I
    .locals 1

    invoke-direct {p0}, Lcom/scalado/caps/mpo/Mpo;->nativeGetNumberOfImages()I

    move-result v0

    return v0
.end method

.method public getPanOrientation(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetPanOrientation(I)I

    move-result v0

    return v0
.end method

.method public getPanOverlapH(I)Lcom/scalado/base/Rational;
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetPanOverlap_H_num(I)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetPanOverlap_H_den(I)I

    move-result v0

    if-eq v1, v2, :cond_0

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Lcom/scalado/base/Rational;

    invoke-direct {v2, v1, v0}, Lcom/scalado/base/Rational;-><init>(II)V

    goto :goto_0
.end method

.method public getPanOverlapV(I)Lcom/scalado/base/Rational;
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetPanOverlap_V_num(I)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetPanOverlap_V_den(I)I

    move-result v0

    if-eq v1, v2, :cond_0

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Lcom/scalado/base/Rational;

    invoke-direct {v2, v1, v0}, Lcom/scalado/base/Rational;-><init>(II)V

    goto :goto_0
.end method

.method public getPitchAngle(I)Lcom/scalado/base/Rational;
    .locals 3

    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetPitchAngle_num(I)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetPitchAngle_den(I)I

    move-result v0

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Lcom/scalado/base/Rational;

    invoke-direct {v2, v1, v0}, Lcom/scalado/base/Rational;-><init>(II)V

    goto :goto_0
.end method

.method public getRollAngle(I)Lcom/scalado/base/Rational;
    .locals 3

    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetRollAngle_num(I)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetRollAngle_den(I)I

    move-result v0

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Lcom/scalado/base/Rational;

    invoke-direct {v2, v1, v0}, Lcom/scalado/base/Rational;-><init>(II)V

    goto :goto_0
.end method

.method public getTotalFrames()I
    .locals 1

    invoke-direct {p0}, Lcom/scalado/caps/mpo/Mpo;->nativeGetTotalFrames()I

    move-result v0

    return v0
.end method

.method public getVerticalDivergence(I)Lcom/scalado/base/Rational;
    .locals 3

    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetVerticalDivergence_num(I)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetVerticalDivergence_den(I)I

    move-result v0

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Lcom/scalado/base/Rational;

    invoke-direct {v2, v1, v0}, Lcom/scalado/base/Rational;-><init>(II)V

    goto :goto_0
.end method

.method public getYawAngle(I)Lcom/scalado/base/Rational;
    .locals 3

    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetYawAngle_num(I)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeGetYawAngle_den(I)I

    move-result v0

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Lcom/scalado/base/Rational;

    invoke-direct {v2, v1, v0}, Lcom/scalado/base/Rational;-><init>(II)V

    goto :goto_0
.end method

.method public setAxisDistance_X(ILcom/scalado/base/Rational;)V
    .locals 2

    invoke-virtual {p2}, Lcom/scalado/base/Rational;->getNumerator()I

    move-result v0

    invoke-virtual {p2}, Lcom/scalado/base/Rational;->getDenominator()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/scalado/caps/mpo/Mpo;->nativeSetAxisDistance_X(III)I

    return-void
.end method

.method public setAxisDistance_Y(ILcom/scalado/base/Rational;)V
    .locals 2

    invoke-virtual {p2}, Lcom/scalado/base/Rational;->getNumerator()I

    move-result v0

    invoke-virtual {p2}, Lcom/scalado/base/Rational;->getDenominator()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/scalado/caps/mpo/Mpo;->nativeSetAxisDistance_Y(III)I

    return-void
.end method

.method public setAxisDistance_Z(ILcom/scalado/base/Rational;)V
    .locals 2

    invoke-virtual {p2}, Lcom/scalado/base/Rational;->getNumerator()I

    move-result v0

    invoke-virtual {p2}, Lcom/scalado/base/Rational;->getDenominator()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/scalado/caps/mpo/Mpo;->nativeSetAxisDistance_Z(III)I

    return-void
.end method

.method public setBaseViewpointNum(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/mpo/Mpo;->nativeSetBaseViewpointNum(II)I

    return-void
.end method

.method public setBaselineLength(ILcom/scalado/base/Rational;)V
    .locals 2

    invoke-virtual {p2}, Lcom/scalado/base/Rational;->getNumerator()I

    move-result v0

    invoke-virtual {p2}, Lcom/scalado/base/Rational;->getDenominator()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/scalado/caps/mpo/Mpo;->nativeSetBaselineLength(III)I

    return-void
.end method

.method public setConvergenceAngle(ILcom/scalado/base/Rational;)V
    .locals 2

    invoke-virtual {p2}, Lcom/scalado/base/Rational;->getNumerator()I

    move-result v0

    invoke-virtual {p2}, Lcom/scalado/base/Rational;->getDenominator()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/scalado/caps/mpo/Mpo;->nativeSetConvergenceAngle(III)I

    return-void
.end method

.method public setDependentImage1EntryNumber(IS)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/mpo/Mpo;->nativeSetDependentImage1EntryNumber(IS)I

    return-void
.end method

.method public setDependentImage2EntryNumber(IS)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/mpo/Mpo;->nativeSetDependentImage2EntryNumber(IS)I

    return-void
.end method

.method public setIndividualImageAttribute(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/mpo/Mpo;->nativeSetIndividualImageAttribute(II)I

    return-void
.end method

.method public setIndividualImageUniqueID(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/mpo/Mpo;->nativeSetIndividualImageUniqueID(ILjava/lang/String;)I

    return-void
.end method

.method public setPanOrientation(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/mpo/Mpo;->nativeSetPanOrientation(II)I

    return-void
.end method

.method public setPanOverlapH(ILcom/scalado/base/Rational;)V
    .locals 2

    invoke-virtual {p2}, Lcom/scalado/base/Rational;->getNumerator()I

    move-result v0

    invoke-virtual {p2}, Lcom/scalado/base/Rational;->getDenominator()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/scalado/caps/mpo/Mpo;->nativeSetPanOverlap_H(III)I

    return-void
.end method

.method public setPanOverlapV(ILcom/scalado/base/Rational;)V
    .locals 2

    invoke-virtual {p2}, Lcom/scalado/base/Rational;->getNumerator()I

    move-result v0

    invoke-virtual {p2}, Lcom/scalado/base/Rational;->getDenominator()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/scalado/caps/mpo/Mpo;->nativeSetPanOverlap_V(III)I

    return-void
.end method

.method public setPitchAngle(ILcom/scalado/base/Rational;)V
    .locals 2

    invoke-virtual {p2}, Lcom/scalado/base/Rational;->getNumerator()I

    move-result v0

    invoke-virtual {p2}, Lcom/scalado/base/Rational;->getDenominator()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/scalado/caps/mpo/Mpo;->nativeSetPitchAngle(III)I

    return-void
.end method

.method public setRollAngle(ILcom/scalado/base/Rational;)V
    .locals 2

    invoke-virtual {p2}, Lcom/scalado/base/Rational;->getNumerator()I

    move-result v0

    invoke-virtual {p2}, Lcom/scalado/base/Rational;->getDenominator()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/scalado/caps/mpo/Mpo;->nativeSetRollAngle(III)I

    return-void
.end method

.method public setTotalFrames(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scalado/caps/mpo/Mpo;->nativeSetTotalFrames(I)I

    return-void
.end method

.method public setVerticalDivergence(ILcom/scalado/base/Rational;)V
    .locals 2

    invoke-virtual {p2}, Lcom/scalado/base/Rational;->getNumerator()I

    move-result v0

    invoke-virtual {p2}, Lcom/scalado/base/Rational;->getDenominator()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/scalado/caps/mpo/Mpo;->nativeSetVerticalDivergence(III)I

    return-void
.end method

.method public setYawAngle(ILcom/scalado/base/Rational;)V
    .locals 2

    invoke-virtual {p2}, Lcom/scalado/base/Rational;->getNumerator()I

    move-result v0

    invoke-virtual {p2}, Lcom/scalado/base/Rational;->getDenominator()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/scalado/caps/mpo/Mpo;->nativeSetYawAngle(III)I

    return-void
.end method
