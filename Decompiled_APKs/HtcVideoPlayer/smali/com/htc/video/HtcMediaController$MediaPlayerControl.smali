.class public interface abstract Lcom/htc/video/HtcMediaController$MediaPlayerControl;
.super Ljava/lang/Object;
.source "HtcMediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/video/HtcMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MediaPlayerControl"
.end annotation


# static fields
.field public static final ANDROID_INVOKE_VIDEO_GET_PLAY_MODE:I = 0x22d9

.field public static final ANDROID_INVOKE_VIDEO_GET_PLAY_SPEED:I = 0x22da

.field public static final ANDROID_INVOKE_VIDEO_PLAY_SPEED:I = 0x22d7

.field public static final ANDROID_INVOKE_VIDEO_SET_AUDIO:I = 0x22d5

.field public static final ANDROID_INVOKE_VIDEO_SET_REAL_TIME_SEEK:I = 0x22d6

.field public static final ANDROID_INVOKE_VIDEO_SET_SLOW_MOTION:I = 0x22d8

.field public static final DISABLE_REAL_TIME_SEEK:I = 0x0

.field public static final DISABLE_SLOW_MOTION:I = 0x0

.field public static final ENABLE_REAL_TIME_SEEK:I = 0x1

.field public static final ENABLE_SLOW_MOTION:I = 0x1

.field public static final FAST_FORWARD:I = 0x2

.field public static final FAST_REWIND:I = 0x4

.field public static final NORMAL_SPEED:I = 0x1

.field public static final SET_AUDIO_PAUSE:I = 0x0

.field public static final SET_AUDIO_RESUME:I = 0x1

.field public static final SLOW_MOTION:I = 0x8

.field public static final SPEED_1X:I = 0x1

.field public static final SPEED_2X:I = 0x2

.field public static final SPEED_4X:I = 0x4

.field public static final SPEED_HALF:I = 0x8

.field public static final SPEED_QUARTER:I = 0x10

.field public static final STATE_FAST_SPEED:I = 0x1

.field public static final STATE_NORMAL_SPEED:I = 0x0

.field public static final STATE_REWIND_SPEED:I = 0x3


# virtual methods
.method public abstract canPause()Z
.end method

.method public abstract canSeekBackward()Z
.end method

.method public abstract canSeekForward()Z
.end method

.method public abstract getBufferPercentage()I
.end method

.method public abstract getCurrentPosition()I
.end method

.method public abstract getDuration()I
.end method

.method public abstract getProperty(I)I
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract pause()V
.end method

.method public abstract seekTo(I)V
.end method

.method public abstract setParameters(II)V
.end method

.method public abstract start()V
.end method
