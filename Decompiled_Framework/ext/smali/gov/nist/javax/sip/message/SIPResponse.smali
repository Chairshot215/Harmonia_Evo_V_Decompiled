.class public final Lgov/nist/javax/sip/message/SIPResponse;
.super Lgov/nist/javax/sip/message/SIPMessage;
.source "SIPResponse.java"

# interfaces
.implements Ljavax/sip/message/Response;
.implements Lgov/nist/javax/sip/message/ResponseExt;


# instance fields
.field protected statusLine:Lgov/nist/javax/sip/header/StatusLine;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgov/nist/javax/sip/message/SIPMessage;-><init>()V

    return-void
.end method

.method public static getReasonPhrase(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_0

    const-string v0, "Unknown Status"

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "Trying"

    goto :goto_0

    :sswitch_1
    const-string v0, "Ringing"

    goto :goto_0

    :sswitch_2
    const-string v0, "Call is being forwarded"

    goto :goto_0

    :sswitch_3
    const-string v0, "Queued"

    goto :goto_0

    :sswitch_4
    const-string v0, "Session progress"

    goto :goto_0

    :sswitch_5
    const-string v0, "OK"

    goto :goto_0

    :sswitch_6
    const-string v0, "Accepted"

    goto :goto_0

    :sswitch_7
    const-string v0, "Multiple choices"

    goto :goto_0

    :sswitch_8
    const-string v0, "Moved permanently"

    goto :goto_0

    :sswitch_9
    const-string v0, "Moved Temporarily"

    goto :goto_0

    :sswitch_a
    const-string v0, "Use proxy"

    goto :goto_0

    :sswitch_b
    const-string v0, "Alternative service"

    goto :goto_0

    :sswitch_c
    const-string v0, "Bad request"

    goto :goto_0

    :sswitch_d
    const-string v0, "Unauthorized"

    goto :goto_0

    :sswitch_e
    const-string v0, "Payment required"

    goto :goto_0

    :sswitch_f
    const-string v0, "Forbidden"

    goto :goto_0

    :sswitch_10
    const-string v0, "Not found"

    goto :goto_0

    :sswitch_11
    const-string v0, "Method not allowed"

    goto :goto_0

    :sswitch_12
    const-string v0, "Not acceptable"

    goto :goto_0

    :sswitch_13
    const-string v0, "Proxy Authentication required"

    goto :goto_0

    :sswitch_14
    const-string v0, "Request timeout"

    goto :goto_0

    :sswitch_15
    const-string v0, "Gone"

    goto :goto_0

    :sswitch_16
    const-string v0, "Temporarily Unavailable"

    goto :goto_0

    :sswitch_17
    const-string v0, "Request entity too large"

    goto :goto_0

    :sswitch_18
    const-string v0, "Request-URI too large"

    goto :goto_0

    :sswitch_19
    const-string v0, "Unsupported media type"

    goto :goto_0

    :sswitch_1a
    const-string v0, "Unsupported URI Scheme"

    goto :goto_0

    :sswitch_1b
    const-string v0, "Bad extension"

    goto :goto_0

    :sswitch_1c
    const-string v0, "Etension Required"

    goto :goto_0

    :sswitch_1d
    const-string v0, "Interval too brief"

    goto :goto_0

    :sswitch_1e
    const-string v0, "Call leg/Transaction does not exist"

    goto :goto_0

    :sswitch_1f
    const-string v0, "Loop detected"

    goto :goto_0

    :sswitch_20
    const-string v0, "Too many hops"

    goto :goto_0

    :sswitch_21
    const-string v0, "Address incomplete"

    goto :goto_0

    :sswitch_22
    const-string v0, "Ambiguous"

    goto :goto_0

    :sswitch_23
    const-string v0, "Busy here"

    goto :goto_0

    :sswitch_24
    const-string v0, "Request Terminated"

    goto :goto_0

    :sswitch_25
    const-string v0, "Not Acceptable here"

    goto :goto_0

    :sswitch_26
    const-string v0, "Bad Event"

    goto :goto_0

    :sswitch_27
    const-string v0, "Request Pending"

    goto :goto_0

    :sswitch_28
    const-string v0, "Server Internal Error"

    goto :goto_0

    :sswitch_29
    const-string v0, "Undecipherable"

    goto :goto_0

    :sswitch_2a
    const-string v0, "Not implemented"

    goto/16 :goto_0

    :sswitch_2b
    const-string v0, "Bad gateway"

    goto/16 :goto_0

    :sswitch_2c
    const-string v0, "Service unavailable"

    goto/16 :goto_0

    :sswitch_2d
    const-string v0, "Gateway timeout"

    goto/16 :goto_0

    :sswitch_2e
    const-string v0, "SIP version not supported"

    goto/16 :goto_0

    :sswitch_2f
    const-string v0, "Message Too Large"

    goto/16 :goto_0

    :sswitch_30
    const-string v0, "Busy everywhere"

    goto/16 :goto_0

    :sswitch_31
    const-string v0, "Decline"

    goto/16 :goto_0

    :sswitch_32
    const-string v0, "Does not exist anywhere"

    goto/16 :goto_0

    :sswitch_33
    const-string v0, "Session Not acceptable"

    goto/16 :goto_0

    :sswitch_34
    const-string v0, "Conditional request failed"

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xb4 -> :sswitch_1
        0xb5 -> :sswitch_2
        0xb6 -> :sswitch_3
        0xb7 -> :sswitch_4
        0xc8 -> :sswitch_5
        0xca -> :sswitch_6
        0x12c -> :sswitch_7
        0x12d -> :sswitch_8
        0x12e -> :sswitch_9
        0x131 -> :sswitch_a
        0x17c -> :sswitch_b
        0x190 -> :sswitch_c
        0x191 -> :sswitch_d
        0x192 -> :sswitch_e
        0x193 -> :sswitch_f
        0x194 -> :sswitch_10
        0x195 -> :sswitch_11
        0x196 -> :sswitch_12
        0x197 -> :sswitch_13
        0x198 -> :sswitch_14
        0x19a -> :sswitch_15
        0x19c -> :sswitch_34
        0x19d -> :sswitch_17
        0x19e -> :sswitch_18
        0x19f -> :sswitch_19
        0x1a0 -> :sswitch_1a
        0x1a4 -> :sswitch_1b
        0x1a5 -> :sswitch_1c
        0x1a7 -> :sswitch_1d
        0x1e0 -> :sswitch_16
        0x1e1 -> :sswitch_1e
        0x1e2 -> :sswitch_1f
        0x1e3 -> :sswitch_20
        0x1e4 -> :sswitch_21
        0x1e5 -> :sswitch_22
        0x1e6 -> :sswitch_23
        0x1e7 -> :sswitch_24
        0x1e8 -> :sswitch_25
        0x1e9 -> :sswitch_26
        0x1eb -> :sswitch_27
        0x1ed -> :sswitch_29
        0x1f4 -> :sswitch_28
        0x1f5 -> :sswitch_2a
        0x1f6 -> :sswitch_2b
        0x1f7 -> :sswitch_2c
        0x1f8 -> :sswitch_2d
        0x1f9 -> :sswitch_2e
        0x201 -> :sswitch_2f
        0x258 -> :sswitch_30
        0x25b -> :sswitch_31
        0x25c -> :sswitch_32
        0x25e -> :sswitch_33
    .end sparse-switch
.end method

.method public static isFinalResponse(I)Z
    .locals 1

    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2bc

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final setBranch(Lgov/nist/javax/sip/header/Via;Ljava/lang/String;)V
    .locals 4

    const-string v2, "ACK"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0x12c

    if-lt v2, v3, :cond_1

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v0

    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/header/Via;->setBranch(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-static {}, Lgov/nist/javax/sip/Utils;->getInstance()Lgov/nist/javax/sip/Utils;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/javax/sip/Utils;->generateBranchId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v2, "CANCEL"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public checkHeaders()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/text/ParseException;

    const-string v1, "CSeq Is missing "

    invoke-direct {v0, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/text/ParseException;

    const-string v1, "To Is missing "

    invoke-direct {v0, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/text/ParseException;

    const-string v1, "From Is missing "

    invoke-direct {v0, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Via Is missing "

    invoke-direct {v0, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_3
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Call-ID Is missing "

    invoke-direct {v0, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_4
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0x2bb

    if-le v0, v1, :cond_5

    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown error code!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_5
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/StatusLine;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/StatusLine;

    iput-object v1, v0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    :cond_0
    return-object v0
.end method

.method public createRequest(Lgov/nist/javax/sip/address/SipUri;Lgov/nist/javax/sip/header/Via;Lgov/nist/javax/sip/header/CSeq;Lgov/nist/javax/sip/header/From;Lgov/nist/javax/sip/header/To;)Lgov/nist/javax/sip/message/SIPRequest;
    .locals 7

    new-instance v3, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-direct {v3}, Lgov/nist/javax/sip/message/SIPRequest;-><init>()V

    invoke-virtual {p3}, Lgov/nist/javax/sip/header/CSeq;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lgov/nist/javax/sip/message/SIPRequest;->setMethod(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestURI(Ljavax/sip/address/URI;)V

    invoke-direct {p0, p2, v2}, Lgov/nist/javax/sip/message/SIPResponse;->setBranch(Lgov/nist/javax/sip/header/Via;Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    invoke-virtual {v3, p3}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getHeaders()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/header/SIPHeader;

    invoke-static {v4}, Lgov/nist/javax/sip/message/SIPMessage;->isResponseHeader(Lgov/nist/javax/sip/header/SIPHeader;)Z

    move-result v5

    if-nez v5, :cond_0

    instance-of v5, v4, Lgov/nist/javax/sip/header/ViaList;

    if-nez v5, :cond_0

    instance-of v5, v4, Lgov/nist/javax/sip/header/CSeq;

    if-nez v5, :cond_0

    instance-of v5, v4, Lgov/nist/javax/sip/header/ContentType;

    if-nez v5, :cond_0

    instance-of v5, v4, Lgov/nist/javax/sip/header/ContentLength;

    if-nez v5, :cond_0

    instance-of v5, v4, Lgov/nist/javax/sip/header/RecordRouteList;

    if-nez v5, :cond_0

    instance-of v5, v4, Lgov/nist/javax/sip/header/RequireList;

    if-nez v5, :cond_0

    instance-of v5, v4, Lgov/nist/javax/sip/header/ContactList;

    if-nez v5, :cond_0

    instance-of v5, v4, Lgov/nist/javax/sip/header/ContentLength;

    if-nez v5, :cond_0

    instance-of v5, v4, Ljavax/sip/header/ServerHeader;

    if-nez v5, :cond_0

    instance-of v5, v4, Ljavax/sip/header/ReasonHeader;

    if-nez v5, :cond_0

    instance-of v5, v4, Lgov/nist/javax/sip/header/extensions/SessionExpires;

    if-nez v5, :cond_0

    instance-of v5, v4, Lgov/nist/javax/sip/header/ReasonList;

    if-nez v5, :cond_0

    instance-of v5, v4, Lgov/nist/javax/sip/header/To;

    if-eqz v5, :cond_2

    move-object v4, p5

    :cond_1
    :goto_1
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3, v4, v5}, Lgov/nist/javax/sip/message/SIPRequest;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;Z)V
    :try_end_0
    .catch Lgov/nist/javax/sip/message/SIPDuplicateHeaderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;->printStackTrace()V

    goto :goto_0

    :cond_2
    instance-of v5, v4, Lgov/nist/javax/sip/header/From;

    if-eqz v5, :cond_1

    move-object v4, p4

    goto :goto_1

    :cond_3
    :try_start_1
    new-instance v5, Lgov/nist/javax/sip/header/MaxForwards;

    const/16 v6, 0x46

    invoke-direct {v5, v6}, Lgov/nist/javax/sip/header/MaxForwards;-><init>(I)V

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lgov/nist/javax/sip/message/SIPRequest;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    move-result-object v5

    invoke-virtual {v3, v5}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    :cond_4
    return-object v3

    :catch_1
    move-exception v5

    goto :goto_2
.end method

.method public debugDump()Ljava/lang/String;
    .locals 2

    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->debugDump()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    iput-object v1, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    const-class v1, Lgov/nist/javax/sip/message/SIPResponse;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/message/SIPResponse;->sprint(Ljava/lang/String;)V

    const-string v1, "{"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/message/SIPResponse;->sprint(Ljava/lang/String;)V

    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/StatusLine;->debugDump()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/message/SIPResponse;->sprint(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/message/SIPResponse;->sprint(Ljava/lang/String;)V

    const-string v1, "}"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/message/SIPResponse;->sprint(Ljava/lang/String;)V

    iget-object v1, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    return-object v1
.end method

.method public encode()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/StatusLine;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->encode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public encodeAsBytes(Ljava/lang/String;)[B
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    if-eqz v4, :cond_0

    :try_start_0
    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v4}, Lgov/nist/javax/sip/header/StatusLine;->encode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->encodeAsBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v4, v2

    array-length v5, v3

    add-int/2addr v4, v5

    new-array v1, v4, [B

    array-length v4, v2

    invoke-static {v2, v6, v1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v2

    array-length v5, v3

    invoke-static {v3, v6, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public encodeMessage()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/StatusLine;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->encodeSIPHeaders()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->encodeSIPHeaders()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    iget-object v3, v0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/header/StatusLine;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-super {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getDialogId(Z)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/CallID;

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/From;

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/To;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/CallID;->getCallId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_2

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/To;->getTag()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/To;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_2
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/To;->getTag()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/To;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public getDialogId(ZLjava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/CallID;

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPResponse;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/From;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/CallID;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_2

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    if-eqz p2, :cond_1

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_2
    if-eqz p2, :cond_3

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public getFirstLine()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/StatusLine;->encode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMessageAsEncodedStrings()Ljava/util/LinkedList;
    .locals 2

    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getMessageAsEncodedStrings()Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/StatusLine;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSIPVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/StatusLine;->getSipVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/StatusLine;->getStatusCode()I

    move-result v0

    return v0
.end method

.method public getStatusLine()Lgov/nist/javax/sip/header/StatusLine;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    return-object v0
.end method

.method public isFinalResponse()Z
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/StatusLine;->getStatusCode()I

    move-result v0

    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPResponse;->isFinalResponse(I)Z

    move-result v0

    return v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    if-eq p1, p0, :cond_0

    move-object v1, p1

    check-cast v1, Lgov/nist/javax/sip/message/SIPResponse;

    iget-object v0, v1, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    if-nez v4, :cond_3

    if-eqz v0, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    if-ne v4, v0, :cond_4

    invoke-super {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->match(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    iget-object v5, v1, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/header/StatusLine;->match(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-super {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->match(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_5
    move v2, v3

    goto :goto_0
.end method

.method public setReasonPhrase(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad reason phrase"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    if-nez v0, :cond_1

    new-instance v0, Lgov/nist/javax/sip/header/StatusLine;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/StatusLine;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/StatusLine;->setReasonPhrase(Ljava/lang/String;)V

    return-void
.end method

.method public setSIPVersion(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/StatusLine;->setSipVersion(Ljava/lang/String;)V

    return-void
.end method

.method public setStatusCode(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    const/16 v0, 0x2bb

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "bad status code"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    if-nez v0, :cond_2

    new-instance v0, Lgov/nist/javax/sip/header/StatusLine;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/StatusLine;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    :cond_2
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/StatusLine;->setStatusCode(I)V

    return-void
.end method

.method public setStatusLine(Lgov/nist/javax/sip/header/StatusLine;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPResponse;->statusLine:Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/StatusLine;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
