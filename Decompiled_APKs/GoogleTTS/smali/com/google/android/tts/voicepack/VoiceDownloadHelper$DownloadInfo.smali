.class public final Lcom/google/android/tts/voicepack/VoiceDownloadHelper$DownloadInfo;
.super Ljava/lang/Object;
.source "VoiceDownloadHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/tts/voicepack/VoiceDownloadHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DownloadInfo"
.end annotation


# instance fields
.field mDownloadId:J

.field mDownloadLocale:Ljava/lang/String;

.field mFileName:Ljava/lang/String;

.field mStatus:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
