.class public Lcom/htc/omadm/util/Encrypt;
.super Ljava/lang/Object;
.source "Encrypt.java"


# static fields
.field private static final DefaultValue:Ljava/lang/String; = "0"

.field private static final ENCRYPT_ENABLE:Ljava/lang/String; = "ro.omadm.encryptenable"

.field public static PrivateKey:Ljava/lang/String; = null

.field public static PublicEncryptKey:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Encrypt"

.field private static bEncryptEnable:Z

.field public static bPrivateKey:Z

.field private static me:Lcom/htc/omadm/util/Encrypt;


# instance fields
.field private Hostname:Ljava/lang/String;

.field private Port:I

.field private bConn:Z

.field private in:Ljava/io/InputStream;

.field private out:Ljava/io/OutputStream;

.field private requestSocket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/omadm/util/Encrypt;->me:Lcom/htc/omadm/util/Encrypt;

    .line 28
    const-string v0, "0000000000000000"

    sput-object v0, Lcom/htc/omadm/util/Encrypt;->PublicEncryptKey:Ljava/lang/String;

    .line 29
    sput-boolean v1, Lcom/htc/omadm/util/Encrypt;->bPrivateKey:Z

    .line 30
    const-string v0, ""

    sput-object v0, Lcom/htc/omadm/util/Encrypt;->PrivateKey:Ljava/lang/String;

    .line 32
    sput-boolean v1, Lcom/htc/omadm/util/Encrypt;->bEncryptEnable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "127.0.0.1"

    iput-object v0, p0, Lcom/htc/omadm/util/Encrypt;->Hostname:Ljava/lang/String;

    .line 20
    const/16 v0, 0x2606

    iput v0, p0, Lcom/htc/omadm/util/Encrypt;->Port:I

    .line 35
    const-string v0, "Encrypt"

    const-string v1, "Encrypt()"

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-direct {p0}, Lcom/htc/omadm/util/Encrypt;->GetEncryptState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/omadm/util/Encrypt;->bEncryptEnable:Z

    .line 38
    invoke-virtual {p0}, Lcom/htc/omadm/util/Encrypt;->GetPrivateKey()Ljava/lang/String;

    .line 40
    :cond_0
    return-void
.end method

.method private GetEncryptState()Z
    .locals 3

    .prologue
    .line 204
    const-string v1, "ro.omadm.encryptenable"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, mEncryptEnable:Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    const/4 v1, 0x1

    .line 208
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/htc/omadm/util/Encrypt;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/htc/omadm/util/Encrypt;->me:Lcom/htc/omadm/util/Encrypt;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/htc/omadm/util/Encrypt;

    invoke-direct {v0}, Lcom/htc/omadm/util/Encrypt;-><init>()V

    sput-object v0, Lcom/htc/omadm/util/Encrypt;->me:Lcom/htc/omadm/util/Encrypt;

    .line 46
    :cond_0
    sget-object v0, Lcom/htc/omadm/util/Encrypt;->me:Lcom/htc/omadm/util/Encrypt;

    return-object v0
.end method


# virtual methods
.method public Conn()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 169
    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Lcom/htc/omadm/util/Encrypt;->bConn:Z

    .line 171
    new-instance v3, Ljava/net/Socket;

    iget-object v4, p0, Lcom/htc/omadm/util/Encrypt;->Hostname:Ljava/lang/String;

    iget v5, p0, Lcom/htc/omadm/util/Encrypt;->Port:I

    invoke-direct {v3, v4, v5}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/htc/omadm/util/Encrypt;->requestSocket:Ljava/net/Socket;

    .line 172
    iget-object v3, p0, Lcom/htc/omadm/util/Encrypt;->requestSocket:Ljava/net/Socket;

    if-nez v3, :cond_0

    .line 188
    :goto_0
    return v2

    .line 177
    :cond_0
    iget-object v3, p0, Lcom/htc/omadm/util/Encrypt;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/omadm/util/Encrypt;->out:Ljava/io/OutputStream;

    .line 178
    iget-object v3, p0, Lcom/htc/omadm/util/Encrypt;->out:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 180
    iget-object v3, p0, Lcom/htc/omadm/util/Encrypt;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/omadm/util/Encrypt;->in:Ljava/io/InputStream;

    .line 181
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/omadm/util/Encrypt;->bConn:Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 188
    :goto_1
    iget-boolean v2, p0, Lcom/htc/omadm/util/Encrypt;->bConn:Z

    goto :goto_0

    .line 182
    :catch_0
    move-exception v1

    .line 184
    .local v1, unknownHost:Ljava/net/UnknownHostException;
    iput-boolean v2, p0, Lcom/htc/omadm/util/Encrypt;->bConn:Z

    goto :goto_1

    .line 185
    .end local v1           #unknownHost:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v0

    .line 186
    .local v0, ioException:Ljava/io/IOException;
    const-string v2, "Encrypt"

    const-string v3, "IOException."

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public DisConn()V
    .locals 2

    .prologue
    .line 193
    :try_start_0
    iget-object v1, p0, Lcom/htc/omadm/util/Encrypt;->requestSocket:Ljava/net/Socket;

    if-nez v1, :cond_0

    .line 201
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/htc/omadm/util/Encrypt;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 196
    iget-object v1, p0, Lcom/htc/omadm/util/Encrypt;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 197
    iget-object v1, p0, Lcom/htc/omadm/util/Encrypt;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, ioException:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public DmDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "Key"
    .parameter "EncryptText"

    .prologue
    .line 74
    sget-boolean v5, Lcom/htc/omadm/util/Encrypt;->bEncryptEnable:Z

    if-eqz v5, :cond_0

    .line 75
    const/4 v1, 0x0

    .line 77
    .local v1, decrypted:[B
    :try_start_0
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "AES"

    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 78
    .local v4, secret:Ljavax/crypto/spec/SecretKeySpec;
    const-string v5, "AES/ECB/NoPadding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 79
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 80
    const/4 v5, 0x0

    invoke-virtual {p0, p2, v5}, Lcom/htc/omadm/util/Encrypt;->HexToStr(Ljava/lang/String;Z)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 84
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v4           #secret:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    .line 85
    .local v3, response:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 86
    if-nez v3, :cond_1

    .line 87
    const-string p2, ""

    .line 93
    .end local v1           #decrypted:[B
    .end local v3           #response:Ljava/lang/String;
    .end local p2
    :cond_0
    :goto_1
    return-object p2

    .line 81
    .restart local v1       #decrypted:[B
    .restart local p2
    :catch_0
    move-exception v2

    .line 82
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 89
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v3       #response:Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    goto :goto_1
.end method

.method public DmEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "Key"
    .parameter "PlainText"

    .prologue
    const/4 v9, 0x0

    .line 50
    sget-boolean v6, Lcom/htc/omadm/util/Encrypt;->bEncryptEnable:Z

    if-eqz v6, :cond_1

    .line 51
    const/4 v4, 0x0

    .line 52
    .local v4, encrypted:[B
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 53
    .local v1, Length:I
    rem-int/lit8 v6, v1, 0x10

    if-lez v6, :cond_0

    .line 54
    div-int/lit8 v6, v1, 0x10

    add-int/lit8 v6, v6, 0x1

    mul-int/lit8 v1, v6, 0x10

    .line 55
    :cond_0
    const-string v6, "Encrypt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Length:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-array v0, v1, [B

    .line 57
    .local v0, Buffer:[B
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v6, v9, v0, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    :try_start_0
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const-string v7, "AES"

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 61
    .local v5, secret:Ljavax/crypto/spec/SecretKeySpec;
    const-string v6, "AES/ECB/NoPadding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 62
    .local v2, cipher:Ljavax/crypto/Cipher;
    const/4 v6, 0x1

    invoke-virtual {v2, v6, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 63
    invoke-virtual {v2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 67
    .end local v2           #cipher:Ljavax/crypto/Cipher;
    .end local v5           #secret:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    invoke-virtual {p0, v4}, Lcom/htc/omadm/util/Encrypt;->StrToHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    .line 69
    .end local v0           #Buffer:[B
    .end local v1           #Length:I
    .end local v4           #encrypted:[B
    .end local p2
    :cond_1
    return-object p2

    .line 64
    .restart local v0       #Buffer:[B
    .restart local v1       #Length:I
    .restart local v4       #encrypted:[B
    .restart local p2
    :catch_0
    move-exception v3

    .line 65
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public GetPrivateKey()Ljava/lang/String;
    .locals 10

    .prologue
    const/16 v9, 0x200

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 124
    const-string v5, "Encrypt"

    const-string v6, "GetPrivateKey()"

    invoke-static {v5, v6}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-array v1, v9, [B

    .line 127
    .local v1, cmdsend:[B
    new-array v0, v9, [B

    .line 129
    .local v0, cmdresp:[B
    sget-boolean v5, Lcom/htc/omadm/util/Encrypt;->bPrivateKey:Z

    if-eqz v5, :cond_1

    .line 130
    invoke-virtual {p0}, Lcom/htc/omadm/util/Encrypt;->DisConn()V

    .line 131
    sget-object v4, Lcom/htc/omadm/util/Encrypt;->PrivateKey:Ljava/lang/String;

    .line 164
    :cond_0
    :goto_0
    return-object v4

    .line 134
    :cond_1
    const/16 v5, 0x77

    aput-byte v5, v1, v8

    .line 135
    aput-byte v8, v1, v7

    .line 136
    invoke-virtual {p0}, Lcom/htc/omadm/util/Encrypt;->Conn()Z

    move-result v5

    if-ne v5, v7, :cond_0

    .line 137
    iget-boolean v5, p0, Lcom/htc/omadm/util/Encrypt;->bConn:Z

    if-nez v5, :cond_2

    .line 138
    invoke-virtual {p0}, Lcom/htc/omadm/util/Encrypt;->DisConn()V

    goto :goto_0

    .line 143
    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/htc/omadm/util/Encrypt;->out:Ljava/io/OutputStream;

    invoke-virtual {v5, v1}, Ljava/io/OutputStream;->write([B)V

    .line 144
    iget-object v5, p0, Lcom/htc/omadm/util/Encrypt;->out:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 145
    iget-object v5, p0, Lcom/htc/omadm/util/Encrypt;->in:Ljava/io/InputStream;

    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_1
    iget-boolean v5, p0, Lcom/htc/omadm/util/Encrypt;->bConn:Z

    if-ne v5, v7, :cond_3

    .line 153
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 154
    .local v3, result:Ljava/lang/String;
    sget-object v4, Lcom/htc/omadm/util/Encrypt;->PublicEncryptKey:Ljava/lang/String;

    invoke-virtual {p0, v4, v3}, Lcom/htc/omadm/util/Encrypt;->DmDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/htc/omadm/util/Encrypt;->PrivateKey:Ljava/lang/String;

    .line 155
    sput-boolean v7, Lcom/htc/omadm/util/Encrypt;->bPrivateKey:Z

    .line 156
    invoke-virtual {p0}, Lcom/htc/omadm/util/Encrypt;->DisConn()V

    .line 157
    sget-object v4, Lcom/htc/omadm/util/Encrypt;->PrivateKey:Ljava/lang/String;

    goto :goto_0

    .line 146
    .end local v3           #result:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 147
    .local v2, ioException:Ljava/io/IOException;
    const-string v5, "Encrypt"

    const-string v6, "IOException."

    invoke-static {v5, v6}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iput-boolean v8, p0, Lcom/htc/omadm/util/Encrypt;->bConn:Z

    .line 149
    invoke-virtual {p0}, Lcom/htc/omadm/util/Encrypt;->DisConn()V

    goto :goto_1

    .line 159
    .end local v2           #ioException:Ljava/io/IOException;
    :cond_3
    sput-boolean v7, Lcom/htc/omadm/util/Encrypt;->bPrivateKey:Z

    .line 160
    invoke-virtual {p0}, Lcom/htc/omadm/util/Encrypt;->DisConn()V

    goto :goto_0
.end method

.method public HexToStr(Ljava/lang/String;Z)[B
    .locals 7
    .parameter "input"
    .parameter "lowercase"

    .prologue
    .line 99
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0123456789"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez p2, :cond_0

    const-string v5, "ABCDEF"

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, digital:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 101
    .local v2, hex2char:[C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    new-array v0, v5, [B

    .line 103
    .local v0, bytes:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_1

    .line 104
    mul-int/lit8 v5, v3, 0x2

    aget-char v5, v2, v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    mul-int/lit8 v4, v5, 0x10

    .line 105
    .local v4, temp:I
    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-char v5, v2, v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 106
    and-int/lit16 v5, v4, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    .line 103
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 99
    .end local v0           #bytes:[B
    .end local v1           #digital:Ljava/lang/String;
    .end local v2           #hex2char:[C
    .end local v3           #i:I
    .end local v4           #temp:I
    :cond_0
    const-string v5, "abcdef"

    goto :goto_0

    .line 108
    .restart local v0       #bytes:[B
    .restart local v1       #digital:Ljava/lang/String;
    .restart local v2       #hex2char:[C
    .restart local v3       #i:I
    :cond_1
    return-object v0
.end method

.method public StrToHex([B)Ljava/lang/String;
    .locals 6
    .parameter "bytes"

    .prologue
    const/4 v5, 0x1

    .line 112
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 113
    .local v1, rslt:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_2

    .line 114
    aget-byte v3, p1, v0

    if-ltz v3, :cond_1

    aget-byte v3, p1, v0

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 117
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 118
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    .end local v2           #s:Ljava/lang/String;
    :cond_1
    aget-byte v3, p1, v0

    add-int/lit16 v3, v3, 0x100

    goto :goto_1

    .line 120
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
