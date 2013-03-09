.class public Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DownloadBroadcastReceiver.java"


# instance fields
.field private mApp:Lcom/google/android/tts/GoogleTtsApplication;

.field private mContext:Landroid/content/Context;

.field private mDownloadInfo:Lcom/google/android/tts/voicepack/VoiceDownloadHelper$DownloadInfo;

.field private mDownloadManager:Lcom/google/android/tts/voicepack/VoiceDownloadHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->handleCompletedDownload(Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->broadcastDownloadComplete(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->showDownloadCompleteNotification(Z)V

    return-void
.end method

.method private broadcastDownloadComplete(Z)V
    .locals 3
    .parameter "success"

    .prologue
    .line 177
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.tts.engine.TTS_DATA_INSTALLED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "dataInstalled"

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 181
    iget-object v1, p0, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 182
    return-void

    .line 179
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private buildNotification(Ljava/lang/String;Z)Landroid/app/Notification;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 198
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 200
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 202
    invoke-static {p1}, Lcom/google/android/tts/voicepack/MetadataManager;->getDisplayString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    if-eqz p2, :cond_0

    .line 208
    const v2, 0x1080082

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 209
    iget-object v2, p0, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->mContext:Landroid/content/Context;

    const v3, 0x7f060013

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 211
    iget-object v0, p0, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->mContext:Landroid/content/Context;

    const v2, 0x7f060014

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 215
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.settings.TTS_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 226
    :goto_0
    iget-object v2, p0, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v2, v5, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 228
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 230
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    return-object v0

    .line 217
    :cond_0
    const v2, 0x1080078

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 218
    iget-object v2, p0, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->mContext:Landroid/content/Context;

    const v3, 0x7f060015

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 220
    iget-object v0, p0, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->mContext:Landroid/content/Context;

    const v2, 0x7f060016

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 223
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->mContext:Landroid/content/Context;

    const-class v3, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method private deleteDownloadedFile(Ljava/lang/String;)V
    .locals 4
    .parameter "fileName"

    .prologue
    .line 153
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    .local v0, downloaded:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    const-string v1, "TTS.DownloadBroadcastReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to delete downloaded file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    return-void
.end method

.method private handleCompletedDownload(Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)Z
    .locals 6
    .parameter "intent"
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 67
    const-string v3, "extra_download_id"

    const-wide/16 v4, -0x1

    invoke-virtual {p1, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 68
    .local v0, downloadId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gez v3, :cond_1

    .line 69
    const-string v3, "TTS.DownloadBroadcastReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received intent without download ID :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    :goto_0
    return v2

    .line 73
    :cond_1
    iget-object v3, p0, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->mDownloadManager:Lcom/google/android/tts/voicepack/VoiceDownloadHelper;

    invoke-virtual {v3, v0, v1}, Lcom/google/android/tts/voicepack/VoiceDownloadHelper;->getDownloadInfo(J)Lcom/google/android/tts/voicepack/VoiceDownloadHelper$DownloadInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->mDownloadInfo:Lcom/google/android/tts/voicepack/VoiceDownloadHelper$DownloadInfo;

    .line 74
    iget-object v3, p0, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->mDownloadInfo:Lcom/google/android/tts/voicepack/VoiceDownloadHelper$DownloadInfo;

    if-eqz v3, :cond_0

    .line 84
    :try_start_0
    iget-object v3, p0, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->mDownloadInfo:Lcom/google/android/tts/voicepack/VoiceDownloadHelper$DownloadInfo;

    iget v3, v3, Lcom/google/android/tts/voicepack/VoiceDownloadHelper$DownloadInfo;->mStatus:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->mDownloadInfo:Lcom/google/android/tts/voicepack/VoiceDownloadHelper$DownloadInfo;

    iget-object v3, v3, Lcom/google/android/tts/voicepack/VoiceDownloadHelper$DownloadInfo;->mDownloadLocale:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 86
    iget-object v3, p0, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->mDownloadInfo:Lcom/google/android/tts/voicepack/VoiceDownloadHelper$DownloadInfo;

    iget-object v3, v3, Lcom/google/android/tts/voicepack/VoiceDownloadHelper$DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->processDownloadedFile(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 88
    iget-object v2, p0, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->mApp:Lcom/google/android/tts/GoogleTtsApplication;

    invoke-virtual {v2}, Lcom/google/android/tts/GoogleTtsApplication;->getVoiceDataManager()Lcom/google/android/tts/voicepack/VoiceDataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/tts/voicepack/VoiceDataManager;->updateAvailableLangs()V

    .line 89
    iget-object v2, p0, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->mApp:Lcom/google/android/tts/GoogleTtsApplication;

    invoke-virtual {v2}, Lcom/google/android/tts/GoogleTtsApplication;->getLangCountryHelper()Lcom/google/android/tts/local/LangCountryHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/tts/local/LangCountryHelper;->updateLocaleList()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    const/4 v2, 0x1

    .line 94
    iget-object v3, p0, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->mDownloadInfo:Lcom/google/android/tts/voicepack/VoiceDownloadHelper$DownloadInfo;

    iget-object v3, v3, Lcom/google/android/tts/voicepack/VoiceDownloadHelper$DownloadInfo;->mDownloadLocale:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 95
    iget-object v3, p0, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->mDownloadManager:Lcom/google/android/tts/voicepack/VoiceDownloadHelper;

    iget-object v4, p0, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->mDownloadInfo:Lcom/google/android/tts/voicepack/VoiceDownloadHelper$DownloadInfo;

    invoke-virtual {v3, v4}, Lcom/google/android/tts/voicepack/VoiceDownloadHelper;->markCompleted(Lcom/google/android/tts/voicepack/VoiceDownloadHelper$DownloadInfo;)V

    .line 97
    :cond_2
    iget-object v3, p0, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->mDownloadInfo:Lcom/google/android/tts/voicepack/VoiceDownloadHelper$DownloadInfo;

    iget-object v3, v3, Lcom/google/android/tts/voicepack/VoiceDownloadHelper$DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->deleteDownloadedFile(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_3
    iget-object v3, p0, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->mDownloadInfo:Lcom/google/android/tts/voicepack/VoiceDownloadHelper$DownloadInfo;

    iget-object v3, v3, Lcom/google/android/tts/voicepack/VoiceDownloadHelper$DownloadInfo;->mDownloadLocale:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 95
    iget-object v3, p0, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->mDownloadManager:Lcom/google/android/tts/voicepack/VoiceDownloadHelper;

    iget-object v4, p0, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->mDownloadInfo:Lcom/google/android/tts/voicepack/VoiceDownloadHelper$DownloadInfo;

    invoke-virtual {v3, v4}, Lcom/google/android/tts/voicepack/VoiceDownloadHelper;->markCompleted(Lcom/google/android/tts/voicepack/VoiceDownloadHelper$DownloadInfo;)V

    .line 97
    :cond_4
    iget-object v3, p0, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->mDownloadInfo:Lcom/google/android/tts/voicepack/VoiceDownloadHelper$DownloadInfo;

    iget-object v3, v3, Lcom/google/android/tts/voicepack/VoiceDownloadHelper$DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->deleteDownloadedFile(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->mDownloadInfo:Lcom/google/android/tts/voicepack/VoiceDownloadHelper$DownloadInfo;

    iget-object v3, v3, Lcom/google/android/tts/voicepack/VoiceDownloadHelper$DownloadInfo;->mDownloadLocale:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 95
    iget-object v3, p0, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->mDownloadManager:Lcom/google/android/tts/voicepack/VoiceDownloadHelper;

    iget-object v4, p0, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->mDownloadInfo:Lcom/google/android/tts/voicepack/VoiceDownloadHelper$DownloadInfo;

    invoke-virtual {v3, v4}, Lcom/google/android/tts/voicepack/VoiceDownloadHelper;->markCompleted(Lcom/google/android/tts/voicepack/VoiceDownloadHelper$DownloadInfo;)V

    .line 97
    :cond_5
    iget-object v3, p0, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->mDownloadInfo:Lcom/google/android/tts/voicepack/VoiceDownloadHelper$DownloadInfo;

    iget-object v3, v3, Lcom/google/android/tts/voicepack/VoiceDownloadHelper$DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->deleteDownloadedFile(Ljava/lang/String;)V

    throw v2
.end method

.method private openDownloadsActivity(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 166
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->mContext:Landroid/content/Context;

    const-class v2, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 169
    iget-object v1, p0, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 170
    return-void
.end method

.method private processDownloadedFile(Ljava/lang/String;)Z
    .locals 16
    .parameter "fileName"

    .prologue
    .line 107
    :try_start_0
    new-instance v6, Ljava/util/zip/ZipFile;

    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x1

    invoke-direct {v6, v13, v14}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    .line 109
    .local v6, file:Ljava/util/zip/ZipFile;
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 110
    .local v3, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 111
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 112
    .local v4, entry:Ljava/util/zip/ZipEntry;
    new-instance v5, Ljava/io/File;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    .local v5, entryFileName:Ljava/io/File;
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->mContext:Landroid/content/Context;

    const-string v14, "lang_pico"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v13

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .local v11, outputFile:Ljava/io/File;
    const/4 v8, 0x0

    .line 126
    .local v8, is:Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 128
    .local v9, os:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v6, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v8

    .line 129
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    .end local v9           #os:Ljava/io/FileOutputStream;
    .local v10, os:Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 131
    .local v2, count:I
    const/4 v12, 0x0

    .line 132
    .local v12, total:I
    const/high16 v13, 0x1

    :try_start_2
    new-array v1, v13, [B

    .line 133
    .local v1, buffer:[B
    :goto_1
    invoke-virtual {v8, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_1

    .line 134
    const/4 v13, 0x0

    invoke-virtual {v10, v1, v13, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 135
    add-int/2addr v12, v2

    goto :goto_1

    .line 139
    :cond_1
    if-eqz v8, :cond_2

    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 140
    :cond_2
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 146
    .end local v1           #buffer:[B
    .end local v2           #count:I
    .end local v3           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v4           #entry:Ljava/util/zip/ZipEntry;
    .end local v5           #entryFileName:Ljava/io/File;
    .end local v6           #file:Ljava/util/zip/ZipFile;
    .end local v8           #is:Ljava/io/InputStream;
    .end local v10           #os:Ljava/io/FileOutputStream;
    .end local v11           #outputFile:Ljava/io/File;
    .end local v12           #total:I
    :catch_0
    move-exception v7

    .line 147
    .local v7, ioe:Ljava/io/IOException;
    const-string v13, "TTS.DownloadBroadcastReceiver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception processing downloaded file :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v13, 0x0

    .end local v7           #ioe:Ljava/io/IOException;
    :goto_2
    return v13

    .line 139
    .restart local v3       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v4       #entry:Ljava/util/zip/ZipEntry;
    .restart local v5       #entryFileName:Ljava/io/File;
    .restart local v6       #file:Ljava/util/zip/ZipFile;
    .restart local v8       #is:Ljava/io/InputStream;
    .restart local v9       #os:Ljava/io/FileOutputStream;
    .restart local v11       #outputFile:Ljava/io/File;
    :catchall_0
    move-exception v13

    :goto_3
    if-eqz v8, :cond_3

    :try_start_4
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 140
    :cond_3
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    :cond_4
    throw v13

    .line 143
    .end local v4           #entry:Ljava/util/zip/ZipEntry;
    .end local v5           #entryFileName:Ljava/io/File;
    .end local v8           #is:Ljava/io/InputStream;
    .end local v9           #os:Ljava/io/FileOutputStream;
    .end local v11           #outputFile:Ljava/io/File;
    :cond_5
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 145
    const/4 v13, 0x1

    goto :goto_2

    .line 139
    .restart local v2       #count:I
    .restart local v4       #entry:Ljava/util/zip/ZipEntry;
    .restart local v5       #entryFileName:Ljava/io/File;
    .restart local v8       #is:Ljava/io/InputStream;
    .restart local v10       #os:Ljava/io/FileOutputStream;
    .restart local v11       #outputFile:Ljava/io/File;
    .restart local v12       #total:I
    :catchall_1
    move-exception v13

    move-object v9, v10

    .end local v10           #os:Ljava/io/FileOutputStream;
    .restart local v9       #os:Ljava/io/FileOutputStream;
    goto :goto_3
.end method

.method private showDownloadCompleteNotification(Z)V
    .locals 4
    .parameter "success"

    .prologue
    .line 185
    iget-object v2, p0, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->mDownloadInfo:Lcom/google/android/tts/voicepack/VoiceDownloadHelper$DownloadInfo;

    if-nez v2, :cond_0

    .line 195
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v2, p0, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 192
    .local v0, manager:Landroid/app/NotificationManager;
    iget-object v2, p0, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->mDownloadInfo:Lcom/google/android/tts/voicepack/VoiceDownloadHelper$DownloadInfo;

    iget-object v2, v2, Lcom/google/android/tts/voicepack/VoiceDownloadHelper$DownloadInfo;->mDownloadLocale:Ljava/lang/String;

    invoke-direct {p0, v2, p1}, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->buildNotification(Ljava/lang/String;Z)Landroid/app/Notification;

    move-result-object v1

    .line 194
    .local v1, notification:Landroid/app/Notification;
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 44
    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    invoke-static {p1}, Lcom/google/android/tts/GoogleTtsApplication;->get(Landroid/content/Context;)Lcom/google/android/tts/GoogleTtsApplication;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->mApp:Lcom/google/android/tts/GoogleTtsApplication;

    .line 46
    iget-object v1, p0, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->mApp:Lcom/google/android/tts/GoogleTtsApplication;

    invoke-virtual {v1}, Lcom/google/android/tts/GoogleTtsApplication;->getVoiceDownloadManager()Lcom/google/android/tts/voicepack/VoiceDownloadHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->mDownloadManager:Lcom/google/android/tts/voicepack/VoiceDownloadHelper;

    .line 48
    invoke-virtual {p0}, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    .line 49
    .local v0, result:Landroid/content/BroadcastReceiver$PendingResult;
    new-instance v1, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver$1;

    invoke-direct {v1, p0, p2, v0}, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver$1;-><init>(Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-virtual {v1}, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver$1;->start()V

    .line 64
    .end local v0           #result:Landroid/content/BroadcastReceiver$PendingResult;
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    const-string v1, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-direct {p0, p2}, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->openDownloadsActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
