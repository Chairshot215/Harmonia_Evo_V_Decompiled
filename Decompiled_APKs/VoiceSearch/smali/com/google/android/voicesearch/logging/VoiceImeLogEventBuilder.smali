.class public Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;
.super Ljava/lang/Object;
.source "VoiceImeLogEventBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelDuringError()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->CANCEL_DURING_ERROR:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    invoke-static {v0}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->logAction(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static cancelDuringListening()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->CANCEL_DURING_LISTENING:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    invoke-static {v0}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->logAction(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static cancelDuringWorking()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->CANCEL_DURING_WORKING:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    invoke-static {v0}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->logAction(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static error(I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 2
    .parameter "error"

    .prologue
    .line 124
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->ERROR:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setErrorType(I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->logProtoBuf(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static imeTextAccepted(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 3
    .parameter "name"

    .prologue
    .line 206
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;->UNKNOWN_APP:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    .line 207
    .local v0, appIdentityType:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;
    const-string v1, "com.google.android.gm"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.google.android.gm."

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 208
    :cond_0
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;->GMAIL_APP:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    .line 212
    :cond_1
    :goto_0
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->IME_TEXT_ACCEPTED:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    invoke-virtual {v1, v2}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setAppIdentityType(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->logProtoBuf(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v1

    return-object v1

    .line 209
    :cond_2
    const-string v1, "com.android.mms"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.mms."

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    :cond_3
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;->SMS_APP:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    goto :goto_0
.end method

.method public static inputEnded()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1

    .prologue
    .line 200
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->INPUT_ENDED:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    invoke-static {v0}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->logAction(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static keyboardWarningDialogCancel()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 2

    .prologue
    .line 74
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->DIALOG_CANCEL:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;->VOICE_WARNING_KEYBOARD:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setDialogType(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->logProtoBuf(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static keyboardWarningDialogDismissed()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 2

    .prologue
    .line 62
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->DIALOG_DISMISSED:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;->VOICE_WARNING_KEYBOARD:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setDialogType(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->logProtoBuf(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static keyboardWarningDialogOk()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 2

    .prologue
    .line 68
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->DIALOG_OK:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;->VOICE_WARNING_KEYBOARD:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setDialogType(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->logProtoBuf(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static keyboardWarningDialogShown()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 2

    .prologue
    .line 56
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->DIALOG_SHOWN:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;->VOICE_WARNING_KEYBOARD:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setDialogType(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->logProtoBuf(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static logAction(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1
    .parameter "actionType"

    .prologue
    .line 46
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->logProtoBuf(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static logProtoBuf(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 2
    .parameter "voiceImeEventInfoBuilder"

    .prologue
    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setTimestamp(J)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    .line 52
    return-object p0
.end method

.method public static nBestChoose(I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 2
    .parameter "index"

    .prologue
    .line 194
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->N_BEST_CHOOSE:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setIndex(I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->logProtoBuf(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static punctuationHintDisplayed()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->PUNCTUATION_HINT_DISPLAYED:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    invoke-static {v0}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->logAction(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static settingsWarningDialogCancel()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 2

    .prologue
    .line 98
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->DIALOG_CANCEL:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;->VOICE_WARNING_SETTINGS:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setDialogType(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->logProtoBuf(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static settingsWarningDialogDismissed()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 2

    .prologue
    .line 86
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->DIALOG_DISMISSED:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;->VOICE_WARNING_SETTINGS:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setDialogType(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->logProtoBuf(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static settingsWarningDialogOk()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 2

    .prologue
    .line 92
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->DIALOG_OK:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;->VOICE_WARNING_SETTINGS:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setDialogType(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->logProtoBuf(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static settingsWarningDialogShown()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 2

    .prologue
    .line 80
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->DIALOG_SHOWN:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;->VOICE_WARNING_SETTINGS:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setDialogType(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->logProtoBuf(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static start(Ljava/lang/String;I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 2
    .parameter "locale"
    .parameter "method"

    .prologue
    .line 130
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->START_INPUT_BUTTON:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    .line 131
    .local v0, action:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;
    packed-switch p1, :pswitch_data_0

    .line 142
    :goto_0
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setInputLanguage(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->logProtoBuf(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v1

    return-object v1

    .line 133
    :pswitch_0
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->START_INPUT_BUTTON:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    .line 134
    goto :goto_0

    .line 136
    :pswitch_1
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->START_INPUT_SWIPE:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    .line 137
    goto :goto_0

    .line 139
    :pswitch_2
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->START_INPUT_MOTION:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    goto :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static swipeHintDisplayed()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->SWIPE_HINT_DISPLAYED:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    invoke-static {v0}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->logAction(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static textModified(IIIILjava/lang/String;Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 3
    .parameter "length"
    .parameter "type"
    .parameter "replacedLength"
    .parameter "nbestChooseIndex"
    .parameter "beforeNbestChoose"
    .parameter "afterNbestChoose"

    .prologue
    const/4 v2, -0x1

    .line 155
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    .line 156
    .local v0, builder:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    sget-object v1, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->TEXT_MODIFIED:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    .line 157
    invoke-virtual {v0, p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setInputLength(I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    .line 159
    if-eq p2, v2, :cond_0

    .line 160
    invoke-virtual {v0, p2}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setNBestChooseReplacedPhraseLength(I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    .line 163
    :cond_0
    if-eq p3, v2, :cond_1

    .line 164
    invoke-virtual {v0, p3}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setIndex(I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    .line 167
    :cond_1
    if-eqz p4, :cond_2

    .line 168
    invoke-virtual {v0, p4}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setNBestChooseBeforeValue(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    .line 171
    :cond_2
    if-eqz p5, :cond_3

    .line 172
    invoke-virtual {v0, p5}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setNBestChooseAfterValue(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    .line 175
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 190
    :goto_0
    invoke-static {v0}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->logProtoBuf(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v1

    return-object v1

    .line 177
    :pswitch_0
    sget-object v1, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;->CHOOSE_SUGGESTION:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setTextModificationActionType(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    goto :goto_0

    .line 180
    :pswitch_1
    sget-object v1, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;->TYPING_DELETION:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setTextModificationActionType(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    goto :goto_0

    .line 183
    :pswitch_2
    sget-object v1, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;->TYPING_INSERTION:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setTextModificationActionType(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    goto :goto_0

    .line 186
    :pswitch_3
    sget-object v1, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;->TYPING_INSERTION_PUNCTUATION:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setTextModificationActionType(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static voiceInputDelivered(I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 2
    .parameter "length"

    .prologue
    .line 148
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->VOICE_INPUT_DELIVERED:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setInputLength(I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->logProtoBuf(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static voiceInputSettingDisabled()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1

    .prologue
    .line 222
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->VOICE_INPUT_SETTING_DISABLED:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    invoke-static {v0}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->logAction(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static voiceInputSettingEnabled()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1

    .prologue
    .line 218
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->VOICE_INPUT_SETTING_ENABLED:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    invoke-static {v0}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->logAction(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method
