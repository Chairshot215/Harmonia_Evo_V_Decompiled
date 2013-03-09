.class public final Lcom/android/settings/framework/preference/display/HtcBrightnessMappingSchemeWith256Levels;
.super Ljava/lang/Object;
.source "HtcBrightnessMappingSchemeWith256Levels.java"

# interfaces
.implements Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decodeBrightness(I)I
    .locals 0
    .parameter "progress"

    .prologue
    .line 9
    return p1
.end method

.method public encodeBrightness(I)I
    .locals 0
    .parameter "brightness"

    .prologue
    .line 13
    return p1
.end method

.method public getMaximumBacklight()I
    .locals 1

    .prologue
    .line 21
    const/16 v0, 0xff

    return v0
.end method

.method public getMinimumBacklight()I
    .locals 1

    .prologue
    .line 25
    const/16 v0, 0x1e

    return v0
.end method

.method public setProgressMax(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 17
    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 18
    return-void
.end method
