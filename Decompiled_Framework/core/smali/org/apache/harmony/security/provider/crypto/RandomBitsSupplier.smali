.class public Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;
.super Ljava/lang/Object;
.source "RandomBitsSupplier.java"

# interfaces
.implements Lorg/apache/harmony/security/provider/crypto/SHA1_Data;


# static fields
.field private static final DEVICE_NAMES:[Ljava/lang/String;

.field private static fis:Ljava/io/FileInputStream;

.field private static randomFile:Ljava/io/File;

.field private static serviceAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    sput-object v6, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->fis:Ljava/io/FileInputStream;

    sput-object v6, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->randomFile:Ljava/io/File;

    sput-boolean v7, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->serviceAvailable:Z

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "/dev/urandom"

    aput-object v6, v5, v7

    sput-object v5, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->DEVICE_NAMES:[Ljava/lang/String;

    sget-object v0, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->DEVICE_NAMES:[Ljava/lang/String;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sput-object v5, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->fis:Ljava/io/FileInputStream;

    sput-object v2, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->randomFile:Ljava/io/File;

    const/4 v5, 0x1

    sput-boolean v5, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->serviceAvailable:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRandomBits(I)[B
    .locals 2

    if-gtz p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-boolean v0, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->serviceAvailable:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/security/ProviderException;

    const-string v1, "ATTENTION: service is not available : no random devices"

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p0}, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->getUnixDeviceRandom(I)[B

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getUnixDeviceRandom(I)[B
    .locals 9

    const-class v6, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;

    monitor-enter v6

    :try_start_0
    new-array v0, p0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    const/4 v3, 0x0

    :cond_0
    :try_start_1
    sget-object v5, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->fis:Ljava/io/FileInputStream;

    sub-int v7, p0, v4

    invoke-virtual {v5, v0, v3, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v1

    const/4 v5, -0x1

    if-ne v1, v5, :cond_1

    new-instance v5, Ljava/security/ProviderException;

    const-string v7, "bytesRead == -1"

    invoke-direct {v5, v7}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v2

    :try_start_2
    new-instance v5, Ljava/security/ProviderException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ATTENTION: IOException in RandomBitsSupplier.getLinuxRandomBits(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_1
    add-int/2addr v4, v1

    add-int/2addr v3, v1

    if-lt v4, p0, :cond_0

    monitor-exit v6

    return-object v0
.end method

.method static isServiceAvailable()Z
    .locals 1

    sget-boolean v0, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->serviceAvailable:Z

    return v0
.end method
