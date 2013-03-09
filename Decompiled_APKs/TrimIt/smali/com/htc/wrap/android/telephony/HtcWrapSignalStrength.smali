.class public Lcom/htc/wrap/android/telephony/HtcWrapSignalStrength;
.super Landroid/telephony/SignalStrength;
.source "HtcWrapSignalStrength.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 8
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIZ)V
    .locals 17
    .parameter "gsmSignalStrength"
    .parameter "gsmBitErrorRate"
    .parameter "cdmaDbm"
    .parameter "cdmaEcio"
    .parameter "evdoDbm"
    .parameter "evdoEcio"
    .parameter "evdoSnr"
    .parameter "lteSignalStrength"
    .parameter "lteRsrp"
    .parameter "lteCqi"
    .parameter "gsm"

    .prologue
    .line 14
    const/4 v10, -0x1

    const/4 v11, -0x1

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

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v12, p10

    move/from16 v16, p11

    invoke-direct/range {v0 .. v16}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIIIIZ)V

    .line 20
    return-void
.end method

.method public constructor <init>(IIIIIIIZIIIIIII)V
    .locals 17
    .parameter "gsmSignalStrength"
    .parameter "gsmBitErrorRate"
    .parameter "cdmaDbm"
    .parameter "cdmaEcio"
    .parameter "evdoDbm"
    .parameter "evdoEcio"
    .parameter "evdoSnr"
    .parameter "gsm"
    .parameter "gsmDbm"
    .parameter "gsmEcno"
    .parameter "lteSignalStrength"
    .parameter "lteRsrp"
    .parameter "lteRsrq"
    .parameter "lteRssnr"
    .parameter "lteCqi"

    .prologue
    .line 27
    const/4 v15, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p11

    move/from16 v9, p12

    move/from16 v10, p13

    move/from16 v11, p14

    move/from16 v12, p15

    move/from16 v13, p9

    move/from16 v14, p10

    move/from16 v16, p8

    invoke-direct/range {v0 .. v16}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIIIIZ)V

    .line 33
    return-void
.end method


# virtual methods
.method public getEvdoSignalBar()I
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Landroid/telephony/SignalStrength;->getEvdoSignalBar()I

    move-result v0

    return v0
.end method

.method public getGsmEcno()I
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Landroid/telephony/SignalStrength;->getGsmEcno()I

    move-result v0

    return v0
.end method

.method public getGsmSignalDbm()I
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Landroid/telephony/SignalStrength;->getGsmSignalDbm()I

    move-result v0

    return v0
.end method

.method public getLteCqi()I
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Landroid/telephony/SignalStrength;->getLteCqi()I

    move-result v0

    return v0
.end method

.method public getLteRsrp()I
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Landroid/telephony/SignalStrength;->getLteRsrp()I

    move-result v0

    return v0
.end method

.method public getLteRsrq()I
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Landroid/telephony/SignalStrength;->getLteRsrq()I

    move-result v0

    return v0
.end method

.method public getLteRssnr()I
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Landroid/telephony/SignalStrength;->getLteRssnr()I

    move-result v0

    return v0
.end method

.method public getLteSignalStrength()I
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Landroid/telephony/SignalStrength;->getLteSignalStrength()I

    move-result v0

    return v0
.end method
