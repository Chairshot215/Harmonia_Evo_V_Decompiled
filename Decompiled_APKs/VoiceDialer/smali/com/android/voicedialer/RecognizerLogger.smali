.class public Lcom/android/voicedialer/RecognizerLogger;
.super Ljava/lang/Object;
.source "RecognizerLogger.java"


# static fields
.field private static final ENABLED:Ljava/lang/String; = "enabled"

.field private static final LOGDIR:Ljava/lang/String; = "logdir"

.field private static final MAX_FILES:I = 0x14

.field private static final TAG:Ljava/lang/String; = "RecognizerLogger"


# instance fields
.field private final mDatedPath:Ljava/lang/String;

.field private final mWriter:Ljava/io/BufferedWriter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const-string v1, "RecognizerLogger"

    const-string v2, "RecognizerLogger"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-string v1, "logdir"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 114
    .local v0, dir:Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "log_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "yyyy_MM_dd_kk_mm_ss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/voicedialer/RecognizerLogger;->mDatedPath:Ljava/lang/String;

    .line 119
    const-string v1, ".wav"

    invoke-direct {p0, v1}, Lcom/android/voicedialer/RecognizerLogger;->deleteOldest(Ljava/lang/String;)V

    .line 120
    const-string v1, ".log"

    invoke-direct {p0, v1}, Lcom/android/voicedialer/RecognizerLogger;->deleteOldest(Ljava/lang/String;)V

    .line 123
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/voicedialer/RecognizerLogger;->mDatedPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".log"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v1, p0, Lcom/android/voicedialer/RecognizerLogger;->mWriter:Ljava/io/BufferedWriter;

    .line 124
    iget-object v1, p0, Lcom/android/voicedialer/RecognizerLogger;->mWriter:Ljava/io/BufferedWriter;

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/android/voicedialer/RecognizerLogger;->mWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/android/voicedialer/RecognizerLogger;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/voicedialer/RecognizerLogger;->mDatedPath:Ljava/lang/String;

    return-object v0
.end method

.method private deleteOldest(Ljava/lang/String;)V
    .locals 5
    .parameter "suffix"

    .prologue
    .line 195
    new-instance v0, Lcom/android/voicedialer/RecognizerLogger$1;

    invoke-direct {v0, p0, p1}, Lcom/android/voicedialer/RecognizerLogger$1;-><init>(Lcom/android/voicedialer/RecognizerLogger;Ljava/lang/String;)V

    .line 201
    .local v0, ff:Ljava/io/FileFilter;
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/voicedialer/RecognizerLogger;->mDatedPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 202
    .local v1, files:[Ljava/io/File;
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 204
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    add-int/lit8 v3, v3, -0x14

    if-ge v2, v3, :cond_0

    .line 205
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 204
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 207
    :cond_0
    return-void
.end method

.method public static disable(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 96
    :try_start_0
    const-string v3, "logdir"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 97
    .local v0, dir:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "enabled"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 98
    .local v2, enabled:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v0           #dir:Ljava/io/File;
    .end local v2           #enabled:Ljava/io/File;
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v1

    .line 101
    .local v1, e:Ljava/lang/SecurityException;
    const-string v3, "RecognizerLogger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disableLogging "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static enable(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 81
    :try_start_0
    const-string v3, "logdir"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 82
    .local v0, dir:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "enabled"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 83
    .local v2, enabled:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v0           #dir:Ljava/io/File;
    .end local v2           #enabled:Ljava/io/File;
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, e:Ljava/io/IOException;
    const-string v3, "RecognizerLogger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableLogging "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 70
    const-string v2, "logdir"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 71
    .local v0, dir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "enabled"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 72
    .local v1, enabled:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    return v2
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/voicedialer/RecognizerLogger;->mWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 188
    return-void
.end method

.method public logContacts(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/voicedialer/VoiceContact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, contacts:Ljava/util/List;,"Ljava/util/List<Lcom/android/voicedialer/VoiceContact;>;"
    const-string v3, "Contacts *****************"

    invoke-virtual {p0, v3}, Lcom/android/voicedialer/RecognizerLogger;->logLine(Ljava/lang/String;)V

    .line 154
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/voicedialer/VoiceContact;

    .local v2, vc:Lcom/android/voicedialer/VoiceContact;
    invoke-virtual {v2}, Lcom/android/voicedialer/VoiceContact;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/voicedialer/RecognizerLogger;->logLine(Ljava/lang/String;)V

    goto :goto_0

    .line 156
    .end local v2           #vc:Lcom/android/voicedialer/VoiceContact;
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/voicedialer/RecognizerLogger;->mWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_1
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, e:Ljava/io/IOException;
    const-string v3, "RecognizerLogger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "logContacts exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public logInputStream(Ljava/io/InputStream;I)Ljava/io/InputStream;
    .locals 2
    .parameter "inputStream"
    .parameter "sampleRate"

    .prologue
    .line 216
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    mul-int/lit8 v1, p2, 0x2

    mul-int/lit8 v1, v1, 0x14

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 218
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lcom/android/voicedialer/RecognizerLogger$2;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/android/voicedialer/RecognizerLogger$2;-><init>(Lcom/android/voicedialer/RecognizerLogger;Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;I)V

    return-object v1
.end method

.method public logIntents(Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, intents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent;>;"
    const-string v4, "Intents *********************"

    invoke-virtual {p0, v4}, Lcom/android/voicedialer/RecognizerLogger;->logLine(Ljava/lang/String;)V

    .line 169
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 170
    .local v3, sb:Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 171
    .local v2, intent:Landroid/content/Intent;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "sentence"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "sentence"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/voicedialer/RecognizerLogger;->logLine(Ljava/lang/String;)V

    goto :goto_0

    .line 175
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/voicedialer/RecognizerLogger;->mWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_1
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, e:Ljava/io/IOException;
    const-string v4, "RecognizerLogger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "logIntents exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public logLine(Ljava/lang/String;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/android/voicedialer/RecognizerLogger;->mWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/android/voicedialer/RecognizerLogger;->mWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, e:Ljava/io/IOException;
    const-string v1, "RecognizerLogger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logLine exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public logNbestHeader()V
    .locals 1

    .prologue
    .line 145
    const-string v0, "Nbest *****************"

    invoke-virtual {p0, v0}, Lcom/android/voicedialer/RecognizerLogger;->logLine(Ljava/lang/String;)V

    .line 146
    return-void
.end method
