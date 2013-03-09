.class public Lcom/htc/net/wimax/dm/Encrypt;
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

.field private static me:Lcom/htc/net/wimax/dm/Encrypt;


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

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/net/wimax/dm/Encrypt;->me:Lcom/htc/net/wimax/dm/Encrypt;

    const-string v0, "0000000000000000"

    sput-object v0, Lcom/htc/net/wimax/dm/Encrypt;->PublicEncryptKey:Ljava/lang/String;

    sput-boolean v1, Lcom/htc/net/wimax/dm/Encrypt;->bPrivateKey:Z

    const-string v0, ""

    sput-object v0, Lcom/htc/net/wimax/dm/Encrypt;->PrivateKey:Ljava/lang/String;

    sput-boolean v1, Lcom/htc/net/wimax/dm/Encrypt;->bEncryptEnable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "127.0.0.1"

    iput-object v0, p0, Lcom/htc/net/wimax/dm/Encrypt;->Hostname:Ljava/lang/String;

    const/16 v0, 0x2606

    iput v0, p0, Lcom/htc/net/wimax/dm/Encrypt;->Port:I

    const-string v0, "Encrypt"

    const-string v1, "Encrypt()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/htc/net/wimax/dm/Encrypt;->GetEncryptState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/net/wimax/dm/Encrypt;->bEncryptEnable:Z

    invoke-virtual {p0}, Lcom/htc/net/wimax/dm/Encrypt;->GetPrivateKey()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private GetEncryptState()Z
    .locals 3

    const-string v1, "ro.omadm.encryptenable"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/htc/net/wimax/dm/Encrypt;
    .locals 1

    sget-object v0, Lcom/htc/net/wimax/dm/Encrypt;->me:Lcom/htc/net/wimax/dm/Encrypt;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/net/wimax/dm/Encrypt;

    invoke-direct {v0}, Lcom/htc/net/wimax/dm/Encrypt;-><init>()V

    sput-object v0, Lcom/htc/net/wimax/dm/Encrypt;->me:Lcom/htc/net/wimax/dm/Encrypt;

    :cond_0
    sget-object v0, Lcom/htc/net/wimax/dm/Encrypt;->me:Lcom/htc/net/wimax/dm/Encrypt;

    return-object v0
.end method


# virtual methods
.method public Conn()Z
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Lcom/htc/net/wimax/dm/Encrypt;->bConn:Z

    new-instance v3, Ljava/net/Socket;

    iget-object v4, p0, Lcom/htc/net/wimax/dm/Encrypt;->Hostname:Ljava/lang/String;

    iget v5, p0, Lcom/htc/net/wimax/dm/Encrypt;->Port:I

    invoke-direct {v3, v4, v5}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/htc/net/wimax/dm/Encrypt;->requestSocket:Ljava/net/Socket;

    iget-object v3, p0, Lcom/htc/net/wimax/dm/Encrypt;->requestSocket:Ljava/net/Socket;

    if-nez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v3, p0, Lcom/htc/net/wimax/dm/Encrypt;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/net/wimax/dm/Encrypt;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/htc/net/wimax/dm/Encrypt;->out:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    iget-object v3, p0, Lcom/htc/net/wimax/dm/Encrypt;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/net/wimax/dm/Encrypt;->in:Ljava/io/InputStream;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/net/wimax/dm/Encrypt;->bConn:Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    iget-boolean v2, p0, Lcom/htc/net/wimax/dm/Encrypt;->bConn:Z

    goto :goto_0

    :catch_0
    move-exception v1

    iput-boolean v2, p0, Lcom/htc/net/wimax/dm/Encrypt;->bConn:Z

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "Encrypt"

    const-string v3, "IOException."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public DisConn()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/dm/Encrypt;->requestSocket:Ljava/net/Socket;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/net/wimax/dm/Encrypt;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    iget-object v1, p0, Lcom/htc/net/wimax/dm/Encrypt;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    iget-object v1, p0, Lcom/htc/net/wimax/dm/Encrypt;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public DmDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    sget-boolean v5, Lcom/htc/net/wimax/dm/Encrypt;->bEncryptEnable:Z

    if-eqz v5, :cond_0

    const/4 v1, 0x0

    :try_start_0
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "AES"

    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v5, "AES/ECB/NoPadding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const/4 v5, 0x0

    invoke-virtual {p0, p2, v5}, Lcom/htc/net/wimax/dm/Encrypt;->HexToStr(Ljava/lang/String;Z)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string p2, ""

    :cond_0
    :goto_1
    return-object p2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    goto :goto_1
.end method

.method public DmEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x0

    sget-boolean v6, Lcom/htc/net/wimax/dm/Encrypt;->bEncryptEnable:Z

    if-eqz v6, :cond_1

    const/4 v4, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v6, v1, 0x10

    if-lez v6, :cond_0

    div-int/lit8 v6, v1, 0x10

    add-int/lit8 v6, v6, 0x1

    mul-int/lit8 v1, v6, 0x10

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

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v1, [B

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v6, v9, v0, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_0
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const-string v7, "AES"

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v6, "AES/ECB/NoPadding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v6, 0x1

    invoke-virtual {v2, v6, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    invoke-virtual {p0, v4}, Lcom/htc/net/wimax/dm/Encrypt;->StrToHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    :cond_1
    return-object p2

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public GetPrivateKey()Ljava/lang/String;
    .locals 10

    const/16 v9, 0x200

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v5, "Encrypt"

    const-string v6, "GetPrivateKey()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v9, [B

    new-array v0, v9, [B

    sget-boolean v5, Lcom/htc/net/wimax/dm/Encrypt;->bPrivateKey:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/htc/net/wimax/dm/Encrypt;->DisConn()V

    sget-object v4, Lcom/htc/net/wimax/dm/Encrypt;->PrivateKey:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    const/16 v5, 0x77

    aput-byte v5, v1, v8

    aput-byte v8, v1, v7

    invoke-virtual {p0}, Lcom/htc/net/wimax/dm/Encrypt;->Conn()Z

    move-result v5

    if-ne v5, v7, :cond_0

    iget-boolean v5, p0, Lcom/htc/net/wimax/dm/Encrypt;->bConn:Z

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/htc/net/wimax/dm/Encrypt;->DisConn()V

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/htc/net/wimax/dm/Encrypt;->out:Ljava/io/OutputStream;

    invoke-virtual {v5, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v5, p0, Lcom/htc/net/wimax/dm/Encrypt;->out:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    iget-object v5, p0, Lcom/htc/net/wimax/dm/Encrypt;->in:Ljava/io/InputStream;

    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-boolean v5, p0, Lcom/htc/net/wimax/dm/Encrypt;->bConn:Z

    if-ne v5, v7, :cond_3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/htc/net/wimax/dm/Encrypt;->PublicEncryptKey:Ljava/lang/String;

    invoke-virtual {p0, v4, v3}, Lcom/htc/net/wimax/dm/Encrypt;->DmDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/htc/net/wimax/dm/Encrypt;->PrivateKey:Ljava/lang/String;

    sput-boolean v7, Lcom/htc/net/wimax/dm/Encrypt;->bPrivateKey:Z

    invoke-virtual {p0}, Lcom/htc/net/wimax/dm/Encrypt;->DisConn()V

    sget-object v4, Lcom/htc/net/wimax/dm/Encrypt;->PrivateKey:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v5, "Encrypt"

    const-string v6, "IOException."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v8, p0, Lcom/htc/net/wimax/dm/Encrypt;->bConn:Z

    invoke-virtual {p0}, Lcom/htc/net/wimax/dm/Encrypt;->DisConn()V

    goto :goto_1

    :cond_3
    sput-boolean v7, Lcom/htc/net/wimax/dm/Encrypt;->bPrivateKey:Z

    invoke-virtual {p0}, Lcom/htc/net/wimax/dm/Encrypt;->DisConn()V

    goto :goto_0
.end method

.method public HexToStr(Ljava/lang/String;Z)[B
    .locals 7

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

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    new-array v0, v5, [B

    const/4 v3, 0x0

    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_1

    mul-int/lit8 v5, v3, 0x2

    aget-char v5, v2, v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    mul-int/lit8 v4, v5, 0x10

    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-char v5, v2, v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v4, v5

    and-int/lit16 v5, v4, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    const-string v5, "abcdef"

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public StrToHex([B)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_2

    aget-byte v3, p1, v0

    if-ltz v3, :cond_1

    aget-byte v3, p1, v0

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aget-byte v3, p1, v0

    add-int/lit16 v3, v3, 0x100

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
