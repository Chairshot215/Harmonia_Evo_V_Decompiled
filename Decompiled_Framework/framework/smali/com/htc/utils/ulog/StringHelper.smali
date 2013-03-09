.class public final Lcom/htc/utils/ulog/StringHelper;
.super Ljava/lang/Object;
.source "StringHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ULog.stringhelper"

.field private static final blocksize:I = 0x100

.field private static uk:Ljava/security/PublicKey; = null

.field private static final ukBase64Str:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAuXZqFu6uSYhAnhXkGCiew1N5CqJMt49tiELOyvCZ31mMgPwj9NJEgjilOjhpRP0H+tJhIWj/aQOYHL8IawMwZ6tVsvsR7MRUqxgxbSGJDUPUpj27iByULRW7AUxjYQCucBWYQW6LQmruxJv40k0eAQIl/XgZpQW4KNwwktA6KoZxtIDhgKR2CrZd5rnOBBllfLwPNxOTRPKF87alU3pz2zbLL+QA8i4/GnE6dREFycuvl0VA306gzRwGQtlvI/i7udbXS/0BBbAE8ddjTvA1QTLwEIZ47ap/ztPu1fodzXWZOk2D88hW+PUqgpbVzBmBIdVt6XBq/mbvN3jE31HdVwIDAQAB"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    :try_start_0
    const-string v4, "RSA"

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    const-string v4, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAuXZqFu6uSYhAnhXkGCiew1N5CqJMt49tiELOyvCZ31mMgPwj9NJEgjilOjhpRP0H+tJhIWj/aQOYHL8IawMwZ6tVsvsR7MRUqxgxbSGJDUPUpj27iByULRW7AUxjYQCucBWYQW6LQmruxJv40k0eAQIl/XgZpQW4KNwwktA6KoZxtIDhgKR2CrZd5rnOBBllfLwPNxOTRPKF87alU3pz2zbLL+QA8i4/GnE6dREFycuvl0VA306gzRwGQtlvI/i7udbXS/0BBbAE8ddjTvA1QTLwEIZ47ap/ztPu1fodzXWZOk2D88hW+PUqgpbVzBmBIdVt6XBq/mbvN3jE31HdVwIDAQAB"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v4

    sput-object v4, Lcom/htc/utils/ulog/StringHelper;->uk:Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v4, "ULog.stringhelper"

    const-string v5, "encrypt exception"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byte2hex([B)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const-string v2, ""

    const/4 v1, 0x0

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static final encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const/4 v3, 0x0

    array-length v4, v7

    :goto_0
    if-ge v3, v4, :cond_2

    add-int/lit16 v8, v3, 0x100

    if-gt v8, v4, :cond_0

    const/16 v8, 0x100

    new-array v6, v8, [B

    :goto_1
    const/4 v5, 0x0

    array-length v2, v6

    :goto_2
    if-ge v5, v2, :cond_1

    add-int v8, v3, v5

    aget-byte v8, v7, v8

    aput-byte v8, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_0
    sub-int v8, v4, v3

    new-array v6, v8, [B

    goto :goto_1

    :cond_1
    sget-object v8, Lcom/htc/utils/ulog/StringHelper;->uk:Ljava/security/PublicKey;

    invoke-static {v6, v8}, Lcom/htc/utils/ulog/StringHelper;->encrypt([BLjava/security/PublicKey;)[B

    move-result-object v8

    invoke-static {v8}, Lcom/htc/utils/ulog/StringHelper;->byte2hex([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit16 v3, v3, 0x100

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    const/4 v0, 0x0

    const/4 v7, 0x0

    move-object v6, v7

    :goto_3
    return-object v8

    :catch_0
    move-exception v1

    :try_start_1
    const-string v8, "ULog.stringhelper"

    const-string v9, "encrypt exception"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    const/4 v7, 0x0

    move-object v6, v7

    const/4 v8, 0x0

    goto :goto_3

    :catchall_0
    move-exception v8

    const/4 v0, 0x0

    const/4 v7, 0x0

    move-object v6, v7

    throw v8
.end method

.method public static encrypt([BLjava/security/PublicKey;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v1, "RSA"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    return-object v1
.end method
