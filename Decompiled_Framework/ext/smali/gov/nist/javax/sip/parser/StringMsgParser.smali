.class public Lgov/nist/javax/sip/parser/StringMsgParser;
.super Ljava/lang/Object;
.source "StringMsgParser.java"


# static fields
.field private static computeContentLengthFromMessage:Z


# instance fields
.field private parseExceptionListener:Lgov/nist/javax/sip/parser/ParseExceptionListener;

.field private rawStringMessage:Ljava/lang/String;

.field protected readBody:Z

.field private strict:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lgov/nist/javax/sip/parser/StringMsgParser;->computeContentLengthFromMessage:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->readBody:Z

    return-void
.end method

.method public constructor <init>(Lgov/nist/javax/sip/parser/ParseExceptionListener;)V
    .locals 0

    invoke-direct {p0}, Lgov/nist/javax/sip/parser/StringMsgParser;-><init>()V

    iput-object p1, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->parseExceptionListener:Lgov/nist/javax/sip/parser/ParseExceptionListener;

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "SIP/2.0 200 OK\r\nTo: \"The Little Blister\" <sip:LittleGuy@there.com>;tag=469bc066\r\nFrom: \"The Master Blaster\" <sip:BigGuy@here.com>;tag=11\r\nVia: SIP/2.0/UDP 139.10.134.246:5060;branch=z9hG4bK8b0a86f6_1030c7d18e0_17;received=139.10.134.246\r\nCall-ID: 1030c7d18ae_a97b0b_b@8b0a86f6\r\nCSeq: 1 SUBSCRIBE\r\nContact: <sip:172.16.11.162:5070>\r\nContent-Length: 0\r\n\r\n"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "SIP/2.0 180 Ringing\r\nVia: SIP/2.0/UDP 172.18.1.29:5060;branch=z9hG4bK43fc10fb4446d55fc5c8f969607991f4\r\nTo: \"0440\" <sip:0440@212.209.220.131>;tag=2600\r\nFrom: \"Andreas\" <sip:andreas@e-horizon.se>;tag=8524\r\nCall-ID: f51a1851c5f570606140f14c8eb64fd3@172.18.1.29\r\nCSeq: 1 INVITE\r\nMax-Forwards: 70\r\nRecord-Route: <sip:212.209.220.131:5060>\r\nContent-Length: 0\r\n\r\n"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "REGISTER sip:nist.gov SIP/2.0\r\nVia: SIP/2.0/UDP 129.6.55.182:14826\r\nMax-Forwards: 70\r\nFrom: <sip:mranga@nist.gov>;tag=6fcd5c7ace8b4a45acf0f0cd539b168b;epid=0d4c418ddf\r\nTo: <sip:mranga@nist.gov>\r\nCall-ID: c5679907eb954a8da9f9dceb282d7230@129.6.55.182\r\nCSeq: 1 REGISTER\r\nContact: <sip:129.6.55.182:14826>;methods=\"INVITE, MESSAGE, INFO, SUBSCRIBE, OPTIONS, BYE, CANCEL, NOTIFY, ACK, REFER\"\r\nUser-Agent: RTC/(Microsoft RTC)\r\nEvent:  registration\r\nAllow-Events: presence\r\nContent-Length: 0\r\n\r\nINVITE sip:littleguy@there.com:5060 SIP/2.0\r\nVia: SIP/2.0/UDP 65.243.118.100:5050\r\nFrom: M. Ranganathan  <sip:M.Ranganathan@sipbakeoff.com>;tag=1234\r\nTo: \"littleguy@there.com\" <sip:littleguy@there.com:5060> \r\nCall-ID: Q2AboBsaGn9!?x6@sipbakeoff.com \r\nCSeq: 1 INVITE \r\nContent-Length: 247\r\n\r\nv=0\r\no=4855 13760799956958020 13760799956958020 IN IP4  129.6.55.78\r\ns=mysession session\r\np=+46 8 52018010\r\nc=IN IP4  129.6.55.78\r\nt=0 0\r\nm=audio 6022 RTP/AVP 0 4 18\r\na=rtpmap:0 PCMU/8000\r\na=rtpmap:4 G723/8000\r\na=rtpmap:18 G729A/8000\r\na=ptime:20\r\n"

    aput-object v3, v1, v2

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x14

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lgov/nist/javax/sip/parser/StringMsgParser$1ParserThread;

    invoke-direct {v3, v1}, Lgov/nist/javax/sip/parser/StringMsgParser$1ParserThread;-><init>([Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private processFirstLine(Ljava/lang/String;)Lgov/nist/javax/sip/message/SIPMessage;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const-string v1, "SIP/2.0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v3, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-direct {v3}, Lgov/nist/javax/sip/message/SIPRequest;-><init>()V

    :try_start_0
    new-instance v1, Lgov/nist/javax/sip/parser/RequestLineParser;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lgov/nist/javax/sip/parser/RequestLineParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgov/nist/javax/sip/parser/RequestLineParser;->parse()Lgov/nist/javax/sip/header/RequestLine;

    move-result-object v7

    move-object v0, v3

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    move-object v1, v0

    invoke-virtual {v1, v7}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestLine(Lgov/nist/javax/sip/header/RequestLine;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v3

    :catch_0
    move-exception v2

    iget-object v1, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->parseExceptionListener:Lgov/nist/javax/sip/parser/ParseExceptionListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->parseExceptionListener:Lgov/nist/javax/sip/parser/ParseExceptionListener;

    const-class v4, Lgov/nist/javax/sip/header/RequestLine;

    iget-object v6, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->rawStringMessage:Ljava/lang/String;

    move-object v5, p1

    invoke-interface/range {v1 .. v6}, Lgov/nist/javax/sip/parser/ParseExceptionListener;->handleException(Ljava/text/ParseException;Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    throw v2

    :cond_1
    new-instance v3, Lgov/nist/javax/sip/message/SIPResponse;

    invoke-direct {v3}, Lgov/nist/javax/sip/message/SIPResponse;-><init>()V

    :try_start_1
    new-instance v1, Lgov/nist/javax/sip/parser/StatusLineParser;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lgov/nist/javax/sip/parser/StatusLineParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgov/nist/javax/sip/parser/StatusLineParser;->parse()Lgov/nist/javax/sip/header/StatusLine;

    move-result-object v8

    move-object v0, v3

    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    move-object v1, v0

    invoke-virtual {v1, v8}, Lgov/nist/javax/sip/message/SIPResponse;->setStatusLine(Lgov/nist/javax/sip/header/StatusLine;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    iget-object v1, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->parseExceptionListener:Lgov/nist/javax/sip/parser/ParseExceptionListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->parseExceptionListener:Lgov/nist/javax/sip/parser/ParseExceptionListener;

    const-class v4, Lgov/nist/javax/sip/header/StatusLine;

    iget-object v6, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->rawStringMessage:Ljava/lang/String;

    move-object v5, p1

    invoke-interface/range {v1 .. v6}, Lgov/nist/javax/sip/parser/ParseExceptionListener;->handleException(Ljava/text/ParseException;Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    throw v2
.end method

.method private processHeader(Ljava/lang/String;Lgov/nist/javax/sip/message/SIPMessage;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v7, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgov/nist/javax/sip/parser/ParserFactory;->createParser(Ljava/lang/String;)Lgov/nist/javax/sip/parser/HeaderParser;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    :try_start_1
    invoke-virtual {v7}, Lgov/nist/javax/sip/parser/HeaderParser;->parse()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v8

    const/4 v0, 0x0

    invoke-virtual {p2, v8, v0}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;Z)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v0, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->parseExceptionListener:Lgov/nist/javax/sip/parser/ParseExceptionListener;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lgov/nist/javax/sip/parser/Lexer;->getHeaderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lgov/nist/javax/sip/header/NameMap;->getClassFromName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-nez v3, :cond_2

    const-class v3, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;

    :cond_2
    iget-object v0, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->parseExceptionListener:Lgov/nist/javax/sip/parser/ParseExceptionListener;

    iget-object v5, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->rawStringMessage:Ljava/lang/String;

    move-object v2, p2

    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Lgov/nist/javax/sip/parser/ParseExceptionListener;->handleException(Ljava/text/ParseException;Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    iget-object v0, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->parseExceptionListener:Lgov/nist/javax/sip/parser/ParseExceptionListener;

    const/4 v3, 0x0

    iget-object v5, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->rawStringMessage:Ljava/lang/String;

    move-object v2, p2

    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Lgov/nist/javax/sip/parser/ParseExceptionListener;->handleException(Ljava/text/ParseException;Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setComputeContentLengthFromMessage(Z)V
    .locals 0

    sput-boolean p0, Lgov/nist/javax/sip/parser/StringMsgParser;->computeContentLengthFromMessage:Z

    return-void
.end method

.method private trimEndOfLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_1
    if-ltz v0, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-gt v1, v2, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    const-string p1, ""

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public parseAddress(Ljava/lang/String;)Lgov/nist/javax/sip/address/AddressImpl;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    new-instance v0, Lgov/nist/javax/sip/parser/AddressParser;

    invoke-direct {v0, p1}, Lgov/nist/javax/sip/parser/AddressParser;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/parser/AddressParser;->address(Z)Lgov/nist/javax/sip/address/AddressImpl;

    move-result-object v1

    return-object v1
.end method

.method public parseHost(Ljava/lang/String;)Lgov/nist/core/Host;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    new-instance v0, Lgov/nist/javax/sip/parser/Lexer;

    const-string v1, "charLexer"

    invoke-direct {v0, v1, p1}, Lgov/nist/javax/sip/parser/Lexer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lgov/nist/core/HostNameParser;

    invoke-direct {v1, v0}, Lgov/nist/core/HostNameParser;-><init>(Lgov/nist/core/LexerCore;)V

    invoke-virtual {v1}, Lgov/nist/core/HostNameParser;->host()Lgov/nist/core/Host;

    move-result-object v1

    return-object v1
.end method

.method public parseSIPHeader(Ljava/lang/String;)Lgov/nist/javax/sip/header/SIPHeader;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/16 v12, 0xa

    const/4 v11, 0x0

    const/16 v10, 0x20

    const/4 v8, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    :goto_0
    :try_start_0
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-gt v9, v10, :cond_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-gt v9, v10, :cond_1

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v9, Ljava/text/ParseException;

    const-string v10, "Empty header."

    invoke-direct {v9, v10, v11}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v9

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    add-int/lit8 v9, v3, 0x1

    invoke-direct {v0, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    move v6, v8

    move v7, v8

    const/4 v4, 0x0

    :goto_2
    if-gt v6, v3, :cond_7

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v9, 0xd

    if-eq v1, v9, :cond_2

    if-ne v1, v12, :cond_4

    :cond_2
    if-nez v4, :cond_3

    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v4, 0x1

    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    if-eqz v4, :cond_3

    const/4 v4, 0x0

    if-eq v1, v10, :cond_5

    const/16 v9, 0x9

    if-ne v1, v9, :cond_6

    :cond_5
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v7, v6, 0x1

    goto :goto_3

    :cond_6
    move v7, v6

    goto :goto_3

    :cond_7
    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lgov/nist/javax/sip/parser/ParserFactory;->createParser(Ljava/lang/String;)Lgov/nist/javax/sip/parser/HeaderParser;

    move-result-object v5

    if-nez v5, :cond_8

    new-instance v9, Ljava/text/ParseException;

    const-string v10, "could not create parser"

    invoke-direct {v9, v10, v11}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v9

    :cond_8
    invoke-virtual {v5}, Lgov/nist/javax/sip/parser/HeaderParser;->parse()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v9

    return-object v9
.end method

.method public parseSIPMessage(Ljava/lang/String;)Lgov/nist/javax/sip/message/SIPMessage;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_2

    :cond_0
    const/4 v10, 0x0

    :cond_1
    :goto_0
    return-object v10

    :cond_2
    iput-object p1, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->rawStringMessage:Ljava/lang/String;

    const/4 v7, 0x0

    :goto_1
    :try_start_0
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v11

    const/16 v12, 0x20

    if-ge v11, v12, :cond_3

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :catch_0
    move-exception v4

    const/4 v10, 0x0

    goto :goto_0

    :catch_1
    move-exception v5

    const/4 v10, 0x0

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x0

    :cond_4
    move v9, v7

    :try_start_1
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_2
    const/16 v11, 0xd

    if-eq v1, v11, :cond_5

    const/16 v11, 0xa

    if-eq v1, v11, :cond_5

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v1

    goto :goto_2

    :catch_2
    move-exception v4

    :goto_3
    invoke-virtual {v10, v7}, Lgov/nist/javax/sip/message/SIPMessage;->setSize(I)V

    iget-boolean v11, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->readBody:Z

    if-eqz v11, :cond_1

    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPMessage;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPMessage;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    move-result-object v11

    invoke-interface {v11}, Ljavax/sip/header/ContentLengthHeader;->getContentLength()I

    move-result v11

    if-eqz v11, :cond_e

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v11, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->strict:Z

    sget-boolean v12, Lgov/nist/javax/sip/parser/StringMsgParser;->computeContentLengthFromMessage:Z

    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPMessage;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    move-result-object v13

    invoke-interface {v13}, Ljavax/sip/header/ContentLengthHeader;->getContentLength()I

    move-result v13

    invoke-virtual {v10, v0, v11, v12, v13}, Lgov/nist/javax/sip/message/SIPMessage;->setMessageContent(Ljava/lang/String;ZZI)V

    goto :goto_0

    :catch_3
    move-exception v5

    goto :goto_3

    :cond_5
    invoke-virtual {p1, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lgov/nist/javax/sip/parser/StringMsgParser;->trimEndOfLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_8

    if-eqz v2, :cond_6

    invoke-direct {p0, v2, v10}, Lgov/nist/javax/sip/parser/StringMsgParser;->processHeader(Ljava/lang/String;Lgov/nist/javax/sip/message/SIPMessage;)V

    :cond_6
    :goto_4
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0xd

    if-ne v11, v12, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v12, v7, 0x1

    if-le v11, v12, :cond_7

    add-int/lit8 v11, v7, 0x1

    invoke-virtual {p1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0xa

    if-ne v11, v12, :cond_7

    add-int/lit8 v7, v7, 0x1

    :cond_7
    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_4

    goto :goto_3

    :cond_8
    if-eqz v8, :cond_9

    invoke-direct {p0, v3}, Lgov/nist/javax/sip/parser/StringMsgParser;->processFirstLine(Ljava/lang/String;)Lgov/nist/javax/sip/message/SIPMessage;

    move-result-object v10

    goto :goto_4

    :cond_9
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v11, 0x9

    if-eq v6, v11, :cond_a

    const/16 v11, 0x20

    if-ne v6, v11, :cond_c

    :cond_a
    if-nez v2, :cond_b

    new-instance v11, Ljava/text/ParseException;

    const-string v12, "Bad header continuation."

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v11

    :cond_b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_c
    if-eqz v2, :cond_d

    invoke-direct {p0, v2, v10}, Lgov/nist/javax/sip/parser/StringMsgParser;->processHeader(Ljava/lang/String;Lgov/nist/javax/sip/message/SIPMessage;)V

    :cond_d
    move-object v2, v3

    goto :goto_4

    :cond_e
    sget-boolean v11, Lgov/nist/javax/sip/parser/StringMsgParser;->computeContentLengthFromMessage:Z

    if-nez v11, :cond_1

    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPMessage;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    move-result-object v11

    invoke-interface {v11}, Ljavax/sip/header/ContentLengthHeader;->getContentLength()I

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "\r\n\r\n"

    invoke-virtual {p1, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    iget-boolean v11, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->strict:Z

    if-eqz v11, :cond_1

    new-instance v11, Ljava/text/ParseException;

    const-string v12, "Extraneous characters at the end of the message "

    invoke-direct {v11, v12, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v11
.end method

.method public parseSIPMessage([B)Lgov/nist/javax/sip/message/SIPMessage;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-eqz p1, :cond_0

    array-length v11, p1

    if-nez v11, :cond_2

    :cond_0
    const/4 v10, 0x0

    :cond_1
    :goto_0
    return-object v10

    :cond_2
    const/4 v6, 0x0

    :goto_1
    :try_start_0
    aget-byte v11, p1, v6
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v12, 0x20

    if-ge v11, v12, :cond_3

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catch_0
    move-exception v4

    const/4 v10, 0x0

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v10, 0x0

    :cond_4
    move v9, v6

    :goto_2
    :try_start_1
    aget-byte v11, p1, v6

    const/16 v12, 0xd

    if-eq v11, v12, :cond_5

    aget-byte v11, p1, v6
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v12, 0xa

    if-eq v11, v12, :cond_5

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :catch_1
    move-exception v4

    :goto_3
    if-nez v10, :cond_e

    new-instance v11, Ljava/text/ParseException;

    const-string v12, "Bad message"

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v11

    :cond_5
    sub-int v8, v6, v9

    :try_start_2
    new-instance v3, Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-direct {v3, p1, v9, v8, v11}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-direct {p0, v3}, Lgov/nist/javax/sip/parser/StringMsgParser;->trimEndOfLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_8

    if-eqz v2, :cond_6

    if-eqz v10, :cond_6

    invoke-direct {p0, v2, v10}, Lgov/nist/javax/sip/parser/StringMsgParser;->processHeader(Ljava/lang/String;Lgov/nist/javax/sip/message/SIPMessage;)V

    :cond_6
    :goto_4
    aget-byte v11, p1, v6

    const/16 v12, 0xd

    if-ne v11, v12, :cond_7

    array-length v11, p1

    add-int/lit8 v12, v6, 0x1

    if-le v11, v12, :cond_7

    add-int/lit8 v11, v6, 0x1

    aget-byte v11, p1, v11

    const/16 v12, 0xa

    if-ne v11, v12, :cond_7

    add-int/lit8 v6, v6, 0x1

    :cond_7
    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_4

    goto :goto_3

    :catch_2
    move-exception v4

    new-instance v11, Ljava/text/ParseException;

    const-string v12, "Bad message encoding!"

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v11

    :cond_8
    if-eqz v7, :cond_9

    invoke-direct {p0, v3}, Lgov/nist/javax/sip/parser/StringMsgParser;->processFirstLine(Ljava/lang/String;)Lgov/nist/javax/sip/message/SIPMessage;

    move-result-object v10

    goto :goto_4

    :cond_9
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v11, 0x9

    if-eq v5, v11, :cond_a

    const/16 v11, 0x20

    if-ne v5, v11, :cond_c

    :cond_a
    if-nez v2, :cond_b

    new-instance v11, Ljava/text/ParseException;

    const-string v12, "Bad header continuation."

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v11

    :cond_b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_c
    if-eqz v2, :cond_d

    if-eqz v10, :cond_d

    invoke-direct {p0, v2, v10}, Lgov/nist/javax/sip/parser/StringMsgParser;->processHeader(Ljava/lang/String;Lgov/nist/javax/sip/message/SIPMessage;)V

    :cond_d
    move-object v2, v3

    goto :goto_4

    :cond_e
    invoke-virtual {v10, v6}, Lgov/nist/javax/sip/message/SIPMessage;->setSize(I)V

    iget-boolean v11, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->readBody:Z

    if-eqz v11, :cond_1

    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPMessage;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPMessage;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    move-result-object v11

    invoke-interface {v11}, Ljavax/sip/header/ContentLengthHeader;->getContentLength()I

    move-result v11

    if-eqz v11, :cond_1

    array-length v11, p1

    sub-int v1, v11, v6

    new-array v0, v1, [B

    const/4 v11, 0x0

    invoke-static {p1, v6, v0, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-boolean v11, Lgov/nist/javax/sip/parser/StringMsgParser;->computeContentLengthFromMessage:Z

    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPMessage;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    move-result-object v12

    invoke-interface {v12}, Ljavax/sip/header/ContentLengthHeader;->getContentLength()I

    move-result v12

    invoke-virtual {v10, v0, v11, v12}, Lgov/nist/javax/sip/message/SIPMessage;->setMessageContent([BZI)V

    goto/16 :goto_0
.end method

.method public parseSIPRequestLine(Ljava/lang/String;)Lgov/nist/javax/sip/header/RequestLine;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lgov/nist/javax/sip/parser/RequestLineParser;

    invoke-direct {v0, p1}, Lgov/nist/javax/sip/parser/RequestLineParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgov/nist/javax/sip/parser/RequestLineParser;->parse()Lgov/nist/javax/sip/header/RequestLine;

    move-result-object v0

    return-object v0
.end method

.method public parseSIPStatusLine(Ljava/lang/String;)Lgov/nist/javax/sip/header/StatusLine;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lgov/nist/javax/sip/parser/StatusLineParser;

    invoke-direct {v0, p1}, Lgov/nist/javax/sip/parser/StatusLineParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgov/nist/javax/sip/parser/StatusLineParser;->parse()Lgov/nist/javax/sip/header/StatusLine;

    move-result-object v0

    return-object v0
.end method

.method public parseSIPUrl(Ljava/lang/String;)Lgov/nist/javax/sip/address/SipUri;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    :try_start_0
    new-instance v1, Lgov/nist/javax/sip/parser/URLParser;

    invoke-direct {v1, p1}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/parser/URLParser;->sipURL(Z)Lgov/nist/javax/sip/address/SipUri;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Not a SIP URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public parseTelephoneNumber(Ljava/lang/String;)Lgov/nist/javax/sip/address/TelephoneNumber;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    new-instance v0, Lgov/nist/javax/sip/parser/URLParser;

    invoke-direct {v0, p1}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/parser/URLParser;->parseTelephoneNumber(Z)Lgov/nist/javax/sip/address/TelephoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public parseUrl(Ljava/lang/String;)Lgov/nist/javax/sip/address/GenericURI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    new-instance v0, Lgov/nist/javax/sip/parser/URLParser;

    invoke-direct {v0, p1}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgov/nist/javax/sip/parser/URLParser;->parse()Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v0

    return-object v0
.end method

.method public setParseExceptionListener(Lgov/nist/javax/sip/parser/ParseExceptionListener;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->parseExceptionListener:Lgov/nist/javax/sip/parser/ParseExceptionListener;

    return-void
.end method

.method public setStrict(Z)V
    .locals 0

    iput-boolean p1, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->strict:Z

    return-void
.end method
