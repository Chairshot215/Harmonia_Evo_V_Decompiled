.class Lcom/google/android/tts/voicepack/VoiceDataManager$FileInfo;
.super Ljava/lang/Object;
.source "VoiceDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/tts/voicepack/VoiceDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileInfo"
.end annotation


# instance fields
.field final mIsSystem:Z

.field final mSize:J


# direct methods
.method constructor <init>(ZJ)V
    .locals 0
    .parameter "isSystem"
    .parameter "size"

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-boolean p1, p0, Lcom/google/android/tts/voicepack/VoiceDataManager$FileInfo;->mIsSystem:Z

    .line 186
    iput-wide p2, p0, Lcom/google/android/tts/voicepack/VoiceDataManager$FileInfo;->mSize:J

    .line 187
    return-void
.end method
