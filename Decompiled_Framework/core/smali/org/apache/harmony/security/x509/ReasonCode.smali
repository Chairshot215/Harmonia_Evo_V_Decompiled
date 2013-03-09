.class public final Lorg/apache/harmony/security/x509/ReasonCode;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "ReasonCode.java"


# static fields
.field public static final AA_COMPROMISE:B = 0xat

.field public static final AFFILIATION_CHANGED:B = 0x3t

.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Type; = null

.field public static final CA_COMPROMISE:B = 0x2t

.field public static final CERTIFICATE_HOLD:B = 0x6t

.field public static final CESSATION_OF_OPERATION:B = 0x5t

.field public static final KEY_COMPROMISE:B = 0x1t

.field public static final PRIVILEGE_WITHDRAWN:B = 0x9t

.field public static final REMOVE_FROM_CRL:B = 0x8t

.field public static final SUPERSEDED:B = 0x4t

.field public static final UNSPECIFIED:B


# instance fields
.field private final code:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Enumerated;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Enumerated;

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/security/x509/ReasonCode;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>([B)V

    sget-object v0, Lorg/apache/harmony/security/x509/ReasonCode;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lorg/apache/harmony/security/x509/ReasonCode;->code:B

    return-void
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Reason Code: [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v0, p0, Lorg/apache/harmony/security/x509/ReasonCode;->code:B

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    const-string v0, " ]\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :pswitch_1
    const-string v0, "unspecified"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    const-string v0, "keyCompromise"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_3
    const-string v0, "cACompromise"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_4
    const-string v0, "affiliationChanged"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_5
    const-string v0, "superseded"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_6
    const-string v0, "cessationOfOperation"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_7
    const-string v0, "certificateHold"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_8
    const-string v0, "removeFromCRL"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_9
    const-string v0, "privilegeWithdrawn"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_a
    const-string v0, "aACompromise"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public getEncoded()[B
    .locals 4

    iget-object v0, p0, Lorg/apache/harmony/security/x509/ExtensionValue;->encoding:[B

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/harmony/security/x509/ReasonCode;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    iget-byte v3, p0, Lorg/apache/harmony/security/x509/ReasonCode;->code:B

    aput-byte v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/ExtensionValue;->encoding:[B

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/ExtensionValue;->encoding:[B

    return-object v0
.end method
