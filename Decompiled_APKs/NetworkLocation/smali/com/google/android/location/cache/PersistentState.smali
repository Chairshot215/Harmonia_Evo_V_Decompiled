.class public Lcom/google/android/location/cache/PersistentState;
.super Ljava/lang/Object;
.source "PersistentState.java"


# static fields
.field public static final INVALID_RESULT:Lcom/google/android/location/data/LocatorResult;

.field public static final LONG_SAVER:Lcom/google/android/location/data/Persistent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/location/data/Persistent",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final POSITION_SAVER:Lcom/google/android/location/data/Persistent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/location/data/Persistent",
            "<",
            "Lcom/google/android/location/cache/CacheResult",
            "<",
            "Lcom/google/android/location/data/Position;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final STRING_SAVER:Lcom/google/android/location/data/Persistent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/location/data/Persistent",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final WIFI_AP_POSITION_SAVER:Lcom/google/android/location/data/Persistent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/location/data/Persistent",
            "<",
            "Lcom/google/android/location/cache/CacheResult",
            "<",
            "Lcom/google/android/location/data/WifiApPosition;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public final cellCache:Lcom/google/android/location/cache/TemporalCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/location/cache/TemporalCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/location/data/Position;",
            ">;"
        }
    .end annotation
.end field

.field public lastKnown:Lcom/google/android/location/data/LocatorResult;

.field public final wifiCache:Lcom/google/android/location/cache/TemporalCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/location/cache/TemporalCache",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/location/data/WifiApPosition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 89
    new-instance v0, Lcom/google/android/location/data/LocatorResult;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/location/data/LocatorResult$ResultStatus;->NO_LOCATION:Lcom/google/android/location/data/LocatorResult$ResultStatus;

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/location/data/LocatorResult;-><init>(Lcom/google/android/location/data/Position;Lcom/google/android/location/data/LocatorResult$ResultStatus;J)V

    sput-object v0, Lcom/google/android/location/cache/PersistentState;->INVALID_RESULT:Lcom/google/android/location/data/LocatorResult;

    .line 311
    new-instance v0, Lcom/google/android/location/cache/PersistentState$1;

    invoke-direct {v0}, Lcom/google/android/location/cache/PersistentState$1;-><init>()V

    sput-object v0, Lcom/google/android/location/cache/PersistentState;->STRING_SAVER:Lcom/google/android/location/data/Persistent;

    .line 323
    new-instance v0, Lcom/google/android/location/cache/PersistentState$2;

    invoke-direct {v0}, Lcom/google/android/location/cache/PersistentState$2;-><init>()V

    sput-object v0, Lcom/google/android/location/cache/PersistentState;->LONG_SAVER:Lcom/google/android/location/data/Persistent;

    .line 335
    new-instance v0, Lcom/google/android/location/cache/PersistentState$3;

    invoke-direct {v0}, Lcom/google/android/location/cache/PersistentState$3;-><init>()V

    sput-object v0, Lcom/google/android/location/cache/PersistentState;->POSITION_SAVER:Lcom/google/android/location/data/Persistent;

    .line 349
    new-instance v0, Lcom/google/android/location/cache/PersistentState$4;

    invoke-direct {v0}, Lcom/google/android/location/cache/PersistentState$4;-><init>()V

    sput-object v0, Lcom/google/android/location/cache/PersistentState;->WIFI_AP_POSITION_SAVER:Lcom/google/android/location/data/Persistent;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    sget-object v0, Lcom/google/android/location/cache/PersistentState;->INVALID_RESULT:Lcom/google/android/location/data/LocatorResult;

    iput-object v0, p0, Lcom/google/android/location/cache/PersistentState;->lastKnown:Lcom/google/android/location/data/LocatorResult;

    .line 97
    new-instance v0, Lcom/google/android/location/cache/TemporalCache;

    const/16 v1, 0x32

    sget-object v2, Lcom/google/android/location/cache/PersistentState;->STRING_SAVER:Lcom/google/android/location/data/Persistent;

    sget-object v3, Lcom/google/android/location/cache/PersistentState;->POSITION_SAVER:Lcom/google/android/location/data/Persistent;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/cache/TemporalCache;-><init>(ILcom/google/android/location/data/Persistent;Lcom/google/android/location/data/Persistent;)V

    iput-object v0, p0, Lcom/google/android/location/cache/PersistentState;->cellCache:Lcom/google/android/location/cache/TemporalCache;

    .line 99
    new-instance v0, Lcom/google/android/location/cache/TemporalCache;

    const/16 v1, 0x190

    sget-object v2, Lcom/google/android/location/cache/PersistentState;->LONG_SAVER:Lcom/google/android/location/data/Persistent;

    sget-object v3, Lcom/google/android/location/cache/PersistentState;->WIFI_AP_POSITION_SAVER:Lcom/google/android/location/data/Persistent;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/cache/TemporalCache;-><init>(ILcom/google/android/location/data/Persistent;Lcom/google/android/location/data/Persistent;)V

    iput-object v0, p0, Lcom/google/android/location/cache/PersistentState;->wifiCache:Lcom/google/android/location/cache/TemporalCache;

    .line 101
    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 181
    sget-object v0, Lcom/google/android/location/cache/PersistentState;->INVALID_RESULT:Lcom/google/android/location/data/LocatorResult;

    iput-object v0, p0, Lcom/google/android/location/cache/PersistentState;->lastKnown:Lcom/google/android/location/data/LocatorResult;

    .line 182
    iget-object v0, p0, Lcom/google/android/location/cache/PersistentState;->cellCache:Lcom/google/android/location/cache/TemporalCache;

    invoke-virtual {v0}, Lcom/google/android/location/cache/TemporalCache;->clear()V

    .line 183
    iget-object v0, p0, Lcom/google/android/location/cache/PersistentState;->wifiCache:Lcom/google/android/location/cache/TemporalCache;

    invoke-virtual {v0}, Lcom/google/android/location/cache/TemporalCache;->clear()V

    .line 184
    return-void
.end method

.method private decryptInput(Ljava/io/InputStream;Ljavax/crypto/SecretKey;)Ljava/io/DataInput;
    .locals 6
    .parameter "is"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    const/16 v4, 0x10

    new-array v3, v4, [B

    .line 166
    .local v3, iv:[B
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    .line 167
    const/4 v0, 0x0

    .line 169
    .local v0, cipher:Ljavax/crypto/Cipher;
    :try_start_0
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 170
    .local v2, ips:Ljavax/crypto/spec/IvParameterSpec;
    const-string v4, "AES/CBC/PKCS5Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 171
    const/4 v4, 0x2

    invoke-virtual {v0, v4, p2, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljavax/crypto/CipherInputStream;

    invoke-direct {v5, p1, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v4

    .line 172
    .end local v2           #ips:Ljavax/crypto/spec/IvParameterSpec;
    :catch_0
    move-exception v1

    .line 173
    .local v1, e:Ljava/security/GeneralSecurityException;
    const-string v4, "NetworkLocation.PersistentState"

    const-string v5, "failed to create decrypt cipher"

    invoke-static {v4, v5, v1}, Lcom/google/android/location/os/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private encryptOutput(Ljava/io/OutputStream;Ljavax/crypto/SecretKey;)Ljava/io/DataOutputStream;
    .locals 7
    .parameter "os"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    const/16 v5, 0x10

    new-array v3, v5, [B

    .line 214
    .local v3, iv:[B
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 215
    .local v4, prng:Ljava/util/Random;
    invoke-virtual {v4, v3}, Ljava/util/Random;->nextBytes([B)V

    .line 216
    const/4 v0, 0x0

    .line 218
    .local v0, cipher:Ljavax/crypto/Cipher;
    :try_start_0
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 219
    .local v2, ips:Ljavax/crypto/spec/IvParameterSpec;
    const-string v5, "AES/CBC/PKCS5Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 220
    const/4 v5, 0x1

    invoke-virtual {v0, v5, p2, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 227
    new-instance v5, Ljava/io/DataOutputStream;

    new-instance v6, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v6, p1, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    invoke-direct {v5, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v5

    .line 221
    .end local v2           #ips:Ljavax/crypto/spec/IvParameterSpec;
    :catch_0
    move-exception v1

    .line 222
    .local v1, e:Ljava/security/GeneralSecurityException;
    const-string v5, "NetworkLocation.PersistentState"

    const-string v6, "failed to create encrypt cipher"

    invoke-static {v5, v6, v1}, Lcom/google/android/location/os/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static getCellCacheKey(IIII)Ljava/lang/String;
    .locals 2
    .parameter "mcc"
    .parameter "mnc"
    .parameter "lac"
    .parameter "cid"

    .prologue
    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public discardOldCacheEntries(J)V
    .locals 5
    .parameter "nowMillisSinceEpoch"

    .prologue
    .line 109
    const-wide/32 v2, 0x240c8400

    sub-long v0, p1, v2

    .line 110
    .local v0, oneWeekAgo:J
    iget-object v2, p0, Lcom/google/android/location/cache/PersistentState;->cellCache:Lcom/google/android/location/cache/TemporalCache;

    const-wide/32 v3, 0x2932e00

    sub-long v3, p1, v3

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/google/android/location/cache/TemporalCache;->discardOldEntries(JJ)V

    .line 111
    iget-object v2, p0, Lcom/google/android/location/cache/PersistentState;->wifiCache:Lcom/google/android/location/cache/TemporalCache;

    const-wide/32 v3, 0xa4cb800

    sub-long v3, p1, v3

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/google/android/location/cache/TemporalCache;->discardOldEntries(JJ)V

    .line 112
    return-void
.end method

.method public load(Ljava/io/InputStream;Ljavax/crypto/SecretKey;JJ)V
    .locals 14
    .parameter "is"
    .parameter "key"
    .parameter "bootTime"
    .parameter "nowSinceBoot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    :try_start_0
    new-instance v10, Ljava/io/DataInputStream;

    invoke-direct {v10, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 130
    .local v10, versionStream:Ljava/io/DataInputStream;
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v9

    .line 132
    .local v9, version:I
    const/4 v11, 0x5

    if-ne v9, v11, :cond_1

    .line 134
    invoke-direct/range {p0 .. p2}, Lcom/google/android/location/cache/PersistentState;->decryptInput(Ljava/io/InputStream;Ljavax/crypto/SecretKey;)Ljava/io/DataInput;

    move-result-object v2

    .line 143
    .local v2, dataIn:Ljava/io/DataInput;
    :goto_0
    invoke-interface {v2}, Ljava/io/DataInput;->readBoolean()Z

    move-result v4

    .line 144
    .local v4, haveLastKnown:Z
    if-eqz v4, :cond_0

    .line 145
    invoke-interface {v2}, Ljava/io/DataInput;->readLong()J

    move-result-wide v5

    .line 146
    .local v5, saverBootTime:J
    sget-object v11, Lcom/google/android/location/data/LocatorResult;->SAVER:Lcom/google/android/location/data/Persistent;

    invoke-interface {v11, v2}, Lcom/google/android/location/data/Persistent;->load(Ljava/io/DataInput;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/location/data/LocatorResult;

    iput-object v11, p0, Lcom/google/android/location/cache/PersistentState;->lastKnown:Lcom/google/android/location/data/LocatorResult;

    .line 152
    iget-object v11, p0, Lcom/google/android/location/cache/PersistentState;->lastKnown:Lcom/google/android/location/data/LocatorResult;

    iget-wide v11, v11, Lcom/google/android/location/data/LocatorResult;->reportTime:J

    add-long/2addr v11, v5

    sub-long v11, v11, p3

    move-wide/from16 v0, p5

    invoke-static {v0, v1, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    .line 153
    .local v7, sinceBoot:J
    new-instance v11, Lcom/google/android/location/data/LocatorResult;

    iget-object v12, p0, Lcom/google/android/location/cache/PersistentState;->lastKnown:Lcom/google/android/location/data/LocatorResult;

    iget-object v12, v12, Lcom/google/android/location/data/LocatorResult;->position:Lcom/google/android/location/data/Position;

    iget-object v13, p0, Lcom/google/android/location/cache/PersistentState;->lastKnown:Lcom/google/android/location/data/LocatorResult;

    iget-object v13, v13, Lcom/google/android/location/data/LocatorResult;->status:Lcom/google/android/location/data/LocatorResult$ResultStatus;

    invoke-direct {v11, v12, v13, v7, v8}, Lcom/google/android/location/data/LocatorResult;-><init>(Lcom/google/android/location/data/Position;Lcom/google/android/location/data/LocatorResult$ResultStatus;J)V

    iput-object v11, p0, Lcom/google/android/location/cache/PersistentState;->lastKnown:Lcom/google/android/location/data/LocatorResult;

    .line 155
    .end local v5           #saverBootTime:J
    .end local v7           #sinceBoot:J
    :cond_0
    iget-object v11, p0, Lcom/google/android/location/cache/PersistentState;->cellCache:Lcom/google/android/location/cache/TemporalCache;

    invoke-virtual {v11, v2}, Lcom/google/android/location/cache/TemporalCache;->load(Ljava/io/DataInput;)Lcom/google/android/location/cache/TemporalCache;

    .line 156
    iget-object v11, p0, Lcom/google/android/location/cache/PersistentState;->wifiCache:Lcom/google/android/location/cache/TemporalCache;

    invoke-virtual {v11, v2}, Lcom/google/android/location/cache/TemporalCache;->load(Ljava/io/DataInput;)Lcom/google/android/location/cache/TemporalCache;

    .line 161
    .end local v2           #dataIn:Ljava/io/DataInput;
    .end local v4           #haveLastKnown:Z
    :goto_1
    return-void

    .line 135
    :cond_1
    const/4 v11, 0x4

    if-ne v9, v11, :cond_2

    .line 137
    move-object v2, v10

    .restart local v2       #dataIn:Ljava/io/DataInput;
    goto :goto_0

    .line 140
    .end local v2           #dataIn:Ljava/io/DataInput;
    :cond_2
    invoke-direct {p0}, Lcom/google/android/location/cache/PersistentState;->clear()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 157
    .end local v9           #version:I
    .end local v10           #versionStream:Ljava/io/DataInputStream;
    :catch_0
    move-exception v3

    .line 158
    .local v3, e:Ljava/io/IOException;
    invoke-direct {p0}, Lcom/google/android/location/cache/PersistentState;->clear()V

    .line 159
    throw v3
.end method

.method public save(Ljava/io/OutputStream;Ljavax/crypto/SecretKey;J)V
    .locals 4
    .parameter "os"
    .parameter "key"
    .parameter "bootTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 194
    .local v1, versionStream:Ljava/io/DataOutputStream;
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 195
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 197
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/cache/PersistentState;->encryptOutput(Ljava/io/OutputStream;Ljavax/crypto/SecretKey;)Ljava/io/DataOutputStream;

    move-result-object v0

    .line 198
    .local v0, dataOut:Ljava/io/DataOutputStream;
    iget-object v2, p0, Lcom/google/android/location/cache/PersistentState;->lastKnown:Lcom/google/android/location/data/LocatorResult;

    sget-object v3, Lcom/google/android/location/cache/PersistentState;->INVALID_RESULT:Lcom/google/android/location/data/LocatorResult;

    if-eq v2, v3, :cond_0

    .line 199
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 200
    invoke-virtual {v0, p3, p4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 201
    sget-object v2, Lcom/google/android/location/data/LocatorResult;->SAVER:Lcom/google/android/location/data/Persistent;

    iget-object v3, p0, Lcom/google/android/location/cache/PersistentState;->lastKnown:Lcom/google/android/location/data/LocatorResult;

    invoke-interface {v2, v3, v0}, Lcom/google/android/location/data/Persistent;->save(Ljava/lang/Object;Ljava/io/DataOutput;)V

    .line 205
    :goto_0
    iget-object v2, p0, Lcom/google/android/location/cache/PersistentState;->cellCache:Lcom/google/android/location/cache/TemporalCache;

    iget-object v3, p0, Lcom/google/android/location/cache/PersistentState;->cellCache:Lcom/google/android/location/cache/TemporalCache;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/location/cache/TemporalCache;->save(Lcom/google/android/location/cache/TemporalCache;Ljava/io/DataOutput;)V

    .line 206
    iget-object v2, p0, Lcom/google/android/location/cache/PersistentState;->wifiCache:Lcom/google/android/location/cache/TemporalCache;

    iget-object v3, p0, Lcom/google/android/location/cache/PersistentState;->wifiCache:Lcom/google/android/location/cache/TemporalCache;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/location/cache/TemporalCache;->save(Lcom/google/android/location/cache/TemporalCache;Ljava/io/DataOutput;)V

    .line 208
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 209
    return-void

    .line 203
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto :goto_0
.end method

.method public updateCachesFromGlsQueryResponse(Lcom/google/common/io/protocol/ProtoBuf;J)V
    .locals 27
    .parameter "response"
    .parameter "nowMillisSinceEpoch"

    .prologue
    .line 238
    if-eqz p1, :cond_0

    const/16 v25, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v25

    if-nez v25, :cond_0

    const/16 v25, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v25

    if-nez v25, :cond_1

    .line 301
    :cond_0
    return-void

    .line 243
    :cond_1
    const/16 v25, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v24

    .line 244
    .local v24, replyElement:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v25

    if-nez v25, :cond_0

    .line 247
    const/16 v18, 0x0

    .local v18, i:I
    :goto_0
    const/16 v25, 0x3

    invoke-virtual/range {v24 .. v25}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v25

    move/from16 v0, v18

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    .line 248
    const/16 v25, 0x3

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v15

    .line 249
    .local v15, gDeviceLocation:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v6, 0x0

    .line 250
    .local v6, latE7:I
    const/4 v7, 0x0

    .line 251
    .local v7, lngE7:I
    const/4 v8, -0x1

    .line 252
    .local v8, accuracyMm:I
    const/4 v9, -0x1

    .line 253
    .local v9, confidence:I
    const/16 v20, -0x1

    .line 254
    .local v20, locType:I
    const v10, 0x9c40

    .line 255
    .local v10, uncertaintyMm:I
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 256
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v16

    .line 257
    .local v16, gLocation:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v25, 0x3

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v25

    if-eqz v25, :cond_2

    const/16 v25, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v25

    if-eqz v25, :cond_2

    const/16 v25, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 260
    const/16 v25, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v25

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v6

    .line 261
    const/16 v25, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v25

    const/16 v26, 0x2

    invoke-virtual/range {v25 .. v26}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v7

    .line 262
    const/16 v25, 0x3

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v25

    move/from16 v0, v25

    mul-int/lit16 v8, v0, 0x3e8

    .line 263
    const/16 v25, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v9

    .line 265
    :cond_2
    const/16 v25, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 266
    const/16 v25, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v20

    .line 268
    :cond_3
    const/16 v25, 0x14

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 269
    const/16 v25, 0x14

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v25

    move/from16 v0, v25

    mul-int/lit16 v10, v0, 0x3e8

    .line 274
    .end local v16           #gLocation:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_4
    const/16 v25, 0x2

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v25

    if-eqz v25, :cond_7

    const/16 v25, 0x3

    move/from16 v0, v20

    move/from16 v1, v25

    if-eq v0, v1, :cond_7

    .line 276
    const/16 v25, 0x2

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v14

    .line 277
    .local v14, gCell:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v25, 0x2

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v13

    .line 278
    .local v13, cid:I
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v19

    .line 279
    .local v19, lac:I
    const/16 v21, -0x1

    .line 280
    .local v21, mcc:I
    const/16 v22, -0x1

    .line 281
    .local v22, mnc:I
    const/16 v25, 0x4

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 282
    const/16 v25, 0x4

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v21

    .line 284
    :cond_5
    const/16 v25, 0x3

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 285
    const/16 v25, 0x3

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v22

    .line 287
    :cond_6
    new-instance v23, Lcom/google/android/location/data/Position;

    move-object/from16 v0, v23

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/google/android/location/data/Position;-><init>(IIII)V

    .line 288
    .local v23, position:Lcom/google/android/location/data/Position;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/cache/PersistentState;->cellCache:Lcom/google/android/location/cache/TemporalCache;

    move-object/from16 v25, v0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v19

    invoke-static {v0, v1, v2, v13}, Lcom/google/android/location/cache/PersistentState;->getCellCacheKey(IIII)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v23

    move-wide/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/location/cache/TemporalCache;->insertPosition(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 293
    .end local v13           #cid:I
    .end local v14           #gCell:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v19           #lac:I
    .end local v21           #mcc:I
    .end local v22           #mnc:I
    .end local v23           #position:Lcom/google/android/location/data/Position;
    :cond_7
    const/16 v25, 0x3

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v25

    if-eqz v25, :cond_8

    .line 294
    const/16 v25, 0x3

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v17

    .line 295
    .local v17, gWifiDevice:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v25, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/google/android/location/data/WifiUtils;->macToLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 296
    .local v11, bssid:J
    new-instance v5, Lcom/google/android/location/data/WifiApPosition;

    invoke-direct/range {v5 .. v10}, Lcom/google/android/location/data/WifiApPosition;-><init>(IIIII)V

    .line 298
    .local v5, wap:Lcom/google/android/location/data/WifiApPosition;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/cache/PersistentState;->wifiCache:Lcom/google/android/location/cache/TemporalCache;

    move-object/from16 v25, v0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v5, v2, v3}, Lcom/google/android/location/cache/TemporalCache;->insertPosition(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 247
    .end local v5           #wap:Lcom/google/android/location/data/WifiApPosition;
    .end local v11           #bssid:J
    .end local v17           #gWifiDevice:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_8
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0
.end method
