.class Lcom/redbend/vdm/comm/VdmRawConnection;
.super Ljava/lang/Object;
.source "VdmRawConnection.java"

# interfaces
.implements Lcom/redbend/vdm/comm/CommRawConnection;


# static fields
.field private static final DEAFULT_HTTPS_PORT:I = 0x1bb

.field private static final DEAFULT_HTTP_PORT:I = 0x50

.field protected static final SOCKET_TIMEOUT:I = 0x1e

.field private static _certPath:Ljava/lang/String;


# instance fields
.field private _conn:Ljava/net/Socket;

.field private _in:Ljava/io/DataInputStream;

.field private _out:Ljava/io/DataOutputStream;

.field private _proxy:Ljava/lang/String;

.field private _proxyAuthLevel:Lcom/redbend/vdm/comm/CommHttpAuth$Level;

.field private _proxyUsernamePassword:Ljava/lang/String;

.field private _timeout:I

.field private _userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x0

    sput-object v0, Lcom/redbend/vdm/comm/VdmRawConnection;->_certPath:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-object v1, p0, Lcom/redbend/vdm/comm/VdmRawConnection;->_proxy:Ljava/lang/String;

    .line 255
    iput-object v1, p0, Lcom/redbend/vdm/comm/VdmRawConnection;->_userAgent:Ljava/lang/String;

    .line 256
    sget-object v0, Lcom/redbend/vdm/comm/CommHttpAuth$Level;->NONE:Lcom/redbend/vdm/comm/CommHttpAuth$Level;

    iput-object v0, p0, Lcom/redbend/vdm/comm/VdmRawConnection;->_proxyAuthLevel:Lcom/redbend/vdm/comm/CommHttpAuth$Level;

    .line 257
    iput-object v1, p0, Lcom/redbend/vdm/comm/VdmRawConnection;->_proxyUsernamePassword:Ljava/lang/String;

    .line 258
    iput-object v1, p0, Lcom/redbend/vdm/comm/VdmRawConnection;->_conn:Ljava/net/Socket;

    .line 259
    iput-object v1, p0, Lcom/redbend/vdm/comm/VdmRawConnection;->_in:Ljava/io/DataInputStream;

    .line 260
    iput-object v1, p0, Lcom/redbend/vdm/comm/VdmRawConnection;->_out:Ljava/io/DataOutputStream;

    return-void
.end method

.method public static setCertificatePath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 251
    sput-object p0, Lcom/redbend/vdm/comm/VdmRawConnection;->_certPath:Ljava/lang/String;

    .line 252
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 227
    :try_start_0
    iget-object v1, p0, Lcom/redbend/vdm/comm/VdmRawConnection;->_in:Ljava/io/DataInputStream;

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/redbend/vdm/comm/VdmRawConnection;->_in:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 230
    :cond_0
    iget-object v1, p0, Lcom/redbend/vdm/comm/VdmRawConnection;->_out:Ljava/io/DataOutputStream;

    if-eqz v1, :cond_1

    .line 231
    iget-object v1, p0, Lcom/redbend/vdm/comm/VdmRawConnection;->_out:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 233
    :cond_1
    iget-object v1, p0, Lcom/redbend/vdm/comm/VdmRawConnection;->_conn:Ljava/net/Socket;

    if-eqz v1, :cond_2

    .line 234
    iget-object v1, p0, Lcom/redbend/vdm/comm/VdmRawConnection;->_conn:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :cond_2
    :goto_0
    return-void

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, e:Ljava/io/IOException;
    const-string v1, "vDM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RawConnection#close: Caught IOException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public init(Ljava/lang/String;Lcom/redbend/vdm/comm/CommHttpAuth$Level;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "proxy"
    .parameter "proxyAuthLevel"
    .parameter "proxyUsernamePassword"
    .parameter "userAgent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/comm/VdmCommException;
        }
    .end annotation

    .prologue
    .line 36
    if-eqz p1, :cond_0

    .line 37
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/redbend/vdm/comm/VdmRawConnection;->_proxy:Ljava/lang/String;

    .line 40
    :cond_0
    if-eqz p4, :cond_2

    .line 41
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/redbend/vdm/comm/VdmRawConnection;->_userAgent:Ljava/lang/String;

    .line 47
    :goto_0
    if-eqz p2, :cond_1

    .line 48
    iput-object p2, p0, Lcom/redbend/vdm/comm/VdmRawConnection;->_proxyAuthLevel:Lcom/redbend/vdm/comm/CommHttpAuth$Level;

    .line 51
    :cond_1
    if-eqz p3, :cond_3

    .line 52
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/redbend/vdm/comm/VdmRawConnection;->_proxyUsernamePassword:Ljava/lang/String;

    .line 59
    :goto_1
    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/redbend/vdm/comm/VdmRawConnection;->setConnectionTimeout(I)V

    .line 60
    return-void

    .line 44
    :cond_2
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/redbend/vdm/comm/VdmRawConnection;->_userAgent:Ljava/lang/String;

    goto :goto_0

    .line 55
    :cond_3
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/redbend/vdm/comm/VdmRawConnection;->_proxyUsernamePassword:Ljava/lang/String;

    goto :goto_1
.end method

.method public open(Ljava/lang/String;)V
    .locals 26
    .parameter "inUrl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/comm/VdmCommException;
        }
    .end annotation

    .prologue
    .line 63
    const/16 v22, 0x0

    .line 64
    .local v22, urlProxy:Ljava/net/URL;
    const/16 v24, 0x0

    .line 65
    .local v24, urlhost:Ljava/net/URL;
    new-instance v4, Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 68
    .local v4, proxyPortStr:Ljava/lang/String;
    :try_start_0
    new-instance v25, Ljava/net/URL;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_15
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b

    .line 69
    .end local v24           #urlhost:Ljava/net/URL;
    .local v25, urlhost:Ljava/net/URL;
    :try_start_1
    invoke-virtual/range {v25 .. v25}, Ljava/net/URL;->getPort()I

    move-result v18

    .line 71
    .local v18, port:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/redbend/vdm/comm/VdmRawConnection;->_proxy:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 72
    new-instance v23, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/redbend/vdm/comm/VdmRawConnection;->_proxy:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    .line 73
    .end local v22           #urlProxy:Ljava/net/URL;
    .local v23, urlProxy:Ljava/net/URL;
    :try_start_2
    invoke-virtual/range {v23 .. v23}, Ljava/net/URL;->getPort()I

    move-result v20

    .line 74
    .local v20, proxyPort:I
    const/4 v3, -0x1

    move/from16 v0, v20

    if-ne v0, v3, :cond_0

    .line 75
    new-instance v3, Lcom/redbend/vdm/comm/VdmCommException;

    sget-object v5, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->BAD_URL:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    iget v5, v5, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->val:I

    invoke-direct {v3, v5}, Lcom/redbend/vdm/comm/VdmCommException;-><init>(I)V

    throw v3
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c

    .line 168
    .end local v20           #proxyPort:I
    :catch_0
    move-exception v13

    move-object/from16 v24, v25

    .end local v25           #urlhost:Ljava/net/URL;
    .restart local v24       #urlhost:Ljava/net/URL;
    move-object/from16 v22, v23

    .line 169
    .end local v18           #port:I
    .end local v23           #urlProxy:Ljava/net/URL;
    .local v13, e:Ljava/net/SocketException;
    .restart local v22       #urlProxy:Ljava/net/URL;
    :goto_0
    const-string v3, "vDM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VdmRawConnection#open: SocketException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-instance v3, Lcom/redbend/vdm/comm/VdmCommException;

    sget-object v5, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->COMMS_SOCKET_ERROR:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    iget v5, v5, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->val:I

    invoke-direct {v3, v5}, Lcom/redbend/vdm/comm/VdmCommException;-><init>(I)V

    throw v3

    .line 77
    .end local v13           #e:Ljava/net/SocketException;
    .end local v22           #urlProxy:Ljava/net/URL;
    .end local v24           #urlhost:Ljava/net/URL;
    .restart local v18       #port:I
    .restart local v20       #proxyPort:I
    .restart local v23       #urlProxy:Ljava/net/URL;
    .restart local v25       #urlhost:Ljava/net/URL;
    :cond_0
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_12
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c

    move-result-object v4

    move-object/from16 v22, v23

    .line 80
    .end local v20           #proxyPort:I
    .end local v23           #urlProxy:Ljava/net/URL;
    .restart local v22       #urlProxy:Ljava/net/URL;
    :cond_1
    :try_start_4
    invoke-virtual/range {v25 .. v25}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v19

    .line 81
    .local v19, protocol:Ljava/lang/String;
    if-eqz v19, :cond_2

    const-string v3, "https"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "http"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 83
    :cond_2
    new-instance v3, Lcom/redbend/vdm/comm/VdmCommException;

    sget-object v5, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->COMMS_BAD_PROTOCOL:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    iget v5, v5, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->val:I

    invoke-direct {v3, v5}, Lcom/redbend/vdm/comm/VdmCommException;-><init>(I)V

    throw v3

    .line 168
    .end local v18           #port:I
    .end local v19           #protocol:Ljava/lang/String;
    :catch_1
    move-exception v13

    move-object/from16 v24, v25

    .end local v25           #urlhost:Ljava/net/URL;
    .restart local v24       #urlhost:Ljava/net/URL;
    goto :goto_0

    .line 86
    .end local v24           #urlhost:Ljava/net/URL;
    .restart local v18       #port:I
    .restart local v19       #protocol:Ljava/lang/String;
    .restart local v25       #urlhost:Ljava/net/URL;
    :cond_3
    const-string v3, "https"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 87
    const/4 v3, -0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_4

    .line 88
    const/16 v18, 0x1bb

    .line 90
    :cond_4
    const/4 v9, 0x0

    .line 91
    .local v9, sf:Ljavax/net/ssl/SSLSocketFactory;
    sget-object v3, Lcom/redbend/vdm/comm/VdmRawConnection;->_certPath:Ljava/lang/String;
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a

    if-eqz v3, :cond_5

    .line 95
    :try_start_5
    const-string v3, "BKS"

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v17

    .line 96
    .local v17, ks:Ljava/security/KeyStore;
    new-instance v16, Ljava/io/FileInputStream;

    sget-object v3, Lcom/redbend/vdm/comm/VdmRawConnection;->_certPath:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 98
    .local v16, is:Ljava/io/InputStream;
    const/4 v3, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 100
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v21

    .line 102
    .local v21, tmf:Ljavax/net/ssl/TrustManagerFactory;
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 103
    const-string v3, "TLS"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v12

    .line 104
    .local v12, ctx:Ljavax/net/ssl/SSLContext;
    const/4 v3, 0x0

    invoke-virtual/range {v21 .. v21}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v12, v3, v5, v6}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 105
    invoke-virtual {v12}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_5
    .catch Ljava/security/KeyStoreException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/security/KeyManagementException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a

    move-result-object v9

    .line 120
    .end local v12           #ctx:Ljavax/net/ssl/SSLContext;
    .end local v16           #is:Ljava/io/InputStream;
    .end local v17           #ks:Ljava/security/KeyStore;
    .end local v21           #tmf:Ljavax/net/ssl/TrustManagerFactory;
    :cond_5
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/redbend/vdm/comm/VdmRawConnection;->_proxy:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 121
    invoke-virtual/range {v25 .. v25}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v14

    check-cast v14, Ljavax/net/ssl/HttpsURLConnection;

    .line 122
    .local v14, httpConn:Ljavax/net/ssl/HttpsURLConnection;
    new-instance v3, Lcom/redbend/vdm/comm/VdmHostnameVerifier;

    invoke-direct {v3}, Lcom/redbend/vdm/comm/VdmHostnameVerifier;-><init>()V

    invoke-virtual {v14, v3}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 123
    if-nez v9, :cond_6

    .line 125
    invoke-virtual {v14}, Ljavax/net/ssl/HttpsURLConnection;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v9

    .line 127
    :cond_6
    invoke-virtual {v9}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/redbend/vdm/comm/VdmRawConnection;->_conn:Ljava/net/Socket;

    .line 128
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/redbend/vdm/comm/VdmRawConnection;->_conn:Ljava/net/Socket;

    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-virtual/range {v25 .. v25}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    move/from16 v0, v18

    invoke-direct {v5, v6, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget v6, v0, Lcom/redbend/vdm/comm/VdmRawConnection;->_timeout:I

    invoke-virtual {v3, v5, v6}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 162
    .end local v9           #sf:Ljavax/net/ssl/SSLSocketFactory;
    .end local v14           #httpConn:Ljavax/net/ssl/HttpsURLConnection;
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/redbend/vdm/comm/VdmRawConnection;->_conn:Ljava/net/Socket;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 163
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/redbend/vdm/comm/VdmRawConnection;->_conn:Ljava/net/Socket;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/redbend/vdm/comm/VdmRawConnection;->_timeout:I

    invoke-virtual {v3, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 165
    new-instance v3, Ljava/io/DataOutputStream;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/redbend/vdm/comm/VdmRawConnection;->_conn:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/redbend/vdm/comm/VdmRawConnection;->_out:Ljava/io/DataOutputStream;

    .line 166
    new-instance v3, Ljava/io/DataInputStream;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/redbend/vdm/comm/VdmRawConnection;->_conn:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/redbend/vdm/comm/VdmRawConnection;->_in:Ljava/io/DataInputStream;

    .line 187
    return-void

    .line 106
    .restart local v9       #sf:Ljavax/net/ssl/SSLSocketFactory;
    :catch_2
    move-exception v13

    .line 107
    .local v13, e:Ljava/security/KeyStoreException;
    const-string v3, "vDM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VdmRawConnection#open: KeyStoreException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v3, Lcom/redbend/vdm/comm/VdmCommException;

    sget-object v5, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->COMMS_FATAL:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    iget v5, v5, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->val:I

    invoke-direct {v3, v5}, Lcom/redbend/vdm/comm/VdmCommException;-><init>(I)V

    throw v3
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a

    .line 171
    .end local v9           #sf:Ljavax/net/ssl/SSLSocketFactory;
    .end local v13           #e:Ljava/security/KeyStoreException;
    .end local v18           #port:I
    .end local v19           #protocol:Ljava/lang/String;
    :catch_3
    move-exception v13

    move-object/from16 v24, v25

    .line 172
    .end local v25           #urlhost:Ljava/net/URL;
    .local v13, e:Ljava/net/SocketTimeoutException;
    .restart local v24       #urlhost:Ljava/net/URL;
    :goto_2
    const-string v3, "vDM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VdmRawConnection#open: SocketTimeoutException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance v3, Lcom/redbend/vdm/comm/VdmCommException;

    sget-object v5, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->COMMS_SOCKET_TIMEOUT:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    iget v5, v5, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->val:I

    invoke-direct {v3, v5}, Lcom/redbend/vdm/comm/VdmCommException;-><init>(I)V

    throw v3

    .line 109
    .end local v13           #e:Ljava/net/SocketTimeoutException;
    .end local v24           #urlhost:Ljava/net/URL;
    .restart local v9       #sf:Ljavax/net/ssl/SSLSocketFactory;
    .restart local v18       #port:I
    .restart local v19       #protocol:Ljava/lang/String;
    .restart local v25       #urlhost:Ljava/net/URL;
    :catch_4
    move-exception v13

    .line 110
    .local v13, e:Ljava/security/NoSuchAlgorithmException;
    :try_start_7
    const-string v3, "vDM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VdmRawConnection#open: NoSuchAlgorithmException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v3, Lcom/redbend/vdm/comm/VdmCommException;

    sget-object v5, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->COMMS_FATAL:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    iget v5, v5, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->val:I

    invoke-direct {v3, v5}, Lcom/redbend/vdm/comm/VdmCommException;-><init>(I)V

    throw v3
    :try_end_7
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a

    .line 174
    .end local v9           #sf:Ljavax/net/ssl/SSLSocketFactory;
    .end local v13           #e:Ljava/security/NoSuchAlgorithmException;
    .end local v18           #port:I
    .end local v19           #protocol:Ljava/lang/String;
    :catch_5
    move-exception v13

    move-object/from16 v24, v25

    .line 175
    .end local v25           #urlhost:Ljava/net/URL;
    .local v13, e:Ljava/lang/IllegalArgumentException;
    .restart local v24       #urlhost:Ljava/net/URL;
    :goto_3
    const-string v3, "vDM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VdmRawConnection#open: IllegalArgumentException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance v3, Lcom/redbend/vdm/comm/VdmCommException;

    sget-object v5, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->BAD_URL:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    iget v5, v5, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->val:I

    invoke-direct {v3, v5}, Lcom/redbend/vdm/comm/VdmCommException;-><init>(I)V

    throw v3

    .line 112
    .end local v13           #e:Ljava/lang/IllegalArgumentException;
    .end local v24           #urlhost:Ljava/net/URL;
    .restart local v9       #sf:Ljavax/net/ssl/SSLSocketFactory;
    .restart local v18       #port:I
    .restart local v19       #protocol:Ljava/lang/String;
    .restart local v25       #urlhost:Ljava/net/URL;
    :catch_6
    move-exception v13

    .line 113
    .local v13, e:Ljava/security/KeyManagementException;
    :try_start_8
    const-string v3, "vDM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VdmRawConnection#open: KeyManagementException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Ljava/security/KeyManagementException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v3, Lcom/redbend/vdm/comm/VdmCommException;

    sget-object v5, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->COMMS_FATAL:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    iget v5, v5, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->val:I

    invoke-direct {v3, v5}, Lcom/redbend/vdm/comm/VdmCommException;-><init>(I)V

    throw v3
    :try_end_8
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a

    .line 177
    .end local v9           #sf:Ljavax/net/ssl/SSLSocketFactory;
    .end local v13           #e:Ljava/security/KeyManagementException;
    .end local v18           #port:I
    .end local v19           #protocol:Ljava/lang/String;
    :catch_7
    move-exception v13

    move-object/from16 v24, v25

    .line 178
    .end local v25           #urlhost:Ljava/net/URL;
    .local v13, e:Ljava/net/MalformedURLException;
    .restart local v24       #urlhost:Ljava/net/URL;
    :goto_4
    const-string v3, "vDM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VdmRawConnection#open: MalformedURLException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-instance v3, Lcom/redbend/vdm/comm/VdmCommException;

    sget-object v5, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->BAD_URL:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    iget v5, v5, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->val:I

    invoke-direct {v3, v5}, Lcom/redbend/vdm/comm/VdmCommException;-><init>(I)V

    throw v3

    .line 115
    .end local v13           #e:Ljava/net/MalformedURLException;
    .end local v24           #urlhost:Ljava/net/URL;
    .restart local v9       #sf:Ljavax/net/ssl/SSLSocketFactory;
    .restart local v18       #port:I
    .restart local v19       #protocol:Ljava/lang/String;
    .restart local v25       #urlhost:Ljava/net/URL;
    :catch_8
    move-exception v13

    .line 116
    .local v13, e:Ljava/security/cert/CertificateException;
    :try_start_9
    const-string v3, "vDM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VdmRawConnection#open: CertificateException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v3, Lcom/redbend/vdm/comm/VdmCommException;

    sget-object v5, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->INVALID_INPUT_PARAM:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    iget v5, v5, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->val:I

    invoke-direct {v3, v5}, Lcom/redbend/vdm/comm/VdmCommException;-><init>(I)V

    throw v3
    :try_end_9
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    .line 180
    .end local v9           #sf:Ljavax/net/ssl/SSLSocketFactory;
    .end local v13           #e:Ljava/security/cert/CertificateException;
    .end local v18           #port:I
    .end local v19           #protocol:Ljava/lang/String;
    :catch_9
    move-exception v13

    move-object/from16 v24, v25

    .line 181
    .end local v25           #urlhost:Ljava/net/URL;
    .local v13, e:Ljava/net/UnknownHostException;
    .restart local v24       #urlhost:Ljava/net/URL;
    :goto_5
    const-string v3, "vDM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VdmRawConnection#open: UnknownHostException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    new-instance v3, Lcom/redbend/vdm/comm/VdmCommException;

    sget-object v5, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->BAD_URL:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    iget v5, v5, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->val:I

    invoke-direct {v3, v5}, Lcom/redbend/vdm/comm/VdmCommException;-><init>(I)V

    throw v3

    .line 131
    .end local v13           #e:Ljava/net/UnknownHostException;
    .end local v24           #urlhost:Ljava/net/URL;
    .restart local v9       #sf:Ljavax/net/ssl/SSLSocketFactory;
    .restart local v18       #port:I
    .restart local v19       #protocol:Ljava/lang/String;
    .restart local v25       #urlhost:Ljava/net/URL;
    :cond_7
    :try_start_a
    invoke-virtual/range {v25 .. v25}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v15

    check-cast v15, Ljavax/net/ssl/HttpsURLConnection;

    .line 132
    .local v15, httpsConn:Ljavax/net/ssl/HttpsURLConnection;
    new-instance v3, Lcom/redbend/vdm/comm/VdmHostnameVerifier;

    invoke-direct {v3}, Lcom/redbend/vdm/comm/VdmHostnameVerifier;-><init>()V

    invoke-virtual {v15, v3}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 133
    new-instance v2, Lcom/redbend/vdm/comm/SSLTunnelSocketFactory;

    invoke-virtual/range {v22 .. v22}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/redbend/vdm/comm/VdmRawConnection;->_proxyAuthLevel:Lcom/redbend/vdm/comm/CommHttpAuth$Level;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/redbend/vdm/comm/VdmRawConnection;->_proxyUsernamePassword:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/redbend/vdm/comm/VdmRawConnection;->_userAgent:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/redbend/vdm/comm/VdmRawConnection;->_timeout:I

    invoke-direct/range {v2 .. v9}, Lcom/redbend/vdm/comm/SSLTunnelSocketFactory;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/redbend/vdm/comm/CommHttpAuth$Level;Ljava/lang/String;Ljava/lang/String;ILjavax/net/ssl/SSLSocketFactory;)V

    .line 140
    .local v2, tsf:Lcom/redbend/vdm/comm/SSLTunnelSocketFactory;
    invoke-virtual {v15, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 141
    invoke-virtual/range {v25 .. v25}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Lcom/redbend/vdm/comm/SSLTunnelSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/redbend/vdm/comm/VdmRawConnection;->_conn:Ljava/net/Socket;
    :try_end_a
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    goto/16 :goto_1

    .line 183
    .end local v2           #tsf:Lcom/redbend/vdm/comm/SSLTunnelSocketFactory;
    .end local v9           #sf:Ljavax/net/ssl/SSLSocketFactory;
    .end local v15           #httpsConn:Ljavax/net/ssl/HttpsURLConnection;
    .end local v18           #port:I
    .end local v19           #protocol:Ljava/lang/String;
    :catch_a
    move-exception v13

    move-object/from16 v24, v25

    .line 184
    .end local v25           #urlhost:Ljava/net/URL;
    .local v13, e:Ljava/io/IOException;
    .restart local v24       #urlhost:Ljava/net/URL;
    :goto_6
    const-string v3, "vDM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VdmRawConnection#open: IOException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance v3, Lcom/redbend/vdm/comm/VdmCommException;

    sget-object v5, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->COMMS_SOCKET_ERROR:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    iget v5, v5, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->val:I

    invoke-direct {v3, v5}, Lcom/redbend/vdm/comm/VdmCommException;-><init>(I)V

    throw v3

    .line 145
    .end local v13           #e:Ljava/io/IOException;
    .end local v24           #urlhost:Ljava/net/URL;
    .restart local v18       #port:I
    .restart local v19       #protocol:Ljava/lang/String;
    .restart local v25       #urlhost:Ljava/net/URL;
    :cond_8
    :try_start_b
    new-instance v10, Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v10, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 146
    .local v10, connectHost:Ljava/lang/String;
    const/4 v11, -0x1

    .line 148
    .local v11, connectPort:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/redbend/vdm/comm/VdmRawConnection;->_proxy:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 149
    const/4 v3, -0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_9

    .line 150
    const/16 v18, 0x50

    .line 152
    :cond_9
    invoke-virtual/range {v25 .. v25}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v10

    .line 153
    move/from16 v11, v18

    .line 159
    :goto_7
    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/redbend/vdm/comm/VdmRawConnection;->_conn:Ljava/net/Socket;

    .line 160
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/redbend/vdm/comm/VdmRawConnection;->_conn:Ljava/net/Socket;

    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-direct {v5, v10, v11}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget v6, v0, Lcom/redbend/vdm/comm/VdmRawConnection;->_timeout:I

    invoke-virtual {v3, v5, v6}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    goto/16 :goto_1

    .line 156
    :cond_a
    invoke-virtual/range {v22 .. v22}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v10

    .line 157
    invoke-virtual/range {v22 .. v22}, Ljava/net/URL;->getPort()I
    :try_end_b
    .catch Ljava/net/SocketException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/net/UnknownHostException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    move-result v11

    goto :goto_7

    .line 183
    .end local v10           #connectHost:Ljava/lang/String;
    .end local v11           #connectPort:I
    .end local v18           #port:I
    .end local v19           #protocol:Ljava/lang/String;
    .end local v25           #urlhost:Ljava/net/URL;
    .restart local v24       #urlhost:Ljava/net/URL;
    :catch_b
    move-exception v13

    goto :goto_6

    .end local v22           #urlProxy:Ljava/net/URL;
    .end local v24           #urlhost:Ljava/net/URL;
    .restart local v18       #port:I
    .restart local v23       #urlProxy:Ljava/net/URL;
    .restart local v25       #urlhost:Ljava/net/URL;
    :catch_c
    move-exception v13

    move-object/from16 v24, v25

    .end local v25           #urlhost:Ljava/net/URL;
    .restart local v24       #urlhost:Ljava/net/URL;
    move-object/from16 v22, v23

    .end local v23           #urlProxy:Ljava/net/URL;
    .restart local v22       #urlProxy:Ljava/net/URL;
    goto :goto_6

    .line 180
    .end local v18           #port:I
    :catch_d
    move-exception v13

    goto/16 :goto_5

    .end local v22           #urlProxy:Ljava/net/URL;
    .end local v24           #urlhost:Ljava/net/URL;
    .restart local v18       #port:I
    .restart local v23       #urlProxy:Ljava/net/URL;
    .restart local v25       #urlhost:Ljava/net/URL;
    :catch_e
    move-exception v13

    move-object/from16 v24, v25

    .end local v25           #urlhost:Ljava/net/URL;
    .restart local v24       #urlhost:Ljava/net/URL;
    move-object/from16 v22, v23

    .end local v23           #urlProxy:Ljava/net/URL;
    .restart local v22       #urlProxy:Ljava/net/URL;
    goto/16 :goto_5

    .line 177
    .end local v18           #port:I
    :catch_f
    move-exception v13

    goto/16 :goto_4

    .end local v22           #urlProxy:Ljava/net/URL;
    .end local v24           #urlhost:Ljava/net/URL;
    .restart local v18       #port:I
    .restart local v23       #urlProxy:Ljava/net/URL;
    .restart local v25       #urlhost:Ljava/net/URL;
    :catch_10
    move-exception v13

    move-object/from16 v24, v25

    .end local v25           #urlhost:Ljava/net/URL;
    .restart local v24       #urlhost:Ljava/net/URL;
    move-object/from16 v22, v23

    .end local v23           #urlProxy:Ljava/net/URL;
    .restart local v22       #urlProxy:Ljava/net/URL;
    goto/16 :goto_4

    .line 174
    .end local v18           #port:I
    :catch_11
    move-exception v13

    goto/16 :goto_3

    .end local v22           #urlProxy:Ljava/net/URL;
    .end local v24           #urlhost:Ljava/net/URL;
    .restart local v18       #port:I
    .restart local v23       #urlProxy:Ljava/net/URL;
    .restart local v25       #urlhost:Ljava/net/URL;
    :catch_12
    move-exception v13

    move-object/from16 v24, v25

    .end local v25           #urlhost:Ljava/net/URL;
    .restart local v24       #urlhost:Ljava/net/URL;
    move-object/from16 v22, v23

    .end local v23           #urlProxy:Ljava/net/URL;
    .restart local v22       #urlProxy:Ljava/net/URL;
    goto/16 :goto_3

    .line 171
    .end local v18           #port:I
    :catch_13
    move-exception v13

    goto/16 :goto_2

    .end local v22           #urlProxy:Ljava/net/URL;
    .end local v24           #urlhost:Ljava/net/URL;
    .restart local v18       #port:I
    .restart local v23       #urlProxy:Ljava/net/URL;
    .restart local v25       #urlhost:Ljava/net/URL;
    :catch_14
    move-exception v13

    move-object/from16 v24, v25

    .end local v25           #urlhost:Ljava/net/URL;
    .restart local v24       #urlhost:Ljava/net/URL;
    move-object/from16 v22, v23

    .end local v23           #urlProxy:Ljava/net/URL;
    .restart local v22       #urlProxy:Ljava/net/URL;
    goto/16 :goto_2

    .line 168
    .end local v18           #port:I
    :catch_15
    move-exception v13

    goto/16 :goto_0
.end method

.method public receive([B)I
    .locals 5
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/comm/VdmCommException;
        }
    .end annotation

    .prologue
    .line 204
    const/4 v0, 0x0

    .line 208
    .local v0, dataLen:I
    :try_start_0
    iget-object v2, p0, Lcom/redbend/vdm/comm/VdmRawConnection;->_in:Ljava/io/DataInputStream;

    invoke-virtual {v2, p1}, Ljava/io/DataInputStream;->read([B)I

    move-result v0

    .line 209
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 210
    const-string v2, "vDM"

    const-string v3, "RawConnection#receive: nothing received"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    new-instance v2, Lcom/redbend/vdm/comm/VdmCommException;

    sget-object v3, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->COMMS_SOCKET_ERROR:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    iget v3, v3, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->val:I

    invoke-direct {v2, v3}, Lcom/redbend/vdm/comm/VdmCommException;-><init>(I)V

    throw v2
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 214
    :catch_0
    move-exception v1

    .line 215
    .local v1, e:Ljava/net/SocketTimeoutException;
    const-string v2, "vDM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RawConnection#receive: SocketTimeoutException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v2, Lcom/redbend/vdm/comm/VdmCommException;

    sget-object v3, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->COMMS_SOCKET_TIMEOUT:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    iget v3, v3, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->val:I

    invoke-direct {v2, v3}, Lcom/redbend/vdm/comm/VdmCommException;-><init>(I)V

    throw v2

    .line 218
    .end local v1           #e:Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v1

    .line 219
    .local v1, e:Ljava/io/IOException;
    const-string v2, "vDM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RawConnection#receive: IOException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    new-instance v2, Lcom/redbend/vdm/comm/VdmCommException;

    sget-object v3, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->COMMS_SOCKET_ERROR:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    iget v3, v3, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->val:I

    invoke-direct {v2, v3}, Lcom/redbend/vdm/comm/VdmCommException;-><init>(I)V

    throw v2

    .line 222
    .end local v1           #e:Ljava/io/IOException;
    :cond_0
    return v0
.end method

.method public send([B)V
    .locals 4
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/comm/VdmCommException;
        }
    .end annotation

    .prologue
    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/redbend/vdm/comm/VdmRawConnection;->_out:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 201
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, e:Ljava/net/SocketTimeoutException;
    const-string v1, "vDM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RawConnection#send: SocketTimeoutException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    new-instance v1, Lcom/redbend/vdm/comm/VdmCommException;

    sget-object v2, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->COMMS_SOCKET_TIMEOUT:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    iget v2, v2, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->val:I

    invoke-direct {v1, v2}, Lcom/redbend/vdm/comm/VdmCommException;-><init>(I)V

    throw v1

    .line 197
    .end local v0           #e:Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v0

    .line 198
    .local v0, e:Ljava/io/IOException;
    const-string v1, "vDM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RawConnection#send: IOException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    new-instance v1, Lcom/redbend/vdm/comm/VdmCommException;

    sget-object v2, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->COMMS_SOCKET_ERROR:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    iget v2, v2, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->val:I

    invoke-direct {v1, v2}, Lcom/redbend/vdm/comm/VdmCommException;-><init>(I)V

    throw v1
.end method

.method public setConnectionTimeout(I)V
    .locals 1
    .parameter "seconds"

    .prologue
    .line 244
    if-lez p1, :cond_0

    .line 246
    mul-int/lit16 v0, p1, 0x3e8

    iput v0, p0, Lcom/redbend/vdm/comm/VdmRawConnection;->_timeout:I

    .line 248
    :cond_0
    return-void
.end method
