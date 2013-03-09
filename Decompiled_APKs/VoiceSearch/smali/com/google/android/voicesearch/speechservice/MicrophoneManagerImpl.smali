.class public Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;
.super Ljava/lang/Object;
.source "MicrophoneManagerImpl.java"

# interfaces
.implements Lcom/google/android/voicesearch/speechservice/MicrophoneManager;


# instance fields
.field private mAudioLoggingEnabled:Z

.field private mContext:Landroid/content/Context;

.field protected mEncoding:I

.field protected mEncodingThreeG:I

.field protected mEncodingWifi:I

.field protected mEndpointerInputStream:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;

.field private mEndpointerParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters$EndpointerParams;

.field protected mSamplingRate:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/16 v1, 0x1f40

    iput v1, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mSamplingRate:I

    .line 59
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mEndpointerInputStream:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;

    .line 64
    iput-boolean v3, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mAudioLoggingEnabled:Z

    .line 67
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mContext:Landroid/content/Context;

    .line 68
    invoke-static {p1}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getGservicesHelper()Lcom/google/android/voicesearch/GservicesHelper;

    move-result-object v0

    .line 71
    .local v0, helper:Lcom/google/android/voicesearch/GservicesHelper;
    invoke-virtual {v0}, Lcom/google/android/voicesearch/GservicesHelper;->getAudioEncoding3G()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->getEncodingOf(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mEncodingThreeG:I

    .line 72
    invoke-virtual {v0}, Lcom/google/android/voicesearch/GservicesHelper;->getAudioEncodingWifi()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->getEncodingOf(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mEncodingWifi:I

    .line 73
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "audioLoggingEnabled"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mAudioLoggingEnabled:Z

    .line 75
    return-void
.end method

.method private static getEncodingOf(Ljava/lang/String;)I
    .locals 4
    .parameter "encoding"

    .prologue
    const/4 v0, 0x4

    .line 201
    const-string v1, "ULAW"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    const/4 v0, 0x1

    .line 214
    :cond_0
    :goto_0
    return v0

    .line 203
    :cond_1
    const-string v1, "LINEAR_16"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 204
    const/4 v0, 0x2

    goto :goto_0

    .line 205
    :cond_2
    const-string v1, "AMR_NB"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 207
    const-string v1, "SPEEX_NB"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 208
    const/4 v0, 0x6

    goto :goto_0

    .line 209
    :cond_3
    const-string v1, "FLAC"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 210
    const/4 v0, 0x7

    goto :goto_0

    .line 213
    :cond_4
    const-string v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected encoding type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Using AMR."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected captureStream(Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;)Ljava/io/InputStream;
    .locals 1
    .parameter "in"
    .parameter "rawBuffer"

    .prologue
    .line 187
    if-nez p2, :cond_0

    .line 191
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    new-instance v0, Lcom/google/android/voicesearch/logging/CopyInputStream;

    invoke-direct {v0, p1, p2}, Lcom/google/android/voicesearch/logging/CopyInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    move-object p1, v0

    goto :goto_0
.end method

.method public getEncoding()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mEncoding:I

    return v0
.end method

.method protected getMicInputStream(Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;ILjava/io/ByteArrayOutputStream;Z)Lcom/google/android/voicesearch/speechservice/AudioBuffer;
    .locals 10
    .parameter "listener"
    .parameter "networkType"
    .parameter "rawBuffer"
    .parameter "dictationMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    new-instance v1, Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;

    iget v0, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mSamplingRate:I

    iget v2, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mSamplingRate:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;-><init>(II)V

    .line 112
    .local v1, in:Ljava/io/InputStream;
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mEncoding:I

    .line 113
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 114
    iget v0, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mEncodingWifi:I

    iput v0, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mEncoding:I

    .line 119
    :cond_0
    :goto_0
    const-string v0, "mic"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->logStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 120
    invoke-virtual {p0, v1, p3}, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->captureStream(Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;)Ljava/io/InputStream;

    move-result-object v9

    .line 121
    .end local v1           #in:Ljava/io/InputStream;
    .local v9, in:Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v0, 0x640

    invoke-direct {v1, v9, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 124
    .end local v9           #in:Ljava/io/InputStream;
    .restart local v1       #in:Ljava/io/InputStream;
    if-eqz p4, :cond_2

    .line 125
    new-instance v0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;

    invoke-direct {v0, v1}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mEndpointerInputStream:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;

    .line 133
    :goto_1
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mEndpointerInputStream:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;

    invoke-virtual {v0, p1}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->setListener(Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;)V

    .line 136
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mEndpointerInputStream:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;

    iget v2, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mEncoding:I

    invoke-static {v0, v2}, Lcom/google/android/voicesearch/speechservice/Utils;->getEncodingInputStream(Ljava/io/InputStream;I)Ljava/io/InputStream;

    move-result-object v1

    .line 137
    new-instance v0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;

    iget v2, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mEncoding:I

    invoke-static {v2}, Lcom/google/android/voicesearch/speechservice/Utils;->getAudioPacketSize(I)I

    move-result v2

    invoke-direct {v0, v2, v1}, Lcom/google/android/voicesearch/speechservice/AudioBuffer;-><init>(ILjava/io/InputStream;)V

    return-object v0

    .line 115
    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 116
    iget v0, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mEncodingThreeG:I

    iput v0, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mEncoding:I

    goto :goto_0

    .line 127
    :cond_2
    new-instance v0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mEndpointerParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters$EndpointerParams;

    invoke-virtual {v3}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters$EndpointerParams;->getSpeechInputMinimumLengthMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mEndpointerParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters$EndpointerParams;

    invoke-virtual {v5}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters$EndpointerParams;->getSpeechInputCompleteSilenceLengthMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mEndpointerParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters$EndpointerParams;

    invoke-virtual {v7}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters$EndpointerParams;->getSpeechInputPossiblyCompleteSilenceLengthMillis()J

    move-result-wide v7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;-><init>(Ljava/io/InputStream;IJJJ)V

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mEndpointerInputStream:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;

    goto :goto_1
.end method

.method public getSamplingRate()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mSamplingRate:I

    return v0
.end method

.method protected logStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 6
    .parameter "in"
    .parameter "name"

    .prologue
    .line 166
    iget-boolean v3, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mAudioLoggingEnabled:Z

    if-nez v3, :cond_0

    .line 180
    .end local p1
    :goto_0
    return-object p1

    .line 169
    .restart local p1
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".pcm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, fileName:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/voicesearch/TestPlatformLog;->logAudioPath(Ljava/lang/String;)V

    .line 175
    :try_start_0
    iget-object v3, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 177
    .local v2, logOutputStream:Ljava/io/OutputStream;
    new-instance v3, Lcom/google/android/voicesearch/logging/CopyInputStream;

    invoke-direct {v3, p1, v2}, Lcom/google/android/voicesearch/logging/CopyInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v3

    goto :goto_0

    .line 178
    .end local v2           #logOutputStream:Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 179
    .local v0, ex:Ljava/io/FileNotFoundException;
    const-string v3, "MicrophoneManagerImpl"

    const-string v4, "Error opening audio log file."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setEndpointerParams(Lcom/google/android/voicesearch/speechservice/RecognitionParameters$EndpointerParams;)V
    .locals 0
    .parameter "params"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mEndpointerParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters$EndpointerParams;

    .line 100
    return-void
.end method

.method public setupMicrophone(Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;ILjava/io/ByteArrayOutputStream;Z)Lcom/google/android/voicesearch/speechservice/AudioBuffer;
    .locals 1
    .parameter "listener"
    .parameter "networkType"
    .parameter "rawBuffer"
    .parameter "dictationMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->getMicInputStream(Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;ILjava/io/ByteArrayOutputStream;Z)Lcom/google/android/voicesearch/speechservice/AudioBuffer;

    move-result-object v0

    .line 94
    .local v0, audioBuff:Lcom/google/android/voicesearch/speechservice/AudioBuffer;
    return-object v0
.end method

.method public stopListening()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mEndpointerInputStream:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mEndpointerInputStream:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->stopListening()V

    .line 162
    :cond_0
    return-void
.end method
