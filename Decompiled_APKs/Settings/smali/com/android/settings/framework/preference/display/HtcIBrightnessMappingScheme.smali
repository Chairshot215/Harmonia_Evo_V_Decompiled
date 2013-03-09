.class public interface abstract Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;
.super Ljava/lang/Object;
.source "HtcIBrightnessMappingScheme.java"


# static fields
.field public static final MAXIMUM_BACKLIGHT:I = 0xff

.field public static final MINIMUM_BACKLIGHT:I = 0x1e


# virtual methods
.method public abstract decodeBrightness(I)I
.end method

.method public abstract encodeBrightness(I)I
.end method

.method public abstract getMaximumBacklight()I
.end method

.method public abstract getMinimumBacklight()I
.end method

.method public abstract setProgressMax(Landroid/widget/SeekBar;)V
.end method
