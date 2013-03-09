.class public Lcom/htc/wrap/android/os/HtcWrapFileUtils;
.super Landroid/os/FileUtils;
.source "HtcWrapFileUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/os/FileUtils;-><init>()V

    return-void
.end method

.method public static getFatVolumeId(Ljava/lang/String;)I
    .locals 1
    .parameter "mountPoint"

    .prologue
    .line 16
    invoke-static {p0}, Landroid/os/FileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
