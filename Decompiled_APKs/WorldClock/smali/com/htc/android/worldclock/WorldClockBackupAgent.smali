.class public Lcom/htc/android/worldclock/WorldClockBackupAgent;
.super Landroid/app/backup/BackupAgent;
.source "WorldClockBackupAgent.java"


# static fields
.field static final BACKUP_AGENT_VERSION:I = 0x0

.field static final WORLDCLOCK_KEY:Ljava/lang/String; = "_workdclock_"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/backup/BackupAgent;-><init>()V

    return-void
.end method

.method private backupAlarms(Ljava/io/FileOutputStream;Ljava/util/zip/CRC32;Ljava/io/ByteArrayOutputStream;Ljava/io/DataOutputStream;)V
    .locals 10
    .parameter "outfstream"
    .parameter "crc"
    .parameter "bufstream"
    .parameter "bout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 249
    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClockBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/android/worldclock/Alarms$AlarmColumns;->CONTENT_URI:Landroid/net/Uri;

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "hour"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "minutes"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "daysofweek"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "alarmtime"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "enabled"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "vibrate"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "message"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "alert"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "snoozed"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 258
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 259
    const/4 v6, 0x0

    .line 263
    .local v6, count:I
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Backing up "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " alarms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p4, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 265
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 266
    .local v9, record:[B
    invoke-virtual {p2, v9}, Ljava/util/zip/CRC32;->update([B)V

    .line 267
    invoke-virtual {p1, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 269
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v6, :cond_1

    .line 270
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 274
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 275
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 276
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 277
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 278
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 279
    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 280
    const/4 v0, 0x5

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 281
    const/4 v0, 0x6

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 282
    const/4 v0, 0x7

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 283
    const/16 v0, 0x8

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 286
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 287
    invoke-virtual {p2, v9}, Ljava/util/zip/CRC32;->update([B)V

    .line 288
    invoke-virtual {p1, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 269
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 261
    .end local v6           #count:I
    .end local v8           #i:I
    .end local v9           #record:[B
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .restart local v6       #count:I
    goto/16 :goto_0

    .line 290
    .restart local v8       #i:I
    .restart local v9       #record:[B
    :cond_1
    if-eqz v7, :cond_2

    .line 291
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 293
    :cond_2
    return-void
.end method

.method private backupPreferences(Ljava/io/FileOutputStream;Ljava/util/zip/CRC32;Ljava/io/ByteArrayOutputStream;Ljava/io/DataOutputStream;)V
    .locals 5
    .parameter "outfstream"
    .parameter "crc"
    .parameter "bufstream"
    .parameter "bout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 325
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 326
    const/4 v0, 0x1

    .line 327
    .local v0, count:I
    invoke-virtual {p4, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 328
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 329
    .local v2, record:[B
    invoke-virtual {p2, v2}, Ljava/util/zip/CRC32;->update([B)V

    .line 330
    invoke-virtual {p1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 331
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Backing up  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " preference "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 332
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 335
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 336
    invoke-static {p0}, Lcom/htc/android/worldclock/PreferencesUtil;->getDefaultAlertSoundUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 339
    invoke-virtual {p2, v2}, Ljava/util/zip/CRC32;->update([B)V

    .line 340
    invoke-virtual {p1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 332
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 342
    :cond_0
    return-void
.end method

.method private backupTimeZone(Ljava/io/FileOutputStream;Ljava/util/zip/CRC32;Ljava/io/ByteArrayOutputStream;Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 6
    .parameter "outfstream"
    .parameter "crc"
    .parameter "bufstream"
    .parameter "bout"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 299
    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClockBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, p5}, Lcom/htc/util/weather/WeatherUtility;->loadLocationsForWorldClock(Landroid/content/ContentResolver;Ljava/lang/String;)[Lcom/htc/util/weather/WeatherLocation;

    move-result-object v3

    .line 301
    .local v3, w:[Lcom/htc/util/weather/WeatherLocation;
    if-eqz v3, :cond_0

    .line 302
    array-length v0, v3

    .line 303
    .local v0, count:I
    invoke-virtual {p4, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 304
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 305
    .local v2, record:[B
    invoke-virtual {p2, v2}, Ljava/util/zip/CRC32;->update([B)V

    .line 306
    invoke-virtual {p1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 307
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Backing up  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " time zone "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 308
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 311
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 312
    aget-object v4, v3, v1

    invoke-virtual {v4}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 313
    aget-object v4, v3, v1

    invoke-virtual {v4}, Lcom/htc/util/weather/WeatherLocation;->getTimezoneId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 316
    invoke-virtual {p2, v2}, Ljava/util/zip/CRC32;->update([B)V

    .line 317
    invoke-virtual {p1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 308
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 320
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #record:[B
    :cond_0
    return-void
.end method

.method private buildWorldClockFile(Ljava/io/FileOutputStream;)J
    .locals 6
    .parameter "outfstream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 113
    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    .line 114
    .local v2, crc:Ljava/util/zip/CRC32;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x200

    invoke-direct {v3, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 115
    .local v3, bufstream:Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 118
    .local v4, bout:Ljava/io/DataOutputStream;
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/htc/android/worldclock/WorldClockBackupAgent;->backupAlarms(Ljava/io/FileOutputStream;Ljava/util/zip/CRC32;Ljava/io/ByteArrayOutputStream;Ljava/io/DataOutputStream;)V

    .line 120
    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClockBackupAgent;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/worldclock/WorldClockBackupAgent;->backupTimeZone(Ljava/io/FileOutputStream;Ljava/util/zip/CRC32;Ljava/io/ByteArrayOutputStream;Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClockBackupAgent;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".home"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/worldclock/WorldClockBackupAgent;->backupTimeZone(Ljava/io/FileOutputStream;Ljava/util/zip/CRC32;Ljava/io/ByteArrayOutputStream;Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 124
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/htc/android/worldclock/WorldClockBackupAgent;->backupPreferences(Ljava/io/FileOutputStream;Ljava/util/zip/CRC32;Ljava/io/ByteArrayOutputStream;Ljava/io/DataOutputStream;)V

    .line 126
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private copyBackupToFile(Landroid/app/backup/BackupDataInput;Ljava/io/File;I)J
    .locals 7
    .parameter "data"
    .parameter "file"
    .parameter "toRead"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x2000

    const/4 v5, 0x0

    .line 153
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 154
    const/16 v0, 0x2000

    .line 155
    .local v0, CHUNK:I
    new-array v1, v6, [B

    .line 156
    .local v1, buf:[B
    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    .line 157
    .local v2, crc:Ljava/util/zip/CRC32;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 159
    .local v4, out:Ljava/io/FileOutputStream;
    :goto_0
    if-lez p3, :cond_0

    .line 160
    invoke-virtual {p1, v1, v5, v6}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    move-result v3

    .line 161
    .local v3, numRead:I
    invoke-virtual {v2, v1, v5, v3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 162
    invoke-virtual {v4, v1, v5, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 163
    sub-int/2addr p3, v3

    .line 164
    goto :goto_0

    .line 166
    .end local v3           #numRead:I
    :cond_0
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 167
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v5

    return-wide v5
.end method

.method private copyFileToBackup(Ljava/lang/String;Ljava/io/File;Landroid/app/backup/BackupDataOutput;)V
    .locals 8
    .parameter "key"
    .parameter "file"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x2000

    .line 132
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 133
    const/16 v0, 0x2000

    .line 134
    .local v0, CHUNK:I
    new-array v1, v7, [B

    .line 136
    .local v1, buf:[B
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v4, v5

    .line 137
    .local v4, toCopy:I
    invoke-virtual {p3, p1, v4}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 139
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 141
    .local v2, in:Ljava/io/FileInputStream;
    :goto_0
    if-lez v4, :cond_0

    .line 142
    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    .line 143
    .local v3, nRead:I
    invoke-virtual {p3, v1, v3}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    .line 144
    sub-int/2addr v4, v3

    goto :goto_0

    .line 146
    .end local v3           #nRead:I
    :cond_0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 147
    return-void
.end method

.method private restoreAlarms(JLjava/io/DataInputStream;)J
    .locals 10
    .parameter "crc"
    .parameter "in"

    .prologue
    .line 182
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 184
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClockBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/htc/android/worldclock/Alarms$AlarmColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "*"

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 186
    invoke-virtual {p3}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 187
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 188
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 190
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "hour"

    invoke-virtual {p3}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 191
    const-string v4, "minutes"

    invoke-virtual {p3}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 192
    const-string v4, "daysofweek"

    invoke-virtual {p3}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 193
    const-string v4, "alarmtime"

    invoke-virtual {p3}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 194
    const-string v4, "enabled"

    invoke-virtual {p3}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 195
    const-string v4, "vibrate"

    invoke-virtual {p3}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 196
    const-string v4, "message"

    invoke-virtual {p3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v4, "alert"

    invoke-virtual {p3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v4, "snoozed"

    invoke-virtual {p3}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 199
    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClockBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/htc/android/worldclock/Alarms$AlarmColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    .line 202
    .local v2, ioe:Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad backup alarm data; quotes not restoring "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    .line 203
    const-wide/16 p1, -0x1

    .line 205
    .end local v2           #ioe:Ljava/io/IOException;
    :cond_0
    return-wide p1
.end method

.method private restorePreference(JLjava/io/DataInputStream;)J
    .locals 4
    .parameter "crc"
    .parameter "in"

    .prologue
    .line 232
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 234
    :try_start_0
    invoke-virtual {p3}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 235
    .local v0, count:I
    if-lez v0, :cond_0

    .line 236
    invoke-virtual {p3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/htc/android/worldclock/PreferencesUtil;->setDefaultAlertSoundUri(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .end local v0           #count:I
    :cond_0
    :goto_0
    return-wide p1

    .line 238
    :catch_0
    move-exception v1

    .line 239
    .local v1, ioe:Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad backup preference data; not restoring "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    .line 240
    const-wide/16 p1, -0x1

    goto :goto_0
.end method

.method private restoreTimeZone(JLjava/io/DataInputStream;Ljava/lang/String;)J
    .locals 6
    .parameter "crc"
    .parameter "in"
    .parameter "name"

    .prologue
    .line 209
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 211
    :try_start_0
    invoke-virtual {p3}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 212
    .local v0, count:I
    if-lez v0, :cond_1

    .line 213
    new-array v3, v0, [Lcom/htc/util/weather/WeatherLocation;

    .line 214
    .local v3, loc:[Lcom/htc/util/weather/WeatherLocation;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 215
    aget-object v4, v3, v1

    invoke-virtual {p3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/util/weather/WeatherLocation;->setName(Ljava/lang/String;)V

    .line 216
    aget-object v4, v3, v1

    invoke-virtual {p3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/util/weather/WeatherLocation;->setTimezoneId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 219
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClockBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, p4, v3}, Lcom/htc/util/weather/WeatherUtility;->saveLocations(Landroid/content/ContentResolver;Ljava/lang/String;[Lcom/htc/util/weather/WeatherLocation;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 228
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #loc:[Lcom/htc/util/weather/WeatherLocation;
    :cond_1
    :goto_1
    return-wide p1

    .line 224
    :catch_0
    move-exception v2

    .line 225
    .local v2, ioe:Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad backup time zone data; not restoring "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    .line 226
    const-wide/16 p1, -0x1

    goto :goto_1

    .line 221
    .end local v2           #ioe:Ljava/io/IOException;
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v3       #loc:[Lcom/htc/util/weather/WeatherLocation;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method private writeBackupState(JJLandroid/os/ParcelFileDescriptor;)V
    .locals 3
    .parameter "fileSize"
    .parameter "crc"
    .parameter "stateFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 174
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {p5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 176
    .local v0, out:Ljava/io/DataOutputStream;
    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 177
    invoke-virtual {v0, p3, p4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 178
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 179
    return-void
.end method


# virtual methods
.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 15
    .parameter "oldState"
    .parameter "data"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 36
    const-wide/16 v11, -0x1

    .line 37
    .local v11, savedFileSize:J
    const-wide/16 v9, -0x1

    .line 38
    .local v9, savedCrc:J
    const/4 v13, -0x1

    .line 42
    .local v13, savedVersion:I
    new-instance v7, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v7, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 45
    .local v7, in:Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v11

    .line 46
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v9

    .line 47
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 53
    :goto_0
    const-string v1, "bkp"

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClockBackupAgent;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v14

    .line 55
    .local v14, tmpfile:Ljava/io/File;
    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 56
    .local v8, outfstream:Ljava/io/FileOutputStream;
    invoke-direct {p0, v8}, Lcom/htc/android/worldclock/WorldClockBackupAgent;->buildWorldClockFile(Ljava/io/FileOutputStream;)J

    move-result-wide v4

    .line 57
    .local v4, newCrc:J
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 60
    if-nez v13, :cond_0

    cmp-long v1, v4, v9

    if-nez v1, :cond_0

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v1

    cmp-long v1, v1, v11

    if-eqz v1, :cond_1

    .line 64
    :cond_0
    const-string v1, "_workdclock_"

    move-object/from16 v0, p2

    invoke-direct {p0, v1, v14, v0}, Lcom/htc/android/worldclock/WorldClockBackupAgent;->copyFileToBackup(Ljava/lang/String;Ljava/io/File;Landroid/app/backup/BackupDataOutput;)V

    .line 68
    :cond_1
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v2

    move-object v1, p0

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/htc/android/worldclock/WorldClockBackupAgent;->writeBackupState(JJLandroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 73
    return-void

    .line 71
    .end local v4           #newCrc:J
    .end local v8           #outfstream:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v1

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    throw v1

    .line 48
    .end local v14           #tmpfile:Ljava/io/File;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 9
    .parameter "data"
    .parameter "appVersionCode"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 79
    const-wide/16 v3, -0x1

    .line 80
    .local v3, crc:J
    const-string v0, "rst"

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClockBackupAgent;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v8

    .line 83
    .local v8, tmpfile:Ljava/io/File;
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    const-string v0, "_workdclock_"

    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v0

    invoke-direct {p0, p1, v8, v0}, Lcom/htc/android/worldclock/WorldClockBackupAgent;->copyBackupToFile(Landroid/app/backup/BackupDataInput;Ljava/io/File;I)J

    move-result-wide v3

    .line 86
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 87
    .local v7, infstream:Ljava/io/FileInputStream;
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 90
    .local v6, in:Ljava/io/DataInputStream;
    invoke-direct {p0, v3, v4, v6}, Lcom/htc/android/worldclock/WorldClockBackupAgent;->restoreAlarms(JLjava/io/DataInputStream;)J

    move-result-wide v3

    .line 92
    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClockBackupAgent;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v4, v6, v0}, Lcom/htc/android/worldclock/WorldClockBackupAgent;->restoreTimeZone(JLjava/io/DataInputStream;Ljava/lang/String;)J

    move-result-wide v3

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClockBackupAgent;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".home"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v4, v6, v0}, Lcom/htc/android/worldclock/WorldClockBackupAgent;->restoreTimeZone(JLjava/io/DataInputStream;Ljava/lang/String;)J

    move-result-wide v3

    .line 96
    invoke-direct {p0, v3, v4, v6}, Lcom/htc/android/worldclock/WorldClockBackupAgent;->restorePreference(JLjava/io/DataInputStream;)J

    move-result-wide v3

    .line 101
    .end local v6           #in:Ljava/io/DataInputStream;
    .end local v7           #infstream:Ljava/io/FileInputStream;
    :cond_0
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v1

    move-object v0, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/worldclock/WorldClockBackupAgent;->writeBackupState(JJLandroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    throw v0

    :cond_1
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 107
    return-void
.end method
