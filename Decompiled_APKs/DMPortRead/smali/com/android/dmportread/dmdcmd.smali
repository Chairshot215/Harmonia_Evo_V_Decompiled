.class public Lcom/android/dmportread/dmdcmd;
.super Ljava/lang/Object;
.source "dmdcmd.java"


# static fields
.field private static PrivateKey:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "dmdcmd"

.field private static bEncrypt:Z

.field private static bPrivateKey:Z


# instance fields
.field private final BufferLength:I

.field private Hostname:Ljava/lang/String;

.field private Port:I

.field private PublicEncryptKey:Ljava/lang/String;

.field private Result:Ljava/lang/String;

.field private bConn:Z

.field private cmdEXIT:Ljava/lang/String;

.field private cmdID:Ljava/lang/String;

.field private cmdPWD:Ljava/lang/String;

.field private cmdTY1:Ljava/lang/String;

.field private cmdTY2:Ljava/lang/String;

.field private cmdTY3:Ljava/lang/String;

.field private in:Ljava/io/InputStream;

.field private out:Ljava/io/OutputStream;

.field private requestSocket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/dmportread/dmdcmd;->bEncrypt:Z

    .line 100
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/dmportread/dmdcmd;->bPrivateKey:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "127.0.0.1"

    iput-object v0, p0, Lcom/android/dmportread/dmdcmd;->Hostname:Ljava/lang/String;

    .line 14
    const/16 v0, 0x2606

    iput v0, p0, Lcom/android/dmportread/dmdcmd;->Port:I

    .line 20
    const-string v0, ":IDOMADM"

    iput-object v0, p0, Lcom/android/dmportread/dmdcmd;->cmdID:Ljava/lang/String;

    .line 21
    const-string v0, ":PWDM"

    iput-object v0, p0, Lcom/android/dmportread/dmdcmd;->cmdPWD:Ljava/lang/String;

    .line 22
    const-string v0, ":EXIT"

    iput-object v0, p0, Lcom/android/dmportread/dmdcmd;->cmdEXIT:Ljava/lang/String;

    .line 23
    const-string v0, ":TY1"

    iput-object v0, p0, Lcom/android/dmportread/dmdcmd;->cmdTY1:Ljava/lang/String;

    .line 24
    const-string v0, ":TY2"

    iput-object v0, p0, Lcom/android/dmportread/dmdcmd;->cmdTY2:Ljava/lang/String;

    .line 25
    const-string v0, ":TY3"

    iput-object v0, p0, Lcom/android/dmportread/dmdcmd;->cmdTY3:Ljava/lang/String;

    .line 99
    const-string v0, "0000000000000000"

    iput-object v0, p0, Lcom/android/dmportread/dmdcmd;->PublicEncryptKey:Ljava/lang/String;

    .line 102
    const/16 v0, 0x400

    iput v0, p0, Lcom/android/dmportread/dmdcmd;->BufferLength:I

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lcom/android/dmportread/dmdcmd;->Result:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dmportread/dmdcmd;->requestSocket:Ljava/net/Socket;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dmportread/dmdcmd;->bConn:Z

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "newHostname"
    .parameter "newPort"

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "127.0.0.1"

    iput-object v0, p0, Lcom/android/dmportread/dmdcmd;->Hostname:Ljava/lang/String;

    .line 14
    const/16 v0, 0x2606

    iput v0, p0, Lcom/android/dmportread/dmdcmd;->Port:I

    .line 20
    const-string v0, ":IDOMADM"

    iput-object v0, p0, Lcom/android/dmportread/dmdcmd;->cmdID:Ljava/lang/String;

    .line 21
    const-string v0, ":PWDM"

    iput-object v0, p0, Lcom/android/dmportread/dmdcmd;->cmdPWD:Ljava/lang/String;

    .line 22
    const-string v0, ":EXIT"

    iput-object v0, p0, Lcom/android/dmportread/dmdcmd;->cmdEXIT:Ljava/lang/String;

    .line 23
    const-string v0, ":TY1"

    iput-object v0, p0, Lcom/android/dmportread/dmdcmd;->cmdTY1:Ljava/lang/String;

    .line 24
    const-string v0, ":TY2"

    iput-object v0, p0, Lcom/android/dmportread/dmdcmd;->cmdTY2:Ljava/lang/String;

    .line 25
    const-string v0, ":TY3"

    iput-object v0, p0, Lcom/android/dmportread/dmdcmd;->cmdTY3:Ljava/lang/String;

    .line 99
    const-string v0, "0000000000000000"

    iput-object v0, p0, Lcom/android/dmportread/dmdcmd;->PublicEncryptKey:Ljava/lang/String;

    .line 102
    const/16 v0, 0x400

    iput v0, p0, Lcom/android/dmportread/dmdcmd;->BufferLength:I

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lcom/android/dmportread/dmdcmd;->Result:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dmportread/dmdcmd;->requestSocket:Ljava/net/Socket;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dmportread/dmdcmd;->bConn:Z

    .line 35
    iput-object p1, p0, Lcom/android/dmportread/dmdcmd;->Hostname:Ljava/lang/String;

    .line 36
    iput p2, p0, Lcom/android/dmportread/dmdcmd;->Port:I

    .line 37
    return-void
.end method

.method public static DmDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "Key"
    .parameter "EncryptText"

    .prologue
    .line 225
    const/4 v1, 0x0

    .line 227
    .local v1, decrypted:[B
    :try_start_0
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "AES"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 228
    .local v3, secret:Ljavax/crypto/spec/SecretKeySpec;
    const-string v4, "AES/ECB/NoPadding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 229
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 230
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/android/dmportread/dmdcmd;->HexToStr(Ljava/lang/String;Z)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 234
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v3           #secret:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 231
    :catch_0
    move-exception v2

    .line 232
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static DmEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "Key"
    .parameter "PlainText"

    .prologue
    const/4 v9, 0x0

    .line 205
    const/4 v4, 0x0

    .line 206
    .local v4, encrypted:[B
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 207
    .local v1, Length:I
    rem-int/lit8 v6, v1, 0x10

    if-lez v6, :cond_0

    .line 208
    div-int/lit8 v6, v1, 0x10

    add-int/lit8 v6, v6, 0x1

    mul-int/lit8 v1, v6, 0x10

    .line 209
    :cond_0
    const-string v6, "dmdcmd"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Length:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    new-array v0, v1, [B

    .line 211
    .local v0, Buffer:[B
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v6, v9, v0, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    :try_start_0
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const-string v7, "AES"

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 215
    .local v5, secret:Ljavax/crypto/spec/SecretKeySpec;
    const-string v6, "AES/ECB/NoPadding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 216
    .local v2, cipher:Ljavax/crypto/Cipher;
    const/4 v6, 0x1

    invoke-virtual {v2, v6, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 217
    invoke-virtual {v2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 221
    .end local v2           #cipher:Ljavax/crypto/Cipher;
    .end local v5           #secret:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    invoke-static {v4}, Lcom/android/dmportread/dmdcmd;->StrToHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 218
    :catch_0
    move-exception v3

    .line 219
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static HexToStr(Ljava/lang/String;Z)[B
    .locals 7
    .parameter "input"
    .parameter "lowercase"

    .prologue
    .line 239
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0123456789"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez p1, :cond_0

    const-string v5, "ABCDEF"

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, digital:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 241
    .local v2, hex2char:[C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    new-array v0, v5, [B

    .line 243
    .local v0, bytes:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_1

    .line 244
    mul-int/lit8 v5, v3, 0x2

    aget-char v5, v2, v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    mul-int/lit8 v4, v5, 0x10

    .line 245
    .local v4, temp:I
    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-char v5, v2, v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 246
    and-int/lit16 v5, v4, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    .line 243
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 239
    .end local v0           #bytes:[B
    .end local v1           #digital:Ljava/lang/String;
    .end local v2           #hex2char:[C
    .end local v3           #i:I
    .end local v4           #temp:I
    :cond_0
    const-string v5, "abcdef"

    goto :goto_0

    .line 248
    .restart local v0       #bytes:[B
    .restart local v1       #digital:Ljava/lang/String;
    .restart local v2       #hex2char:[C
    .restart local v3       #i:I
    :cond_1
    return-object v0
.end method

.method public static StrToHex([B)Ljava/lang/String;
    .locals 6
    .parameter "bytes"

    .prologue
    const/4 v5, 0x1

    .line 252
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 253
    .local v1, rslt:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_2

    .line 254
    aget-byte v3, p0, v0

    if-ltz v3, :cond_1

    aget-byte v3, p0, v0

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 255
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 256
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 257
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 258
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 253
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    .end local v2           #s:Ljava/lang/String;
    :cond_1
    aget-byte v3, p0, v0

    add-int/lit16 v3, v3, 0x100

    goto :goto_1

    .line 260
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private readRsponse()V
    .locals 8

    .prologue
    const/16 v7, 0x400

    .line 133
    new-array v2, v7, [B

    .line 134
    .local v2, respond:[B
    const/4 v1, 0x0

    .line 136
    .local v1, length:I
    :try_start_0
    iget-object v4, p0, Lcom/android/dmportread/dmdcmd;->in:Ljava/io/InputStream;

    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 137
    const-string v4, "dmdcmd"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readRsponse length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 143
    .local v3, result:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/dmportread/dmdcmd;->Result:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/dmportread/dmdcmd;->Result:Ljava/lang/String;

    .line 145
    if-ge v1, v7, :cond_0

    .line 146
    const-string v4, "dmdcmd"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_1
    return-void

    .line 138
    .end local v3           #result:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 139
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "dmdcmd"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ReadSponse fail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 149
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #result:Ljava/lang/String;
    :cond_0
    const-string v4, "dmdcmd"

    const-string v5, "length<BufferLength"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-direct {p0}, Lcom/android/dmportread/dmdcmd;->readRsponse()V

    goto :goto_1
.end method


# virtual methods
.method public Conn()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 41
    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Lcom/android/dmportread/dmdcmd;->bConn:Z

    .line 43
    new-instance v3, Ljava/net/Socket;

    iget-object v4, p0, Lcom/android/dmportread/dmdcmd;->Hostname:Ljava/lang/String;

    iget v5, p0, Lcom/android/dmportread/dmdcmd;->Port:I

    invoke-direct {v3, v4, v5}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/android/dmportread/dmdcmd;->requestSocket:Ljava/net/Socket;

    .line 44
    iget-object v3, p0, Lcom/android/dmportread/dmdcmd;->requestSocket:Ljava/net/Socket;

    if-nez v3, :cond_0

    .line 60
    :goto_0
    return v2

    .line 49
    :cond_0
    iget-object v3, p0, Lcom/android/dmportread/dmdcmd;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/android/dmportread/dmdcmd;->out:Ljava/io/OutputStream;

    .line 50
    iget-object v3, p0, Lcom/android/dmportread/dmdcmd;->out:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 52
    iget-object v3, p0, Lcom/android/dmportread/dmdcmd;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/android/dmportread/dmdcmd;->in:Ljava/io/InputStream;

    .line 53
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/dmportread/dmdcmd;->bConn:Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 60
    :goto_1
    iget-boolean v2, p0, Lcom/android/dmportread/dmdcmd;->bConn:Z

    goto :goto_0

    .line 54
    :catch_0
    move-exception v1

    .line 56
    .local v1, unknownHost:Ljava/net/UnknownHostException;
    iput-boolean v2, p0, Lcom/android/dmportread/dmdcmd;->bConn:Z

    goto :goto_1

    .line 57
    .end local v1           #unknownHost:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v0

    .line 58
    .local v0, ioException:Ljava/io/IOException;
    const-string v2, "dmdcmd"

    const-string v3, "IOException."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public DisConn()V
    .locals 6

    .prologue
    .line 65
    :try_start_0
    iget-object v3, p0, Lcom/android/dmportread/dmdcmd;->requestSocket:Ljava/net/Socket;

    if-nez v3, :cond_0

    .line 83
    :goto_0
    return-void

    .line 68
    :cond_0
    sget-boolean v3, Lcom/android/dmportread/dmdcmd;->bEncrypt:Z

    if-eqz v3, :cond_1

    .line 69
    iget-object v3, p0, Lcom/android/dmportread/dmdcmd;->cmdEXIT:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/dmportread/dmdcmd;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, My_hex:Ljava/lang/String;
    const-string v3, "dmdcmd"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cmdEXIT["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .end local v0           #My_hex:Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/android/dmportread/dmdcmd;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 78
    iget-object v3, p0, Lcom/android/dmportread/dmdcmd;->out:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 79
    iget-object v3, p0, Lcom/android/dmportread/dmdcmd;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, ioException:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 72
    .end local v1           #ioException:Ljava/io/IOException;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/dmportread/dmdcmd;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/android/dmportread/dmdcmd;->cmdEXIT:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 73
    const/16 v3, 0x200

    new-array v2, v3, [B

    .line 74
    .local v2, respond:[B
    iget-object v3, p0, Lcom/android/dmportread/dmdcmd;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/android/dmportread/dmdcmd;->in:Ljava/io/InputStream;

    .line 75
    iget-object v3, p0, Lcom/android/dmportread/dmdcmd;->in:Ljava/io/InputStream;

    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public GetPrivateKey()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v4, 0x200

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 106
    new-array v1, v4, [B

    .line 107
    .local v1, cmdsend:[B
    new-array v0, v4, [B

    .line 109
    .local v0, cmdresp:[B
    sget-boolean v4, Lcom/android/dmportread/dmdcmd;->bPrivateKey:Z

    if-eqz v4, :cond_0

    .line 110
    sget-object v4, Lcom/android/dmportread/dmdcmd;->PrivateKey:Ljava/lang/String;

    .line 129
    :goto_0
    return-object v4

    .line 112
    :cond_0
    const/16 v4, 0x77

    aput-byte v4, v1, v5

    .line 113
    aput-byte v5, v1, v6

    .line 116
    :try_start_0
    iget-object v4, p0, Lcom/android/dmportread/dmdcmd;->out:Ljava/io/OutputStream;

    invoke-virtual {v4, v1}, Ljava/io/OutputStream;->write([B)V

    .line 117
    iget-object v4, p0, Lcom/android/dmportread/dmdcmd;->out:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 118
    iget-object v4, p0, Lcom/android/dmportread/dmdcmd;->in:Ljava/io/InputStream;

    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, result:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/dmportread/dmdcmd;->PublicEncryptKey:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/android/dmportread/dmdcmd;->DmDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/dmportread/dmdcmd;->PrivateKey:Ljava/lang/String;

    .line 128
    sput-boolean v6, Lcom/android/dmportread/dmdcmd;->bPrivateKey:Z

    .line 129
    sget-object v4, Lcom/android/dmportread/dmdcmd;->PrivateKey:Ljava/lang/String;

    goto :goto_0

    .line 119
    .end local v3           #result:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 120
    .local v2, ioException:Ljava/io/IOException;
    const-string v4, "dmdcmd"

    const-string v5, "IOException."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {p0}, Lcom/android/dmportread/dmdcmd;->DisConn()V

    goto :goto_1
.end method

.method public StartUse()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/dmportread/dmdcmd;->cmdID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/dmportread/dmdcmd;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/android/dmportread/dmdcmd;->cmdPWD:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/dmportread/dmdcmd;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/android/dmportread/dmdcmd;->cmdTY1:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/dmportread/dmdcmd;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    return-void
.end method

.method public sendCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "request"

    .prologue
    .line 156
    sget-boolean v4, Lcom/android/dmportread/dmdcmd;->bPrivateKey:Z

    if-nez v4, :cond_0

    sget-boolean v4, Lcom/android/dmportread/dmdcmd;->bEncrypt:Z

    if-eqz v4, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/android/dmportread/dmdcmd;->GetPrivateKey()Ljava/lang/String;

    .line 161
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/dmportread/dmdcmd;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    iput-object v4, p0, Lcom/android/dmportread/dmdcmd;->out:Ljava/io/OutputStream;

    .line 162
    iget-object v4, p0, Lcom/android/dmportread/dmdcmd;->out:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 163
    sget-boolean v4, Lcom/android/dmportread/dmdcmd;->bEncrypt:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/dmportread/dmdcmd;->PrivateKey:Ljava/lang/String;

    invoke-static {v4, p1}, Lcom/android/dmportread/dmdcmd;->DmEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 164
    :cond_1
    iget-object v4, p0, Lcom/android/dmportread/dmdcmd;->out:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    .line 166
    const/16 v4, 0x400

    new-array v2, v4, [B

    .line 167
    .local v2, respond:[B
    iget-object v4, p0, Lcom/android/dmportread/dmdcmd;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, p0, Lcom/android/dmportread/dmdcmd;->in:Ljava/io/InputStream;

    .line 168
    const-string v4, ""

    iput-object v4, p0, Lcom/android/dmportread/dmdcmd;->Result:Ljava/lang/String;

    .line 169
    invoke-direct {p0}, Lcom/android/dmportread/dmdcmd;->readRsponse()V

    .line 170
    sget-boolean v4, Lcom/android/dmportread/dmdcmd;->bEncrypt:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/dmportread/dmdcmd;->PrivateKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/dmportread/dmdcmd;->Result:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/dmportread/dmdcmd;->DmDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 171
    .local v3, result:Ljava/lang/String;
    :goto_0
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 172
    .local v1, idx:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    .line 173
    const/4 v4, 0x0

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 178
    .end local v1           #idx:I
    .end local v2           #respond:[B
    .end local v3           #result:Ljava/lang/String;
    :cond_2
    :goto_1
    return-object v3

    .line 170
    .restart local v2       #respond:[B
    :cond_3
    iget-object v3, p0, Lcom/android/dmportread/dmdcmd;->Result:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    .end local v2           #respond:[B
    :catch_0
    move-exception v0

    .line 176
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "dmdcmd"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendCommand fail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 178
    const/4 v3, 0x0

    goto :goto_1
.end method
