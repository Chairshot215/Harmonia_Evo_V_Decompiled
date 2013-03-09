.class public Lcom/google/android/finsky/utils/PackageManagerUtils;
.super Ljava/lang/Object;
.source "PackageManagerUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/utils/PackageManagerUtils$FreeSpaceListener;,
        Lcom/google/android/finsky/utils/PackageManagerUtils$PackageInstallObserver;
    }
.end annotation


# static fields
.field private static ENCRYPTED_V0_SIZE_FOOTER:I

.field private static ENCRYPTED_V0_SIZE_HEADER:I

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "Finsky"

    sput-object v0, Lcom/google/android/finsky/utils/PackageManagerUtils;->TAG:Ljava/lang/String;

    .line 36
    const/16 v0, 0x15

    sput v0, Lcom/google/android/finsky/utils/PackageManagerUtils;->ENCRYPTED_V0_SIZE_HEADER:I

    .line 37
    const/16 v0, 0x14

    sput v0, Lcom/google/android/finsky/utils/PackageManagerUtils;->ENCRYPTED_V0_SIZE_FOOTER:I

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callInstallEncrypted(Landroid/content/ContentResolver;Landroid/content/pm/PackageManager;Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;IJLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "resolver"
    .parameter "packageManager"
    .parameter "uri"
    .parameter "innerObserver"
    .parameter "installFlags"
    .parameter "expectedSize"
    .parameter "encryptionKey"
    .parameter "encryptionHmacKey"

    .prologue
    .line 77
    move-object v0, p0

    move-object v1, p2

    move-wide v2, p5

    move-object v4, p7

    move-object/from16 v5, p8

    invoke-static/range {v0 .. v5}, Lcom/google/android/finsky/utils/PackageManagerUtils;->generateEncryptionParams(Landroid/content/ContentResolver;Landroid/net/Uri;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 76
    check-cast v7, Landroid/content/pm/ContainerEncryptionParams;

    .line 80
    .local v7, encryptionParams:Landroid/content/pm/ContainerEncryptionParams;
    const-string v4, "com.android.vending"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    .line 79
    invoke-virtual/range {v0 .. v7}, Landroid/content/pm/PackageManager;->installPackageWithVerification(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/net/Uri;Landroid/content/pm/ManifestDigest;Landroid/content/pm/ContainerEncryptionParams;)V

    .line 82
    return-void
.end method

.method public static freeStorageAndNotify(Landroid/content/Context;JLcom/google/android/finsky/utils/PackageManagerUtils$FreeSpaceListener;)V
    .locals 2
    .parameter "context"
    .parameter "requiredSize"
    .parameter "listener"

    .prologue
    .line 258
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 259
    .local v0, packageManager:Landroid/content/pm/PackageManager;
    new-instance v1, Lcom/google/android/finsky/utils/PackageManagerUtils$2;

    invoke-direct {v1, p3}, Lcom/google/android/finsky/utils/PackageManagerUtils$2;-><init>(Lcom/google/android/finsky/utils/PackageManagerUtils$FreeSpaceListener;)V

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/pm/PackageManager;->freeStorageAndNotify(JLandroid/content/pm/IPackageDataObserver;)V

    .line 265
    return-void
.end method

.method private static generateEncryptionParams(Landroid/content/ContentResolver;Landroid/net/Uri;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 35
    .parameter "resolver"
    .parameter "fileUri"
    .parameter "fileSize"
    .parameter "encryptionKey"
    .parameter "encryptionHmacKey"

    .prologue
    .line 109
    const/16 v3, 0x10

    new-array v0, v3, [B

    move-object/from16 v25, v0

    .line 110
    .local v25, ivBytes:[B
    const/4 v3, 0x4

    new-array v0, v3, [B

    move-object/from16 v26, v0

    .line 111
    .local v26, keyHash:[B
    const/16 v3, 0x14

    new-array v0, v3, [B

    move-object/from16 v21, v0

    .line 116
    .local v21, hmacBytes:[B
    :try_start_0
    sget v3, Lcom/google/android/finsky/utils/PackageManagerUtils;->ENCRYPTED_V0_SIZE_HEADER:I

    add-int/lit8 v3, v3, 0x1

    sget v33, Lcom/google/android/finsky/utils/PackageManagerUtils;->ENCRYPTED_V0_SIZE_FOOTER:I

    add-int v3, v3, v33

    int-to-long v0, v3

    move-wide/from16 v33, v0

    cmp-long v3, p2, v33

    if-gez v3, :cond_0

    .line 117
    sget-object v3, Lcom/google/android/finsky/utils/PackageManagerUtils;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "Size "

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " too small in "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v3, 0x0

    .line 193
    :goto_0
    return-object v3

    .line 120
    :cond_0
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v28

    .line 121
    .local v28, rawInput:Ljava/io/InputStream;
    new-instance v24, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v28

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 122
    .local v24, input:Ljava/io/DataInputStream;
    invoke-virtual/range {v24 .. v24}, Ljava/io/DataInputStream;->read()I

    move-result v32

    .line 123
    .local v32, version:I
    if-eqz v32, :cond_1

    .line 124
    sget-object v3, Lcom/google/android/finsky/utils/PackageManagerUtils;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "Wrong version byte "

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " in "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v3, 0x0

    goto :goto_0

    .line 128
    :cond_1
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 129
    invoke-virtual/range {v24 .. v25}, Ljava/io/DataInputStream;->readFully([B)V

    .line 131
    sget v3, Lcom/google/android/finsky/utils/PackageManagerUtils;->ENCRYPTED_V0_SIZE_HEADER:I

    sget v33, Lcom/google/android/finsky/utils/PackageManagerUtils;->ENCRYPTED_V0_SIZE_FOOTER:I

    add-int v3, v3, v33

    int-to-long v0, v3

    move-wide/from16 v33, v0

    sub-long v30, p2, v33

    .line 132
    .local v30, skipCount:J
    :goto_1
    const-wide/16 v33, 0x0

    cmp-long v3, v30, v33

    if-gtz v3, :cond_2

    .line 135
    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 136
    invoke-virtual/range {v24 .. v24}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 146
    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v17

    .line 147
    .local v17, cipherKeyBytes:[B
    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v22

    .line 151
    .local v22, hmacKeyBytes:[B
    :try_start_1
    const-string v3, "SHA1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v29

    .line 153
    .local v29, sha1:Ljava/security/MessageDigest;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    .line 154
    .local v18, cipherKeyBytesLength:I
    shr-int/lit8 v3, v18, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update(B)V

    .line 155
    shr-int/lit8 v3, v18, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update(B)V

    .line 156
    shr-int/lit8 v3, v18, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update(B)V

    .line 157
    shr-int/lit8 v3, v18, 0x0

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update(B)V

    .line 158
    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 159
    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 160
    invoke-virtual/range {v29 .. v29}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v19

    .line 162
    .local v19, digest:[B
    const/16 v27, 0x1

    .line 163
    .local v27, match:Z
    const/16 v23, 0x0

    .local v23, i:I
    :goto_2
    const/4 v3, 0x3

    move/from16 v0, v23

    if-le v0, v3, :cond_3

    .line 166
    if-nez v27, :cond_5

    .line 167
    sget-object v3, Lcom/google/android/finsky/utils/PackageManagerUtils;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "Key hash mismatch while reading "

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2

    .line 168
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 133
    .end local v17           #cipherKeyBytes:[B
    .end local v18           #cipherKeyBytesLength:I
    .end local v19           #digest:[B
    .end local v22           #hmacKeyBytes:[B
    .end local v23           #i:I
    .end local v27           #match:Z
    .end local v29           #sha1:Ljava/security/MessageDigest;
    :cond_2
    :try_start_2
    move-object/from16 v0, v24

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/io/DataInputStream;->skip(J)J
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v33

    sub-long v30, v30, v33

    goto/16 :goto_1

    .line 137
    .end local v24           #input:Ljava/io/DataInputStream;
    .end local v28           #rawInput:Ljava/io/InputStream;
    .end local v30           #skipCount:J
    .end local v32           #version:I
    :catch_0
    move-exception v20

    .line 138
    .local v20, e:Ljava/io/FileNotFoundException;
    sget-object v3, Lcom/google/android/finsky/utils/PackageManagerUtils;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "Exception "

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " while opening "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 140
    .end local v20           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v20

    .line 141
    .local v20, e:Ljava/io/IOException;
    sget-object v3, Lcom/google/android/finsky/utils/PackageManagerUtils;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "Exception "

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " while reading "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 164
    .end local v20           #e:Ljava/io/IOException;
    .restart local v17       #cipherKeyBytes:[B
    .restart local v18       #cipherKeyBytesLength:I
    .restart local v19       #digest:[B
    .restart local v22       #hmacKeyBytes:[B
    .restart local v23       #i:I
    .restart local v24       #input:Ljava/io/DataInputStream;
    .restart local v27       #match:Z
    .restart local v28       #rawInput:Ljava/io/InputStream;
    .restart local v29       #sha1:Ljava/security/MessageDigest;
    .restart local v30       #skipCount:J
    .restart local v32       #version:I
    :cond_3
    :try_start_3
    aget-byte v3, v19, v23

    aget-byte v33, v26, v23
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_2

    move/from16 v0, v33

    if-ne v3, v0, :cond_4

    const/4 v3, 0x1

    :goto_3
    and-int v27, v27, v3

    .line 163
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_2

    .line 164
    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    .line 170
    .end local v18           #cipherKeyBytesLength:I
    .end local v19           #digest:[B
    .end local v23           #i:I
    .end local v27           #match:Z
    .end local v29           #sha1:Ljava/security/MessageDigest;
    :catch_2
    move-exception v20

    .line 171
    .local v20, e:Ljava/security/NoSuchAlgorithmException;
    sget-object v3, Lcom/google/android/finsky/utils/PackageManagerUtils;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "Couldn\'t create SHA1 digest: "

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 177
    .end local v20           #e:Ljava/security/NoSuchAlgorithmException;
    .restart local v18       #cipherKeyBytesLength:I
    .restart local v19       #digest:[B
    .restart local v23       #i:I
    .restart local v27       #match:Z
    .restart local v29       #sha1:Ljava/security/MessageDigest;
    :cond_5
    const-string v4, "AES/CBC/PKCS5Padding"

    .line 178
    .local v4, encryptionAlgorithm:Ljava/lang/String;
    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    move-object/from16 v0, v25

    invoke-direct {v5, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 179
    .local v5, encryptionSpec:Ljava/security/spec/AlgorithmParameterSpec;
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    move-object/from16 v0, v17

    invoke-direct {v6, v0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 180
    .local v6, encryptionSecretKey:Ljavax/crypto/SecretKey;
    const-string v7, "HMACSHA1"

    .line 181
    .local v7, macAlgorithm:Ljava/lang/String;
    const/4 v8, 0x0

    .line 182
    .local v8, macSpec:Ljava/security/spec/AlgorithmParameterSpec;
    new-instance v9, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "HMACSHA1"

    move-object/from16 v0, v22

    invoke-direct {v9, v0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 183
    .local v9, macKey:Ljavax/crypto/SecretKey;
    move-object/from16 v10, v21

    .line 184
    .local v10, macTag:[B
    const-wide/16 v11, 0x0

    .line 185
    .local v11, authenticatedDataStart:J
    sget v3, Lcom/google/android/finsky/utils/PackageManagerUtils;->ENCRYPTED_V0_SIZE_HEADER:I

    int-to-long v13, v3

    .line 186
    .local v13, encryptedDataStart:J
    sget v3, Lcom/google/android/finsky/utils/PackageManagerUtils;->ENCRYPTED_V0_SIZE_FOOTER:I

    int-to-long v0, v3

    move-wide/from16 v33, v0

    sub-long v15, p2, v33

    .line 188
    .local v15, dataEnd:J
    :try_start_4
    new-instance v3, Landroid/content/pm/ContainerEncryptionParams;

    invoke-direct/range {v3 .. v16}, Landroid/content/pm/ContainerEncryptionParams;-><init>(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/SecretKey;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/SecretKey;[BJJJ)V
    :try_end_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 191
    :catch_3
    move-exception v20

    .line 192
    .local v20, e:Ljava/security/InvalidAlgorithmParameterException;
    sget-object v3, Lcom/google/android/finsky/utils/PackageManagerUtils;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "Exception "

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " while creating ContainerEncryptionParams"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public static installExistingPackage(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .parameter "context"
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 239
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 240
    .local v0, packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->installExistingPackage(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static installPackage(Landroid/content/Context;Landroid/net/Uri;Lcom/google/android/finsky/utils/PackageManagerUtils$PackageInstallObserver;IJLjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "uri"
    .parameter "observer"
    .parameter "installFlags"
    .parameter "expectedSize"
    .parameter "encryptionKey"
    .parameter "encryptionHmacKey"

    .prologue
    .line 51
    new-instance v3, Lcom/google/android/finsky/utils/PackageManagerUtils$1;

    invoke-direct {v3, p2}, Lcom/google/android/finsky/utils/PackageManagerUtils$1;-><init>(Lcom/google/android/finsky/utils/PackageManagerUtils$PackageInstallObserver;)V

    .line 59
    .local v3, innerObserver:Landroid/content/pm/IPackageInstallObserver;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 60
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    if-eqz p6, :cond_0

    if-eqz p7, :cond_0

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, resolver:Landroid/content/ContentResolver;
    move-object v2, p1

    move v4, p3

    move-wide v5, p4

    move-object v7, p6

    move-object/from16 v8, p7

    .line 62
    invoke-static/range {v0 .. v8}, Lcom/google/android/finsky/utils/PackageManagerUtils;->callInstallEncrypted(Landroid/content/ContentResolver;Landroid/content/pm/PackageManager;Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;IJLjava/lang/String;Ljava/lang/String;)V

    .line 67
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :goto_0
    return-void

    .line 65
    :cond_0
    const-string v2, "com.android.vending"

    invoke-virtual {v1, p1, v3, p3, v2}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static isEncryptionSupported()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 208
    const-class v3, Landroid/content/pm/PackageManager;

    .line 209
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 211
    if-nez v2, :cond_0

    .line 212
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 218
    :cond_0
    :try_start_0
    const-string v4, "android.content.pm.ManifestDigest"

    invoke-virtual {v2, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 219
    const-string v5, "android.content.pm.ContainerEncryptionParams"

    invoke-virtual {v2, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 220
    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    .line 221
    const-class v7, Landroid/net/Uri;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/content/pm/IPackageInstallObserver;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    .line 222
    const-class v7, Landroid/net/Uri;

    aput-object v7, v5, v6

    const/4 v6, 0x5

    aput-object v4, v5, v6

    const/4 v4, 0x6

    aput-object v2, v5, v4

    .line 224
    const-string v2, "installPackageWithVerification"

    invoke-virtual {v3, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 229
    :goto_0
    return v0

    .line 226
    :catch_0
    move-exception v0

    move v0, v1

    .line 227
    goto :goto_0

    .line 228
    :catch_1
    move-exception v0

    move v0, v1

    .line 229
    goto :goto_0
.end method

.method public static uninstallPackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "ctx"
    .parameter "packageName"

    .prologue
    .line 280
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 281
    .local v0, packageManager:Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 282
    return-void
.end method
