.class public Lcom/google/android/location/os/real/RealOs;
.super Ljava/lang/Object;
.source "RealOs.java"

# interfaces
.implements Lcom/google/android/location/os/Os;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/location/os/real/RealOs$LocationReceiver;
    }
.end annotation


# static fields
.field private static final key:[Ljava/lang/String;


# instance fields
.field private final alarmIntent:[Landroid/app/PendingIntent;

.field private final alarmManager:Landroid/app/AlarmManager;

.field private final callbackRunner:Lcom/google/android/location/os/real/CallbackRunner;

.field public final context:Landroid/content/Context;

.field private final eventLog:Lcom/google/android/location/os/EventLog;

.field private final fullCollectionFromConstructor:Z

.field private final glsClient:Lcom/google/android/location/os/real/GlsClient;

.field private final locationReceiver:Lcom/google/android/location/os/real/RealOs$LocationReceiver;

.field private final wakeLock:[Landroid/os/PowerManager$WakeLock;

.field private wakeLockAcquired:[Z

.field private wifiLock:[Landroid/net/wifi/WifiManager$WifiLock;

.field private final wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 75
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "NetworkLocationLocator"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "NetworkLocationActiveCollector"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "NetworkLocationBurstCollector"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "NetworkLocationPassiveCollector"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/location/os/real/RealOs;->key:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/location/os/EventLog;Lcom/google/android/location/os/real/RealOs$LocationReceiver;Z)V
    .locals 8
    .parameter "context"
    .parameter "eventLog"
    .parameter "locationReceiver"
    .parameter "fullCollection"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-array v2, v6, [Landroid/app/PendingIntent;

    iput-object v2, p0, Lcom/google/android/location/os/real/RealOs;->alarmIntent:[Landroid/app/PendingIntent;

    .line 79
    new-array v2, v6, [Landroid/os/PowerManager$WakeLock;

    iput-object v2, p0, Lcom/google/android/location/os/real/RealOs;->wakeLock:[Landroid/os/PowerManager$WakeLock;

    .line 80
    new-array v2, v6, [Z

    iput-object v2, p0, Lcom/google/android/location/os/real/RealOs;->wakeLockAcquired:[Z

    .line 81
    new-array v2, v6, [Landroid/net/wifi/WifiManager$WifiLock;

    iput-object v2, p0, Lcom/google/android/location/os/real/RealOs;->wifiLock:[Landroid/net/wifi/WifiManager$WifiLock;

    .line 96
    iput-object p1, p0, Lcom/google/android/location/os/real/RealOs;->context:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lcom/google/android/location/os/real/RealOs;->eventLog:Lcom/google/android/location/os/EventLog;

    .line 98
    iput-object p3, p0, Lcom/google/android/location/os/real/RealOs;->locationReceiver:Lcom/google/android/location/os/real/RealOs$LocationReceiver;

    .line 99
    iput-boolean p4, p0, Lcom/google/android/location/os/real/RealOs;->fullCollectionFromConstructor:Z

    .line 100
    new-instance v2, Lcom/google/android/location/os/real/CallbackRunner;

    invoke-direct {v2, p1, p2}, Lcom/google/android/location/os/real/CallbackRunner;-><init>(Landroid/content/Context;Lcom/google/android/location/os/EventLog;)V

    iput-object v2, p0, Lcom/google/android/location/os/real/RealOs;->callbackRunner:Lcom/google/android/location/os/real/CallbackRunner;

    .line 101
    const-string v2, "alarm"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/google/android/location/os/real/RealOs;->alarmManager:Landroid/app/AlarmManager;

    .line 102
    iget-object v2, p0, Lcom/google/android/location/os/real/RealOs;->alarmIntent:[Landroid/app/PendingIntent;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.android.location.ALARM_WAKEUP_LOCATOR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v7, v3, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    aput-object v3, v2, v7

    .line 104
    new-instance v2, Lcom/google/android/location/os/real/GlsClient;

    iget-object v3, p0, Lcom/google/android/location/os/real/RealOs;->callbackRunner:Lcom/google/android/location/os/real/CallbackRunner;

    invoke-direct {v2, p1, v3}, Lcom/google/android/location/os/real/GlsClient;-><init>(Landroid/content/Context;Lcom/google/android/location/os/real/CallbackRunner;)V

    iput-object v2, p0, Lcom/google/android/location/os/real/RealOs;->glsClient:Lcom/google/android/location/os/real/GlsClient;

    .line 105
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 106
    .local v1, powerManager:Landroid/os/PowerManager;
    const-string v2, "wifi"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/google/android/location/os/real/RealOs;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 107
    const/4 v0, 0x0

    .local v0, client:I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 108
    iget-object v2, p0, Lcom/google/android/location/os/real/RealOs;->wakeLock:[Landroid/os/PowerManager$WakeLock;

    sget-object v3, Lcom/google/android/location/os/real/RealOs;->key:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v6, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    aput-object v3, v2, v0

    .line 109
    iget-object v2, p0, Lcom/google/android/location/os/real/RealOs;->wakeLock:[Landroid/os/PowerManager$WakeLock;

    aget-object v2, v2, v0

    invoke-virtual {v2, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 110
    iget-object v2, p0, Lcom/google/android/location/os/real/RealOs;->wifiLock:[Landroid/net/wifi/WifiManager$WifiLock;

    iget-object v3, p0, Lcom/google/android/location/os/real/RealOs;->wifiManager:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x2

    sget-object v5, Lcom/google/android/location/os/real/RealOs;->key:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v3

    aput-object v3, v2, v0

    .line 111
    iget-object v2, p0, Lcom/google/android/location/os/real/RealOs;->wifiLock:[Landroid/net/wifi/WifiManager$WifiLock;

    aget-object v2, v2, v0

    invoke-virtual {v2, v7}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_0
    return-void
.end method

.method public static bootTimeMillis()J
    .locals 4

    .prologue
    .line 450
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private static computeNlpStateFile(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .parameter "context"

    .prologue
    .line 358
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "nlp_state"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static copyV1Entries(Ljava/io/DataOutputStream;Landroid/content/Context;Ljava/lang/String;JZ)V
    .locals 23
    .parameter "output"
    .parameter "context"
    .parameter "filename"
    .parameter "now"
    .parameter "wifi"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    const-string v20, "NetworkLocationRealOs"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "------------------------ reading "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/google/android/location/os/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const/4 v7, 0x0

    .line 299
    .local v7, input:Ljava/io/DataInputStream;
    :try_start_0
    new-instance v8, Ljava/io/DataInputStream;

    new-instance v20, Ljava/io/BufferedInputStream;

    invoke-virtual/range {p1 .. p2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    .end local v7           #input:Ljava/io/DataInputStream;
    .local v8, input:Ljava/io/DataInputStream;
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v17

    .line 307
    .local v17, version:I
    const/16 v20, 0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 308
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    move-object v7, v8

    .line 355
    .end local v8           #input:Ljava/io/DataInputStream;
    .end local v17           #version:I
    .restart local v7       #input:Ljava/io/DataInputStream;
    :goto_0
    return-void

    .line 300
    :catch_0
    move-exception v6

    .line 301
    .local v6, ignore:Ljava/io/FileNotFoundException;
    const-string v20, "NetworkLocationRealOs"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "no "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " found; not migrating"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/google/android/location/os/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_0

    .line 312
    .end local v6           #ignore:Ljava/io/FileNotFoundException;
    .end local v7           #input:Ljava/io/DataInputStream;
    .restart local v8       #input:Ljava/io/DataInputStream;
    .restart local v17       #version:I
    :cond_0
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v14

    .line 313
    .local v14, records:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 315
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v14, :cond_4

    .line 316
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v9

    .line 317
    .local v9, key:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 318
    .local v3, accuracy:I
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 319
    .local v4, confidence:I
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v10

    .line 320
    .local v10, lat:D
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v12

    .line 321
    .local v12, lng:D
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v15

    .line 323
    .local v15, time:J
    const-string v20, "NetworkLocationProvider"

    const/16 v21, 0x3

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 324
    const-string v20, "NetworkLocationRealOs"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "read v1 entry:  key: ["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "] acc "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " conf "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " latlong "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " time "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/google/android/location/os/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :cond_1
    if-eqz p5, :cond_3

    .line 333
    const-string v20, ":"

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x10

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v18

    .line 334
    .local v18, wifiKey:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 339
    .end local v18           #wifiKey:J
    :goto_2
    move-object/from16 v0, p0

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 340
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 341
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 342
    const/high16 v20, -0x4080

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 344
    const-wide v20, 0x416312d000000000L

    mul-double v20, v20, v10

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 345
    const-wide v20, 0x416312d000000000L

    mul-double v20, v20, v12

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 346
    mul-int/lit16 v0, v3, 0x3e8

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 347
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 348
    if-eqz p5, :cond_2

    .line 351
    const v20, 0x9c40

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 315
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 337
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_2

    .line 354
    .end local v3           #accuracy:I
    .end local v4           #confidence:I
    .end local v9           #key:Ljava/lang/String;
    .end local v10           #lat:D
    .end local v12           #lng:D
    .end local v15           #time:J
    :cond_4
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V

    move-object v7, v8

    .line 355
    .end local v8           #input:Ljava/io/DataInputStream;
    .restart local v7       #input:Ljava/io/DataInputStream;
    goto/16 :goto_0
.end method

.method public static deleteState(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 199
    :try_start_0
    invoke-static {p0}, Lcom/google/android/location/os/real/RealOs;->computeNlpStateFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    invoke-static {}, Lcom/google/android/location/os/real/GlsClient;->deletePlatformKey()V

    .line 204
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, e:Ljava/lang/SecurityException;
    const-string v1, "NetworkLocationRealOs"

    const-string v2, "Unable to delete nlp state file"

    invoke-static {v1, v2, v0}, Lcom/google/android/location/os/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static getEncryptionKey(Landroid/content/Context;)Ljavax/crypto/SecretKey;
    .locals 13
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x18

    const/16 v11, 0x10

    const/16 v10, 0x8

    const/4 v9, 0x0

    const-wide/16 v7, 0xff

    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    const-wide/16 v5, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 156
    .local v0, androidId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    .line 157
    new-instance v3, Ljava/io/IOException;

    const-string v4, "no android ID; can\'t access encrypted cache"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 162
    :cond_0
    const/16 v3, 0x20

    new-array v2, v3, [B

    const/16 v3, 0x38

    ushr-long v3, v0, v3

    and-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v9

    const/4 v3, 0x1

    const/16 v4, 0x30

    ushr-long v4, v0, v4

    and-long/2addr v4, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0x28

    ushr-long v4, v0, v4

    and-long/2addr v4, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x3

    const/16 v4, 0x20

    ushr-long v4, v0, v4

    and-long/2addr v4, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x4

    ushr-long v4, v0, v12

    and-long/2addr v4, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x5

    ushr-long v4, v0, v11

    and-long/2addr v4, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x6

    ushr-long v4, v0, v10

    and-long/2addr v4, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x7

    ushr-long v4, v0, v9

    and-long/2addr v4, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0x38

    ushr-long v3, v0, v3

    and-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v10

    const/16 v3, 0x9

    const/16 v4, 0x30

    ushr-long v4, v0, v4

    and-long/2addr v4, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0xa

    const/16 v4, 0x28

    ushr-long v4, v0, v4

    and-long/2addr v4, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0xb

    const/16 v4, 0x20

    ushr-long v4, v0, v4

    and-long/2addr v4, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0xc

    ushr-long v4, v0, v12

    and-long/2addr v4, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0xd

    ushr-long v4, v0, v11

    and-long/2addr v4, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0xe

    ushr-long v4, v0, v10

    and-long/2addr v4, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0xf

    ushr-long v4, v0, v9

    and-long/2addr v4, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0x38

    ushr-long v3, v0, v3

    and-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v11

    const/16 v3, 0x11

    const/16 v4, 0x30

    ushr-long v4, v0, v4

    and-long/2addr v4, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0x12

    const/16 v4, 0x28

    ushr-long v4, v0, v4

    and-long/2addr v4, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0x13

    const/16 v4, 0x20

    ushr-long v4, v0, v4

    and-long/2addr v4, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0x14

    ushr-long v4, v0, v12

    and-long/2addr v4, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0x15

    ushr-long v4, v0, v11

    and-long/2addr v4, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0x16

    ushr-long v4, v0, v10

    and-long/2addr v4, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0x17

    ushr-long v4, v0, v9

    and-long/2addr v4, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0x38

    ushr-long v3, v0, v3

    and-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v12

    const/16 v3, 0x19

    const/16 v4, 0x30

    ushr-long v4, v0, v4

    and-long/2addr v4, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0x1a

    const/16 v4, 0x28

    ushr-long v4, v0, v4

    and-long/2addr v4, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0x1b

    const/16 v4, 0x20

    ushr-long v4, v0, v4

    and-long/2addr v4, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0x1c

    ushr-long v4, v0, v12

    and-long/2addr v4, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0x1d

    ushr-long v4, v0, v11

    and-long/2addr v4, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0x1e

    ushr-long v4, v0, v10

    and-long/2addr v4, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0x1f

    ushr-long v4, v0, v9

    and-long/2addr v4, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 194
    .local v2, keyBytes:[B
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v3, v2, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v3
.end method

.method public static loadState(Landroid/content/Context;)Lcom/google/android/location/cache/PersistentState;
    .locals 10
    .parameter "context"

    .prologue
    .line 116
    new-instance v0, Lcom/google/android/location/cache/PersistentState;

    invoke-direct {v0}, Lcom/google/android/location/cache/PersistentState;-><init>()V

    .line 117
    .local v0, state:Lcom/google/android/location/cache/PersistentState;
    invoke-static {p0}, Lcom/google/android/location/os/real/RealOs;->computeNlpStateFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v9

    .line 119
    .local v9, nlpStateFile:Ljava/io/File;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 120
    .local v8, fileIn:Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 121
    .local v1, bis:Ljava/io/BufferedInputStream;
    invoke-static {p0}, Lcom/google/android/location/os/real/RealOs;->getEncryptionKey(Landroid/content/Context;)Ljavax/crypto/SecretKey;

    move-result-object v2

    invoke-static {}, Lcom/google/android/location/os/real/RealOs;->bootTimeMillis()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/location/cache/PersistentState;->load(Ljava/io/InputStream;Ljavax/crypto/SecretKey;JJ)V

    .line 123
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 131
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v8           #fileIn:Ljava/io/FileInputStream;
    :goto_0
    return-object v0

    .line 124
    :catch_0
    move-exception v7

    .line 125
    .local v7, e:Ljava/io/FileNotFoundException;
    const-string v2, "NetworkLocationRealOs"

    const-string v3, "No existing nlp persistent state."

    invoke-static {v2, v3}, Lcom/google/android/location/os/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    .end local v7           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v7

    .line 127
    .local v7, e:Ljava/lang/SecurityException;
    const-string v2, "NetworkLocationRealOs"

    invoke-virtual {v7}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Lcom/google/android/location/os/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 128
    .end local v7           #e:Ljava/lang/SecurityException;
    :catch_2
    move-exception v7

    .line 129
    .local v7, e:Ljava/io/IOException;
    const-string v2, "NetworkLocationRealOs"

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Lcom/google/android/location/os/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static migrateNLPv1(Landroid/content/Context;)V
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 264
    invoke-static {p0}, Lcom/google/android/location/os/real/RealOs;->computeNlpStateFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    .line 265
    .local v6, newFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    const-string v1, "NetworkLocationRealOs"

    const-string v2, "NLPv2 file already exists; ignoring any NLPv1 files"

    invoke-static {v1, v2}, Lcom/google/android/location/os/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v1, "cache.cell"

    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 268
    const-string v1, "cache.wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 285
    :goto_0
    return-void

    .line 272
    :cond_0
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 275
    .local v0, output:Ljava/io/DataOutputStream;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 276
    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 279
    .local v3, now:J
    const-string v2, "cache.cell"

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/google/android/location/os/real/RealOs;->copyV1Entries(Ljava/io/DataOutputStream;Landroid/content/Context;Ljava/lang/String;JZ)V

    .line 280
    const-string v2, "cache.wifi"

    const/4 v5, 0x1

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/google/android/location/os/real/RealOs;->copyV1Entries(Ljava/io/DataOutputStream;Landroid/content/Context;Ljava/lang/String;JZ)V

    .line 282
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 283
    const-string v1, "cache.cell"

    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 284
    const-string v1, "cache.wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static migrateState(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 216
    const-string v4, "gls.platform.key"

    invoke-virtual {p0, v4}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 219
    const-string v4, "nlp_GlsPlatformKey"

    invoke-virtual {p0, v4}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 223
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "nlp_state"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 224
    .local v2, oldNlpStateFile:Ljava/io/File;
    invoke-static {p0}, Lcom/google/android/location/os/real/RealOs;->computeNlpStateFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 225
    .local v1, nlpStateFile:Ljava/io/File;
    const/4 v3, 0x0

    .line 227
    .local v3, renamed:Z
    :try_start_0
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 231
    :goto_0
    if-eqz v3, :cond_0

    .line 233
    invoke-static {}, Lcom/google/android/location/os/real/SdkSpecific;->getInstance()Lcom/google/android/location/os/real/SdkSpecific;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/location/os/real/SdkSpecific;->makeFilePrivate(Ljava/io/File;)V

    .line 244
    :goto_1
    :try_start_1
    invoke-static {p0}, Lcom/google/android/location/os/real/RealOs;->migrateNLPv1(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 252
    :goto_2
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, e:Ljava/lang/SecurityException;
    const-string v4, "NetworkLocationRealOs"

    const-string v5, "Unable to renamed old nlp state file"

    invoke-static {v4, v5, v0}, Lcom/google/android/location/os/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 236
    .end local v0           #e:Ljava/lang/SecurityException;
    :cond_0
    const-string v4, "nlp_state"

    invoke-virtual {p0, v4}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_1

    .line 245
    :catch_1
    move-exception v0

    .line 248
    .local v0, e:Ljava/io/IOException;
    const-string v4, "cache.cell"

    invoke-virtual {p0, v4}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 249
    const-string v4, "cache.wifi"

    invoke-virtual {p0, v4}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 250
    invoke-static {p0}, Lcom/google/android/location/os/real/RealOs;->computeNlpStateFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_2
.end method

.method public static saveState(Landroid/content/Context;Lcom/google/android/location/cache/PersistentState;)V
    .locals 7
    .parameter "context"
    .parameter "state"

    .prologue
    .line 135
    invoke-static {p0}, Lcom/google/android/location/os/real/RealOs;->computeNlpStateFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    .line 137
    .local v3, nlpStateFile:Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 138
    .local v2, fileOut:Ljava/io/FileOutputStream;
    invoke-static {}, Lcom/google/android/location/os/real/SdkSpecific;->getInstance()Lcom/google/android/location/os/real/SdkSpecific;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/location/os/real/SdkSpecific;->makeFilePrivate(Ljava/io/File;)V

    .line 139
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 140
    .local v0, bos:Ljava/io/BufferedOutputStream;
    invoke-static {p0}, Lcom/google/android/location/os/real/RealOs;->getEncryptionKey(Landroid/content/Context;)Ljavax/crypto/SecretKey;

    move-result-object v4

    invoke-static {}, Lcom/google/android/location/os/real/RealOs;->bootTimeMillis()J

    move-result-wide v5

    invoke-virtual {p1, v0, v4, v5, v6}, Lcom/google/android/location/cache/PersistentState;->save(Ljava/io/OutputStream;Ljavax/crypto/SecretKey;J)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 148
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v2           #fileOut:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v1

    .line 142
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v4, "NetworkLocationRealOs"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/google/android/location/os/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 143
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 144
    .local v1, e:Ljava/lang/SecurityException;
    const-string v4, "NetworkLocationRealOs"

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/google/android/location/os/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 145
    .end local v1           #e:Ljava/lang/SecurityException;
    :catch_2
    move-exception v1

    .line 146
    .local v1, e:Ljava/io/IOException;
    const-string v4, "NetworkLocationRealOs"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/google/android/location/os/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static sinceBootMillis()J
    .locals 2

    .prologue
    .line 442
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static sinceEpochMillis()J
    .locals 2

    .prologue
    .line 446
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public alarmCancel(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/google/android/location/os/real/RealOs;->eventLog:Lcom/google/android/location/os/EventLog;

    sget-object v1, Lcom/google/android/location/os/Event;->ALARM_CANCEL:Lcom/google/android/location/os/Event;

    invoke-virtual {v0, v1}, Lcom/google/android/location/os/EventLog;->addEvent(Lcom/google/android/location/os/Event;)V

    .line 412
    iget-object v0, p0, Lcom/google/android/location/os/real/RealOs;->alarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/google/android/location/os/real/RealOs;->alarmIntent:[Landroid/app/PendingIntent;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 413
    return-void
.end method

.method public alarmReset(IJ)V
    .locals 3
    .parameter "id"
    .parameter "realTimeMillis"

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/android/location/os/real/RealOs;->eventLog:Lcom/google/android/location/os/EventLog;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/location/os/EventLog;->addAlarmReset(IJ)V

    .line 406
    iget-object v0, p0, Lcom/google/android/location/os/real/RealOs;->alarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/location/os/real/RealOs;->alarmIntent:[Landroid/app/PendingIntent;

    aget-object v2, v2, p1

    invoke-virtual {v0, v1, p2, p3, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 407
    return-void
.end method

.method public bootTime()J
    .locals 2

    .prologue
    .line 438
    invoke-static {}, Lcom/google/android/location/os/real/RealOs;->bootTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public cellRequestScan()V
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/google/android/location/os/real/RealOs;->eventLog:Lcom/google/android/location/os/EventLog;

    sget-object v1, Lcom/google/android/location/os/Event;->CELL_REQUEST_SCAN:Lcom/google/android/location/os/Event;

    invoke-virtual {v0, v1}, Lcom/google/android/location/os/EventLog;->addEvent(Lcom/google/android/location/os/Event;)V

    .line 419
    iget-object v0, p0, Lcom/google/android/location/os/real/RealOs;->callbackRunner:Lcom/google/android/location/os/real/CallbackRunner;

    invoke-virtual {v0}, Lcom/google/android/location/os/real/CallbackRunner;->cellRequestScan()V

    .line 420
    return-void
.end method

.method public getLastKnownLocation()Lcom/google/android/location/os/LocationInterface;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/google/android/location/os/real/RealOs;->locationReceiver:Lcom/google/android/location/os/real/RealOs$LocationReceiver;

    invoke-interface {v0}, Lcom/google/android/location/os/real/RealOs$LocationReceiver;->getLastKnownLocation()Lcom/google/android/location/os/LocationInterface;

    move-result-object v0

    return-object v0
.end method

.method public glsQuery(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 2
    .parameter "request"
    .parameter "cellularPlatformProfile"

    .prologue
    .line 457
    iget-object v0, p0, Lcom/google/android/location/os/real/RealOs;->eventLog:Lcom/google/android/location/os/EventLog;

    sget-object v1, Lcom/google/android/location/os/Event;->GLS_QUERY:Lcom/google/android/location/os/Event;

    invoke-virtual {v0, v1}, Lcom/google/android/location/os/EventLog;->addEvent(Lcom/google/android/location/os/Event;)V

    .line 458
    iget-object v0, p0, Lcom/google/android/location/os/real/RealOs;->glsClient:Lcom/google/android/location/os/real/GlsClient;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/location/os/real/GlsClient;->query(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 459
    return-void
.end method

.method public join()V
    .locals 2

    .prologue
    .line 379
    iget-object v1, p0, Lcom/google/android/location/os/real/RealOs;->callbackRunner:Lcom/google/android/location/os/real/CallbackRunner;

    invoke-virtual {v1}, Lcom/google/android/location/os/real/CallbackRunner;->join()V

    .line 380
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/location/os/real/RealOs;->alarmCancel(I)V

    .line 381
    const/4 v0, 0x0

    .local v0, id:I
    :goto_0
    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 382
    iget-object v1, p0, Lcom/google/android/location/os/real/RealOs;->wakeLockAcquired:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 383
    invoke-virtual {p0, v0}, Lcom/google/android/location/os/real/RealOs;->wakeLockRelease(I)V

    .line 381
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 386
    :cond_1
    return-void
.end method

.method public locationReport(Lcom/google/android/location/data/NetworkLocation;)V
    .locals 2
    .parameter "networkLocation"

    .prologue
    .line 465
    iget-object v0, p0, Lcom/google/android/location/os/real/RealOs;->eventLog:Lcom/google/android/location/os/EventLog;

    invoke-virtual {v0, p1}, Lcom/google/android/location/os/EventLog;->addLocationReport(Lcom/google/android/location/data/NetworkLocation;)V

    .line 466
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/google/android/location/data/NetworkLocation;->bestResult:Lcom/google/android/location/data/LocatorResult;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/location/data/NetworkLocation;->bestResult:Lcom/google/android/location/data/LocatorResult;

    iget-object v0, v0, Lcom/google/android/location/data/LocatorResult;->position:Lcom/google/android/location/data/Position;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/location/data/NetworkLocation;->bestResult:Lcom/google/android/location/data/LocatorResult;

    iget-object v0, v0, Lcom/google/android/location/data/LocatorResult;->status:Lcom/google/android/location/data/LocatorResult$ResultStatus;

    sget-object v1, Lcom/google/android/location/data/LocatorResult$ResultStatus;->OK:Lcom/google/android/location/data/LocatorResult$ResultStatus;

    if-eq v0, v1, :cond_1

    .line 472
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/os/real/RealOs;->locationReceiver:Lcom/google/android/location/os/real/RealOs$LocationReceiver;

    invoke-interface {v0, p1}, Lcom/google/android/location/os/real/RealOs$LocationReceiver;->locationReport(Lcom/google/android/location/data/NetworkLocation;)V

    goto :goto_0
.end method

.method public millisSinceBoot()J
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/google/android/location/os/real/RealOs;->eventLog:Lcom/google/android/location/os/EventLog;

    sget-object v1, Lcom/google/android/location/os/Event;->MILLIS_SINCE_BOOT:Lcom/google/android/location/os/Event;

    invoke-virtual {v0, v1}, Lcom/google/android/location/os/EventLog;->addEvent(Lcom/google/android/location/os/Event;)V

    .line 427
    invoke-static {}, Lcom/google/android/location/os/real/RealOs;->sinceBootMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public millisSinceEpoch()J
    .locals 2

    .prologue
    .line 432
    iget-object v0, p0, Lcom/google/android/location/os/real/RealOs;->eventLog:Lcom/google/android/location/os/EventLog;

    sget-object v1, Lcom/google/android/location/os/Event;->MILLIS_SINCE_EPOCH:Lcom/google/android/location/os/Event;

    invoke-virtual {v0, v1}, Lcom/google/android/location/os/EventLog;->addEvent(Lcom/google/android/location/os/Event;)V

    .line 433
    invoke-static {}, Lcom/google/android/location/os/real/RealOs;->sinceEpochMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public openMetricModelRawResource()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 515
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcom/google/android/location/os/real/RealOs;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f02

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public quit()V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/android/location/os/real/RealOs;->callbackRunner:Lcom/google/android/location/os/real/CallbackRunner;

    invoke-virtual {v0}, Lcom/google/android/location/os/real/CallbackRunner;->quit()V

    .line 375
    return-void
.end method

.method public registerCallbacks(Lcom/google/android/location/os/Callbacks;)V
    .locals 1
    .parameter "callbacks"

    .prologue
    .line 398
    iget-object v0, p0, Lcom/google/android/location/os/real/RealOs;->callbackRunner:Lcom/google/android/location/os/real/CallbackRunner;

    invoke-virtual {v0, p1}, Lcom/google/android/location/os/real/CallbackRunner;->start(Lcom/google/android/location/os/Callbacks;)V

    .line 399
    return-void
.end method

.method public setPeriod(IZ)V
    .locals 1
    .parameter "periodSecs"
    .parameter "trigger"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/android/location/os/real/RealOs;->callbackRunner:Lcom/google/android/location/os/real/CallbackRunner;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/location/os/real/CallbackRunner;->setPeriod(IZ)V

    .line 369
    return-void
.end method

.method public stateCheckpoint(Lcom/google/android/location/cache/PersistentState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 478
    iget-object v0, p0, Lcom/google/android/location/os/real/RealOs;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/location/os/real/RealOs;->saveState(Landroid/content/Context;Lcom/google/android/location/cache/PersistentState;)V

    .line 479
    return-void
.end method

.method public wakeLockAcquire(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 485
    iget-object v0, p0, Lcom/google/android/location/os/real/RealOs;->eventLog:Lcom/google/android/location/os/EventLog;

    invoke-virtual {v0, p1}, Lcom/google/android/location/os/EventLog;->addWakeLockAcquire(I)V

    .line 486
    iget-object v0, p0, Lcom/google/android/location/os/real/RealOs;->wakeLockAcquired:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    .line 487
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wakeLock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already acquired"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/os/real/RealOs;->wakeLockAcquired:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 490
    iget-object v0, p0, Lcom/google/android/location/os/real/RealOs;->wakeLock:[Landroid/os/PowerManager$WakeLock;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 491
    iget-object v0, p0, Lcom/google/android/location/os/real/RealOs;->wifiLock:[Landroid/net/wifi/WifiManager$WifiLock;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 492
    return-void
.end method

.method public wakeLockRelease(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 496
    iget-object v0, p0, Lcom/google/android/location/os/real/RealOs;->eventLog:Lcom/google/android/location/os/EventLog;

    invoke-virtual {v0, p1}, Lcom/google/android/location/os/EventLog;->addWakeLockRelease(I)V

    .line 497
    iget-object v0, p0, Lcom/google/android/location/os/real/RealOs;->wakeLockAcquired:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    .line 498
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wakeLock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already released"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/os/real/RealOs;->wifiLock:[Landroid/net/wifi/WifiManager$WifiLock;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 501
    iget-object v0, p0, Lcom/google/android/location/os/real/RealOs;->wakeLockAcquired:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 502
    iget-object v0, p0, Lcom/google/android/location/os/real/RealOs;->wakeLock:[Landroid/os/PowerManager$WakeLock;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 503
    return-void
.end method

.method public wifiRequestScan()V
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Lcom/google/android/location/os/real/RealOs;->eventLog:Lcom/google/android/location/os/EventLog;

    sget-object v1, Lcom/google/android/location/os/Event;->WIFI_REQUEST_SCAN:Lcom/google/android/location/os/Event;

    invoke-virtual {v0, v1}, Lcom/google/android/location/os/EventLog;->addEvent(Lcom/google/android/location/os/Event;)V

    .line 510
    iget-object v0, p0, Lcom/google/android/location/os/real/RealOs;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 511
    return-void
.end method
