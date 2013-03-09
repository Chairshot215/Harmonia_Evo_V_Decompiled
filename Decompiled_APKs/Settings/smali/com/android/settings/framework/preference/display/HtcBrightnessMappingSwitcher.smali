.class public Lcom/android/settings/framework/preference/display/HtcBrightnessMappingSwitcher;
.super Ljava/lang/Object;
.source "HtcBrightnessMappingSwitcher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;
    .locals 1

    .prologue
    .line 9
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isI0001:Z

    if-eqz v0, :cond_0

    .line 11
    new-instance v0, Lcom/android/settings/framework/preference/display/HtcBrightnessMappingSchemeWith226Levels;

    invoke-direct {v0}, Lcom/android/settings/framework/preference/display/HtcBrightnessMappingSchemeWith226Levels;-><init>()V

    .line 13
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/settings/framework/preference/display/HtcBrightnessMappingSchemeWith226Levels;

    invoke-direct {v0}, Lcom/android/settings/framework/preference/display/HtcBrightnessMappingSchemeWith226Levels;-><init>()V

    goto :goto_0
.end method
