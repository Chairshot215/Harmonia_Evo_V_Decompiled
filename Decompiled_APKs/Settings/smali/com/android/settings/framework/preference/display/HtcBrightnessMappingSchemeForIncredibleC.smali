.class public final Lcom/android/settings/framework/preference/display/HtcBrightnessMappingSchemeForIncredibleC;
.super Ljava/lang/Object;
.source "HtcBrightnessMappingSchemeForIncredibleC.java"

# interfaces
.implements Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;


# static fields
.field private static final MINIMUM_BACKLIGHT:I = 0xa


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
    .locals 1
    .parameter "progress"

    .prologue
    .line 12
    add-int/lit8 v0, p1, 0xa

    return v0
.end method

.method public encodeBrightness(I)I
    .locals 1
    .parameter "brightness"

    .prologue
    .line 16
    add-int/lit8 v0, p1, -0xa

    return v0
.end method

.method public getMaximumBacklight()I
    .locals 1

    .prologue
    .line 24
    const/16 v0, 0xff

    return v0
.end method

.method public getMinimumBacklight()I
    .locals 1

    .prologue
    .line 28
    const/16 v0, 0xa

    return v0
.end method

.method public setProgressMax(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 20
    const/16 v0, 0xf5

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 21
    return-void
.end method
