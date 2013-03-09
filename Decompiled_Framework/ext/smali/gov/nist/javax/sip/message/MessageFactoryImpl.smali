.class public Lgov/nist/javax/sip/message/MessageFactoryImpl;
.super Ljava/lang/Object;
.source "MessageFactoryImpl.java"

# interfaces
.implements Ljavax/sip/message/MessageFactory;
.implements Lgov/nist/javax/sip/message/MessageFactoryExt;


# static fields
.field private static defaultContentEncodingCharset:Ljava/lang/String;

.field private static server:Ljavax/sip/header/ServerHeader;

.field private static userAgent:Ljavax/sip/header/UserAgentHeader;


# instance fields
.field private strict:Z

.field private testing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    sput-object v0, Lgov/nist/javax/sip/message/MessageFactoryImpl;->defaultContentEncodingCharset:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/javax/sip/message/MessageFactoryImpl;->testing:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/message/MessageFactoryImpl;->strict:Z

    return-void
.end method

.method static synthetic access$000(Lgov/nist/javax/sip/message/MessageFactoryImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lgov/nist/javax/sip/message/MessageFactoryImpl;->testing:Z

    return v0
.end method

.method public static getDefaultContentEncodingCharset()Ljava/lang/String;
    .locals 1

    sget-object v0, Lgov/nist/javax/sip/message/MessageFactoryImpl;->defaultContentEncodingCharset:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultServerHeader()Ljavax/sip/header/ServerHeader;
    .locals 1

    sget-object v0, Lgov/nist/javax/sip/message/MessageFactoryImpl;->server:Ljavax/sip/header/ServerHeader;

    return-object v0
.end method

.method public static getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;
    .locals 1

    sget-object v0, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    return-object v0
.end method


# virtual methods
.method public createMultipartMimeContent(Ljavax/sip/header/ContentTypeHeader;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lgov/nist/javax/sip/message/MultipartMimeContent;
    .locals 7

    const-string v5, "boundary"

    invoke-interface {p1, v5}, Ljavax/sip/header/ContentTypeHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;

    invoke-direct {v4, p1}, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;-><init>(Ljavax/sip/header/ContentTypeHeader;)V

    const/4 v3, 0x0

    :goto_0
    array-length v5, p2

    if-ge v3, v5, :cond_0

    new-instance v2, Lgov/nist/javax/sip/header/ContentType;

    aget-object v5, p2, v3

    aget-object v6, p3, v3

    invoke-direct {v2, v5, v6}, Lgov/nist/javax/sip/header/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lgov/nist/javax/sip/message/ContentImpl;

    aget-object v5, p4, v3

    invoke-direct {v1, v5, v0}, Lgov/nist/javax/sip/message/ContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/message/ContentImpl;->setContentTypeHeader(Ljavax/sip/header/ContentTypeHeader;)V

    invoke-virtual {v4, v1}, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->add(Lgov/nist/javax/sip/message/Content;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v4
.end method

.method public createRequest(Ljava/lang/String;)Ljavax/sip/message/Request;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    new-instance v1, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-direct {v1}, Lgov/nist/javax/sip/message/SIPRequest;-><init>()V

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->setNullRequest()V

    move-object v2, v1

    :goto_0
    return-object v2

    :cond_1
    new-instance v3, Lgov/nist/javax/sip/parser/StringMsgParser;

    invoke-direct {v3}, Lgov/nist/javax/sip/parser/StringMsgParser;-><init>()V

    iget-boolean v4, p0, Lgov/nist/javax/sip/message/MessageFactoryImpl;->strict:Z

    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/parser/StringMsgParser;->setStrict(Z)V

    new-instance v0, Lgov/nist/javax/sip/message/MessageFactoryImpl$1;

    invoke-direct {v0, p0}, Lgov/nist/javax/sip/message/MessageFactoryImpl$1;-><init>(Lgov/nist/javax/sip/message/MessageFactoryImpl;)V

    iget-boolean v4, p0, Lgov/nist/javax/sip/message/MessageFactoryImpl;->testing:Z

    if-eqz v4, :cond_2

    invoke-virtual {v3, v0}, Lgov/nist/javax/sip/parser/StringMsgParser;->setParseExceptionListener(Lgov/nist/javax/sip/parser/ParseExceptionListener;)V

    :cond_2
    invoke-virtual {v3, p1}, Lgov/nist/javax/sip/parser/StringMsgParser;->parseSIPMessage(Ljava/lang/String;)Lgov/nist/javax/sip/message/SIPMessage;

    move-result-object v2

    instance-of v4, v2, Lgov/nist/javax/sip/message/SIPRequest;

    if-nez v4, :cond_3

    new-instance v4, Ljava/text/ParseException;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    :cond_3
    check-cast v2, Lgov/nist/javax/sip/message/SIPRequest;

    goto :goto_0
.end method

.method public createRequest(Ljavax/sip/address/URI;Ljava/lang/String;Ljavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;)Ljavax/sip/message/Request;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    if-eqz p7, :cond_0

    if-nez p8, :cond_1

    :cond_0
    new-instance v1, Ljava/text/ParseException;

    const-string v2, "JAIN-SIP Exception, some parameters are missing, unable to create the request"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_1
    new-instance v0, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-direct {v0}, Lgov/nist/javax/sip/message/SIPRequest;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestURI(Ljavax/sip/address/URI;)V

    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/message/SIPRequest;->setMethod(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lgov/nist/javax/sip/message/SIPRequest;->setCallId(Ljavax/sip/header/CallIdHeader;)V

    invoke-virtual {v0, p4}, Lgov/nist/javax/sip/message/SIPRequest;->setCSeq(Ljavax/sip/header/CSeqHeader;)V

    invoke-virtual {v0, p5}, Lgov/nist/javax/sip/message/SIPRequest;->setFrom(Ljavax/sip/header/FromHeader;)V

    invoke-virtual {v0, p6}, Lgov/nist/javax/sip/message/SIPRequest;->setTo(Ljavax/sip/header/ToHeader;)V

    invoke-virtual {v0, p7}, Lgov/nist/javax/sip/message/SIPRequest;->setVia(Ljava/util/List;)V

    invoke-virtual {v0, p8}, Lgov/nist/javax/sip/message/SIPRequest;->setMaxForwards(Ljavax/sip/header/MaxForwardsHeader;)V

    sget-object v1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    if-eqz v1, :cond_2

    sget-object v1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    :cond_2
    return-object v0
.end method

.method public createRequest(Ljavax/sip/address/URI;Ljava/lang/String;Ljavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;Ljavax/sip/header/ContentTypeHeader;Ljava/lang/Object;)Ljavax/sip/message/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    if-eqz p7, :cond_0

    if-eqz p8, :cond_0

    if-eqz p10, :cond_0

    if-nez p9, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null parameters"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-direct {v0}, Lgov/nist/javax/sip/message/SIPRequest;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestURI(Ljavax/sip/address/URI;)V

    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/message/SIPRequest;->setMethod(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lgov/nist/javax/sip/message/SIPRequest;->setCallId(Ljavax/sip/header/CallIdHeader;)V

    invoke-virtual {v0, p4}, Lgov/nist/javax/sip/message/SIPRequest;->setCSeq(Ljavax/sip/header/CSeqHeader;)V

    invoke-virtual {v0, p5}, Lgov/nist/javax/sip/message/SIPRequest;->setFrom(Ljavax/sip/header/FromHeader;)V

    invoke-virtual {v0, p6}, Lgov/nist/javax/sip/message/SIPRequest;->setTo(Ljavax/sip/header/ToHeader;)V

    invoke-virtual {v0, p7}, Lgov/nist/javax/sip/message/SIPRequest;->setVia(Ljava/util/List;)V

    invoke-virtual {v0, p8}, Lgov/nist/javax/sip/message/SIPRequest;->setMaxForwards(Ljavax/sip/header/MaxForwardsHeader;)V

    invoke-virtual {v0, p10, p9}, Lgov/nist/javax/sip/message/SIPRequest;->setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V

    sget-object v1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    if-eqz v1, :cond_2

    sget-object v1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    :cond_2
    return-object v0
.end method

.method public createRequest(Ljavax/sip/address/URI;Ljava/lang/String;Ljavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;Ljavax/sip/header/ContentTypeHeader;[B)Ljavax/sip/message/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    if-eqz p7, :cond_0

    if-eqz p8, :cond_0

    if-eqz p10, :cond_0

    if-nez p9, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "missing parameters"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-direct {v0}, Lgov/nist/javax/sip/message/SIPRequest;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestURI(Ljavax/sip/address/URI;)V

    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/message/SIPRequest;->setMethod(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lgov/nist/javax/sip/message/SIPRequest;->setCallId(Ljavax/sip/header/CallIdHeader;)V

    invoke-virtual {v0, p4}, Lgov/nist/javax/sip/message/SIPRequest;->setCSeq(Ljavax/sip/header/CSeqHeader;)V

    invoke-virtual {v0, p5}, Lgov/nist/javax/sip/message/SIPRequest;->setFrom(Ljavax/sip/header/FromHeader;)V

    invoke-virtual {v0, p6}, Lgov/nist/javax/sip/message/SIPRequest;->setTo(Ljavax/sip/header/ToHeader;)V

    invoke-virtual {v0, p7}, Lgov/nist/javax/sip/message/SIPRequest;->setVia(Ljava/util/List;)V

    invoke-virtual {v0, p8}, Lgov/nist/javax/sip/message/SIPRequest;->setMaxForwards(Ljavax/sip/header/MaxForwardsHeader;)V

    invoke-virtual {v0, p10, p9}, Lgov/nist/javax/sip/message/SIPRequest;->setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V

    sget-object v1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    if-eqz v1, :cond_2

    sget-object v1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    :cond_2
    return-object v0
.end method

.method public createRequest(Ljavax/sip/address/URI;Ljava/lang/String;Ljavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;[BLjavax/sip/header/ContentTypeHeader;)Ljavax/sip/message/Request;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    if-eqz p7, :cond_0

    if-eqz p8, :cond_0

    if-eqz p9, :cond_0

    if-nez p10, :cond_1

    :cond_0
    new-instance v1, Ljava/text/ParseException;

    const-string v2, "JAIN-SIP Exception, some parameters are missing, unable to create the request"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_1
    new-instance v0, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-direct {v0}, Lgov/nist/javax/sip/message/SIPRequest;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestURI(Ljavax/sip/address/URI;)V

    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/message/SIPRequest;->setMethod(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lgov/nist/javax/sip/message/SIPRequest;->setCallId(Ljavax/sip/header/CallIdHeader;)V

    invoke-virtual {v0, p4}, Lgov/nist/javax/sip/message/SIPRequest;->setCSeq(Ljavax/sip/header/CSeqHeader;)V

    invoke-virtual {v0, p5}, Lgov/nist/javax/sip/message/SIPRequest;->setFrom(Ljavax/sip/header/FromHeader;)V

    invoke-virtual {v0, p6}, Lgov/nist/javax/sip/message/SIPRequest;->setTo(Ljavax/sip/header/ToHeader;)V

    invoke-virtual {v0, p7}, Lgov/nist/javax/sip/message/SIPRequest;->setVia(Ljava/util/List;)V

    invoke-virtual {v0, p8}, Lgov/nist/javax/sip/message/SIPRequest;->setMaxForwards(Ljavax/sip/header/MaxForwardsHeader;)V

    check-cast p10, Lgov/nist/javax/sip/header/ContentType;

    invoke-virtual {v0, p10}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    invoke-virtual {v0, p9}, Lgov/nist/javax/sip/message/SIPRequest;->setMessageContent([B)V

    sget-object v1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    if-eqz v1, :cond_2

    sget-object v1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    :cond_2
    return-object v0
.end method

.method public createResponse(ILjavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;)Ljavax/sip/message/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    if-nez p7, :cond_1

    :cond_0
    new-instance v1, Ljava/text/ParseException;

    const-string v2, "JAIN-SIP Exception, some parameters are missing, unable to create the response"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_1
    new-instance v0, Lgov/nist/javax/sip/message/SIPResponse;

    invoke-direct {v0}, Lgov/nist/javax/sip/message/SIPResponse;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/message/SIPResponse;->setStatusCode(I)V

    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/message/SIPResponse;->setCallId(Ljavax/sip/header/CallIdHeader;)V

    invoke-virtual {v0, p3}, Lgov/nist/javax/sip/message/SIPResponse;->setCSeq(Ljavax/sip/header/CSeqHeader;)V

    invoke-virtual {v0, p4}, Lgov/nist/javax/sip/message/SIPResponse;->setFrom(Ljavax/sip/header/FromHeader;)V

    invoke-virtual {v0, p5}, Lgov/nist/javax/sip/message/SIPResponse;->setTo(Ljavax/sip/header/ToHeader;)V

    invoke-virtual {v0, p6}, Lgov/nist/javax/sip/message/SIPResponse;->setVia(Ljava/util/List;)V

    invoke-virtual {v0, p7}, Lgov/nist/javax/sip/message/SIPResponse;->setMaxForwards(Ljavax/sip/header/MaxForwardsHeader;)V

    sget-object v1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    if-eqz v1, :cond_2

    sget-object v1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    :cond_2
    return-object v0
.end method

.method public createResponse(ILjavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)Ljavax/sip/message/Response;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    if-eqz p7, :cond_0

    if-eqz p8, :cond_0

    if-nez p9, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, " unable to create the response"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v1, Lgov/nist/javax/sip/message/SIPResponse;

    invoke-direct {v1}, Lgov/nist/javax/sip/message/SIPResponse;-><init>()V

    new-instance v2, Lgov/nist/javax/sip/header/StatusLine;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/StatusLine;-><init>()V

    invoke-virtual {v2, p1}, Lgov/nist/javax/sip/header/StatusLine;->setStatusCode(I)V

    invoke-static {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getReasonPhrase(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/header/StatusLine;->setReasonPhrase(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/message/SIPResponse;->setStatusLine(Lgov/nist/javax/sip/header/StatusLine;)V

    invoke-virtual {v1, p2}, Lgov/nist/javax/sip/message/SIPResponse;->setCallId(Ljavax/sip/header/CallIdHeader;)V

    invoke-virtual {v1, p3}, Lgov/nist/javax/sip/message/SIPResponse;->setCSeq(Ljavax/sip/header/CSeqHeader;)V

    invoke-virtual {v1, p4}, Lgov/nist/javax/sip/message/SIPResponse;->setFrom(Ljavax/sip/header/FromHeader;)V

    invoke-virtual {v1, p5}, Lgov/nist/javax/sip/message/SIPResponse;->setTo(Ljavax/sip/header/ToHeader;)V

    invoke-virtual {v1, p6}, Lgov/nist/javax/sip/message/SIPResponse;->setVia(Ljava/util/List;)V

    invoke-virtual {v1, p7}, Lgov/nist/javax/sip/message/SIPResponse;->setMaxForwards(Ljavax/sip/header/MaxForwardsHeader;)V

    invoke-virtual {v1, p8, p9}, Lgov/nist/javax/sip/message/SIPResponse;->setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V

    sget-object v3, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    if-eqz v3, :cond_2

    sget-object v3, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    :cond_2
    return-object v1
.end method

.method public createResponse(ILjavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;Ljavax/sip/header/ContentTypeHeader;Ljava/lang/Object;)Ljavax/sip/message/Response;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    if-eqz p7, :cond_0

    if-eqz p9, :cond_0

    if-nez p8, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "missing parameters"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v1, Lgov/nist/javax/sip/message/SIPResponse;

    invoke-direct {v1}, Lgov/nist/javax/sip/message/SIPResponse;-><init>()V

    new-instance v2, Lgov/nist/javax/sip/header/StatusLine;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/StatusLine;-><init>()V

    invoke-virtual {v2, p1}, Lgov/nist/javax/sip/header/StatusLine;->setStatusCode(I)V

    invoke-static {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getReasonPhrase(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Unknown"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    :cond_2
    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/header/StatusLine;->setReasonPhrase(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/message/SIPResponse;->setStatusLine(Lgov/nist/javax/sip/header/StatusLine;)V

    invoke-virtual {v1, p2}, Lgov/nist/javax/sip/message/SIPResponse;->setCallId(Ljavax/sip/header/CallIdHeader;)V

    invoke-virtual {v1, p3}, Lgov/nist/javax/sip/message/SIPResponse;->setCSeq(Ljavax/sip/header/CSeqHeader;)V

    invoke-virtual {v1, p4}, Lgov/nist/javax/sip/message/SIPResponse;->setFrom(Ljavax/sip/header/FromHeader;)V

    invoke-virtual {v1, p5}, Lgov/nist/javax/sip/message/SIPResponse;->setTo(Ljavax/sip/header/ToHeader;)V

    invoke-virtual {v1, p6}, Lgov/nist/javax/sip/message/SIPResponse;->setVia(Ljava/util/List;)V

    invoke-virtual {v1, p9, p8}, Lgov/nist/javax/sip/message/SIPResponse;->setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V

    sget-object v3, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    if-eqz v3, :cond_3

    sget-object v3, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    :cond_3
    return-object v1
.end method

.method public createResponse(ILjavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;Ljavax/sip/header/ContentTypeHeader;[B)Ljavax/sip/message/Response;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    if-eqz p7, :cond_0

    if-eqz p9, :cond_0

    if-nez p8, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "missing parameters"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v1, Lgov/nist/javax/sip/message/SIPResponse;

    invoke-direct {v1}, Lgov/nist/javax/sip/message/SIPResponse;-><init>()V

    new-instance v2, Lgov/nist/javax/sip/header/StatusLine;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/StatusLine;-><init>()V

    invoke-virtual {v2, p1}, Lgov/nist/javax/sip/header/StatusLine;->setStatusCode(I)V

    invoke-static {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getReasonPhrase(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : Unknown"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    :cond_2
    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/header/StatusLine;->setReasonPhrase(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/message/SIPResponse;->setStatusLine(Lgov/nist/javax/sip/header/StatusLine;)V

    invoke-virtual {v1, p2}, Lgov/nist/javax/sip/message/SIPResponse;->setCallId(Ljavax/sip/header/CallIdHeader;)V

    invoke-virtual {v1, p3}, Lgov/nist/javax/sip/message/SIPResponse;->setCSeq(Ljavax/sip/header/CSeqHeader;)V

    invoke-virtual {v1, p4}, Lgov/nist/javax/sip/message/SIPResponse;->setFrom(Ljavax/sip/header/FromHeader;)V

    invoke-virtual {v1, p5}, Lgov/nist/javax/sip/message/SIPResponse;->setTo(Ljavax/sip/header/ToHeader;)V

    invoke-virtual {v1, p6}, Lgov/nist/javax/sip/message/SIPResponse;->setVia(Ljava/util/List;)V

    invoke-virtual {v1, p9, p8}, Lgov/nist/javax/sip/message/SIPResponse;->setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V

    sget-object v3, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    if-eqz v3, :cond_3

    sget-object v3, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    :cond_3
    return-object v1
.end method

.method public createResponse(ILjavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;[BLjavax/sip/header/ContentTypeHeader;)Ljavax/sip/message/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    if-eqz p7, :cond_0

    if-eqz p8, :cond_0

    if-nez p9, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null params "

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Lgov/nist/javax/sip/message/SIPResponse;

    invoke-direct {v0}, Lgov/nist/javax/sip/message/SIPResponse;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/message/SIPResponse;->setStatusCode(I)V

    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/message/SIPResponse;->setCallId(Ljavax/sip/header/CallIdHeader;)V

    invoke-virtual {v0, p3}, Lgov/nist/javax/sip/message/SIPResponse;->setCSeq(Ljavax/sip/header/CSeqHeader;)V

    invoke-virtual {v0, p4}, Lgov/nist/javax/sip/message/SIPResponse;->setFrom(Ljavax/sip/header/FromHeader;)V

    invoke-virtual {v0, p5}, Lgov/nist/javax/sip/message/SIPResponse;->setTo(Ljavax/sip/header/ToHeader;)V

    invoke-virtual {v0, p6}, Lgov/nist/javax/sip/message/SIPResponse;->setVia(Ljava/util/List;)V

    invoke-virtual {v0, p7}, Lgov/nist/javax/sip/message/SIPResponse;->setMaxForwards(Ljavax/sip/header/MaxForwardsHeader;)V

    check-cast p9, Lgov/nist/javax/sip/header/ContentType;

    invoke-virtual {v0, p9}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    invoke-virtual {v0, p8}, Lgov/nist/javax/sip/message/SIPResponse;->setMessageContent([B)V

    sget-object v1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    if-eqz v1, :cond_2

    sget-object v1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    :cond_2
    return-object v0
.end method

.method public createResponse(ILjavax/sip/message/Request;)Ljavax/sip/message/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "null parameters"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v0, p2

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->removeContent()V

    const-string v2, "Content-Type"

    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/message/SIPResponse;->removeHeader(Ljava/lang/String;)V

    sget-object v2, Lgov/nist/javax/sip/message/MessageFactoryImpl;->server:Ljavax/sip/header/ServerHeader;

    if-eqz v2, :cond_1

    sget-object v2, Lgov/nist/javax/sip/message/MessageFactoryImpl;->server:Ljavax/sip/header/ServerHeader;

    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    :cond_1
    return-object v1
.end method

.method public createResponse(ILjavax/sip/message/Request;Ljavax/sip/header/ContentTypeHeader;Ljava/lang/Object;)Ljavax/sip/message/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "null parameters"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object v0, p2

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v1

    invoke-virtual {v1, p4, p3}, Lgov/nist/javax/sip/message/SIPResponse;->setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V

    sget-object v2, Lgov/nist/javax/sip/message/MessageFactoryImpl;->server:Ljavax/sip/header/ServerHeader;

    if-eqz v2, :cond_2

    sget-object v2, Lgov/nist/javax/sip/message/MessageFactoryImpl;->server:Ljavax/sip/header/ServerHeader;

    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    :cond_2
    return-object v1
.end method

.method public createResponse(ILjavax/sip/message/Request;Ljavax/sip/header/ContentTypeHeader;[B)Ljavax/sip/message/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "null Parameters"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object v0, p2

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v1

    check-cast p3, Lgov/nist/javax/sip/header/ContentType;

    invoke-virtual {v1, p3}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    invoke-virtual {v1, p4}, Lgov/nist/javax/sip/message/SIPResponse;->setMessageContent([B)V

    sget-object v2, Lgov/nist/javax/sip/message/MessageFactoryImpl;->server:Ljavax/sip/header/ServerHeader;

    if-eqz v2, :cond_2

    sget-object v2, Lgov/nist/javax/sip/message/MessageFactoryImpl;->server:Ljavax/sip/header/ServerHeader;

    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    :cond_2
    return-object v1
.end method

.method public createResponse(Ljava/lang/String;)Ljavax/sip/message/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Lgov/nist/javax/sip/message/SIPResponse;

    invoke-direct {v0}, Lgov/nist/javax/sip/message/SIPResponse;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lgov/nist/javax/sip/parser/StringMsgParser;

    invoke-direct {v1}, Lgov/nist/javax/sip/parser/StringMsgParser;-><init>()V

    invoke-virtual {v1, p1}, Lgov/nist/javax/sip/parser/StringMsgParser;->parseSIPMessage(Ljava/lang/String;)Lgov/nist/javax/sip/message/SIPMessage;

    move-result-object v0

    instance-of v2, v0, Lgov/nist/javax/sip/message/SIPResponse;

    if-nez v2, :cond_1

    new-instance v2, Ljava/text/ParseException;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_1
    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    goto :goto_0
.end method

.method public setDefaultContentEncodingCharset(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null argument!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sput-object p1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->defaultContentEncodingCharset:Ljava/lang/String;

    return-void
.end method

.method public setDefaultServerHeader(Ljavax/sip/header/ServerHeader;)V
    .locals 0

    sput-object p1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->server:Ljavax/sip/header/ServerHeader;

    return-void
.end method

.method public setDefaultUserAgentHeader(Ljavax/sip/header/UserAgentHeader;)V
    .locals 0

    sput-object p1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    return-void
.end method

.method public setStrict(Z)V
    .locals 0

    iput-boolean p1, p0, Lgov/nist/javax/sip/message/MessageFactoryImpl;->strict:Z

    return-void
.end method

.method public setTest(Z)V
    .locals 0

    iput-boolean p1, p0, Lgov/nist/javax/sip/message/MessageFactoryImpl;->testing:Z

    return-void
.end method
