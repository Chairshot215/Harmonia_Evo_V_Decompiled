.class public Lcom/htc/util/treectl;
.super Ljava/lang/Object;
.source "treectl.java"


# static fields
.field private static final szDecodeFile:Ljava/lang/String; = "/data/data/com.redbend.vdmc/files/tree.xml"

.field private static final szEncodeFile:Ljava/lang/String; = "/data/data/com.redbend.vdmc/files/tree.enc"

.field private static final szKey:Ljava/lang/String; = "sprint@omadm"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "treectl"

    iput-object v0, p0, Lcom/htc/util/treectl;->LOG_TAG:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static decrypt([B)[B
    .locals 3
    .parameter "encrypted"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 114
    const-string v2, "sprint@omadm"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/htc/util/treectl;->getRawKey([B)[B

    move-result-object v0

    .line 115
    .local v0, rawKey:[B
    invoke-static {v0, p0}, Lcom/htc/util/treectl;->decrypt([B[B)[B

    move-result-object v1

    .line 116
    .local v1, result:[B
    return-object v1
.end method

.method private static decrypt([B[B)[B
    .locals 4
    .parameter "raw"
    .parameter "encrypted"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 138
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, p0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 139
    .local v2, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 140
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 141
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 142
    .local v1, decrypted:[B
    return-object v1
.end method

.method public static encrypt([B)[B
    .locals 3
    .parameter "cleartext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 108
    const-string v2, "sprint@omadm"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/htc/util/treectl;->getRawKey([B)[B

    move-result-object v0

    .line 109
    .local v0, rawKey:[B
    invoke-static {v0, p0}, Lcom/htc/util/treectl;->encrypt([B[B)[B

    move-result-object v1

    .line 110
    .local v1, result:[B
    return-object v1
.end method

.method private static encrypt([B[B)[B
    .locals 4
    .parameter "raw"
    .parameter "clear"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 130
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, p0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 131
    .local v2, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 132
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 133
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 134
    .local v1, encrypted:[B
    return-object v1
.end method

.method private static getRawKey([B)[B
    .locals 5
    .parameter "seed"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 120
    const-string v4, "AES"

    invoke-static {v4}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 121
    .local v0, kgen:Ljavax/crypto/KeyGenerator;
    const-string v4, "SHA1PRNG"

    invoke-static {v4}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v3

    .line 122
    .local v3, sr:Ljava/security/SecureRandom;
    invoke-virtual {v3, p0}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 123
    const/16 v4, 0x80

    invoke-virtual {v0, v4, v3}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 124
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 125
    .local v2, skey:Ljavax/crypto/SecretKey;
    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    .line 126
    .local v1, raw:[B
    return-object v1
.end method


# virtual methods
.method public DecryptFile()Z
    .locals 10

    .prologue
    .line 26
    const/4 v2, 0x0

    .line 27
    .local v2, bReadData:[B
    const/4 v3, 0x0

    .line 28
    .local v3, bWriteData:[B
    const/4 v0, 0x1

    .line 30
    .local v0, bFlag:Z
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    const-string v7, "/data/data/com.redbend.vdmc/files/tree.enc"

    invoke-direct {v5, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 31
    .local v5, fis:Ljava/io/FileInputStream;
    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v7

    new-array v2, v7, [B

    .line 32
    invoke-virtual {v5, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 33
    invoke-static {v2}, Lcom/htc/util/treectl;->decrypt([B)[B

    move-result-object v3

    .line 34
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 45
    .end local v5           #fis:Ljava/io/FileInputStream;
    :goto_0
    if-nez v0, :cond_0

    move v1, v0

    .line 59
    .end local v0           #bFlag:Z
    .local v1, bFlag:Z
    :goto_1
    return v1

    .line 35
    .end local v1           #bFlag:Z
    .restart local v0       #bFlag:Z
    :catch_0
    move-exception v4

    .line 36
    .local v4, e:Ljava/io/FileNotFoundException;
    const-string v7, "treectl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const/4 v0, 0x0

    .line 44
    goto :goto_0

    .line 38
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v4

    .line 39
    .local v4, e:Ljava/io/IOException;
    const-string v7, "treectl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const/4 v0, 0x0

    .line 44
    goto :goto_0

    .line 41
    .end local v4           #e:Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 42
    .local v4, e:Ljava/lang/Exception;
    const-string v7, "treectl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const/4 v0, 0x0

    goto :goto_0

    .line 49
    .end local v4           #e:Ljava/lang/Exception;
    :cond_0
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    const-string v7, "/data/data/com.redbend.vdmc/files/tree.xml"

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 50
    .local v6, fos:Ljava/io/FileOutputStream;
    invoke-virtual {v6, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 51
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .end local v6           #fos:Ljava/io/FileOutputStream;
    :goto_2
    move v1, v0

    .line 59
    .end local v0           #bFlag:Z
    .restart local v1       #bFlag:Z
    goto :goto_1

    .line 52
    .end local v1           #bFlag:Z
    .restart local v0       #bFlag:Z
    :catch_3
    move-exception v4

    .line 53
    .local v4, e:Ljava/io/FileNotFoundException;
    const-string v7, "treectl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 v0, 0x0

    .line 58
    goto :goto_2

    .line 55
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v4

    .line 56
    .local v4, e:Ljava/io/IOException;
    const-string v7, "treectl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public DeleteDecodeFile()V
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.redbend.vdmc/files/tree.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 105
    :cond_0
    return-void
.end method

.method public EncryptFile()Z
    .locals 10

    .prologue
    .line 64
    const/4 v2, 0x0

    .line 65
    .local v2, bReadData:[B
    const/4 v3, 0x0

    .line 66
    .local v3, bWriteData:[B
    const/4 v0, 0x1

    .line 68
    .local v0, bFlag:Z
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    const-string v7, "/data/data/com.redbend.vdmc/files/tree.xml"

    invoke-direct {v5, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 69
    .local v5, fis:Ljava/io/FileInputStream;
    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v7

    new-array v2, v7, [B

    .line 70
    invoke-virtual {v5, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 71
    invoke-static {v2}, Lcom/htc/util/treectl;->encrypt([B)[B

    move-result-object v3

    .line 72
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 83
    .end local v5           #fis:Ljava/io/FileInputStream;
    :goto_0
    if-nez v0, :cond_0

    move v1, v0

    .line 97
    .end local v0           #bFlag:Z
    .local v1, bFlag:Z
    :goto_1
    return v1

    .line 73
    .end local v1           #bFlag:Z
    .restart local v0       #bFlag:Z
    :catch_0
    move-exception v4

    .line 74
    .local v4, e:Ljava/io/FileNotFoundException;
    const-string v7, "treectl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v0, 0x0

    .line 82
    goto :goto_0

    .line 76
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v4

    .line 77
    .local v4, e:Ljava/io/IOException;
    const-string v7, "treectl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v0, 0x0

    .line 82
    goto :goto_0

    .line 79
    .end local v4           #e:Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 80
    .local v4, e:Ljava/lang/Exception;
    const-string v7, "treectl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v0, 0x0

    goto :goto_0

    .line 87
    .end local v4           #e:Ljava/lang/Exception;
    :cond_0
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    const-string v7, "/data/data/com.redbend.vdmc/files/tree.enc"

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 88
    .local v6, fos:Ljava/io/FileOutputStream;
    invoke-virtual {v6, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 89
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .end local v6           #fos:Ljava/io/FileOutputStream;
    :goto_2
    move v1, v0

    .line 97
    .end local v0           #bFlag:Z
    .restart local v1       #bFlag:Z
    goto :goto_1

    .line 90
    .end local v1           #bFlag:Z
    .restart local v0       #bFlag:Z
    :catch_3
    move-exception v4

    .line 91
    .local v4, e:Ljava/io/FileNotFoundException;
    const-string v7, "treectl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v0, 0x0

    .line 96
    goto :goto_2

    .line 93
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v4

    .line 94
    .local v4, e:Ljava/io/IOException;
    const-string v7, "treectl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v0, 0x0

    goto :goto_2
.end method
