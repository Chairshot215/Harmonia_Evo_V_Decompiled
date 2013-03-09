.class public Lcom/htc/wrap/android/media/HtcWrapMediaRecorder;
.super Landroid/media/MediaRecorder;
.source "HtcWrapMediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/wrap/android/media/HtcWrapMediaRecorder$AudioEncoder;,
        Lcom/htc/wrap/android/media/HtcWrapMediaRecorder$OutputFormat;
    }
.end annotation


# static fields
.field public static final CAMERA_STEREO_PROHIBIT:I = 0x3d0


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/media/MediaRecorder;-><init>()V

    .line 19
    return-void
.end method
