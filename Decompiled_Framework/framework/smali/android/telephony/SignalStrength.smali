.class public Landroid/telephony/SignalStrength;
.super Ljava/lang/Object;
.source "SignalStrength.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/telephony/HtcIfSignalStrength;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SignalStrength;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SignalStrength"

.field public static final NUM_SIGNAL_STRENGTH_BINS:I = 0x5

.field public static final SIGNAL_STRENGTH_GOOD:I = 0x3

.field public static final SIGNAL_STRENGTH_GREAT:I = 0x4

.field public static final SIGNAL_STRENGTH_MODERATE:I = 0x2

.field public static final SIGNAL_STRENGTH_NAMES:[Ljava/lang/String; = null

.field public static final SIGNAL_STRENGTH_NONE_OR_UNKNOWN:I = 0x0

.field public static final SIGNAL_STRENGTH_POOR:I = 0x1


# instance fields
.field private isGsm:Z

.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoSignalBar:I

.field private mEvdoSnr:I

.field private mGsmBitErrorRate:I

.field private mGsmEcno:I

.field private mGsmSignalDbm:I

.field private mGsmSignalStrength:I

.field private mHtcLteRsrp:I

.field private mHtcLteRsrq:I

.field private mLteCqi:I

.field private mLteRsrp:I

.field private mLteRsrq:I

.field private mLteRssnr:I

.field private mLteSignalStrength:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "none"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "poor"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "moderate"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "good"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "great"

    aput-object v2, v0, v1

    sput-object v0, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    new-instance v0, Landroid/telephony/SignalStrength$1;

    invoke-direct {v0}, Landroid/telephony/SignalStrength$1;-><init>()V

    sput-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x63

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    iput v1, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    iput v1, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIIIIIZ)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iput p3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iput p4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iput p5, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iput p6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iput p8, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iput p9, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iput p10, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iput p11, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iput p12, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    move/from16 v0, p16

    iput v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    move/from16 v0, p17

    iput v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    move/from16 v0, p18

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    move/from16 v0, p15

    invoke-direct {p0, p13, p14, v0}, Landroid/telephony/SignalStrength;->initHtcAddFields(III)V

    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIIIZ)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iput p3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iput p4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iput p5, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iput p6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iput p8, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iput p9, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iput p10, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iput p11, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iput p12, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    move/from16 v0, p16

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    move/from16 v0, p15

    invoke-direct {p0, p13, p14, v0}, Landroid/telephony/SignalStrength;->initHtcAddFields(III)V

    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIZ)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iput p3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iput p4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iput p5, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iput p6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iput p8, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iput p9, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iput p10, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iput p11, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iput p12, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    iput-boolean p13, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return-void
.end method

.method public constructor <init>(IIIIIIIIIIZ)V
    .locals 10

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move/from16 v0, p8

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    move/from16 v0, p9

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    move/from16 v0, p10

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p11

    invoke-direct/range {v1 .. v9}, Landroid/telephony/SignalStrength;->internal_SignalStrength(IIIIIIIZ)V

    iput p2, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    return-void
.end method

.method public constructor <init>(IIIIIIIZ)V
    .locals 17

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v16, p8

    invoke-direct/range {v0 .. v16}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIIIIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->readHtcAddedFieldsFrom(Landroid/os/Parcel;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/telephony/SignalStrength;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->copyFrom(Landroid/telephony/SignalStrength;)V

    return-void
.end method

.method private calculateHtcAddedFieldsHashCode()I
    .locals 2

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    add-int/2addr v0, v1

    return v0
.end method

.method private copyHtcAddedFieldsFrom(Landroid/telephony/SignalStrength;)V
    .locals 1

    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmEcno:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    return-void
.end method

.method private equalsHtcAddedFields(Landroid/telephony/SignalStrength;)Z
    .locals 2

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    iget v1, p1, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    iget v1, p1, Landroid/telephony/SignalStrength;->mGsmEcno:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    iget v1, p1, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    iget v1, p1, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    iget v1, p1, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fillHtcAddedFieldsInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "GsmSignalDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "GsmEcno"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "EvdoSignalBar"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "HtcLteRsrp"

    iget v1, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "HtcLteRsrq"

    iget v1, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method private getHtcAddedFieldsString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initHtcAddFields(III)V
    .locals 0

    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    iput p3, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    return-void
.end method

.method private internal_SignalStrength(IIIIIIIZ)V
    .locals 0

    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iput p3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iput p4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iput p5, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iput p6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iput-boolean p8, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SignalStrength"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;
    .locals 1

    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    invoke-direct {v0, p0}, Landroid/telephony/SignalStrength;->setFromNotifierBundle(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private readHtcAddedFieldsFrom(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    return-void
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "GsmSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    const-string v0, "GsmBitErrorRate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    const-string v0, "CdmaDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    const-string v0, "CdmaEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    const-string v0, "EvdoDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    const-string v0, "EvdoEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    const-string v0, "EvdoSnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    const-string v0, "LteSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const-string v0, "LteRsrp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const-string v0, "LteRsrq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const-string v0, "LteRssnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const-string v0, "LteCqi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    const-string/jumbo v0, "isGsm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->setHtcAddedFieldsFromNotifierBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method private setHtcAddedFieldsFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "GsmSignalDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    const-string v0, "GsmEcno"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    const-string v0, "EvdoSignalBar"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    const-string v0, "HtcLteRsrp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    const-string v0, "HtcLteRsrq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    return-void
.end method

.method private writeHtcAddedFieldsInto(Landroid/os/Parcel;)V
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/SignalStrength;)V
    .locals 1

    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mLteCqi:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    iget-boolean v0, p1, Landroid/telephony/SignalStrength;->isGsm:Z

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->copyHtcAddedFieldsFrom(Landroid/telephony/SignalStrength;)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/SignalStrength;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    :goto_0
    return v5

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_0
    iget v6, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ne v6, v7, :cond_1

    iget-boolean v6, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    iget-boolean v7, v3, Landroid/telephony/SignalStrength;->isGsm:Z

    if-ne v6, v7, :cond_1

    move v1, v4

    :goto_1
    if-eqz v1, :cond_2

    invoke-direct {p0, v3}, Landroid/telephony/SignalStrength;->equalsHtcAddedFields(Landroid/telephony/SignalStrength;)Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_2
    move v5, v4

    goto :goto_0

    :cond_1
    move v1, v5

    goto :goto_1

    :cond_2
    move v4, v5

    goto :goto_2
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "GsmSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "GsmBitErrorRate"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "CdmaDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "CdmaEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "EvdoDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "EvdoEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "EvdoSnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "LteSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "LteRsrp"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "LteRsrq"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "LteRssnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "LteCqi"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "isGsm"

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->fillHtcAddedFieldsInNotifierBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method public getAsuLevel()I
    .locals 5

    const/4 v4, -0x1

    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v1

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoAsuLevel()I

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    if-ge v1, v2, :cond_4

    move v0, v1

    :goto_1
    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public getCdmaAsuLevel()I
    .locals 8

    const/16 v7, -0x5a

    const/16 v6, -0x64

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v2

    const/16 v5, -0x4b

    if-lt v1, v5, :cond_0

    const/16 v0, 0x10

    :goto_0
    if-lt v2, v7, :cond_5

    const/16 v3, 0x10

    :goto_1
    if-ge v0, v3, :cond_a

    move v4, v0

    :goto_2
    return v4

    :cond_0
    const/16 v5, -0x52

    if-lt v1, v5, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    if-lt v1, v7, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    const/16 v5, -0x5f

    if-lt v1, v5, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    if-lt v1, v6, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/16 v0, 0x63

    goto :goto_0

    :cond_5
    if-lt v2, v6, :cond_6

    const/16 v3, 0x8

    goto :goto_1

    :cond_6
    const/16 v5, -0x73

    if-lt v2, v5, :cond_7

    const/4 v3, 0x4

    goto :goto_1

    :cond_7
    const/16 v5, -0x82

    if-lt v2, v5, :cond_8

    const/4 v3, 0x2

    goto :goto_1

    :cond_8
    const/16 v5, -0x96

    if-lt v2, v5, :cond_9

    const/4 v3, 0x1

    goto :goto_1

    :cond_9
    const/16 v3, 0x63

    goto :goto_1

    :cond_a
    move v4, v3

    goto :goto_2
.end method

.method public getCdmaDbm()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    return v0
.end method

.method public getCdmaEcio()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    return v0
.end method

.method public getCdmaLevel()I
    .locals 6

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    const/16 v5, -0x4b

    if-lt v0, v5, :cond_0

    const/4 v3, 0x4

    :goto_0
    const/16 v5, -0x5a

    if-lt v1, v5, :cond_4

    const/4 v4, 0x4

    :goto_1
    if-ge v3, v4, :cond_8

    move v2, v3

    :goto_2
    return v2

    :cond_0
    const/16 v5, -0x55

    if-lt v0, v5, :cond_1

    const/4 v3, 0x3

    goto :goto_0

    :cond_1
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_2

    const/4 v3, 0x2

    goto :goto_0

    :cond_2
    const/16 v5, -0x64

    if-lt v0, v5, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    const/16 v5, -0x6e

    if-lt v1, v5, :cond_5

    const/4 v4, 0x3

    goto :goto_1

    :cond_5
    const/16 v5, -0x82

    if-lt v1, v5, :cond_6

    const/4 v4, 0x2

    goto :goto_1

    :cond_6
    const/16 v5, -0x96

    if-lt v1, v5, :cond_7

    const/4 v4, 0x1

    goto :goto_1

    :cond_7
    const/4 v4, 0x0

    goto :goto_1

    :cond_8
    move v2, v4

    goto :goto_2
.end method

.method public getDbm()I
    .locals 3

    const/4 v2, -0x1

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    goto :goto_0
.end method

.method public getEvdoAsuLevel()I
    .locals 6

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    const/16 v5, -0x41

    if-lt v0, v5, :cond_0

    const/16 v3, 0x10

    :goto_0
    const/4 v5, 0x7

    if-lt v1, v5, :cond_5

    const/16 v4, 0x10

    :goto_1
    if-ge v3, v4, :cond_a

    move v2, v3

    :goto_2
    return v2

    :cond_0
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_1

    const/16 v3, 0x8

    goto :goto_0

    :cond_1
    const/16 v5, -0x55

    if-lt v0, v5, :cond_2

    const/4 v3, 0x4

    goto :goto_0

    :cond_2
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_3

    const/4 v3, 0x2

    goto :goto_0

    :cond_3
    const/16 v5, -0x69

    if-lt v0, v5, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const/16 v3, 0x63

    goto :goto_0

    :cond_5
    const/4 v5, 0x6

    if-lt v1, v5, :cond_6

    const/16 v4, 0x8

    goto :goto_1

    :cond_6
    const/4 v5, 0x5

    if-lt v1, v5, :cond_7

    const/4 v4, 0x4

    goto :goto_1

    :cond_7
    const/4 v5, 0x3

    if-lt v1, v5, :cond_8

    const/4 v4, 0x2

    goto :goto_1

    :cond_8
    const/4 v5, 0x1

    if-lt v1, v5, :cond_9

    const/4 v4, 0x1

    goto :goto_1

    :cond_9
    const/16 v4, 0x63

    goto :goto_1

    :cond_a
    move v2, v4

    goto :goto_2
.end method

.method public getEvdoDbm()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    return v0
.end method

.method public getEvdoEcio()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    return v0
.end method

.method public getEvdoLevel()I
    .locals 6

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    const/16 v5, -0x41

    if-lt v0, v5, :cond_0

    const/4 v3, 0x4

    :goto_0
    const/4 v5, 0x7

    if-lt v1, v5, :cond_4

    const/4 v4, 0x4

    :goto_1
    if-ge v3, v4, :cond_8

    move v2, v3

    :goto_2
    return v2

    :cond_0
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_1

    const/4 v3, 0x3

    goto :goto_0

    :cond_1
    const/16 v5, -0x5a

    if-lt v0, v5, :cond_2

    const/4 v3, 0x2

    goto :goto_0

    :cond_2
    const/16 v5, -0x69

    if-lt v0, v5, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    const/4 v5, 0x5

    if-lt v1, v5, :cond_5

    const/4 v4, 0x3

    goto :goto_1

    :cond_5
    const/4 v5, 0x3

    if-lt v1, v5, :cond_6

    const/4 v4, 0x2

    goto :goto_1

    :cond_6
    const/4 v5, 0x1

    if-lt v1, v5, :cond_7

    const/4 v4, 0x1

    goto :goto_1

    :cond_7
    const/4 v4, 0x0

    goto :goto_1

    :cond_8
    move v2, v4

    goto :goto_2
.end method

.method public getEvdoSignalBar()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    return v0
.end method

.method public getEvdoSnr()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    return v0
.end method

.method public getGsmAsuLevel()I
    .locals 1

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    return v0
.end method

.method public getGsmBitErrorRate()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    return v0
.end method

.method public getGsmDbm()I
    .locals 5

    const/4 v3, -0x1

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    const/16 v4, 0x63

    if-ne v2, v4, :cond_0

    move v0, v3

    :goto_0
    if-eq v0, v3, :cond_1

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v1, v3, -0x71

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getGsmEcno()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    return v0
.end method

.method public getGsmLevel()I
    .locals 3

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    const/16 v2, 0x63

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/16 v2, 0xc

    if-lt v0, v2, :cond_2

    const/4 v1, 0x4

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    if-lt v0, v2, :cond_3

    const/4 v1, 0x3

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    if-lt v0, v2, :cond_4

    const/4 v1, 0x2

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getGsmSignalDbm()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    return v0
.end method

.method public getGsmSignalStrength()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    return v0
.end method

.method public getHtcLteRsrp()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    return v0
.end method

.method public getHtcLteRsrq()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    return v0
.end method

.method public getLevel()I
    .locals 5

    const/4 v4, -0x1

    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v2

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v2

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v2

    goto :goto_0

    :cond_3
    if-ge v0, v1, :cond_4

    move v2, v0

    :goto_1
    goto :goto_0

    :cond_4
    move v2, v1

    goto :goto_1
.end method

.method public getLteAsuLevel()I
    .locals 3

    const/16 v0, 0x63

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    const/16 v2, -0x8c

    if-gt v1, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v2, -0x2b

    if-lt v1, v2, :cond_1

    const/16 v0, 0x61

    goto :goto_0

    :cond_1
    add-int/lit16 v0, v1, 0x8c

    goto :goto_0
.end method

.method public getLteCqi()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    return v0
.end method

.method public getLteDbm()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteLevel()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x55

    if-lt v1, v2, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x5f

    if-lt v1, v2, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x69

    if-lt v1, v2, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x73

    if-lt v1, v2, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLteRsrp()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteRsrq()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    return v0
.end method

.method public getLteRssnr()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    return v0
.end method

.method public getLteSignalStrength()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x1f

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    mul-int/2addr v1, v0

    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int/2addr v1, v2

    invoke-direct {p0}, Landroid/telephony/SignalStrength;->calculateHtcAddedFieldsHashCode()I

    move-result v2

    add-int/2addr v1, v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isGsm()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return v0
.end method

.method public setHtcLteRsrp(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    return-void
.end method

.method public setHtcLteRsrq(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    return-void
.end method

.method public setLteRsrq(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    return-void
.end method

.method public setLteRssnr(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const-string v0, "gsm|lte"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cdma"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getHtcAddedFieldsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->writeHtcAddedFieldsInto(Landroid/os/Parcel;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
