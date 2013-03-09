.class public Lcom/htc/android/htcime/tools/SipReportUtil;
.super Ljava/lang/Object;
.source "SipReportUtil.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x4000

.field public static final DECRYPT_REPORT:I = 0x2

.field private static final HEX:Ljava/lang/String; = "0123456789ABCDEF"

.field public static final SEND_REPORT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SipReportUtil"

.field public static final mSentFolder:Ljava/lang/String; = "STPR_report_sent"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "seed"
    .parameter "encrypted"

    .prologue
    .line 164
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/htc/android/htcime/tools/SipReportUtil;->getRawKey([B)[B

    move-result-object v2

    .line 165
    .local v2, rawKey:[B
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v3, v2, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 166
    .local v3, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    const-string v4, "AES"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 167
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 168
    new-instance v4, Ljava/lang/String;

    invoke-static {p1}, Lcom/htc/android/htcime/tools/SipReportUtil;->toByte(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v2           #rawKey:[B
    .end local v3           #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v4

    .line 169
    :catch_0
    move-exception v1

    .line 170
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "SipReportUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while decrypt(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static decryptReport(Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/Context;)V
    .locals 13
    .parameter
    .parameter "shared_secret"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, sentReports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    const/4 v12, 0x1

    .line 79
    const/4 v8, 0x0

    .line 80
    .local v8, isDecryptReport:Z
    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 81
    .local v5, f:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".txt"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    .local v3, decryptReport:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 83
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v10

    if-nez v10, :cond_0

    .line 84
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to create file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {p2, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 112
    .end local v3           #decryptReport:Ljava/io/File;
    .end local v5           #f:Ljava/io/File;
    .end local v7           #i$:Ljava/util/Iterator;
    :goto_1
    return-void

    .line 90
    .restart local v3       #decryptReport:Ljava/io/File;
    .restart local v5       #f:Ljava/io/File;
    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_0
    const/16 v10, 0x4000

    new-array v1, v10, [C

    .line 91
    .local v1, buf:[C
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 92
    .local v2, data:Ljava/lang/StringBuffer;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 93
    .local v0, bf:Ljava/io/BufferedReader;
    invoke-virtual {v0, v1}, Ljava/io/BufferedReader;->read([C)I

    move-result v9

    .line 94
    .local v9, len:I
    :goto_2
    const/4 v10, -0x1

    if-eq v10, v9, :cond_1

    .line 95
    const/4 v10, 0x0

    invoke-virtual {v2, v1, v10, v9}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 96
    invoke-virtual {v0, v1}, Ljava/io/BufferedReader;->read([C)I

    move-result v9

    goto :goto_2

    .line 98
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 101
    new-instance v6, Ljava/io/FileWriter;

    const/4 v10, 0x0

    invoke-direct {v6, v3, v10}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 102
    .local v6, fw:Ljava/io/FileWriter;
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p1, v10}, Lcom/htc/android/htcime/tools/SipReportUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V

    .line 105
    const/4 v8, 0x1

    .line 106
    goto/16 :goto_0

    .line 107
    .end local v0           #bf:Ljava/io/BufferedReader;
    .end local v1           #buf:[C
    .end local v2           #data:Ljava/lang/StringBuffer;
    .end local v3           #decryptReport:Ljava/io/File;
    .end local v5           #f:Ljava/io/File;
    .end local v6           #fw:Ljava/io/FileWriter;
    .end local v9           #len:I
    :cond_2
    if-eqz v8, :cond_3

    const-string v10, "Decrypt report done."

    :goto_3
    const/4 v11, 0x1

    invoke-static {p2, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 108
    .end local v7           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v4

    .line 109
    .local v4, e:Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p2, v10, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 110
    const-string v10, "SipReportUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 107
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_1
    const-string v10, "Can not find encrypted report."
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "seed"
    .parameter "cleartext"

    .prologue
    .line 151
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/htc/android/htcime/tools/SipReportUtil;->getRawKey([B)[B

    move-result-object v2

    .line 152
    .local v2, rawKey:[B
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v3, v2, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 153
    .local v3, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    const-string v4, "AES"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 154
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 155
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    invoke-static {v4}, Lcom/htc/android/htcime/tools/SipReportUtil;->toHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 158
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v2           #rawKey:[B
    .end local v3           #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v4

    .line 156
    :catch_0
    move-exception v1

    .line 157
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "SipReportUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while encrypt(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static findFiles(Ljava/io/File;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Ljava/lang/String;
    .locals 15
    .parameter "dataDir"
    .parameter
    .parameter
    .parameter "function"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, fileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    .local p2, uriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 42
    .local v7, files:[Ljava/io/File;
    const-string v3, "empty"

    .line 44
    .local v3, device:Ljava/lang/String;
    if-eqz v7, :cond_7

    .line 45
    move-object v1, v7

    .local v1, arr$:[Ljava/io/File;
    array-length v11, v1

    .local v11, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    move v10, v9

    .end local v1           #arr$:[Ljava/io/File;
    .end local v9           #i$:I
    .end local v11           #len$:I
    .local v10, i$:I
    :goto_0
    if-ge v10, v11, :cond_7

    aget-object v4, v1, v10

    .line 46
    .local v4, f:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 47
    .local v6, filename:Ljava/lang/String;
    const/4 v13, 0x2

    move/from16 v0, p3

    if-eq v0, v13, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_3

    const-string v13, "STPR_report_sent"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 49
    move-object v3, v6

    .line 50
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 51
    .local v8, files2:[Ljava/io/File;
    move-object v2, v8

    .local v2, arr$:[Ljava/io/File;
    array-length v12, v2

    .local v12, len$:I
    const/4 v9, 0x0

    .end local v10           #i$:I
    .restart local v9       #i$:I
    :goto_1
    if-ge v9, v12, :cond_6

    aget-object v5, v2, v9

    .line 52
    .local v5, f2:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 51
    :cond_0
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 54
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, ".ime"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "STPR_"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 55
    if-eqz p1, :cond_2

    .line 56
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_2
    if-eqz p2, :cond_0

    .line 58
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 63
    .end local v2           #arr$:[Ljava/io/File;
    .end local v5           #f2:Ljava/io/File;
    .end local v8           #files2:[Ljava/io/File;
    .end local v9           #i$:I
    .end local v12           #len$:I
    .restart local v10       #i$:I
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-nez v13, :cond_6

    const-string v13, "STPR_"

    invoke-virtual {v6, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    const-string v13, ".ime"

    invoke-virtual {v6, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_4

    const-string v13, ".zip"

    invoke-virtual {v6, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 65
    :cond_4
    if-eqz p1, :cond_5

    .line 66
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_5
    if-eqz p2, :cond_6

    .line 68
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .end local v10           #i$:I
    :cond_6
    add-int/lit8 v9, v10, 0x1

    .restart local v9       #i$:I
    move v10, v9

    .end local v9           #i$:I
    .restart local v10       #i$:I
    goto/16 :goto_0

    .line 74
    .end local v4           #f:Ljava/io/File;
    .end local v6           #filename:Ljava/lang/String;
    .end local v10           #i$:I
    :cond_7
    return-object v3
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
    .line 176
    const-string v4, "AES"

    invoke-static {v4}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 177
    .local v0, kgen:Ljavax/crypto/KeyGenerator;
    const-string v4, "SHA1PRNG"

    invoke-static {v4}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v3

    .line 178
    .local v3, sr:Ljava/security/SecureRandom;
    invoke-virtual {v3, p0}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 179
    const/16 v4, 0x80

    invoke-virtual {v0, v4, v3}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 180
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 181
    .local v2, skey:Ljavax/crypto/SecretKey;
    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    .line 182
    .local v1, raw:[B
    return-object v1
.end method

.method public static prepareZip(Ljava/io/File;Ljava/util/ArrayList;Landroid/content/Context;)Ljava/io/File;
    .locals 13
    .parameter "zipFile"
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/io/File;"
        }
    .end annotation

    .prologue
    .local p1, reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    const/4 v8, 0x0

    const/4 v12, 0x1

    .line 116
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 117
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result v9

    if-nez v9, :cond_0

    .line 118
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to create file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {p2, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    move-object p0, v8

    .line 144
    .end local p0
    :goto_0
    return-object p0

    .line 123
    .restart local p0
    :cond_0
    new-instance v7, Ljava/util/zip/ZipOutputStream;

    new-instance v9, Ljava/io/BufferedOutputStream;

    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v7, v9}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 124
    .local v7, output:Ljava/util/zip/ZipOutputStream;
    const/4 v6, 0x0

    .line 125
    .local v6, origin:Ljava/io/BufferedInputStream;
    const/16 v9, 0x4000

    new-array v1, v9, [B

    .line 127
    .local v1, data:[B
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 128
    .local v4, f:Ljava/io/File;
    const-string v9, "SipReportUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Compress, adding file:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v6, Ljava/io/BufferedInputStream;

    .end local v6           #origin:Ljava/io/BufferedInputStream;
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v10, 0x4000

    invoke-direct {v6, v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 130
    .restart local v6       #origin:Ljava/io/BufferedInputStream;
    new-instance v3, Ljava/util/zip/ZipEntry;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 131
    .local v3, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v7, v3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 133
    :goto_2
    const/4 v9, 0x0

    const/16 v10, 0x4000

    invoke-virtual {v6, v1, v9, v10}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v0

    .local v0, count:I
    const/4 v9, -0x1

    if-eq v0, v9, :cond_1

    .line 134
    const/4 v9, 0x0

    invoke-virtual {v7, v1, v9, v0}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 141
    .end local v0           #count:I
    .end local v1           #data:[B
    .end local v3           #entry:Ljava/util/zip/ZipEntry;
    .end local v4           #f:Ljava/io/File;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #origin:Ljava/io/BufferedInputStream;
    .end local v7           #output:Ljava/util/zip/ZipOutputStream;
    :catch_0
    move-exception v2

    .line 142
    .local v2, e:Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "prepareZip: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p2, v9, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 143
    const-string v9, "SipReportUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "prepareZip: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p0, v8

    .line 144
    goto/16 :goto_0

    .line 136
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #count:I
    .restart local v1       #data:[B
    .restart local v3       #entry:Ljava/util/zip/ZipEntry;
    .restart local v4       #f:Ljava/io/File;
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v6       #origin:Ljava/io/BufferedInputStream;
    .restart local v7       #output:Ljava/util/zip/ZipOutputStream;
    :cond_1
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    .line 137
    invoke-virtual {v7}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    goto/16 :goto_1

    .line 139
    .end local v0           #count:I
    .end local v3           #entry:Ljava/util/zip/ZipEntry;
    .end local v4           #f:Ljava/io/File;
    :cond_2
    invoke-virtual {v7}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private static toByte(Ljava/lang/String;)[B
    .locals 5
    .parameter "hexString"

    .prologue
    .line 198
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 199
    .local v1, len:I
    new-array v2, v1, [B

    .line 200
    .local v2, result:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 201
    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v2, v0

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_0
    return-object v2
.end method

.method private static toHex([B)Ljava/lang/String;
    .locals 5
    .parameter "buf"

    .prologue
    .line 187
    if-nez p0, :cond_0

    .line 188
    const-string v2, ""

    .line 194
    :goto_0
    return-object v2

    .line 190
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 191
    .local v1, result:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 192
    const-string v2, "0123456789ABCDEF"

    aget-byte v3, p0, v0

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "0123456789ABCDEF"

    aget-byte v4, p0, v0

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 194
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
