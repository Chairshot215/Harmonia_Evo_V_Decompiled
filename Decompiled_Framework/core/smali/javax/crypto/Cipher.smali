.class public Ljavax/crypto/Cipher;
.super Ljava/lang/Object;
.source "Cipher.java"


# static fields
.field public static final DECRYPT_MODE:I = 0x2

.field public static final ENCRYPT_MODE:I = 0x1

.field private static final ENGINE:Lorg/apache/harmony/security/fortress/Engine; = null

.field public static final PRIVATE_KEY:I = 0x2

.field public static final PUBLIC_KEY:I = 0x1

.field public static final SECRET_KEY:I = 0x3

.field private static final SERVICE:Ljava/lang/String; = "Cipher"

.field public static final UNWRAP_MODE:I = 0x4

.field public static final WRAP_MODE:I = 0x3

.field private static secureRandom:Ljava/security/SecureRandom;


# instance fields
.field private mode:I

.field private provider:Ljava/security/Provider;

.field private spiImpl:Ljavax/crypto/CipherSpi;

.field private transformation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    const-string v1, "Cipher"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/crypto/Cipher;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    return-void
.end method

.method protected constructor <init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    instance-of v0, p1, Lorg/apache/harmony/crypto/internal/NullCipherSpi;

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iput-object p2, p0, Ljavax/crypto/Cipher;->provider:Ljava/security/Provider;

    iput-object p3, p0, Ljavax/crypto/Cipher;->transformation:Ljava/lang/String;

    iput-object p1, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    return-void
.end method

.method private checkMode(I)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static checkTransformation(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const-string v4, "/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v4, "/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    if-le v4, v7, :cond_1

    invoke-static {p0}, Ljavax/crypto/Cipher;->invalidTransformation(Ljava/lang/String;)Ljava/security/NoSuchAlgorithmException;

    move-result-object v4

    throw v4

    :cond_1
    new-array v3, v7, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_3

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    aput-object v1, v3, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    aget-object v4, v3, v4

    if-nez v4, :cond_4

    invoke-static {p0}, Ljavax/crypto/Cipher;->invalidTransformation(Ljava/lang/String;)Ljava/security/NoSuchAlgorithmException;

    move-result-object v4

    throw v4

    :cond_4
    aget-object v4, v3, v5

    if-nez v4, :cond_5

    aget-object v4, v3, v6

    if-eqz v4, :cond_7

    :cond_5
    aget-object v4, v3, v5

    if-eqz v4, :cond_6

    aget-object v4, v3, v6

    if-nez v4, :cond_7

    :cond_6
    invoke-static {p0}, Ljavax/crypto/Cipher;->invalidTransformation(Ljava/lang/String;)Ljava/security/NoSuchAlgorithmException;

    move-result-object v4

    throw v4

    :cond_7
    return-object v3
.end method

.method private static declared-synchronized getCipher(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    const-class v13, Ljavax/crypto/Cipher;

    monitor-enter v13

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1

    :cond_0
    invoke-static/range {p0 .. p0}, Ljavax/crypto/Cipher;->invalidTransformation(Ljava/lang/String;)Ljava/security/NoSuchAlgorithmException;

    move-result-object v12

    throw v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v12

    monitor-exit v13

    throw v12

    :cond_1
    :try_start_1
    invoke-static/range {p0 .. p0}, Ljavax/crypto/Cipher;->checkTransformation(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object/from16 v4, p1

    const/4 v12, 0x1

    aget-object v12, v11, v12

    if-nez v12, :cond_4

    const/4 v12, 0x2

    aget-object v12, v11, v12

    if-nez v12, :cond_4

    if-nez p1, :cond_3

    sget-object v12, Ljavax/crypto/Cipher;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v14, 0x0

    aget-object v14, v11, v14

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    move-result-object v9

    iget-object v5, v9, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    iget-object v4, v9, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    move-object v2, v5

    :goto_0
    if-eqz v2, :cond_2

    if-nez v4, :cond_8

    :cond_2
    new-instance v12, Ljava/security/NoSuchAlgorithmException;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_3
    sget-object v12, Ljavax/crypto/Cipher;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v14, 0x0

    aget-object v14, v11, v14

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v12, v14, v0, v15}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    goto :goto_0

    :cond_4
    const/4 v12, 0x4

    new-array v10, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    aget-object v15, v11, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    aget-object v15, v11, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x2

    aget-object v15, v11, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v10, v12

    const/4 v12, 0x1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    aget-object v15, v11, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    aget-object v15, v11, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v10, v12

    const/4 v12, 0x2

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    aget-object v15, v11, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "//"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x2

    aget-object v15, v11, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v10, v12

    const/4 v12, 0x3

    const/4 v14, 0x0

    aget-object v14, v11, v14

    aput-object v14, v10, v12

    const/4 v6, 0x0

    :goto_1
    array-length v12, v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ge v6, v12, :cond_5

    if-nez p1, :cond_6

    :try_start_2
    sget-object v12, Ljavax/crypto/Cipher;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    aget-object v14, v10, v6

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    move-result-object v9

    iget-object v5, v9, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    iget-object v4, v9, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    :cond_5
    :goto_2
    packed-switch v6, :pswitch_data_0

    move-object v2, v5

    goto/16 :goto_0

    :cond_6
    sget-object v12, Ljavax/crypto/Cipher;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    aget-object v14, v10, v6

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v12, v14, v0, v15}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v5

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_3
    array-length v12, v10

    add-int/lit8 v12, v12, -0x1

    if-ne v6, v12, :cond_7

    new-instance v12, Ljava/security/NoSuchAlgorithmException;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :pswitch_0
    const/4 v8, 0x1

    move-object v2, v5

    goto/16 :goto_0

    :pswitch_1
    const/4 v7, 0x1

    move-object v2, v5

    goto/16 :goto_0

    :pswitch_2
    const/4 v8, 0x1

    const/4 v7, 0x1

    move-object v2, v5

    goto/16 :goto_0

    :cond_8
    instance-of v12, v2, Ljavax/crypto/CipherSpi;

    if-nez v12, :cond_9

    new-instance v12, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_9
    check-cast v2, Ljavax/crypto/CipherSpi;

    new-instance v1, Ljavax/crypto/Cipher;

    move-object/from16 v0, p0

    invoke-direct {v1, v2, v4, v0}, Ljavax/crypto/Cipher;-><init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;Ljava/lang/String;)V

    if-eqz v7, :cond_a

    iget-object v12, v1, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    const/4 v14, 0x1

    aget-object v14, v11, v14

    invoke-virtual {v12, v14}, Ljavax/crypto/CipherSpi;->engineSetMode(Ljava/lang/String;)V

    :cond_a
    if-eqz v8, :cond_b

    iget-object v12, v1, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    const/4 v14, 0x2

    aget-object v14, v11, v14

    invoke-virtual {v12, v14}, Ljavax/crypto/CipherSpi;->engineSetPadding(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_b
    monitor-exit v13

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static final getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljavax/crypto/Cipher;->getCipher(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "provider == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v1, Ljava/security/NoSuchProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provider not available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {p0, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v1

    return-object v1
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "provider == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {p0, p1}, Ljavax/crypto/Cipher;->getCipher(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method public static final getMaxAllowedKeyLength(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-static {p0}, Ljavax/crypto/Cipher;->checkTransformation(Ljava/lang/String;)[Ljava/lang/String;

    const v0, 0x7fffffff

    return v0
.end method

.method public static final getMaxAllowedParameterSpec(Ljava/lang/String;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-static {p0}, Ljavax/crypto/Cipher;->checkTransformation(Ljava/lang/String;)[Ljava/lang/String;

    const/4 v0, 0x0

    return-object v0
.end method

.method private static invalidTransformation(Ljava/lang/String;)Ljava/security/NoSuchAlgorithmException;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid transformation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    if-ne p1, p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input == output"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/CipherSpi;->engineDoFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public final doFinal([BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    const/4 v2, 0x0

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    if-gez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outputOffset < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    const/4 v1, 0x0

    move v3, v2

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII[BI)I

    move-result v0

    return v0
.end method

.method public final doFinal([BII[B)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    move-result v0

    return v0
.end method

.method public final doFinal([BII[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incorrect inputOffset/inputLen parameters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII[BI)I

    move-result v0

    return v0
.end method

.method public final doFinal()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    const/4 v2, 0x0

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public final doFinal([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public final doFinal([BII)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incorrect inputOffset/inputLen parameters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/crypto/Cipher;->transformation:Ljava/lang/String;

    return-object v0
.end method

.method public final getBlockSize()I
    .locals 1

    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0}, Ljavax/crypto/CipherSpi;->engineGetBlockSize()I

    move-result v0

    return v0
.end method

.method public final getExemptionMechanism()Ljavax/crypto/ExemptionMechanism;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getIV()[B
    .locals 1

    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0}, Ljavax/crypto/CipherSpi;->engineGetIV()[B

    move-result-object v0

    return-object v0
.end method

.method public final getOutputSize(I)I
    .locals 2

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cipher has not yet been initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/CipherSpi;->engineGetOutputSize(I)I

    move-result v0

    return v0
.end method

.method public final getParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0}, Ljavax/crypto/CipherSpi;->engineGetParameters()Ljava/security/AlgorithmParameters;

    move-result-object v0

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    iget-object v0, p0, Ljavax/crypto/Cipher;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final init(ILjava/security/Key;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    sget-object v0, Ljavax/crypto/Cipher;->secureRandom:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Ljavax/crypto/Cipher;->secureRandom:Ljava/security/SecureRandom;

    :cond_0
    sget-object v0, Ljavax/crypto/Cipher;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, p2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public final init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    sget-object v0, Ljavax/crypto/Cipher;->secureRandom:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Ljavax/crypto/Cipher;->secureRandom:Ljava/security/SecureRandom;

    :cond_0
    sget-object v0, Ljavax/crypto/Cipher;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, p2, p3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public final init(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljavax/crypto/Cipher;->checkMode(I)V

    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/crypto/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    iput p1, p0, Ljavax/crypto/Cipher;->mode:I

    return-void
.end method

.method public final init(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljavax/crypto/Cipher;->checkMode(I)V

    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V

    iput p1, p0, Ljavax/crypto/Cipher;->mode:I

    return-void
.end method

.method public final init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    sget-object v0, Ljavax/crypto/Cipher;->secureRandom:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Ljavax/crypto/Cipher;->secureRandom:Ljava/security/SecureRandom;

    :cond_0
    sget-object v0, Ljavax/crypto/Cipher;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, p2, p3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public final init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljavax/crypto/Cipher;->checkMode(I)V

    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/crypto/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    iput p1, p0, Ljavax/crypto/Cipher;->mode:I

    return-void
.end method

.method public final init(ILjava/security/cert/Certificate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    sget-object v0, Ljavax/crypto/Cipher;->secureRandom:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Ljavax/crypto/Cipher;->secureRandom:Ljava/security/SecureRandom;

    :cond_0
    sget-object v0, Ljavax/crypto/Cipher;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, p2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/cert/Certificate;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public final init(ILjava/security/cert/Certificate;Ljava/security/SecureRandom;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v6, 0x3

    invoke-direct {p0, p1}, Ljavax/crypto/Cipher;->checkMode(I)V

    instance-of v5, p2, Ljava/security/cert/X509Certificate;

    if-eqz v5, :cond_3

    move-object v5, p2

    check-cast v5, Ljava/security/cert/X509Certificate;

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "2.5.29.15"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_3

    move-object v5, p2

    check-cast v5, Ljava/security/cert/X509Certificate;

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v5, 0x1

    if-ne p1, v5, :cond_2

    aget-boolean v5, v3, v6

    if-nez v5, :cond_2

    new-instance v5, Ljava/security/InvalidKeyException;

    const-string v6, "The public key in the certificate cannot be used for ENCRYPT_MODE"

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    if-ne p1, v6, :cond_3

    const/4 v5, 0x2

    aget-boolean v5, v3, v5

    if-nez v5, :cond_3

    new-instance v5, Ljava/security/InvalidKeyException;

    const-string v6, "The public key in the certificate cannot be used for WRAP_MODE"

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    iget-object v5, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    invoke-virtual {v5, p1, v6, p3}, Ljavax/crypto/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V

    iput p1, p0, Ljavax/crypto/Cipher;->mode:I

    return-void
.end method

.method public final unwrap([BLjava/lang/String;I)Ljava/security/Key;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherSpi;->engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v0

    return-object v0
.end method

.method public final update(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    if-ne p1, p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input == output"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/CipherSpi;->engineUpdate(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public final update([BII[B)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result v0

    return v0
.end method

.method public final update([BII[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p4, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "output == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-gez p5, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outputOffset < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-ltz p2, :cond_4

    if-ltz p3, :cond_4

    array-length v0, p1

    if-gt p3, v0, :cond_4

    array-length v0, p1

    sub-int/2addr v0, p3

    if-le p2, v0, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incorrect inputOffset/inputLen parameters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    array-length v0, p1

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_6
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/CipherSpi;->engineUpdate([BII[BI)I

    move-result v0

    goto :goto_0
.end method

.method public final update([B)[B
    .locals 3

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    array-length v0, p1

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljavax/crypto/CipherSpi;->engineUpdate([BII)[B

    move-result-object v0

    goto :goto_0
.end method

.method public final update([BII)[B
    .locals 2

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    array-length v0, p1

    if-gt p3, v0, :cond_2

    array-length v0, p1

    sub-int/2addr v0, p3

    if-le p2, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incorrect inputOffset/inputLen parameters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    array-length v0, p1

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_4
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherSpi;->engineUpdate([BII)[B

    move-result-object v0

    goto :goto_0
.end method

.method public final wrap(Ljava/security/Key;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/CipherSpi;->engineWrap(Ljava/security/Key;)[B

    move-result-object v0

    return-object v0
.end method
