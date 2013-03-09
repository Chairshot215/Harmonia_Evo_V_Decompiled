.class public final Lgov/nist/javax/sip/message/SIPRequest;
.super Lgov/nist/javax/sip/message/SIPMessage;
.source "SIPRequest.java"

# interfaces
.implements Ljavax/sip/message/Request;
.implements Lgov/nist/javax/sip/message/RequestExt;


# static fields
.field private static final DEFAULT_TRANSPORT:Ljava/lang/String; = "udp"

.field private static final DEFAULT_USER:Ljava/lang/String; = "ip"

.field private static final nameTable:Ljava/util/Hashtable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x2ea3ad0be6d281afL

.field private static final targetRefreshMethods:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private transient inviteTransaction:Ljava/lang/Object;

.field private transient messageChannel:Ljava/lang/Object;

.field private requestLine:Lgov/nist/javax/sip/header/RequestLine;

.field private transient transactionPointer:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lgov/nist/javax/sip/message/SIPRequest;->targetRefreshMethods:Ljava/util/Set;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lgov/nist/javax/sip/message/SIPRequest;->nameTable:Ljava/util/Hashtable;

    sget-object v0, Lgov/nist/javax/sip/message/SIPRequest;->targetRefreshMethods:Ljava/util/Set;

    const-string v1, "INVITE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lgov/nist/javax/sip/message/SIPRequest;->targetRefreshMethods:Ljava/util/Set;

    const-string v1, "UPDATE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lgov/nist/javax/sip/message/SIPRequest;->targetRefreshMethods:Ljava/util/Set;

    const-string v1, "SUBSCRIBE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lgov/nist/javax/sip/message/SIPRequest;->targetRefreshMethods:Ljava/util/Set;

    const-string v1, "NOTIFY"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lgov/nist/javax/sip/message/SIPRequest;->targetRefreshMethods:Ljava/util/Set;

    const-string v1, "REFER"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "INVITE"

    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    const-string v0, "BYE"

    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    const-string v0, "CANCEL"

    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    const-string v0, "ACK"

    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    const-string v0, "PRACK"

    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    const-string v0, "INFO"

    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    const-string v0, "MESSAGE"

    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    const-string v0, "NOTIFY"

    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    const-string v0, "OPTIONS"

    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    const-string v0, "PRACK"

    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    const-string v0, "PUBLISH"

    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    const-string v0, "REFER"

    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    const-string v0, "REGISTER"

    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    const-string v0, "SUBSCRIBE"

    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    const-string v0, "UPDATE"

    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgov/nist/javax/sip/message/SIPMessage;-><init>()V

    return-void
.end method

.method public static getCannonicalName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lgov/nist/javax/sip/message/SIPRequest;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lgov/nist/javax/sip/message/SIPRequest;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static isDialogCreating(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isDialogCreated(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isTargetRefresh(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lgov/nist/javax/sip/message/SIPRequest;->targetRefreshMethods:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final mustCopyRR(I)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x64

    if-le p1, v1, :cond_0

    const/16 v1, 0x12c

    if-ge p1, v1, :cond_0

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgov/nist/javax/sip/message/SIPRequest;->isDialogCreating(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getToTag()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static putName(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lgov/nist/javax/sip/message/SIPRequest;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public checkHeaders()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v6, 0x0

    const-string v0, "Missing a required header : "

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "CSeq"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "To"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    :cond_1
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/CallID;->getCallId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/CallID;->getCallId()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Call-ID"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    :cond_3
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v3

    if-nez v3, :cond_4

    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "From"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    :cond_4
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v3

    if-nez v3, :cond_5

    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Via"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    :cond_5
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v3

    if-nez v3, :cond_6

    new-instance v3, Ljava/text/ParseException;

    const-string v4, "No via header in request! "

    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    :cond_6
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NOTIFY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "Subscription-State"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v3

    if-nez v3, :cond_7

    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Subscription-State"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    :cond_7
    const-string v3, "Event"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v3

    if-nez v3, :cond_9

    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Event"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    :cond_8
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PUBLISH"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "Event"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v3

    if-nez v3, :cond_9

    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Event"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    :cond_9
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "INVITE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SUBSCRIBE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "REFER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_a
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getContactHeader()Lgov/nist/javax/sip/header/Contact;

    move-result-object v3

    if-nez v3, :cond_b

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getToTag()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b

    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Contact"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    :cond_b
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/RequestLine;->getUri()Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v3

    instance-of v3, v3, Lgov/nist/javax/sip/address/SipUri;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/RequestLine;->getUri()Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/address/SipUri;

    invoke-virtual {v3}, Lgov/nist/javax/sip/address/SipUri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v3, "sips"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getContactHeader()Lgov/nist/javax/sip/header/Contact;

    move-result-object v3

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/Contact;->getAddress()Ljavax/sip/address/Address;

    move-result-object v3

    invoke-interface {v3}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/address/SipUri;

    invoke-virtual {v2}, Lgov/nist/javax/sip/address/SipUri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sips"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scheme for contact should be sips:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    :cond_c
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getContactHeader()Lgov/nist/javax/sip/header/Contact;

    move-result-object v3

    if-nez v3, :cond_e

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "INVITE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "REFER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SUBSCRIBE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_d
    new-instance v3, Ljava/text/ParseException;

    const-string v4, "Contact Header is Mandatory for a SIP INVITE"

    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    :cond_e
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v3

    invoke-interface {v3}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v4

    invoke-interface {v4}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_f

    new-instance v3, Ljava/text/ParseException;

    const-string v4, "CSEQ method mismatch with  Request-Line "

    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    :cond_f
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    const/4 v1, 0x0

    iput-object v1, v0, Lgov/nist/javax/sip/message/SIPRequest;->transactionPointer:Ljava/lang/Object;

    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RequestLine;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/RequestLine;

    iput-object v1, v0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    :cond_0
    return-object v0
.end method

.method public createACKRequest()Lgov/nist/javax/sip/message/SIPRequest;
    .locals 2

    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RequestLine;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/RequestLine;

    const-string v1, "ACK"

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/RequestLine;->setMethod(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->createSIPRequest(Lgov/nist/javax/sip/header/RequestLine;Z)Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v1

    return-object v1
.end method

.method public createAckRequest(Lgov/nist/javax/sip/header/To;)Lgov/nist/javax/sip/message/SIPRequest;
    .locals 8

    new-instance v4, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-direct {v4}, Lgov/nist/javax/sip/message/SIPRequest;-><init>()V

    iget-object v6, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v6}, Lgov/nist/javax/sip/header/RequestLine;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v4, v6}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestLine(Lgov/nist/javax/sip/header/RequestLine;)V

    const-string v6, "ACK"

    invoke-virtual {v4, v6}, Lgov/nist/javax/sip/message/SIPRequest;->setMethod(Ljava/lang/String;)V

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getHeaders()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgov/nist/javax/sip/header/SIPHeader;

    instance-of v6, v5, Lgov/nist/javax/sip/header/RouteList;

    if-nez v6, :cond_0

    instance-of v6, v5, Lgov/nist/javax/sip/header/ProxyAuthorization;

    if-nez v6, :cond_0

    instance-of v6, v5, Lgov/nist/javax/sip/header/ContentLength;

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgov/nist/javax/sip/header/SIPHeader;

    :try_start_0
    move-object v0, v5

    check-cast v0, Lgov/nist/javax/sip/header/ContentLength;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lgov/nist/javax/sip/header/ContentLength;->setContentLength(I)V
    :try_end_0
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v4, v5, v6}, Lgov/nist/javax/sip/message/SIPRequest;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;Z)V
    :try_end_1
    .catch Lgov/nist/javax/sip/message/SIPDuplicateHeaderException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;->printStackTrace()V

    goto :goto_0

    :cond_1
    instance-of v6, v5, Lgov/nist/javax/sip/header/ContentType;

    if-nez v6, :cond_0

    instance-of v6, v5, Lgov/nist/javax/sip/header/CSeq;

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/CSeq;

    :try_start_2
    const-string v6, "ACK"

    invoke-virtual {v1, v6}, Lgov/nist/javax/sip/header/CSeq;->setMethod(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    move-object v5, v1

    goto :goto_1

    :cond_2
    instance-of v6, v5, Lgov/nist/javax/sip/header/To;

    if-eqz v6, :cond_4

    if-eqz p1, :cond_3

    move-object v5, p1

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgov/nist/javax/sip/header/SIPHeader;

    goto :goto_1

    :cond_4
    instance-of v6, v5, Lgov/nist/javax/sip/header/ContactList;

    if-nez v6, :cond_0

    instance-of v6, v5, Lgov/nist/javax/sip/header/Expires;

    if-nez v6, :cond_0

    instance-of v6, v5, Lgov/nist/javax/sip/header/ViaList;

    if-eqz v6, :cond_5

    check-cast v5, Lgov/nist/javax/sip/header/ViaList;

    invoke-virtual {v5}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v6

    invoke-interface {v6}, Ljavax/sip/header/Header;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgov/nist/javax/sip/header/SIPHeader;

    goto :goto_1

    :cond_5
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgov/nist/javax/sip/header/SIPHeader;

    goto :goto_1

    :cond_6
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    move-result-object v6

    invoke-virtual {v4, v6}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    :cond_7
    return-object v4

    :catch_1
    move-exception v6

    goto :goto_2

    :catch_2
    move-exception v6

    goto :goto_1
.end method

.method public createBYERequest(Z)Lgov/nist/javax/sip/message/SIPRequest;
    .locals 2

    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RequestLine;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/RequestLine;

    const-string v1, "BYE"

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/RequestLine;->setMethod(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/message/SIPRequest;->createSIPRequest(Lgov/nist/javax/sip/header/RequestLine;Z)Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v1

    return-object v1
.end method

.method public createCancelRequest()Lgov/nist/javax/sip/message/SIPRequest;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    const-string v3, "INVITE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljavax/sip/SipException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to create CANCEL for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-direct {v0}, Lgov/nist/javax/sip/message/SIPRequest;-><init>()V

    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/RequestLine;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestLine(Lgov/nist/javax/sip/header/RequestLine;)V

    const-string v2, "CANCEL"

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/message/SIPRequest;->setMethod(Ljava/lang/String;)V

    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/CallID;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/sip/header/Header;

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->toHeader:Lgov/nist/javax/sip/header/To;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/To;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/sip/header/Header;

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/CSeq;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/sip/header/Header;

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    :try_start_0
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v2

    const-string v3, "CANCEL"

    invoke-interface {v2, v3}, Ljavax/sip/header/CSeqHeader;->setMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->fromHeader:Lgov/nist/javax/sip/header/From;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/From;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/sip/header/Header;

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/Via;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/sip/header/Header;

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/message/SIPRequest;->addFirst(Ljavax/sip/header/Header;)V

    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->maxForwardsHeader:Lgov/nist/javax/sip/header/MaxForwards;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/MaxForwards;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/sip/header/Header;

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getRouteHeaders()Lgov/nist/javax/sip/header/RouteList;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getRouteHeaders()Lgov/nist/javax/sip/header/RouteList;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/RouteList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/SIPHeaderList;

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    :cond_1
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    :cond_2
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public final createErrorAck(Lgov/nist/javax/sip/header/To;)Lgov/nist/javax/sip/message/SIPRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;,
            Ljava/text/ParseException;
        }
    .end annotation

    new-instance v0, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-direct {v0}, Lgov/nist/javax/sip/message/SIPRequest;-><init>()V

    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RequestLine;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestLine(Lgov/nist/javax/sip/header/RequestLine;)V

    const-string v1, "ACK"

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setMethod(Ljava/lang/String;)V

    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/CallID;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/sip/header/Header;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->maxForwardsHeader:Lgov/nist/javax/sip/header/MaxForwards;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/MaxForwards;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/sip/header/Header;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->fromHeader:Lgov/nist/javax/sip/header/From;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/sip/header/Header;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    invoke-virtual {p1}, Lgov/nist/javax/sip/header/To;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/sip/header/Header;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/Via;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/sip/header/Header;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->addFirst(Ljavax/sip/header/Header;)V

    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/CSeq;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/sip/header/Header;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v1

    const-string v2, "ACK"

    invoke-interface {v1, v2}, Ljavax/sip/header/CSeqHeader;->setMethod(Ljava/lang/String;)V

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getRouteHeaders()Lgov/nist/javax/sip/header/RouteList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getRouteHeaders()Lgov/nist/javax/sip/header/RouteList;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RouteList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/SIPHeaderList;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Lgov/nist/javax/sip/header/SIPHeaderList;)V

    :cond_0
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    :cond_1
    return-object v0
.end method

.method public createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;
    .locals 2

    invoke-static {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getReasonPhrase(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(ILjava/lang/String;)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v1

    return-object v1
.end method

.method public createResponse(ILjava/lang/String;)Lgov/nist/javax/sip/message/SIPResponse;
    .locals 9

    new-instance v3, Lgov/nist/javax/sip/message/SIPResponse;

    invoke-direct {v3}, Lgov/nist/javax/sip/message/SIPResponse;-><init>()V

    :try_start_0
    invoke-virtual {v3, p1}, Lgov/nist/javax/sip/message/SIPResponse;->setStatusCode(I)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p2, :cond_3

    invoke-virtual {v3, p2}, Lgov/nist/javax/sip/message/SIPResponse;->setReasonPhrase(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getHeaders()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/header/SIPHeader;

    instance-of v6, v4, Lgov/nist/javax/sip/header/From;

    if-nez v6, :cond_2

    instance-of v6, v4, Lgov/nist/javax/sip/header/To;

    if-nez v6, :cond_2

    instance-of v6, v4, Lgov/nist/javax/sip/header/ViaList;

    if-nez v6, :cond_2

    instance-of v6, v4, Lgov/nist/javax/sip/header/CallID;

    if-nez v6, :cond_2

    instance-of v6, v4, Lgov/nist/javax/sip/header/RecordRouteList;

    if-eqz v6, :cond_1

    invoke-direct {p0, p1}, Lgov/nist/javax/sip/message/SIPRequest;->mustCopyRR(I)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    instance-of v6, v4, Lgov/nist/javax/sip/header/CSeq;

    if-nez v6, :cond_2

    instance-of v6, v4, Lgov/nist/javax/sip/header/TimeStamp;

    if-eqz v6, :cond_0

    :cond_2
    :try_start_1
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgov/nist/javax/sip/header/SIPHeader;

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Lgov/nist/javax/sip/message/SIPResponse;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;Z)V
    :try_end_1
    .catch Lgov/nist/javax/sip/message/SIPDuplicateHeaderException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad code "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    invoke-static {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getReasonPhrase(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lgov/nist/javax/sip/message/SIPResponse;->setReasonPhrase(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax/sip/header/ServerHeader;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax/sip/header/ServerHeader;

    move-result-object v6

    invoke-virtual {v3, v6}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    :cond_5
    invoke-virtual {v3}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v6

    const/16 v7, 0x64

    if-ne v6, v7, :cond_6

    invoke-virtual {v3}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v6

    const-string v7, "tag"

    invoke-interface {v6, v7}, Ljavax/sip/header/ToHeader;->removeParameter(Ljava/lang/String;)V

    :cond_6
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax/sip/header/ServerHeader;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v3, v5}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    :cond_7
    return-object v3
.end method

.method public createSIPRequest(Lgov/nist/javax/sip/header/RequestLine;Z)Lgov/nist/javax/sip/message/SIPRequest;
    .locals 10

    new-instance v5, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-direct {v5}, Lgov/nist/javax/sip/message/SIPRequest;-><init>()V

    iput-object p1, v5, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getHeaders()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgov/nist/javax/sip/header/SIPHeader;

    instance-of v9, v6, Lgov/nist/javax/sip/header/CSeq;

    if-eqz v9, :cond_1

    invoke-virtual {v6}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/header/CSeq;

    move-object v6, v4

    :try_start_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lgov/nist/javax/sip/header/CSeq;->setMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_1
    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {v5, v6, v9}, Lgov/nist/javax/sip/message/SIPRequest;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;Z)V
    :try_end_1
    .catch Lgov/nist/javax/sip/message/SIPDuplicateHeaderException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;->printStackTrace()V

    goto :goto_0

    :cond_1
    instance-of v9, v6, Lgov/nist/javax/sip/header/ViaList;

    if-eqz v9, :cond_2

    check-cast v6, Lgov/nist/javax/sip/header/ViaList;

    invoke-virtual {v6}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v9

    invoke-interface {v9}, Ljavax/sip/header/Header;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgov/nist/javax/sip/header/Via;

    move-object v8, v9

    check-cast v8, Lgov/nist/javax/sip/header/Via;

    const-string v9, "branch"

    invoke-virtual {v8, v9}, Lgov/nist/javax/sip/header/Via;->removeParameter(Ljava/lang/String;)V

    move-object v6, v8

    goto :goto_1

    :cond_2
    instance-of v9, v6, Lgov/nist/javax/sip/header/To;

    if-eqz v9, :cond_4

    move-object v7, v6

    check-cast v7, Lgov/nist/javax/sip/header/To;

    if-eqz p2, :cond_3

    new-instance v6, Lgov/nist/javax/sip/header/From;

    invoke-direct {v6, v7}, Lgov/nist/javax/sip/header/From;-><init>(Lgov/nist/javax/sip/header/To;)V

    move-object v9, v6

    check-cast v9, Lgov/nist/javax/sip/header/From;

    invoke-virtual {v9}, Lgov/nist/javax/sip/header/From;->removeTag()V

    goto :goto_1

    :cond_3
    invoke-virtual {v7}, Lgov/nist/javax/sip/header/To;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgov/nist/javax/sip/header/SIPHeader;

    move-object v9, v6

    check-cast v9, Lgov/nist/javax/sip/header/To;

    invoke-virtual {v9}, Lgov/nist/javax/sip/header/To;->removeTag()V

    goto :goto_1

    :cond_4
    instance-of v9, v6, Lgov/nist/javax/sip/header/From;

    if-eqz v9, :cond_6

    move-object v2, v6

    check-cast v2, Lgov/nist/javax/sip/header/From;

    if-eqz p2, :cond_5

    new-instance v6, Lgov/nist/javax/sip/header/To;

    invoke-direct {v6, v2}, Lgov/nist/javax/sip/header/To;-><init>(Lgov/nist/javax/sip/header/From;)V

    move-object v9, v6

    check-cast v9, Lgov/nist/javax/sip/header/To;

    invoke-virtual {v9}, Lgov/nist/javax/sip/header/To;->removeTag()V

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/From;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgov/nist/javax/sip/header/SIPHeader;

    move-object v9, v6

    check-cast v9, Lgov/nist/javax/sip/header/From;

    invoke-virtual {v9}, Lgov/nist/javax/sip/header/From;->removeTag()V

    goto :goto_1

    :cond_6
    instance-of v9, v6, Lgov/nist/javax/sip/header/ContentLength;

    if-eqz v9, :cond_7

    invoke-virtual {v6}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ContentLength;

    const/4 v9, 0x0

    :try_start_2
    invoke-virtual {v0, v9}, Lgov/nist/javax/sip/header/ContentLength;->setContentLength(I)V
    :try_end_2
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    move-object v6, v0

    goto :goto_1

    :cond_7
    instance-of v9, v6, Lgov/nist/javax/sip/header/CallID;

    if-nez v9, :cond_0

    instance-of v9, v6, Lgov/nist/javax/sip/header/MaxForwards;

    if-nez v9, :cond_0

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    move-result-object v9

    if-eqz v9, :cond_9

    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    move-result-object v9

    invoke-virtual {v5, v9}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    :cond_9
    return-object v5

    :catch_1
    move-exception v9

    goto :goto_2

    :catch_2
    move-exception v9

    goto/16 :goto_1
.end method

.method public debugDump()Ljava/lang/String;
    .locals 2

    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->debugDump()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    iput-object v1, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    const-class v1, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->sprint(Ljava/lang/String;)V

    const-string v1, "{"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->sprint(Ljava/lang/String;)V

    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RequestLine;->debugDump()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->sprint(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/message/SIPRequest;->sprint(Ljava/lang/String;)V

    const-string v1, "}"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->sprint(Ljava/lang/String;)V

    iget-object v1, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    return-object v1
.end method

.method public encode()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestLineDefaults()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/RequestLine;->encode()Ljava/lang/String;

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
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->isNullRequest()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "\r\n\r\n"

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->encode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public encodeAsBytes(Ljava/lang/String;)[B
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->isNullRequest()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "\r\n\r\n"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    if-nez v4, :cond_1

    new-array v1, v6, [B

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    if-eqz v4, :cond_2

    :try_start_0
    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v4}, Lgov/nist/javax/sip/header/RequestLine;->encode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_2
    :goto_1
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

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public encodeMessage()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestLineDefaults()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/RequestLine;->encode()Ljava/lang/String;

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
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->isNullRequest()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "\r\n\r\n"

    goto :goto_0

    :cond_1
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

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    iget-object v3, v0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/header/RequestLine;->equals(Ljava/lang/Object;)Z

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

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/CallID;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/CallID;->getCallId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/From;

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/To;

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

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/From;

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/CallID;

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

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/RequestLine;->encode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getInviteTransaction()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->inviteTransaction:Ljava/lang/Object;

    return-object v0
.end method

.method public getMergeId()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getFromTag()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPMessage;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    invoke-virtual {v4}, Lgov/nist/javax/sip/header/CSeq;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPMessage;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    invoke-virtual {v4}, Lgov/nist/javax/sip/header/CallID;->getCallId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestURI()Ljavax/sip/address/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_0

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getMessageAsEncodedStrings()Ljava/util/LinkedList;
    .locals 2

    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getMessageAsEncodedStrings()Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestLineDefaults()V

    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RequestLine;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public getMessageChannel()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->messageChannel:Ljava/lang/Object;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRequestLine()Lgov/nist/javax/sip/header/RequestLine;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    return-object v0
.end method

.method public getRequestURI()Ljavax/sip/address/URI;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/RequestLine;->getUri()Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v0

    goto :goto_0
.end method

.method public getSIPVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/RequestLine;->getSipVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransaction()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->transactionPointer:Ljava/lang/Object;

    return-object v0
.end method

.method public getViaHost()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/Via;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Via;->getHost()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getViaPort()I
    .locals 2

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/Via;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Via;->hasPort()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Via;->getPort()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x13c4

    goto :goto_0
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

    check-cast v1, Lgov/nist/javax/sip/message/SIPRequest;

    iget-object v0, v1, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    if-nez v4, :cond_3

    if-eqz v0, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    if-ne v4, v0, :cond_4

    invoke-super {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->match(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    iget-object v5, v1, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/header/RequestLine;->match(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-super {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->match(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_5
    move v2, v3

    goto :goto_0
.end method

.method protected setDefaults()V
    .locals 4

    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/RequestLine;->getUri()Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "REGISTER"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "INVITE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    instance-of v3, v2, Lgov/nist/javax/sip/address/SipUri;

    if-eqz v3, :cond_0

    move-object v1, v2

    check-cast v1, Lgov/nist/javax/sip/address/SipUri;

    const-string v3, "ip"

    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/address/SipUri;->setUserParam(Ljava/lang/String;)V

    :try_start_0
    const-string v3, "udp"

    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/address/SipUri;->setTransportParam(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public setInviteTransaction(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/message/SIPRequest;->inviteTransaction:Ljava/lang/Object;

    return-void
.end method

.method public setMessageChannel(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/message/SIPRequest;->messageChannel:Ljava/lang/Object;

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "null method"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    if-nez v1, :cond_1

    new-instance v1, Lgov/nist/javax/sip/header/RequestLine;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/RequestLine;-><init>()V

    iput-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    :cond_1
    invoke-static {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCannonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/RequestLine;->setMethod(Ljava/lang/String;)V

    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/CSeq;->setMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setRequestLine(Lgov/nist/javax/sip/header/RequestLine;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    return-void
.end method

.method protected setRequestLineDefaults()V
    .locals 3

    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/CSeq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/CSeq;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getCannonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/header/RequestLine;->setMethod(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setRequestURI(Ljavax/sip/address/URI;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null request URI"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    if-nez v0, :cond_1

    new-instance v0, Lgov/nist/javax/sip/header/RequestLine;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/RequestLine;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    check-cast p1, Lgov/nist/javax/sip/address/GenericURI;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/RequestLine;->setUri(Ljavax/sip/address/URI;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->nullRequest:Z

    return-void
.end method

.method public setSIPVersion(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "SIP/2.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "sipVersion"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/RequestLine;->setSipVersion(Ljava/lang/String;)V

    return-void
.end method

.method public setTransaction(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/message/SIPRequest;->transactionPointer:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
