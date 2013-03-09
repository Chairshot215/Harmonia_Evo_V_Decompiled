.class public abstract Lgov/nist/javax/sip/message/SIPMessage;
.super Lgov/nist/javax/sip/message/MessageObject;
.source "SIPMessage.java"

# interfaces
.implements Ljavax/sip/message/Message;
.implements Lgov/nist/javax/sip/message/MessageExt;


# static fields
.field private static final AUTHORIZATION_LOWERCASE:Ljava/lang/String;

.field private static final CONTACT_LOWERCASE:Ljava/lang/String;

.field private static final CONTENT_DISPOSITION_LOWERCASE:Ljava/lang/String;

.field private static final CONTENT_ENCODING_LOWERCASE:Ljava/lang/String;

.field private static final CONTENT_LANGUAGE_LOWERCASE:Ljava/lang/String;

.field private static final CONTENT_TYPE_LOWERCASE:Ljava/lang/String;

.field private static final ERROR_LOWERCASE:Ljava/lang/String;

.field private static final EXPIRES_LOWERCASE:Ljava/lang/String;

.field private static final RECORDROUTE_LOWERCASE:Ljava/lang/String;

.field private static final ROUTE_LOWERCASE:Ljava/lang/String;

.field private static final VIA_LOWERCASE:Ljava/lang/String;


# instance fields
.field protected applicationData:Ljava/lang/Object;

.field protected cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

.field protected callIdHeader:Lgov/nist/javax/sip/header/CallID;

.field private contentEncodingCharset:Ljava/lang/String;

.field protected contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

.field protected fromHeader:Lgov/nist/javax/sip/header/From;

.field protected headers:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lgov/nist/javax/sip/header/SIPHeader;",
            ">;"
        }
    .end annotation
.end field

.field protected maxForwardsHeader:Lgov/nist/javax/sip/header/MaxForwards;

.field private messageContent:Ljava/lang/String;

.field private messageContentBytes:[B

.field private messageContentObject:Ljava/lang/Object;

.field private nameTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/header/SIPHeader;",
            ">;"
        }
    .end annotation
.end field

.field protected nullRequest:Z

.field protected size:I

.field protected toHeader:Lgov/nist/javax/sip/header/To;

.field protected unrecognizedHeaders:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Content-Type"

    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->CONTENT_TYPE_LOWERCASE:Ljava/lang/String;

    const-string v0, "Error-Info"

    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->ERROR_LOWERCASE:Ljava/lang/String;

    const-string v0, "Contact"

    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->CONTACT_LOWERCASE:Ljava/lang/String;

    const-string v0, "Via"

    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->VIA_LOWERCASE:Ljava/lang/String;

    const-string v0, "Authorization"

    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->AUTHORIZATION_LOWERCASE:Ljava/lang/String;

    const-string v0, "Route"

    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->ROUTE_LOWERCASE:Ljava/lang/String;

    const-string v0, "Record-Route"

    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->RECORDROUTE_LOWERCASE:Ljava/lang/String;

    const-string v0, "Content-Disposition"

    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->CONTENT_DISPOSITION_LOWERCASE:Ljava/lang/String;

    const-string v0, "Content-Encoding"

    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->CONTENT_ENCODING_LOWERCASE:Ljava/lang/String;

    const-string v0, "Content-Language"

    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->CONTENT_LANGUAGE_LOWERCASE:Ljava/lang/String;

    const-string v0, "Expires"

    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->EXPIRES_LOWERCASE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lgov/nist/javax/sip/message/MessageObject;-><init>()V

    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultContentEncodingCharset()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentEncodingCharset:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->unrecognizedHeaders:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    :try_start_0
    new-instance v0, Lgov/nist/javax/sip/header/ContentLength;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgov/nist/javax/sip/header/ContentLength;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private attachHeader(Lgov/nist/javax/sip/header/SIPHeader;)V
    .locals 4

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "null header!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    :try_start_0
    instance-of v2, p1, Lgov/nist/javax/sip/header/SIPHeaderList;

    if-eqz v2, :cond_1

    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/header/SIPHeaderList;

    move-object v1, v0

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/SIPHeaderList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;ZZ)V
    :try_end_0
    .catch Lgov/nist/javax/sip/message/SIPDuplicateHeaderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private computeContentLength(Ljava/lang/Object;)V
    .locals 3

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_1

    :try_start_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getCharset()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v1, v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/header/ContentLength;->setContentLength(I)V
    :try_end_1
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    instance-of v2, p1, [B

    if-eqz v2, :cond_2

    check-cast p1, [B

    check-cast p1, [B

    array-length v1, p1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private getHeaderList(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lgov/nist/javax/sip/header/SIPHeader;",
            ">;"
        }
    .end annotation

    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-static {p1}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/SIPHeader;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    instance-of v2, v1, Lgov/nist/javax/sip/header/SIPHeaderList;

    if-eqz v2, :cond_1

    check-cast v1, Lgov/nist/javax/sip/header/SIPHeaderList;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/SIPHeaderList;->getHeaderList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getHeaderLowerCase(Ljava/lang/String;)Ljavax/sip/header/Header;
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "bad name"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/SIPHeader;

    instance-of v1, v0, Lgov/nist/javax/sip/header/SIPHeaderList;

    if-eqz v1, :cond_1

    check-cast v0, Lgov/nist/javax/sip/header/SIPHeaderList;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/SIPHeaderList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private getSIPHeaderListLowerCase(Ljava/lang/String;)Lgov/nist/javax/sip/header/SIPHeader;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/SIPHeader;

    return-object v0
.end method

.method public static isRequestHeader(Lgov/nist/javax/sip/header/SIPHeader;)Z
    .locals 1

    instance-of v0, p0, Lgov/nist/javax/sip/header/AlertInfo;

    if-nez v0, :cond_0

    instance-of v0, p0, Lgov/nist/javax/sip/header/InReplyTo;

    if-nez v0, :cond_0

    instance-of v0, p0, Lgov/nist/javax/sip/header/Authorization;

    if-nez v0, :cond_0

    instance-of v0, p0, Lgov/nist/javax/sip/header/MaxForwards;

    if-nez v0, :cond_0

    instance-of v0, p0, Lgov/nist/javax/sip/header/UserAgent;

    if-nez v0, :cond_0

    instance-of v0, p0, Lgov/nist/javax/sip/header/Priority;

    if-nez v0, :cond_0

    instance-of v0, p0, Lgov/nist/javax/sip/header/ProxyAuthorization;

    if-nez v0, :cond_0

    instance-of v0, p0, Lgov/nist/javax/sip/header/ProxyRequire;

    if-nez v0, :cond_0

    instance-of v0, p0, Lgov/nist/javax/sip/header/ProxyRequireList;

    if-nez v0, :cond_0

    instance-of v0, p0, Lgov/nist/javax/sip/header/Route;

    if-nez v0, :cond_0

    instance-of v0, p0, Lgov/nist/javax/sip/header/RouteList;

    if-nez v0, :cond_0

    instance-of v0, p0, Lgov/nist/javax/sip/header/Subject;

    if-nez v0, :cond_0

    instance-of v0, p0, Lgov/nist/javax/sip/header/SIPIfMatch;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isResponseHeader(Lgov/nist/javax/sip/header/SIPHeader;)Z
    .locals 1

    instance-of v0, p0, Lgov/nist/javax/sip/header/ErrorInfo;

    if-nez v0, :cond_0

    instance-of v0, p0, Lgov/nist/javax/sip/header/ProxyAuthenticate;

    if-nez v0, :cond_0

    instance-of v0, p0, Lgov/nist/javax/sip/header/Server;

    if-nez v0, :cond_0

    instance-of v0, p0, Lgov/nist/javax/sip/header/Unsupported;

    if-nez v0, :cond_0

    instance-of v0, p0, Lgov/nist/javax/sip/header/RetryAfter;

    if-nez v0, :cond_0

    instance-of v0, p0, Lgov/nist/javax/sip/header/Warning;

    if-nez v0, :cond_0

    instance-of v0, p0, Lgov/nist/javax/sip/header/WWWAuthenticate;

    if-nez v0, :cond_0

    instance-of v0, p0, Lgov/nist/javax/sip/header/SIPETag;

    if-nez v0, :cond_0

    instance-of v0, p0, Lgov/nist/javax/sip/header/RSeq;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addFirst(Ljavax/sip/header/Header;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null arg!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    check-cast p1, Lgov/nist/javax/sip/header/SIPHeader;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;ZZ)V
    :try_end_0
    .catch Lgov/nist/javax/sip/message/SIPDuplicateHeaderException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljavax/sip/SipException;

    const-string v2, "Cannot add header - header already exists"

    invoke-direct {v1, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addHeader(Ljava/lang/String;)V
    .locals 6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {p1}, Lgov/nist/javax/sip/parser/ParserFactory;->createParser(Ljava/lang/String;)Lgov/nist/javax/sip/parser/HeaderParser;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/javax/sip/parser/HeaderParser;->parse()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;Z)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPMessage;->unrecognizedHeaders:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addHeader(Ljavax/sip/header/Header;)V
    .locals 6

    move-object v3, p1

    check-cast v3, Lgov/nist/javax/sip/header/SIPHeader;

    :try_start_0
    instance-of v4, p1, Ljavax/sip/header/ViaHeader;

    if-nez v4, :cond_0

    instance-of v4, p1, Ljavax/sip/header/RecordRouteHeader;

    if-eqz v4, :cond_2

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v5}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;ZZ)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;ZZ)V
    :try_end_0
    .catch Lgov/nist/javax/sip/message/SIPDuplicateHeaderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    instance-of v4, p1, Lgov/nist/javax/sip/header/ContentLength;

    if-eqz v4, :cond_1

    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/header/ContentLength;

    move-object v1, v0

    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/ContentLength;->getContentLength()I

    move-result v5

    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/header/ContentLength;->setContentLength(I)V
    :try_end_1
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public addLast(Ljavax/sip/header/Header;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null arg!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    check-cast p1, Lgov/nist/javax/sip/header/SIPHeader;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;ZZ)V
    :try_end_0
    .catch Lgov/nist/javax/sip/message/SIPDuplicateHeaderException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljavax/sip/SipException;

    const-string v2, "Cannot add header - header already exists"

    invoke-direct {v1, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addUnparsed(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->unrecognizedHeaders:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public attachHeader(Lgov/nist/javax/sip/header/SIPHeader;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;ZZ)V

    return-void
.end method

.method public attachHeader(Lgov/nist/javax/sip/header/SIPHeader;ZZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v9, Ljava/lang/NullPointerException;

    const-string v10, "null header"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_0
    invoke-static {p1}, Lgov/nist/javax/sip/message/ListMap;->hasList(Lgov/nist/javax/sip/header/SIPHeader;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-class v9, Lgov/nist/javax/sip/header/SIPHeaderList;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-static {p1}, Lgov/nist/javax/sip/message/ListMap;->getList(Lgov/nist/javax/sip/header/SIPHeader;)Lgov/nist/javax/sip/header/SIPHeaderList;

    move-result-object v3

    invoke-virtual {v3, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    move-object v2, v3

    :goto_0
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/SIPHeader;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz p2, :cond_4

    iget-object v9, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v9, v5}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p1}, Lgov/nist/javax/sip/header/SIPHeader;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/message/SIPMessage;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v8

    check-cast v8, Lgov/nist/javax/sip/header/SIPHeader;

    if-eqz v8, :cond_6

    iget-object v9, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/header/SIPHeader;

    invoke-virtual {v7, v8}, Lgov/nist/javax/sip/header/SIPHeader;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_3
    move-object v2, p1

    goto :goto_0

    :cond_4
    iget-object v9, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v9, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    instance-of v9, v2, Lgov/nist/javax/sip/header/SIPHeaderList;

    if-nez v9, :cond_1

    instance-of v9, v2, Lgov/nist/javax/sip/header/ContentLength;

    if-eqz v9, :cond_5

    :try_start_0
    move-object v0, v2

    check-cast v0, Lgov/nist/javax/sip/header/ContentLength;

    move-object v1, v0

    iget-object v9, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/ContentLength;->getContentLength()I

    move-result v10

    invoke-virtual {v9, v10}, Lgov/nist/javax/sip/header/ContentLength;->setContentLength(I)V
    :try_end_0
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_2
    return-void

    :cond_6
    iget-object v9, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v9, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v9, v5, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v9, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :goto_3
    instance-of v9, v2, Lgov/nist/javax/sip/header/From;

    if-eqz v9, :cond_a

    check-cast v2, Lgov/nist/javax/sip/header/From;

    iput-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->fromHeader:Lgov/nist/javax/sip/header/From;

    goto :goto_2

    :cond_7
    instance-of v9, v2, Lgov/nist/javax/sip/header/SIPHeaderList;

    if-eqz v9, :cond_9

    iget-object v9, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v9, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/header/SIPHeaderList;

    if-eqz v4, :cond_8

    move-object v9, v2

    check-cast v9, Lgov/nist/javax/sip/header/SIPHeaderList;

    invoke-virtual {v4, v9, p3}, Lgov/nist/javax/sip/header/SIPHeaderList;->concatenate(Lgov/nist/javax/sip/header/SIPHeaderList;Z)V

    goto :goto_3

    :cond_8
    iget-object v9, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v9, v5, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_9
    iget-object v9, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v9, v5, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_a
    instance-of v9, v2, Lgov/nist/javax/sip/header/ContentLength;

    if-eqz v9, :cond_b

    check-cast v2, Lgov/nist/javax/sip/header/ContentLength;

    iput-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    goto :goto_2

    :cond_b
    instance-of v9, v2, Lgov/nist/javax/sip/header/To;

    if-eqz v9, :cond_c

    check-cast v2, Lgov/nist/javax/sip/header/To;

    iput-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->toHeader:Lgov/nist/javax/sip/header/To;

    goto :goto_2

    :cond_c
    instance-of v9, v2, Lgov/nist/javax/sip/header/CSeq;

    if-eqz v9, :cond_d

    check-cast v2, Lgov/nist/javax/sip/header/CSeq;

    iput-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    goto :goto_2

    :cond_d
    instance-of v9, v2, Lgov/nist/javax/sip/header/CallID;

    if-eqz v9, :cond_e

    check-cast v2, Lgov/nist/javax/sip/header/CallID;

    iput-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    goto :goto_2

    :cond_e
    instance-of v9, v2, Lgov/nist/javax/sip/header/MaxForwards;

    if-eqz v9, :cond_5

    check-cast v2, Lgov/nist/javax/sip/header/MaxForwards;

    iput-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->maxForwardsHeader:Lgov/nist/javax/sip/header/MaxForwards;

    goto :goto_2

    :catch_0
    move-exception v9

    goto :goto_2
.end method

.method public clone()Ljava/lang/Object;
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Lgov/nist/javax/sip/message/MessageObject;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/message/SIPMessage;

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, v2, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    iput-object v4, v2, Lgov/nist/javax/sip/message/SIPMessage;->fromHeader:Lgov/nist/javax/sip/header/From;

    iput-object v4, v2, Lgov/nist/javax/sip/message/SIPMessage;->toHeader:Lgov/nist/javax/sip/header/To;

    iput-object v4, v2, Lgov/nist/javax/sip/message/SIPMessage;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    iput-object v4, v2, Lgov/nist/javax/sip/message/SIPMessage;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    iput-object v4, v2, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    iput-object v4, v2, Lgov/nist/javax/sip/message/SIPMessage;->maxForwardsHeader:Lgov/nist/javax/sip/header/MaxForwards;

    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v3, :cond_0

    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v3, v2, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/SIPHeader;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/SIPHeader;

    invoke-direct {v2, v3}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    if-eqz v3, :cond_1

    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    check-cast v3, [B

    iput-object v3, v2, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    :cond_1
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    invoke-static {v3}, Lgov/nist/javax/sip/message/SIPMessage;->makeClone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    :cond_2
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->unrecognizedHeaders:Ljava/util/LinkedList;

    iput-object v3, v2, Lgov/nist/javax/sip/message/SIPMessage;->unrecognizedHeaders:Ljava/util/LinkedList;

    return-object v2
.end method

.method public debugDump()Ljava/lang/String;
    .locals 8

    const-string v6, ""

    iput-object v6, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    const-string v6, "SIPMessage:"

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/message/SIPMessage;->sprint(Ljava/lang/String;)V

    const-string v6, "{"

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/message/SIPMessage;->sprint(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_1

    aget-object v1, v4, v5

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    const-class v6, Lgov/nist/javax/sip/header/SIPHeader;

    invoke-virtual {v6, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "headers"

    invoke-virtual {v2, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/message/SIPMessage;->sprint(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgov/nist/javax/sip/header/SIPHeader;

    invoke-virtual {v6}, Lgov/nist/javax/sip/header/SIPHeader;->debugDump()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/message/SIPMessage;->sprint(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    :cond_1
    const-string v6, "List of headers : "

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/message/SIPMessage;->sprint(Ljava/lang/String;)V

    iget-object v6, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/message/SIPMessage;->sprint(Ljava/lang/String;)V

    const-string v6, "messageContent = "

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/message/SIPMessage;->sprint(Ljava/lang/String;)V

    const-string v6, "{"

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/message/SIPMessage;->sprint(Ljava/lang/String;)V

    iget-object v6, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/message/SIPMessage;->sprint(Ljava/lang/String;)V

    const-string v6, "}"

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/message/SIPMessage;->sprint(Ljava/lang/String;)V

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getContent()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getContent()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/message/SIPMessage;->sprint(Ljava/lang/String;)V

    :cond_2
    const-string v6, "}"

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/message/SIPMessage;->sprint(Ljava/lang/String;)V

    iget-object v6, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    return-object v6
.end method

.method public encode()Ljava/lang/String;
    .locals 11

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v9, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/header/SIPHeader;

    instance-of v9, v7, Lgov/nist/javax/sip/header/ContentLength;

    if-nez v9, :cond_0

    invoke-virtual {v7}, Lgov/nist/javax/sip/header/SIPHeader;->encode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    iget-object v9, p0, Lgov/nist/javax/sip/message/SIPMessage;->unrecognizedHeaders:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    iget-object v9, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    invoke-virtual {v9}, Lgov/nist/javax/sip/header/ContentLength;->encode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v9, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    if-eqz v9, :cond_4

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getContent()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    :cond_4
    iget-object v9, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    if-nez v9, :cond_5

    iget-object v9, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    if-eqz v9, :cond_3

    :cond_5
    const/4 v0, 0x0

    :try_start_0
    iget-object v9, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    if-eqz v9, :cond_6

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_6
    :try_start_1
    new-instance v1, Ljava/lang/String;

    iget-object v9, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getCharset()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    goto :goto_3

    :catch_0
    move-exception v3

    invoke-static {v3}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_3
.end method

.method public encodeAsBytes(Ljava/lang/String;)[B
    .locals 12

    const/4 v11, 0x0

    instance-of v9, p0, Lgov/nist/javax/sip/message/SIPRequest;

    if-eqz v9, :cond_0

    move-object v9, p0

    check-cast v9, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v9}, Lgov/nist/javax/sip/message/SIPRequest;->isNullRequest()Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "\r\n\r\n"

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    :goto_0
    return-object v6

    :cond_0
    const-string v9, "Via"

    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/message/SIPMessage;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v8

    check-cast v8, Ljavax/sip/header/ViaHeader;

    :try_start_0
    invoke-interface {v8, p1}, Ljavax/sip/header/ViaHeader;->setTransport(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v10, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v10

    :try_start_1
    iget-object v9, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/header/SIPHeader;

    instance-of v9, v7, Lgov/nist/javax/sip/header/ContentLength;

    if-nez v9, :cond_1

    invoke-virtual {v7, v2}, Lgov/nist/javax/sip/header/SIPHeader;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_2

    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    :catch_0
    move-exception v1

    invoke-static {v1}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_2
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v9, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    invoke-virtual {v9, v2}, Lgov/nist/javax/sip/header/ContentLength;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string v9, "\r\n"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getRawContent()[B

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v5, 0x0

    :try_start_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getCharset()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v5

    :goto_3
    array-length v9, v5

    array-length v10, v0

    add-int/2addr v9, v10

    new-array v6, v9, [B

    array-length v9, v5

    invoke-static {v5, v11, v6, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v9, v5

    array-length v10, v0

    invoke-static {v0, v11, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :catch_1
    move-exception v3

    invoke-static {v3}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_3

    :cond_3
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getCharset()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v6

    goto :goto_0

    :catch_2
    move-exception v3

    invoke-static {v3}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public abstract encodeMessage()Ljava/lang/String;
.end method

.method protected encodeSIPHeaders()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/SIPHeader;

    instance-of v3, v2, Lgov/nist/javax/sip/header/ContentLength;

    if-nez v3, :cond_0

    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/header/SIPHeader;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    invoke-virtual {v3, v0}, Lgov/nist/javax/sip/header/ContentLength;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    move-object v3, p1

    check-cast v3, Lgov/nist/javax/sip/message/SIPMessage;

    iget-object v6, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v6, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->size()I

    move-result v6

    iget-object v7, v3, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v7}, Ljava/util/Hashtable;->size()I

    move-result v7

    if-ne v6, v7, :cond_0

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/SIPHeader;

    iget-object v6, v3, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/SIPHeader;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/SIPHeader;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/SIPHeader;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_3
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public getApplicationData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->applicationData:Ljava/lang/Object;

    return-object v0
.end method

.method public getAuthorization()Lgov/nist/javax/sip/header/Authorization;
    .locals 1

    sget-object v0, Lgov/nist/javax/sip/message/SIPMessage;->AUTHORIZATION_LOWERCASE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->getHeaderLowerCase(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/Authorization;

    return-object v0
.end method

.method public getCSeq()Ljavax/sip/header/CSeqHeader;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    return-object v0
.end method

.method public getCSeqHeader()Ljavax/sip/header/CSeqHeader;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    return-object v0
.end method

.method public getCallId()Ljavax/sip/header/CallIdHeader;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    return-object v0
.end method

.method public getCallIdHeader()Ljavax/sip/header/CallIdHeader;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    return-object v0
.end method

.method protected final getCharset()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getContentTypeHeader()Lgov/nist/javax/sip/header/ContentType;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/ContentType;->getCharset()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentEncodingCharset:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentEncodingCharset:Ljava/lang/String;

    goto :goto_0
.end method

.method public getContactHeader()Lgov/nist/javax/sip/header/Contact;
    .locals 2

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getContactHeaders()Lgov/nist/javax/sip/header/ContactList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ContactList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/Contact;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContactHeaders()Lgov/nist/javax/sip/header/ContactList;
    .locals 1

    sget-object v0, Lgov/nist/javax/sip/message/SIPMessage;->CONTACT_LOWERCASE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->getSIPHeaderListLowerCase(Ljava/lang/String;)Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ContactList;

    return-object v0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContentDisposition()Ljavax/sip/header/ContentDispositionHeader;
    .locals 1

    sget-object v0, Lgov/nist/javax/sip/message/SIPMessage;->CONTENT_DISPOSITION_LOWERCASE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->getHeaderLowerCase(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax/sip/header/ContentDispositionHeader;

    return-object v0
.end method

.method public getContentEncoding()Ljavax/sip/header/ContentEncodingHeader;
    .locals 1

    sget-object v0, Lgov/nist/javax/sip/message/SIPMessage;->CONTENT_ENCODING_LOWERCASE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->getHeaderLowerCase(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax/sip/header/ContentEncodingHeader;

    return-object v0
.end method

.method public getContentLanguage()Ljavax/sip/header/ContentLanguageHeader;
    .locals 1

    sget-object v0, Lgov/nist/javax/sip/message/SIPMessage;->CONTENT_LANGUAGE_LOWERCASE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->getHeaderLowerCase(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax/sip/header/ContentLanguageHeader;

    return-object v0
.end method

.method public getContentLength()Ljavax/sip/header/ContentLengthHeader;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    return-object v0
.end method

.method public getContentLengthHeader()Ljavax/sip/header/ContentLengthHeader;
    .locals 1

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    move-result-object v0

    return-object v0
.end method

.method public getContentTypeHeader()Lgov/nist/javax/sip/header/ContentType;
    .locals 1

    sget-object v0, Lgov/nist/javax/sip/message/SIPMessage;->CONTENT_TYPE_LOWERCASE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->getHeaderLowerCase(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ContentType;

    return-object v0
.end method

.method public bridge synthetic getContentTypeHeader()Ljavax/sip/header/ContentTypeHeader;
    .locals 1

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getContentTypeHeader()Lgov/nist/javax/sip/header/ContentType;

    move-result-object v0

    return-object v0
.end method

.method public abstract getDialogId(Z)Ljava/lang/String;
.end method

.method public getErrorInfoHeaders()Lgov/nist/javax/sip/header/ErrorInfoList;
    .locals 1

    sget-object v0, Lgov/nist/javax/sip/message/SIPMessage;->ERROR_LOWERCASE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->getSIPHeaderListLowerCase(Ljava/lang/String;)Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ErrorInfoList;

    return-object v0
.end method

.method public getExpires()Ljavax/sip/header/ExpiresHeader;
    .locals 1

    sget-object v0, Lgov/nist/javax/sip/message/SIPMessage;->EXPIRES_LOWERCASE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->getHeaderLowerCase(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax/sip/header/ExpiresHeader;

    return-object v0
.end method

.method public abstract getFirstLine()Ljava/lang/String;
.end method

.method public getFrom()Ljavax/sip/header/FromHeader;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->fromHeader:Lgov/nist/javax/sip/header/From;

    return-object v0
.end method

.method public getFromHeader()Ljavax/sip/header/FromHeader;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->fromHeader:Lgov/nist/javax/sip/header/From;

    return-object v0
.end method

.method public getFromTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->fromHeader:Lgov/nist/javax/sip/header/From;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->fromHeader:Lgov/nist/javax/sip/header/From;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;
    .locals 1

    invoke-static {p1}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->getHeaderLowerCase(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderAsFormattedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/SIPHeader;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/SIPHeader;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getHeaderNames()Ljava/util/ListIterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/SIPHeader;

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/SIPHeader;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    return-object v4
.end method

.method public getHeaders()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lgov/nist/javax/sip/header/SIPHeader;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders(Ljava/lang/String;)Ljava/util/ListIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ListIterator",
            "<",
            "Lgov/nist/javax/sip/header/SIPHeader;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null headerName"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-static {p1}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/SIPHeader;

    if-nez v0, :cond_1

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    instance-of v1, v0, Lgov/nist/javax/sip/header/SIPHeaderList;

    if-eqz v1, :cond_2

    check-cast v0, Lgov/nist/javax/sip/header/SIPHeaderList;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/SIPHeaderList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    goto :goto_0

    :cond_2
    new-instance v1, Lgov/nist/javax/sip/message/HeaderIterator;

    invoke-direct {v1, p0, v0}, Lgov/nist/javax/sip/message/HeaderIterator;-><init>(Lgov/nist/javax/sip/message/SIPMessage;Lgov/nist/javax/sip/header/SIPHeader;)V

    goto :goto_0
.end method

.method public getMaxForwards()Ljavax/sip/header/MaxForwardsHeader;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->maxForwardsHeader:Lgov/nist/javax/sip/header/MaxForwards;

    return-object v0
.end method

.method public getMessageAsEncodedStrings()Ljava/util/LinkedList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/SIPHeader;

    instance-of v4, v3, Lgov/nist/javax/sip/header/SIPHeaderList;

    if-eqz v4, :cond_0

    move-object v2, v3

    check-cast v2, Lgov/nist/javax/sip/header/SIPHeaderList;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/SIPHeaderList;->getHeadersAsEncodedStrings()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/SIPHeader;->encode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getMessageContent()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getCharset()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMultipartMimeContent()Lgov/nist/javax/sip/message/MultipartMimeContent;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v5, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    invoke-virtual {v5}, Lgov/nist/javax/sip/header/ContentLength;->getContentLength()I

    move-result v5

    if-nez v5, :cond_0

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_0
    new-instance v3, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getContentTypeHeader()Lgov/nist/javax/sip/header/ContentType;

    move-result-object v5

    invoke-direct {v3, v5}, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;-><init>(Ljavax/sip/header/ContentTypeHeader;)V

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getRawContent()[B

    move-result-object v2

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getCharset()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v2, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v0}, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->createContentList(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    move-object v3, v4

    goto :goto_0
.end method

.method public getRawContent()[B
    .locals 4

    :try_start_0
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    :goto_1
    return-object v2

    :cond_1
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getCharset()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :try_start_1
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getCharset()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public getRecordRouteHeaders()Lgov/nist/javax/sip/header/RecordRouteList;
    .locals 1

    sget-object v0, Lgov/nist/javax/sip/message/SIPMessage;->RECORDROUTE_LOWERCASE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->getSIPHeaderListLowerCase(Ljava/lang/String;)Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/RecordRouteList;

    return-object v0
.end method

.method public getRouteHeaders()Lgov/nist/javax/sip/header/RouteList;
    .locals 1

    sget-object v0, Lgov/nist/javax/sip/message/SIPMessage;->ROUTE_LOWERCASE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->getSIPHeaderListLowerCase(Ljava/lang/String;)Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/RouteList;

    return-object v0
.end method

.method public abstract getSIPVersion()Ljava/lang/String;
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->size:I

    return v0
.end method

.method public getTo()Ljavax/sip/header/ToHeader;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->toHeader:Lgov/nist/javax/sip/header/To;

    return-object v0
.end method

.method public getToHeader()Ljavax/sip/header/ToHeader;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->toHeader:Lgov/nist/javax/sip/header/To;

    return-object v0
.end method

.method public getToTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->toHeader:Lgov/nist/javax/sip/header/To;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->toHeader:Lgov/nist/javax/sip/header/To;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/To;->getTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTopmostVia()Lgov/nist/javax/sip/header/Via;
    .locals 1

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/Via;

    check-cast v0, Lgov/nist/javax/sip/header/Via;

    goto :goto_0
.end method

.method public getTopmostViaHeader()Ljavax/sip/header/ViaHeader;
    .locals 1

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 9

    const/4 v4, 0x0

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v5

    invoke-virtual {v5}, Lgov/nist/javax/sip/header/ViaList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v5

    invoke-virtual {v5}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/header/Via;

    :cond_0
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Z9HG4BK"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v5

    invoke-interface {v5}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CANCEL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v6

    invoke-interface {v6}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    :goto_0
    return-object v5

    :cond_1
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/From;

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/To;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->hasTag()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    iget-object v5, p0, Lgov/nist/javax/sip/message/SIPMessage;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    invoke-virtual {v5}, Lgov/nist/javax/sip/header/CallID;->getCallId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lgov/nist/javax/sip/message/SIPMessage;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    invoke-virtual {v5}, Lgov/nist/javax/sip/header/CSeq;->getSequenceNumber()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lgov/nist/javax/sip/message/SIPMessage;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    invoke-virtual {v6}, Lgov/nist/javax/sip/header/CSeq;->getMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v4, :cond_4

    const-string v5, "-"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v4}, Lgov/nist/javax/sip/header/Via;->getSentBy()Lgov/nist/core/HostPort;

    move-result-object v6

    invoke-virtual {v6}, Lgov/nist/core/HostPort;->encode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Lgov/nist/javax/sip/header/Via;->getSentBy()Lgov/nist/core/HostPort;

    move-result-object v5

    invoke-virtual {v5}, Lgov/nist/core/HostPort;->hasPort()Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "-"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const/16 v6, 0x13c4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_4
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v5

    invoke-interface {v5}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CANCEL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "CANCEL"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, ":"

    const-string v8, "-"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "@"

    const-string v8, "-"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lgov/nist/javax/sip/Utils;->getSignature()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public getUnrecognizedHeaders()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->unrecognizedHeaders:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public getViaHeaders()Lgov/nist/javax/sip/header/ViaList;
    .locals 1

    sget-object v0, Lgov/nist/javax/sip/message/SIPMessage;->VIA_LOWERCASE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->getSIPHeaderListLowerCase(Ljava/lang/String;)Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ViaList;

    return-object v0
.end method

.method public hasContent()Z
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFromTag()Z
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->fromHeader:Lgov/nist/javax/sip/header/From;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->fromHeader:Lgov/nist/javax/sip/header/From;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHeader(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-static {p1}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasToTag()Z
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->toHeader:Lgov/nist/javax/sip/header/To;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->toHeader:Lgov/nist/javax/sip/header/To;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/To;->getTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid message! Cannot compute hashcode! call-id header is missing !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/CallID;->getCallId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isNullRequest()Z
    .locals 1

    iget-boolean v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->nullRequest:Z

    return v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 14

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v10

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    move v10, v11

    goto :goto_0

    :cond_2
    move-object v6, p1

    check-cast v6, Lgov/nist/javax/sip/message/SIPMessage;

    invoke-virtual {v6}, Lgov/nist/javax/sip/message/SIPMessage;->getHeaders()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/SIPHeader;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/SIPHeader;->getHeaderName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lgov/nist/javax/sip/message/SIPMessage;->getHeaderList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_5

    :cond_4
    move v10, v11

    goto :goto_0

    :cond_5
    instance-of v12, v2, Lgov/nist/javax/sip/header/SIPHeaderList;

    if-eqz v12, :cond_9

    check-cast v2, Lgov/nist/javax/sip/header/SIPHeaderList;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/SIPHeaderList;->listIterator()Ljava/util/ListIterator;

    move-result-object v9

    :cond_6
    invoke-interface {v9}, Ljava/util/ListIterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v9}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/SIPHeader;

    instance-of v12, v1, Lgov/nist/javax/sip/header/ContentLength;

    if-nez v12, :cond_6

    invoke-interface {v8}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    const/4 v0, 0x0

    :cond_7
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/header/SIPHeader;

    invoke-virtual {v7, v1}, Lgov/nist/javax/sip/header/SIPHeader;->match(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    const/4 v0, 0x1

    :cond_8
    if-nez v0, :cond_6

    move v10, v11

    goto :goto_0

    :cond_9
    move-object v1, v2

    invoke-interface {v8}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    const/4 v0, 0x0

    :cond_a
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/header/SIPHeader;

    invoke-virtual {v7, v1}, Lgov/nist/javax/sip/header/SIPHeader;->match(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    const/4 v0, 0x1

    :cond_b
    if-nez v0, :cond_3

    move v10, v11

    goto/16 :goto_0
.end method

.method public merge(Ljava/lang/Object;)V
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    move-object v7, p1

    check-cast v7, Lgov/nist/javax/sip/message/SIPMessage;

    iget-object v8, v7, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->toArray()[Ljava/lang/Object;

    move-result-object v6

    const/4 v2, 0x0

    :goto_0
    array-length v8, v6

    if-ge v2, v8, :cond_3

    aget-object v0, v6, v2

    check-cast v0, Lgov/nist/javax/sip/header/SIPHeader;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/SIPHeader;->getHeaderName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lgov/nist/javax/sip/message/SIPMessage;->getHeaderList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgov/nist/javax/sip/header/SIPHeader;

    invoke-virtual {v5, v0}, Lgov/nist/javax/sip/header/SIPHeader;->merge(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public removeContent()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/ContentLength;->setContentLength(I)V
    :try_end_0
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public removeFirst(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null argument Provided!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lgov/nist/javax/sip/message/SIPMessage;->removeHeader(Ljava/lang/String;Z)V

    return-void
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "null arg"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-static {p1}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/SIPHeader;

    if-nez v2, :cond_2

    :cond_1
    return-void

    :cond_2
    instance-of v4, v2, Lgov/nist/javax/sip/header/From;

    if-eqz v4, :cond_5

    iput-object v5, p0, Lgov/nist/javax/sip/message/SIPMessage;->fromHeader:Lgov/nist/javax/sip/header/From;

    :cond_3
    :goto_0
    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/SIPHeader;

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/SIPHeader;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_5
    instance-of v4, v2, Lgov/nist/javax/sip/header/To;

    if-eqz v4, :cond_6

    iput-object v5, p0, Lgov/nist/javax/sip/message/SIPMessage;->toHeader:Lgov/nist/javax/sip/header/To;

    goto :goto_0

    :cond_6
    instance-of v4, v2, Lgov/nist/javax/sip/header/CSeq;

    if-eqz v4, :cond_7

    iput-object v5, p0, Lgov/nist/javax/sip/message/SIPMessage;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    goto :goto_0

    :cond_7
    instance-of v4, v2, Lgov/nist/javax/sip/header/CallID;

    if-eqz v4, :cond_8

    iput-object v5, p0, Lgov/nist/javax/sip/message/SIPMessage;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    goto :goto_0

    :cond_8
    instance-of v4, v2, Lgov/nist/javax/sip/header/MaxForwards;

    if-eqz v4, :cond_9

    iput-object v5, p0, Lgov/nist/javax/sip/message/SIPMessage;->maxForwardsHeader:Lgov/nist/javax/sip/header/MaxForwards;

    goto :goto_0

    :cond_9
    instance-of v4, v2, Lgov/nist/javax/sip/header/ContentLength;

    if-eqz v4, :cond_3

    iput-object v5, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    goto :goto_0
.end method

.method public removeHeader(Ljava/lang/String;Z)V
    .locals 7

    const/4 v6, 0x0

    invoke-static {p1}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v5, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/header/SIPHeader;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v5, v4, Lgov/nist/javax/sip/header/SIPHeaderList;

    if-eqz v5, :cond_5

    move-object v0, v4

    check-cast v0, Lgov/nist/javax/sip/header/SIPHeaderList;

    if-eqz p2, :cond_3

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/SIPHeaderList;->removeFirst()V

    :goto_1
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/SIPHeaderList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/SIPHeader;

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/SIPHeader;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/SIPHeaderList;->removeLast()V

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v5, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    iget-object v5, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v5, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v5, v4, Lgov/nist/javax/sip/header/From;

    if-eqz v5, :cond_8

    iput-object v6, p0, Lgov/nist/javax/sip/message/SIPMessage;->fromHeader:Lgov/nist/javax/sip/header/From;

    :cond_6
    :goto_3
    iget-object v5, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/SIPHeader;

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/SIPHeader;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    :cond_8
    instance-of v5, v4, Lgov/nist/javax/sip/header/To;

    if-eqz v5, :cond_9

    iput-object v6, p0, Lgov/nist/javax/sip/message/SIPMessage;->toHeader:Lgov/nist/javax/sip/header/To;

    goto :goto_3

    :cond_9
    instance-of v5, v4, Lgov/nist/javax/sip/header/CSeq;

    if-eqz v5, :cond_a

    iput-object v6, p0, Lgov/nist/javax/sip/message/SIPMessage;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    goto :goto_3

    :cond_a
    instance-of v5, v4, Lgov/nist/javax/sip/header/CallID;

    if-eqz v5, :cond_b

    iput-object v6, p0, Lgov/nist/javax/sip/message/SIPMessage;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    goto :goto_3

    :cond_b
    instance-of v5, v4, Lgov/nist/javax/sip/header/MaxForwards;

    if-eqz v5, :cond_c

    iput-object v6, p0, Lgov/nist/javax/sip/message/SIPMessage;->maxForwardsHeader:Lgov/nist/javax/sip/header/MaxForwards;

    goto :goto_3

    :cond_c
    instance-of v5, v4, Lgov/nist/javax/sip/header/ContentLength;

    if-eqz v5, :cond_6

    iput-object v6, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    goto :goto_3
.end method

.method public removeLast(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null argument Provided!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lgov/nist/javax/sip/message/SIPMessage;->removeHeader(Ljava/lang/String;Z)V

    return-void
.end method

.method public setApplicationData(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/message/SIPMessage;->applicationData:Ljava/lang/Object;

    return-void
.end method

.method public setCSeq(Ljavax/sip/header/CSeqHeader;)V
    .locals 0

    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    return-void
.end method

.method public setCallId(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    if-nez v0, :cond_0

    new-instance v0, Lgov/nist/javax/sip/header/CallID;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/CallID;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/CallID;->setCallId(Ljava/lang/String;)V

    return-void
.end method

.method public setCallId(Ljavax/sip/header/CallIdHeader;)V
    .locals 0

    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    return-void
.end method

.method public setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null content"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p2}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    :goto_0
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->computeContentLength(Ljava/lang/Object;)V

    return-void

    :cond_1
    instance-of v0, p1, [B

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, [B

    check-cast v0, [B

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    goto :goto_0
.end method

.method public setContentDisposition(Ljavax/sip/header/ContentDispositionHeader;)V
    .locals 0

    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    return-void
.end method

.method public setContentEncoding(Ljavax/sip/header/ContentEncodingHeader;)V
    .locals 0

    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    return-void
.end method

.method public setContentLanguage(Ljavax/sip/header/ContentLanguageHeader;)V
    .locals 0

    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    return-void
.end method

.method public setContentLength(Ljavax/sip/header/ContentLengthHeader;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    invoke-interface {p1}, Ljavax/sip/header/ContentLengthHeader;->getContentLength()I

    move-result v1

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/ContentLength;->setContentLength(I)V
    :try_end_0
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setExpires(Ljavax/sip/header/ExpiresHeader;)V
    .locals 0

    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    return-void
.end method

.method public setFrom(Ljavax/sip/header/FromHeader;)V
    .locals 0

    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    return-void
.end method

.method public setFromTag(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->fromHeader:Lgov/nist/javax/sip/header/From;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/From;->setTag(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setHeader(Lgov/nist/javax/sip/header/SIPHeaderList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgov/nist/javax/sip/header/SIPHeaderList",
            "<",
            "Lgov/nist/javax/sip/header/Via;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    return-void
.end method

.method public setHeader(Ljavax/sip/header/Header;)V
    .locals 6

    move-object v2, p1

    check-cast v2, Lgov/nist/javax/sip/header/SIPHeader;

    if-nez v2, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "null header!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    :try_start_0
    instance-of v4, v2, Lgov/nist/javax/sip/header/SIPHeaderList;

    if-eqz v4, :cond_1

    move-object v0, v2

    check-cast v0, Lgov/nist/javax/sip/header/SIPHeaderList;

    move-object v3, v0

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/SIPHeaderList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/SIPHeader;->getHeaderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/message/SIPMessage;->removeHeader(Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v4, v5}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;ZZ)V
    :try_end_0
    .catch Lgov/nist/javax/sip/message/SIPDuplicateHeaderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setHeaders(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgov/nist/javax/sip/header/SIPHeader;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/SIPHeader;

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;Z)V
    :try_end_0
    .catch Lgov/nist/javax/sip/message/SIPDuplicateHeaderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setMaxForwards(Ljavax/sip/header/MaxForwardsHeader;)V
    .locals 0

    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    return-void
.end method

.method public setMessageContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    if-nez p3, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "messgeContent is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ContentType;

    invoke-direct {v0, p1, p2}, Lgov/nist/javax/sip/header/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    iput-object p3, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    iput-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    iput-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    invoke-direct {p0, p3}, Lgov/nist/javax/sip/message/SIPMessage;->computeContentLength(Ljava/lang/Object;)V

    return-void
.end method

.method public setMessageContent(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1

    new-instance v0, Lgov/nist/javax/sip/header/ContentType;

    invoke-direct {v0, p1, p2}, Lgov/nist/javax/sip/header/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    invoke-virtual {p0, p3}, Lgov/nist/javax/sip/message/SIPMessage;->setMessageContent([B)V

    invoke-direct {p0, p3}, Lgov/nist/javax/sip/message/SIPMessage;->computeContentLength(Ljava/lang/Object;)V

    return-void
.end method

.method public setMessageContent(Ljava/lang/String;ZZI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->computeContentLength(Ljava/lang/Object;)V

    if-nez p3, :cond_2

    if-nez p2, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ContentLength;->getContentLength()I

    move-result v0

    if-ne v0, p4, :cond_1

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ContentLength;->getContentLength()I

    move-result v0

    if-ge v0, p4, :cond_2

    :cond_1
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid content length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/ContentLength;->getContentLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2
    iput-object p1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    iput-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    iput-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    return-void
.end method

.method public setMessageContent([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->computeContentLength(Ljava/lang/Object;)V

    iput-object p1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    return-void
.end method

.method public setMessageContent([BZI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->computeContentLength(Ljava/lang/Object;)V

    if-nez p2, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ContentLength;->getContentLength()I

    move-result v0

    if-ge v0, p3, :cond_0

    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid content length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/ContentLength;->getContentLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    iput-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    iput-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    return-void
.end method

.method public setNullRequest()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->nullRequest:Z

    return-void
.end method

.method public abstract setSIPVersion(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public setSize(I)V
    .locals 0

    iput p1, p0, Lgov/nist/javax/sip/message/SIPMessage;->size:I

    return-void
.end method

.method public setTo(Ljavax/sip/header/ToHeader;)V
    .locals 0

    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    return-void
.end method

.method public setToTag(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->toHeader:Lgov/nist/javax/sip/header/To;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/To;->setTag(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setVia(Ljava/util/List;)V
    .locals 4

    new-instance v1, Lgov/nist/javax/sip/header/ViaList;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/ViaList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/Via;

    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/header/ViaList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Lgov/nist/javax/sip/header/SIPHeaderList;)V

    return-void
.end method

.method public abstract toString()Ljava/lang/String;
.end method
