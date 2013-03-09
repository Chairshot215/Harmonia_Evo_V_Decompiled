.class public Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;
.super Ljava/lang/Object;
.source "AlertProtocol.java"


# static fields
.field protected static final ACCESS_DENIED:B = 0x31t

.field protected static final BAD_CERTIFICATE:B = 0x2at

.field protected static final BAD_RECORD_MAC:B = 0x14t

.field protected static final CERTIFICATE_EXPIRED:B = 0x2dt

.field protected static final CERTIFICATE_REVOKED:B = 0x2ct

.field protected static final CERTIFICATE_UNKNOWN:B = 0x2et

.field protected static final CLOSE_NOTIFY:B = 0x0t

.field protected static final DECODE_ERROR:B = 0x32t

.field protected static final DECOMPRESSION_FAILURE:B = 0x1et

.field protected static final DECRYPTION_FAILED:B = 0x15t

.field protected static final DECRYPT_ERROR:B = 0x33t

.field protected static final EXPORT_RESTRICTION:B = 0x3ct

.field protected static final FATAL:B = 0x2t

.field protected static final HANDSHAKE_FAILURE:B = 0x28t

.field protected static final ILLEGAL_PARAMETER:B = 0x2ft

.field protected static final INSUFFICIENT_SECURITY:B = 0x47t

.field protected static final INTERNAL_ERROR:B = 0x50t

.field protected static final NO_RENEGOTIATION:B = 0x64t

.field protected static final PROTOCOL_VERSION:B = 0x46t

.field protected static final RECORD_OVERFLOW:B = 0x16t

.field protected static final UNEXPECTED_MESSAGE:B = 0xat

.field protected static final UNKNOWN_CA:B = 0x30t

.field protected static final UNSUPPORTED_CERTIFICATE:B = 0x2bt

.field protected static final USER_CANCELED:B = 0x5at

.field protected static final WARNING:B = 0x1t


# instance fields
.field private final alert:[B

.field private logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

.field private recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->alert:[B

    const-string v0, "alert"

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger;->getStream(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    return-void
.end method


# virtual methods
.method protected alert(BB)V
    .locals 3

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alert.alert: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->alert:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->alert:[B

    const/4 v1, 0x1

    aput-byte p2, v0, v1

    return-void
.end method

.method protected getAlertDescription()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->alert:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "close_notify"

    goto :goto_0

    :sswitch_1
    const-string v0, "unexpected_message"

    goto :goto_0

    :sswitch_2
    const-string v0, "bad_record_mac"

    goto :goto_0

    :sswitch_3
    const-string v0, "decryption_failed"

    goto :goto_0

    :sswitch_4
    const-string v0, "record_overflow"

    goto :goto_0

    :sswitch_5
    const-string v0, "decompression_failure"

    goto :goto_0

    :sswitch_6
    const-string v0, "handshake_failure"

    goto :goto_0

    :sswitch_7
    const-string v0, "bad_certificate"

    goto :goto_0

    :sswitch_8
    const-string v0, "unsupported_certificate"

    goto :goto_0

    :sswitch_9
    const-string v0, "certificate_revoked"

    goto :goto_0

    :sswitch_a
    const-string v0, "certificate_expired"

    goto :goto_0

    :sswitch_b
    const-string v0, "certificate_unknown"

    goto :goto_0

    :sswitch_c
    const-string v0, "illegal_parameter"

    goto :goto_0

    :sswitch_d
    const-string v0, "unknown_ca"

    goto :goto_0

    :sswitch_e
    const-string v0, "access_denied"

    goto :goto_0

    :sswitch_f
    const-string v0, "decode_error"

    goto :goto_0

    :sswitch_10
    const-string v0, "decrypt_error"

    goto :goto_0

    :sswitch_11
    const-string v0, "export_restriction"

    goto :goto_0

    :sswitch_12
    const-string v0, "protocol_version"

    goto :goto_0

    :sswitch_13
    const-string v0, "insufficient_security"

    goto :goto_0

    :sswitch_14
    const-string v0, "internal_error"

    goto :goto_0

    :sswitch_15
    const-string v0, "user_canceled"

    goto :goto_0

    :sswitch_16
    const-string v0, "no_renegotiation"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x14 -> :sswitch_2
        0x15 -> :sswitch_3
        0x16 -> :sswitch_4
        0x1e -> :sswitch_5
        0x28 -> :sswitch_6
        0x2a -> :sswitch_7
        0x2b -> :sswitch_8
        0x2c -> :sswitch_9
        0x2d -> :sswitch_a
        0x2e -> :sswitch_b
        0x2f -> :sswitch_c
        0x30 -> :sswitch_d
        0x31 -> :sswitch_e
        0x32 -> :sswitch_f
        0x33 -> :sswitch_10
        0x3c -> :sswitch_11
        0x46 -> :sswitch_12
        0x47 -> :sswitch_13
        0x50 -> :sswitch_14
        0x5a -> :sswitch_15
        0x64 -> :sswitch_16
    .end sparse-switch
.end method

.method protected getDescriptionCode()B
    .locals 2

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->alert:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->alert:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/16 v0, -0x64

    goto :goto_0
.end method

.method protected hasAlert()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->alert:[B

    aget-byte v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected isFatalAlert()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->alert:[B

    aget-byte v1, v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected setProcessed()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v1, "Alert.setProcessed"

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->alert:[B

    aput-byte v2, v0, v2

    return-void
.end method

.method protected setRecordProtocol(Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    return-void
.end method

.method protected shutdown()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->alert:[B

    aput-byte v2, v0, v2

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->alert:[B

    const/4 v1, 0x1

    aput-byte v2, v0, v1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    return-void
.end method

.method protected wrap()[B
    .locals 6

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    const/16 v2, 0x15

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->alert:[B

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->wrap(B[BII)[B

    move-result-object v0

    return-object v0
.end method
