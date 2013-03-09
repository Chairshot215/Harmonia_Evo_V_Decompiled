.class public final Lcom/android/settings/framework/preference/display/HtcBrightnessMappingSchemeWith9Levels;
.super Ljava/lang/Object;
.source "HtcBrightnessMappingSchemeWith9Levels.java"

# interfaces
.implements Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;


# instance fields
.field private mapping:[I

.field private range:[I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessMappingSchemeWith9Levels;->range:[I

    .line 35
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessMappingSchemeWith9Levels;->mapping:[I

    .line 29
    return-void

    .line 31
    :array_0
    .array-data 0x4
        0x1ct 0x0t 0x0t 0x0t
        0x39t 0x0t 0x0t 0x0t
        0x55t 0x0t 0x0t 0x0t
        0x72t 0x0t 0x0t 0x0t
        0x8et 0x0t 0x0t 0x0t
        0xaat 0x0t 0x0t 0x0t
        0xc7t 0x0t 0x0t 0x0t
        0xe3t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data

    .line 35
    :array_1
    .array-data 0x4
        0x1ct 0x0t 0x0t 0x0t
        0x39t 0x0t 0x0t 0x0t
        0x55t 0x0t 0x0t 0x0t
        0x72t 0x0t 0x0t 0x0t
        0x8et 0x0t 0x0t 0x0t
        0xaat 0x0t 0x0t 0x0t
        0xc7t 0x0t 0x0t 0x0t
        0xe3t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public decodeBrightness(I)I
    .locals 1
    .parameter "progress"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessMappingSchemeWith9Levels;->mapping:[I

    aget v0, v0, p1

    return v0
.end method

.method public encodeBrightness(I)I
    .locals 3
    .parameter "brightness"

    .prologue
    .line 44
    const/4 v0, 0x4

    .line 47
    .local v0, defaultLevel:I
    const/16 v2, 0x8e

    if-gt p1, v2, :cond_2

    .line 48
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v2, 0x4

    if-gt v1, v2, :cond_0

    .line 49
    iget-object v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessMappingSchemeWith9Levels;->range:[I

    aget v2, v2, v1

    if-gt p1, v2, :cond_1

    move v0, v1

    .line 60
    .end local v0           #defaultLevel:I
    :cond_0
    :goto_1
    return v0

    .line 48
    .restart local v0       #defaultLevel:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    .end local v1           #i:I
    :cond_2
    const/4 v1, 0x5

    .restart local v1       #i:I
    :goto_2
    const/16 v2, 0x8

    if-gt v1, v2, :cond_0

    .line 55
    iget-object v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessMappingSchemeWith9Levels;->range:[I

    aget v2, v2, v1

    if-gt p1, v2, :cond_3

    move v0, v1

    .line 56
    goto :goto_1

    .line 54
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public getMaximumBacklight()I
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessMappingSchemeWith9Levels;->mapping:[I

    iget-object v1, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessMappingSchemeWith9Levels;->mapping:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public getMinimumBacklight()I
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessMappingSchemeWith9Levels;->mapping:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public setProgressMax(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessMappingSchemeWith9Levels;->range:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 66
    return-void
.end method
