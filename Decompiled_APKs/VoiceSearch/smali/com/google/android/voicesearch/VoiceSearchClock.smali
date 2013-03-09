.class public Lcom/google/android/voicesearch/VoiceSearchClock;
.super Ljava/lang/Object;
.source "VoiceSearchClock.java"


# static fields
.field protected static mVoiceSearchClock:Lcom/google/android/voicesearch/VoiceSearchClock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static elapsedRealtime()J
    .locals 2

    .prologue
    .line 29
    sget-object v0, Lcom/google/android/voicesearch/VoiceSearchClock;->mVoiceSearchClock:Lcom/google/android/voicesearch/VoiceSearchClock;

    if-nez v0, :cond_0

    .line 30
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 32
    :goto_0
    return-wide v0

    :cond_0
    sget-object v0, Lcom/google/android/voicesearch/VoiceSearchClock;->mVoiceSearchClock:Lcom/google/android/voicesearch/VoiceSearchClock;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/VoiceSearchClock;->internalElapsedRealtime()J

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method protected internalElapsedRealtime()J
    .locals 2

    .prologue
    .line 37
    const-wide/16 v0, 0x0

    return-wide v0
.end method
