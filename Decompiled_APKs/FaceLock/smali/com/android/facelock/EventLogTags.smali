.class public Lcom/android/facelock/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeFacelockActivated()V
    .locals 2

    .prologue
    .line 50
    const v0, 0x12cc9

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 51
    return-void
.end method

.method public static writeFacelockBlackFrames(I)V
    .locals 1
    .parameter "numFrames"

    .prologue
    .line 86
    const v0, 0x12cd2

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 87
    return-void
.end method

.method public static writeFacelockDeactivated()V
    .locals 2

    .prologue
    .line 54
    const v0, 0x12cca

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 55
    return-void
.end method

.method public static writeFacelockDetectionTimeout()V
    .locals 2

    .prologue
    .line 74
    const v0, 0x12ccf

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 75
    return-void
.end method

.method public static writeFacelockFail(I)V
    .locals 1
    .parameter "confidence"

    .prologue
    .line 58
    const v0, 0x12ccb

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 59
    return-void
.end method

.method public static writeFacelockLowLight()V
    .locals 2

    .prologue
    .line 82
    const v0, 0x12cd1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 83
    return-void
.end method

.method public static writeFacelockNoFace()V
    .locals 2

    .prologue
    .line 66
    const v0, 0x12ccd

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 67
    return-void
.end method

.method public static writeFacelockNoTemplate()V
    .locals 2

    .prologue
    .line 62
    const v0, 0x12ccc

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 63
    return-void
.end method

.method public static writeFacelockRecognitionTimeout()V
    .locals 2

    .prologue
    .line 78
    const v0, 0x12cd0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 79
    return-void
.end method

.method public static writeFacelockSuccess(I)V
    .locals 1
    .parameter "confidence"

    .prologue
    .line 70
    const v0, 0x12cce

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 71
    return-void
.end method

.method public static writeFacelockTooDark()V
    .locals 2

    .prologue
    .line 94
    const v0, 0x12cd4

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 95
    return-void
.end method
