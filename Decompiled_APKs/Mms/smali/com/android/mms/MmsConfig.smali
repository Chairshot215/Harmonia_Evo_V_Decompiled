.class public Lcom/android/mms/MmsConfig;
.super Ljava/lang/Object;
.source "MmsConfig.java"


# static fields
.field public static final MAX_SLIDES_COUNT:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getImageCompressQuality()I
    .locals 2

    .prologue
    .line 37
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_0

    .line 38
    const/16 v0, 0x61

    .line 46
    :goto_0
    return v0

    .line 42
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_4_0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    const/16 v0, 0x50

    goto :goto_0

    .line 46
    :cond_1
    const/16 v0, 0x5a

    goto :goto_0
.end method
