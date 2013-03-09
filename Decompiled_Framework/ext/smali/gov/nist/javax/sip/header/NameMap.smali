.class public Lgov/nist/javax/sip/header/NameMap;
.super Ljava/lang/Object;
.source "NameMap.java"

# interfaces
.implements Lgov/nist/javax/sip/header/SIPHeaderNames;
.implements Lgov/nist/core/PackageNames;


# static fields
.field static nameMap:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lgov/nist/javax/sip/header/NameMap;->initializeNameMap()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addExtensionHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lgov/nist/javax/sip/header/NameMap;->nameMap:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getClassFromName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5

    const/4 v2, 0x0

    sget-object v3, Lgov/nist/javax/sip/header/NameMap;->nameMap:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static initializeNameMap()V
    .locals 2

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lgov/nist/javax/sip/header/NameMap;->nameMap:Ljava/util/Hashtable;

    const-string v0, "Min-Expires"

    const-class v1, Lgov/nist/javax/sip/header/MinExpires;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Error-Info"

    const-class v1, Lgov/nist/javax/sip/header/ErrorInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MIME-Version"

    const-class v1, Lgov/nist/javax/sip/header/MimeVersion;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "In-Reply-To"

    const-class v1, Lgov/nist/javax/sip/header/InReplyTo;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Allow"

    const-class v1, Lgov/nist/javax/sip/header/Allow;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Language"

    const-class v1, Lgov/nist/javax/sip/header/ContentLanguage;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Call-Info"

    const-class v1, Lgov/nist/javax/sip/header/CallInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CSeq"

    const-class v1, Lgov/nist/javax/sip/header/CSeq;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alert-Info"

    const-class v1, Lgov/nist/javax/sip/header/AlertInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept-Encoding"

    const-class v1, Lgov/nist/javax/sip/header/AcceptEncoding;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept"

    const-class v1, Lgov/nist/javax/sip/header/Accept;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept-Language"

    const-class v1, Lgov/nist/javax/sip/header/AcceptLanguage;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Record-Route"

    const-class v1, Lgov/nist/javax/sip/header/RecordRoute;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Timestamp"

    const-class v1, Lgov/nist/javax/sip/header/TimeStamp;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "To"

    const-class v1, Lgov/nist/javax/sip/header/To;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Via"

    const-class v1, Lgov/nist/javax/sip/header/Via;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "From"

    const-class v1, Lgov/nist/javax/sip/header/From;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Call-ID"

    const-class v1, Lgov/nist/javax/sip/header/CallID;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Authorization"

    const-class v1, Lgov/nist/javax/sip/header/Authorization;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Proxy-Authenticate"

    const-class v1, Lgov/nist/javax/sip/header/ProxyAuthenticate;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Server"

    const-class v1, Lgov/nist/javax/sip/header/Server;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Unsupported"

    const-class v1, Lgov/nist/javax/sip/header/Unsupported;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Retry-After"

    const-class v1, Lgov/nist/javax/sip/header/RetryAfter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Type"

    const-class v1, Lgov/nist/javax/sip/header/ContentType;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Encoding"

    const-class v1, Lgov/nist/javax/sip/header/ContentEncoding;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Length"

    const-class v1, Lgov/nist/javax/sip/header/ContentLength;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Route"

    const-class v1, Lgov/nist/javax/sip/header/Route;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Contact"

    const-class v1, Lgov/nist/javax/sip/header/Contact;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "WWW-Authenticate"

    const-class v1, Lgov/nist/javax/sip/header/WWWAuthenticate;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Max-Forwards"

    const-class v1, Lgov/nist/javax/sip/header/MaxForwards;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Organization"

    const-class v1, Lgov/nist/javax/sip/header/Organization;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Proxy-Authorization"

    const-class v1, Lgov/nist/javax/sip/header/ProxyAuthorization;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Proxy-Require"

    const-class v1, Lgov/nist/javax/sip/header/ProxyRequire;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Require"

    const-class v1, Lgov/nist/javax/sip/header/Require;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Disposition"

    const-class v1, Lgov/nist/javax/sip/header/ContentDisposition;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Subject"

    const-class v1, Lgov/nist/javax/sip/header/Subject;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "User-Agent"

    const-class v1, Lgov/nist/javax/sip/header/UserAgent;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Warning"

    const-class v1, Lgov/nist/javax/sip/header/Warning;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Priority"

    const-class v1, Lgov/nist/javax/sip/header/Priority;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Date"

    const-class v1, Lgov/nist/javax/sip/header/SIPDateHeader;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Expires"

    const-class v1, Lgov/nist/javax/sip/header/Expires;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Supported"

    const-class v1, Lgov/nist/javax/sip/header/Supported;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Reply-To"

    const-class v1, Lgov/nist/javax/sip/header/ReplyTo;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Subscription-State"

    const-class v1, Lgov/nist/javax/sip/header/SubscriptionState;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Event"

    const-class v1, Lgov/nist/javax/sip/header/Event;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Allow-Events"

    const-class v1, Lgov/nist/javax/sip/header/AllowEvents;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Referred-By"

    const-string v1, "ReferredBy"

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Session-Expires"

    const-string v1, "SessionExpires"

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Min-SE"

    const-string v1, "MinSE"

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Replaces"

    const-string v1, "Replaces"

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Join"

    const-string v1, "Join"

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "P-Access-Network-Info"

    const-class v1, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "P-Asserted-Identity"

    const-class v1, Lgov/nist/javax/sip/header/ims/PAssertedIdentity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "P-Associated-URI"

    const-class v1, Lgov/nist/javax/sip/header/ims/PAssociatedURI;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "P-Called-Party-ID"

    const-class v1, Lgov/nist/javax/sip/header/ims/PCalledPartyID;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "P-Charging-Function-Addresses"

    const-class v1, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "P-Charging-Vector"

    const-class v1, Lgov/nist/javax/sip/header/ims/PChargingVector;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "P-Media-Authorization"

    const-class v1, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Path"

    const-class v1, Lgov/nist/javax/sip/header/ims/Path;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "P-Preferred-Identity"

    const-class v1, Lgov/nist/javax/sip/header/ims/PPreferredIdentity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Privacy"

    const-class v1, Lgov/nist/javax/sip/header/ims/Privacy;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Service-Route"

    const-class v1, Lgov/nist/javax/sip/header/ims/ServiceRoute;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "P-Visited-Network-ID"

    const-class v1, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected static putNameMap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lgov/nist/javax/sip/header/NameMap;->nameMap:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
