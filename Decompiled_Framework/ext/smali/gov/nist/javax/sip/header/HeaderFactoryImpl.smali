.class public Lgov/nist/javax/sip/header/HeaderFactoryImpl;
.super Ljava/lang/Object;
.source "HeaderFactoryImpl.java"

# interfaces
.implements Ljavax/sip/header/HeaderFactory;
.implements Lgov/nist/javax/sip/header/HeaderFactoryExt;


# instance fields
.field private stripAddressScopeZones:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/javax/sip/header/HeaderFactoryImpl;->stripAddressScopeZones:Z

    const-string v0, "gov.nist.core.STRIP_ADDR_SCOPES"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lgov/nist/javax/sip/header/HeaderFactoryImpl;->stripAddressScopeZones:Z

    return-void
.end method


# virtual methods
.method public createAcceptEncodingHeader(Ljava/lang/String;)Ljavax/sip/header/AcceptEncodingHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "the encoding parameter is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/AcceptEncoding;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/AcceptEncoding;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/AcceptEncoding;->setEncoding(Ljava/lang/String;)V

    return-object v0
.end method

.method public createAcceptHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/AcceptHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "contentType or subtype is null "

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Lgov/nist/javax/sip/header/Accept;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Accept;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Accept;->setContentType(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/header/Accept;->setContentSubType(Ljava/lang/String;)V

    return-object v0
.end method

.method public createAcceptLanguageHeader(Ljava/util/Locale;)Ljavax/sip/header/AcceptLanguageHeader;
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null arg"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/AcceptLanguage;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/AcceptLanguage;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/AcceptLanguage;->setAcceptLanguage(Ljava/util/Locale;)V

    return-object v0
.end method

.method public createAlertInfoHeader(Ljavax/sip/address/URI;)Ljavax/sip/header/AlertInfoHeader;
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null arg alertInfo"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/AlertInfo;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/AlertInfo;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/AlertInfo;->setAlertInfo(Ljavax/sip/address/URI;)V

    return-object v0
.end method

.method public createAllowEventsHeader(Ljava/lang/String;)Ljavax/sip/header/AllowEventsHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null arg eventType"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/AllowEvents;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/AllowEvents;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/AllowEvents;->setEventType(Ljava/lang/String;)V

    return-object v0
.end method

.method public createAllowHeader(Ljava/lang/String;)Ljavax/sip/header/AllowHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null arg method"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/Allow;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Allow;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Allow;->setMethod(Ljava/lang/String;)V

    return-object v0
.end method

.method public createAuthenticationInfoHeader(Ljava/lang/String;)Ljavax/sip/header/AuthenticationInfoHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null arg response"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/AuthenticationInfo;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/AuthenticationInfo;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/AuthenticationInfo;->setResponse(Ljava/lang/String;)V

    return-object v0
.end method

.method public createAuthorizationHeader(Ljava/lang/String;)Ljavax/sip/header/AuthorizationHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null arg scheme "

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/Authorization;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Authorization;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Authorization;->setScheme(Ljava/lang/String;)V

    return-object v0
.end method

.method public createCSeqHeader(ILjava/lang/String;)Ljavax/sip/header/CSeqHeader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1, p2}, Lgov/nist/javax/sip/header/HeaderFactoryImpl;->createCSeqHeader(JLjava/lang/String;)Ljavax/sip/header/CSeqHeader;

    move-result-object v0

    return-object v0
.end method

.method public createCSeqHeader(JLjava/lang/String;)Ljavax/sip/header/CSeqHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    new-instance v1, Ljavax/sip/InvalidArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad arg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-nez p3, :cond_1

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null arg method"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Lgov/nist/javax/sip/header/CSeq;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/CSeq;-><init>()V

    invoke-virtual {v0, p3}, Lgov/nist/javax/sip/header/CSeq;->setMethod(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lgov/nist/javax/sip/header/CSeq;->setSeqNumber(J)V

    return-object v0
.end method

.method public createCallIdHeader(Ljava/lang/String;)Ljavax/sip/header/CallIdHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null arg callId"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/CallID;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/CallID;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/CallID;->setCallId(Ljava/lang/String;)V

    return-object v0
.end method

.method public createCallInfoHeader(Ljavax/sip/address/URI;)Ljavax/sip/header/CallInfoHeader;
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null arg callInfo"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/CallInfo;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/CallInfo;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/CallInfo;->setInfo(Ljavax/sip/address/URI;)V

    return-object v0
.end method

.method public createChargingVectorHeader(Ljava/lang/String;)Lgov/nist/javax/sip/header/ims/PChargingVectorHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null icid arg!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ims/PChargingVector;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PChargingVector;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ims/PChargingVector;->setICID(Ljava/lang/String;)V

    return-object v0
.end method

.method public createContactHeader()Ljavax/sip/header/ContactHeader;
    .locals 2

    new-instance v0, Lgov/nist/javax/sip/header/Contact;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Contact;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/Contact;->setWildCardFlag(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/Contact;->setExpires(I)V

    return-object v0
.end method

.method public createContactHeader(Ljavax/sip/address/Address;)Ljavax/sip/header/ContactHeader;
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null arg address"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/Contact;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Contact;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Contact;->setAddress(Ljavax/sip/address/Address;)V

    return-object v0
.end method

.method public createContentDispositionHeader(Ljava/lang/String;)Ljavax/sip/header/ContentDispositionHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null arg contentDisposition"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ContentDisposition;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ContentDisposition;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ContentDisposition;->setDispositionType(Ljava/lang/String;)V

    return-object v0
.end method

.method public createContentEncodingHeader(Ljava/lang/String;)Ljavax/sip/header/ContentEncodingHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null encoding"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ContentEncoding;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ContentEncoding;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ContentEncoding;->setEncoding(Ljava/lang/String;)V

    return-object v0
.end method

.method public createContentLanguageHeader(Ljava/util/Locale;)Ljavax/sip/header/ContentLanguageHeader;
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null arg contentLanguage"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ContentLanguage;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ContentLanguage;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ContentLanguage;->setContentLanguage(Ljava/util/Locale;)V

    return-object v0
.end method

.method public createContentLengthHeader(I)Ljavax/sip/header/ContentLengthHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    if-gez p1, :cond_0

    new-instance v1, Ljavax/sip/InvalidArgumentException;

    const-string v2, "bad contentLength"

    invoke-direct {v1, v2}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ContentLength;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ContentLength;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ContentLength;->setContentLength(I)V

    return-object v0
.end method

.method public createContentTypeHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/ContentTypeHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null contentType or subType"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Lgov/nist/javax/sip/header/ContentType;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ContentType;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ContentType;->setContentType(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/header/ContentType;->setContentSubType(Ljava/lang/String;)V

    return-object v0
.end method

.method public createDateHeader(Ljava/util/Calendar;)Ljavax/sip/header/DateHeader;
    .locals 3

    new-instance v0, Lgov/nist/javax/sip/header/SIPDateHeader;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/SIPDateHeader;-><init>()V

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null date"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/SIPDateHeader;->setDate(Ljava/util/Calendar;)V

    return-object v0
.end method

.method public createErrorInfoHeader(Ljavax/sip/address/URI;)Ljavax/sip/header/ErrorInfoHeader;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null arg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ErrorInfo;

    check-cast p1, Lgov/nist/javax/sip/address/GenericURI;

    invoke-direct {v0, p1}, Lgov/nist/javax/sip/header/ErrorInfo;-><init>(Lgov/nist/javax/sip/address/GenericURI;)V

    return-object v0
.end method

.method public createEventHeader(Ljava/lang/String;)Ljavax/sip/header/EventHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null eventType"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/Event;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Event;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Event;->setEventType(Ljava/lang/String;)V

    return-object v0
.end method

.method public createExpiresHeader(I)Ljavax/sip/header/ExpiresHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    if-gez p1, :cond_0

    new-instance v1, Ljavax/sip/InvalidArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/Expires;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Expires;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Expires;->setExpires(I)V

    return-object v0
.end method

.method public createExtensionHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/ExtensionHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "bad name"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;->setValue(Ljava/lang/String;)V

    return-object v0
.end method

.method public createFromHeader(Ljavax/sip/address/Address;Ljava/lang/String;)Ljavax/sip/header/FromHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null address arg"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/From;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/From;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/From;->setAddress(Ljavax/sip/address/Address;)V

    if-eqz p2, :cond_1

    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/header/From;->setTag(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public createHeader(Ljava/lang/String;)Ljavax/sip/header/Header;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v2, Lgov/nist/javax/sip/parser/StringMsgParser;

    invoke-direct {v2}, Lgov/nist/javax/sip/parser/StringMsgParser;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/parser/StringMsgParser;->parseSIPHeader(Ljava/lang/String;)Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v1

    instance-of v3, v1, Lgov/nist/javax/sip/header/SIPHeaderList;

    if-eqz v3, :cond_2

    move-object v3, v1

    check-cast v3, Lgov/nist/javax/sip/header/SIPHeaderList;

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/SIPHeaderList;->size()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_0

    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Only singleton allowed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    :cond_0
    move-object v3, v1

    check-cast v3, Lgov/nist/javax/sip/header/SIPHeaderList;

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/SIPHeaderList;->size()I

    move-result v3

    if-nez v3, :cond_1

    :try_start_0
    check-cast v1, Lgov/nist/javax/sip/header/SIPHeaderList;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/SIPHeaderList;->getMyClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/sip/header/Header;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    move-object v3, v4

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move-object v3, v4

    goto :goto_0

    :cond_1
    check-cast v1, Lgov/nist/javax/sip/header/SIPHeaderList;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/SIPHeaderList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, v1

    goto :goto_0
.end method

.method public createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/Header;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "header name is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/HeaderFactoryImpl;->createHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    return-object v1
.end method

.method public createHeaders(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "null arg!"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v1, Lgov/nist/javax/sip/parser/StringMsgParser;

    invoke-direct {v1}, Lgov/nist/javax/sip/parser/StringMsgParser;-><init>()V

    invoke-virtual {v1, p1}, Lgov/nist/javax/sip/parser/StringMsgParser;->parseSIPHeader(Ljava/lang/String;)Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v0

    instance-of v2, v0, Lgov/nist/javax/sip/header/SIPHeaderList;

    if-eqz v2, :cond_1

    check-cast v0, Lgov/nist/javax/sip/header/SIPHeaderList;

    return-object v0

    :cond_1
    new-instance v2, Ljava/text/ParseException;

    const-string v3, "List of headers of this type is not allowed in a message"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public createInReplyToHeader(Ljava/lang/String;)Ljavax/sip/header/InReplyToHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null callId arg"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/InReplyTo;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/InReplyTo;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/InReplyTo;->setCallId(Ljava/lang/String;)V

    return-object v0
.end method

.method public createJoinHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgov/nist/javax/sip/header/extensions/JoinHeader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    new-instance v0, Lgov/nist/javax/sip/header/extensions/Join;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/extensions/Join;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/extensions/Join;->setCallId(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lgov/nist/javax/sip/header/extensions/Join;->setFromTag(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/header/extensions/Join;->setToTag(Ljava/lang/String;)V

    return-object v0
.end method

.method public createMaxForwardsHeader(I)Ljavax/sip/header/MaxForwardsHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    if-ltz p1, :cond_0

    const/16 v1, 0xff

    if-le p1, v1, :cond_1

    :cond_0
    new-instance v1, Ljavax/sip/InvalidArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad maxForwards arg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Lgov/nist/javax/sip/header/MaxForwards;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/MaxForwards;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/MaxForwards;->setMaxForwards(I)V

    return-object v0
.end method

.method public createMimeVersionHeader(II)Ljavax/sip/header/MimeVersionHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    new-instance v1, Ljavax/sip/InvalidArgumentException;

    const-string v2, "bad major/minor version"

    invoke-direct {v1, v2}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Lgov/nist/javax/sip/header/MimeVersion;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/MimeVersion;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/MimeVersion;->setMajorVersion(I)V

    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/header/MimeVersion;->setMinorVersion(I)V

    return-object v0
.end method

.method public createMinExpiresHeader(I)Ljavax/sip/header/MinExpiresHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    if-gez p1, :cond_0

    new-instance v1, Ljavax/sip/InvalidArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad minExpires "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/MinExpires;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/MinExpires;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/MinExpires;->setExpires(I)V

    return-object v0
.end method

.method public createMinSEHeader(I)Ljavax/sip/header/ExtensionHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    if-gez p1, :cond_0

    new-instance v1, Ljavax/sip/InvalidArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/extensions/MinSE;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/extensions/MinSE;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/extensions/MinSE;->setExpires(I)V

    return-object v0
.end method

.method public createOrganizationHeader(Ljava/lang/String;)Ljavax/sip/header/OrganizationHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "bad organization arg"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/Organization;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Organization;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Organization;->setOrganization(Ljava/lang/String;)V

    return-object v0
.end method

.method public createPAccessNetworkInfoHeader()Lgov/nist/javax/sip/header/ims/PAccessNetworkInfoHeader;
    .locals 1

    new-instance v0, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;-><init>()V

    return-object v0
.end method

.method public createPAssertedIdentityHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/ims/PAssertedIdentityHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null address!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ims/PAssertedIdentity;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PAssertedIdentity;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ims/PAssertedIdentity;->setAddress(Ljavax/sip/address/Address;)V

    return-object v0
.end method

.method public createPAssertedServiceHeader()Lgov/nist/javax/sip/header/ims/PAssertedServiceHeader;
    .locals 1

    new-instance v0, Lgov/nist/javax/sip/header/ims/PAssertedService;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PAssertedService;-><init>()V

    return-object v0
.end method

.method public createPAssociatedURIHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/ims/PAssociatedURIHeader;
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null associatedURI!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ims/PAssociatedURI;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PAssociatedURI;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ims/PAssociatedURI;->setAddress(Ljavax/sip/address/Address;)V

    return-object v0
.end method

.method public createPCalledPartyIDHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/ims/PCalledPartyIDHeader;
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null address!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ims/PCalledPartyID;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PCalledPartyID;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ims/PCalledPartyID;->setAddress(Ljavax/sip/address/Address;)V

    return-object v0
.end method

.method public createPChargingFunctionAddressesHeader()Lgov/nist/javax/sip/header/ims/PChargingFunctionAddressesHeader;
    .locals 1

    new-instance v0, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;-><init>()V

    return-object v0
.end method

.method public createPMediaAuthorizationHeader(Ljava/lang/String;)Lgov/nist/javax/sip/header/ims/PMediaAuthorizationHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;,
            Ljava/text/ParseException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v1, ""

    if-ne p1, v1, :cond_1

    :cond_0
    new-instance v1, Ljavax/sip/InvalidArgumentException;

    const-string v2, "The Media-Authorization-Token parameter is null or empty"

    invoke-direct {v1, v2}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;->setMediaAuthorizationToken(Ljava/lang/String;)V

    return-object v0
.end method

.method public createPPreferredIdentityHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/ims/PPreferredIdentityHeader;
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null address!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ims/PPreferredIdentity;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PPreferredIdentity;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ims/PPreferredIdentity;->setAddress(Ljavax/sip/address/Address;)V

    return-object v0
.end method

.method public createPPreferredServiceHeader()Lgov/nist/javax/sip/header/ims/PPreferredServiceHeader;
    .locals 1

    new-instance v0, Lgov/nist/javax/sip/header/ims/PPreferredService;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PPreferredService;-><init>()V

    return-object v0
.end method

.method public createPProfileKeyHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/ims/PProfileKeyHeader;
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Address is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ims/PProfileKey;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PProfileKey;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ims/PProfileKey;->setAddress(Ljavax/sip/address/Address;)V

    return-object v0
.end method

.method public createPServedUserHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/ims/PServedUserHeader;
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Address is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ims/PServedUser;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PServedUser;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ims/PServedUser;->setAddress(Ljavax/sip/address/Address;)V

    return-object v0
.end method

.method public createPUserDatabaseHeader(Ljava/lang/String;)Lgov/nist/javax/sip/header/ims/PUserDatabaseHeader;
    .locals 3

    if-eqz p1, :cond_0

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Database name is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Lgov/nist/javax/sip/header/ims/PUserDatabase;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PUserDatabase;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ims/PUserDatabase;->setDatabaseName(Ljava/lang/String;)V

    return-object v0
.end method

.method public createPVisitedNetworkIDHeader()Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDHeader;
    .locals 1

    new-instance v0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;-><init>()V

    return-object v0
.end method

.method public createPathHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/ims/PathHeader;
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null address!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ims/Path;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/Path;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ims/Path;->setAddress(Ljavax/sip/address/Address;)V

    return-object v0
.end method

.method public createPriorityHeader(Ljava/lang/String;)Ljavax/sip/header/PriorityHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "bad priority arg"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/Priority;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Priority;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Priority;->setPriority(Ljava/lang/String;)V

    return-object v0
.end method

.method public createPrivacyHeader(Ljava/lang/String;)Lgov/nist/javax/sip/header/ims/PrivacyHeader;
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null privacyType arg"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ims/Privacy;

    invoke-direct {v0, p1}, Lgov/nist/javax/sip/header/ims/Privacy;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createProxyAuthenticateHeader(Ljava/lang/String;)Ljavax/sip/header/ProxyAuthenticateHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "bad scheme arg"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ProxyAuthenticate;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ProxyAuthenticate;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ProxyAuthenticate;->setScheme(Ljava/lang/String;)V

    return-object v0
.end method

.method public createProxyAuthorizationHeader(Ljava/lang/String;)Ljavax/sip/header/ProxyAuthorizationHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "bad scheme arg"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ProxyAuthorization;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ProxyAuthorization;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ProxyAuthorization;->setScheme(Ljava/lang/String;)V

    return-object v0
.end method

.method public createProxyRequireHeader(Ljava/lang/String;)Ljavax/sip/header/ProxyRequireHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "bad optionTag arg"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ProxyRequire;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ProxyRequire;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ProxyRequire;->setOptionTag(Ljava/lang/String;)V

    return-object v0
.end method

.method public createRAckHeader(IILjava/lang/String;)Ljavax/sip/header/RAckHeader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;,
            Ljava/text/ParseException;
        }
    .end annotation

    int-to-long v1, p1

    int-to-long v3, p2

    move-object v0, p0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lgov/nist/javax/sip/header/HeaderFactoryImpl;->createRAckHeader(JJLjava/lang/String;)Ljavax/sip/header/RAckHeader;

    move-result-object v0

    return-object v0
.end method

.method public createRAckHeader(JJLjava/lang/String;)Ljavax/sip/header/RAckHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;,
            Ljava/text/ParseException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    if-nez p5, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Bad method"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    cmp-long v1, p3, v2

    if-ltz v1, :cond_1

    cmp-long v1, p1, v2

    if-gez v1, :cond_2

    :cond_1
    new-instance v1, Ljavax/sip/InvalidArgumentException;

    const-string v2, "bad cseq/rseq arg"

    invoke-direct {v1, v2}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Lgov/nist/javax/sip/header/RAck;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/RAck;-><init>()V

    invoke-virtual {v0, p5}, Lgov/nist/javax/sip/header/RAck;->setMethod(Ljava/lang/String;)V

    invoke-virtual {v0, p3, p4}, Lgov/nist/javax/sip/header/RAck;->setCSequenceNumber(J)V

    invoke-virtual {v0, p1, p2}, Lgov/nist/javax/sip/header/RAck;->setRSequenceNumber(J)V

    return-object v0
.end method

.method public createRSeqHeader(I)Ljavax/sip/header/RSeqHeader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lgov/nist/javax/sip/header/HeaderFactoryImpl;->createRSeqHeader(J)Ljavax/sip/header/RSeqHeader;

    move-result-object v0

    return-object v0
.end method

.method public createRSeqHeader(J)Ljavax/sip/header/RSeqHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    new-instance v1, Ljavax/sip/InvalidArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid sequenceNumber arg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/RSeq;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/RSeq;-><init>()V

    invoke-virtual {v0, p1, p2}, Lgov/nist/javax/sip/header/RSeq;->setSeqNumber(J)V

    return-object v0
.end method

.method public createReasonHeader(Ljava/lang/String;ILjava/lang/String;)Ljavax/sip/header/ReasonHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;,
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "bad protocol arg"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-gez p2, :cond_1

    new-instance v1, Ljavax/sip/InvalidArgumentException;

    const-string v2, "bad cause"

    invoke-direct {v1, v2}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Lgov/nist/javax/sip/header/Reason;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Reason;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Reason;->setProtocol(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/header/Reason;->setCause(I)V

    invoke-virtual {v0, p3}, Lgov/nist/javax/sip/header/Reason;->setText(Ljava/lang/String;)V

    return-object v0
.end method

.method public createRecordRouteHeader(Ljavax/sip/address/Address;)Ljavax/sip/header/RecordRouteHeader;
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null argument!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/RecordRoute;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/RecordRoute;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/RecordRoute;->setAddress(Ljavax/sip/address/Address;)V

    return-object v0
.end method

.method public createReferToHeader(Ljavax/sip/address/Address;)Ljavax/sip/header/ReferToHeader;
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null address!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ReferTo;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ReferTo;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ReferTo;->setAddress(Ljavax/sip/address/Address;)V

    return-object v0
.end method

.method public createReferencesHeader(Ljava/lang/String;Ljava/lang/String;)Lgov/nist/javax/sip/header/extensions/ReferencesHeader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    new-instance v0, Lgov/nist/javax/sip/header/extensions/References;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/extensions/References;-><init>()V

    invoke-interface {v0, p1}, Lgov/nist/javax/sip/header/extensions/ReferencesHeader;->setCallId(Ljava/lang/String;)V

    invoke-interface {v0, p2}, Lgov/nist/javax/sip/header/extensions/ReferencesHeader;->setRel(Ljava/lang/String;)V

    return-object v0
.end method

.method public createReferredByHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/extensions/ReferredByHeader;
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null address!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/extensions/ReferredBy;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/extensions/ReferredBy;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/extensions/ReferredBy;->setAddress(Ljavax/sip/address/Address;)V

    return-object v0
.end method

.method public createReplacesHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgov/nist/javax/sip/header/extensions/ReplacesHeader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    new-instance v0, Lgov/nist/javax/sip/header/extensions/Replaces;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/extensions/Replaces;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/extensions/Replaces;->setCallId(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lgov/nist/javax/sip/header/extensions/Replaces;->setFromTag(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/header/extensions/Replaces;->setToTag(Ljava/lang/String;)V

    return-object v0
.end method

.method public createReplyToHeader(Ljavax/sip/address/Address;)Ljavax/sip/header/ReplyToHeader;
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null address"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ReplyTo;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ReplyTo;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ReplyTo;->setAddress(Ljavax/sip/address/Address;)V

    return-object v0
.end method

.method public createRequestLine(Ljava/lang/String;)Lgov/nist/javax/sip/header/SipRequestLine;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    new-instance v0, Lgov/nist/javax/sip/parser/RequestLineParser;

    invoke-direct {v0, p1}, Lgov/nist/javax/sip/parser/RequestLineParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgov/nist/javax/sip/parser/RequestLineParser;->parse()Lgov/nist/javax/sip/header/RequestLine;

    move-result-object v1

    return-object v1
.end method

.method public createRequireHeader(Ljava/lang/String;)Ljavax/sip/header/RequireHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null optionTag"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/Require;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Require;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Require;->setOptionTag(Ljava/lang/String;)V

    return-object v0
.end method

.method public createRetryAfterHeader(I)Ljavax/sip/header/RetryAfterHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    if-gez p1, :cond_0

    new-instance v1, Ljavax/sip/InvalidArgumentException;

    const-string v2, "bad retryAfter arg"

    invoke-direct {v1, v2}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/RetryAfter;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/RetryAfter;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/RetryAfter;->setRetryAfter(I)V

    return-object v0
.end method

.method public createRouteHeader(Ljavax/sip/address/Address;)Ljavax/sip/header/RouteHeader;
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null address arg"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/Route;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Route;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Route;->setAddress(Ljavax/sip/address/Address;)V

    return-object v0
.end method

.method public createSIPETagHeader(Ljava/lang/String;)Ljavax/sip/header/SIPETagHeader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    new-instance v0, Lgov/nist/javax/sip/header/SIPETag;

    invoke-direct {v0, p1}, Lgov/nist/javax/sip/header/SIPETag;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createSIPIfMatchHeader(Ljava/lang/String;)Ljavax/sip/header/SIPIfMatchHeader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    new-instance v0, Lgov/nist/javax/sip/header/SIPIfMatch;

    invoke-direct {v0, p1}, Lgov/nist/javax/sip/header/SIPIfMatch;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createSecurityClientHeader()Lgov/nist/javax/sip/header/ims/SecurityClientHeader;
    .locals 1

    new-instance v0, Lgov/nist/javax/sip/header/ims/SecurityClient;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/SecurityClient;-><init>()V

    return-object v0
.end method

.method public createSecurityServerHeader()Lgov/nist/javax/sip/header/ims/SecurityServerHeader;
    .locals 1

    new-instance v0, Lgov/nist/javax/sip/header/ims/SecurityServer;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/SecurityServer;-><init>()V

    return-object v0
.end method

.method public createSecurityVerifyHeader()Lgov/nist/javax/sip/header/ims/SecurityVerifyHeader;
    .locals 1

    new-instance v0, Lgov/nist/javax/sip/header/ims/SecurityVerify;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/SecurityVerify;-><init>()V

    return-object v0
.end method

.method public createServerHeader(Ljava/util/List;)Ljavax/sip/header/ServerHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null productList arg"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/Server;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Server;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Server;->setProduct(Ljava/util/List;)V

    return-object v0
.end method

.method public createServiceRouteHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/ims/ServiceRouteHeader;
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null address!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ims/ServiceRoute;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/ServiceRoute;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ims/ServiceRoute;->setAddress(Ljavax/sip/address/Address;)V

    return-object v0
.end method

.method public createSessionExpiresHeader(I)Lgov/nist/javax/sip/header/extensions/SessionExpiresHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    if-gez p1, :cond_0

    new-instance v1, Ljavax/sip/InvalidArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/extensions/SessionExpires;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/extensions/SessionExpires;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/extensions/SessionExpires;->setExpires(I)V

    return-object v0
.end method

.method public createStatusLine(Ljava/lang/String;)Lgov/nist/javax/sip/header/SipStatusLine;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    new-instance v0, Lgov/nist/javax/sip/parser/StatusLineParser;

    invoke-direct {v0, p1}, Lgov/nist/javax/sip/parser/StatusLineParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgov/nist/javax/sip/parser/StatusLineParser;->parse()Lgov/nist/javax/sip/header/StatusLine;

    move-result-object v1

    return-object v1
.end method

.method public createSubjectHeader(Ljava/lang/String;)Ljavax/sip/header/SubjectHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null subject arg"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/Subject;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Subject;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Subject;->setSubject(Ljava/lang/String;)V

    return-object v0
.end method

.method public createSubscriptionStateHeader(Ljava/lang/String;)Ljavax/sip/header/SubscriptionStateHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null subscriptionState arg"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/SubscriptionState;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/SubscriptionState;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/SubscriptionState;->setState(Ljava/lang/String;)V

    return-object v0
.end method

.method public createSupportedHeader(Ljava/lang/String;)Ljavax/sip/header/SupportedHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null optionTag arg"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/Supported;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Supported;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Supported;->setOptionTag(Ljava/lang/String;)V

    return-object v0
.end method

.method public createTimeStampHeader(F)Ljavax/sip/header/TimeStampHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "illegal timeStamp"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/TimeStamp;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/TimeStamp;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/TimeStamp;->setTimeStamp(F)V

    return-object v0
.end method

.method public createToHeader(Ljavax/sip/address/Address;Ljava/lang/String;)Ljavax/sip/header/ToHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null address"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/To;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/To;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/To;->setAddress(Ljavax/sip/address/Address;)V

    if-eqz p2, :cond_1

    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/header/To;->setTag(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public createUnsupportedHeader(Ljava/lang/String;)Ljavax/sip/header/UnsupportedHeader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/Unsupported;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Unsupported;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Unsupported;->setOptionTag(Ljava/lang/String;)V

    return-object v0
.end method

.method public createUserAgentHeader(Ljava/util/List;)Ljavax/sip/header/UserAgentHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null user agent"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/UserAgent;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/UserAgent;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/UserAgent;->setProduct(Ljava/util/List;)V

    return-object v0
.end method

.method public createViaHeader(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljavax/sip/header/ViaHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    const/16 v3, 0x5b

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "null arg"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v0, Lgov/nist/javax/sip/header/Via;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Via;-><init>()V

    if-eqz p4, :cond_2

    invoke-virtual {v0, p4}, Lgov/nist/javax/sip/header/Via;->setBranch(Ljava/lang/String;)V

    :cond_2
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_4

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_4

    iget-boolean v2, p0, Lgov/nist/javax/sip/header/HeaderFactoryImpl;->stripAddressScopeZones:Z

    if-eqz v2, :cond_3

    const/16 v2, 0x25

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_4
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Via;->setHost(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/header/Via;->setPort(I)V

    invoke-virtual {v0, p3}, Lgov/nist/javax/sip/header/Via;->setTransport(Ljava/lang/String;)V

    return-object v0
.end method

.method public createWWWAuthenticateHeader(Ljava/lang/String;)Ljavax/sip/header/WWWAuthenticateHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null scheme"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/WWWAuthenticate;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/WWWAuthenticate;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/WWWAuthenticate;->setScheme(Ljava/lang/String;)V

    return-object v0
.end method

.method public createWarningHeader(Ljava/lang/String;ILjava/lang/String;)Ljavax/sip/header/WarningHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null arg"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/Warning;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Warning;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Warning;->setAgent(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/header/Warning;->setCode(I)V

    invoke-virtual {v0, p3}, Lgov/nist/javax/sip/header/Warning;->setText(Ljava/lang/String;)V

    return-object v0
.end method

.method public setPrettyEncoding(Z)V
    .locals 0

    invoke-static {p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->setPrettyEncode(Z)V

    return-void
.end method
