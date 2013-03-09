.class public Lgov/nist/javax/sip/address/AddressFactoryImpl;
.super Ljava/lang/Object;
.source "AddressFactoryImpl.java"

# interfaces
.implements Ljavax/sip/address/AddressFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAddress()Ljavax/sip/address/Address;
    .locals 1

    new-instance v0, Lgov/nist/javax/sip/address/AddressImpl;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/AddressImpl;-><init>()V

    return-object v0
.end method

.method public createAddress(Ljava/lang/String;)Ljavax/sip/address/Address;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "null address"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const-string v3, "*"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, Lgov/nist/javax/sip/address/AddressImpl;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/AddressImpl;-><init>()V

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/address/AddressImpl;->setAddressType(I)V

    new-instance v2, Lgov/nist/javax/sip/address/SipUri;

    invoke-direct {v2}, Lgov/nist/javax/sip/address/SipUri;-><init>()V

    const-string v3, "*"

    invoke-interface {v2, v3}, Ljavax/sip/address/SipURI;->setUser(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/address/AddressImpl;->setURI(Ljavax/sip/address/URI;)V

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lgov/nist/javax/sip/parser/StringMsgParser;

    invoke-direct {v1}, Lgov/nist/javax/sip/parser/StringMsgParser;-><init>()V

    invoke-virtual {v1, p1}, Lgov/nist/javax/sip/parser/StringMsgParser;->parseAddress(Ljava/lang/String;)Lgov/nist/javax/sip/address/AddressImpl;

    move-result-object v0

    goto :goto_0
.end method

.method public createAddress(Ljava/lang/String;Ljavax/sip/address/URI;)Ljavax/sip/address/Address;
    .locals 3

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null  URI"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/address/AddressImpl;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/AddressImpl;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/AddressImpl;->setDisplayName(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/address/AddressImpl;->setURI(Ljavax/sip/address/URI;)V

    return-object v0
.end method

.method public createAddress(Ljavax/sip/address/URI;)Ljavax/sip/address/Address;
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null address"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/address/AddressImpl;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/AddressImpl;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/AddressImpl;->setURI(Ljavax/sip/address/URI;)V

    return-object v0
.end method

.method public createSipURI(Ljava/lang/String;)Ljavax/sip/address/SipURI;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "null URI"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    :try_start_0
    new-instance v2, Lgov/nist/javax/sip/parser/StringMsgParser;

    invoke-direct {v2}, Lgov/nist/javax/sip/parser/StringMsgParser;-><init>()V

    invoke-virtual {v2, p1}, Lgov/nist/javax/sip/parser/StringMsgParser;->parseSIPUrl(Ljava/lang/String;)Lgov/nist/javax/sip/address/SipUri;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v3, Ljava/text/ParseException;

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method

.method public createSipURI(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/address/SipURI;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/16 v7, 0x5b

    const/16 v5, 0x3a

    const/4 v6, 0x0

    if-nez p2, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "null host"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "sip:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {p2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    if-eq v4, v5, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v7, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_2
    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Lgov/nist/javax/sip/parser/StringMsgParser;

    invoke-direct {v2}, Lgov/nist/javax/sip/parser/StringMsgParser;-><init>()V

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lgov/nist/javax/sip/parser/StringMsgParser;->parseSIPUrl(Ljava/lang/String;)Lgov/nist/javax/sip/address/SipUri;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v4, Ljava/text/ParseException;

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4
.end method

.method public createTelURL(Ljava/lang/String;)Ljavax/sip/address/TelURL;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "null url"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    new-instance v1, Lgov/nist/javax/sip/parser/StringMsgParser;

    invoke-direct {v1}, Lgov/nist/javax/sip/parser/StringMsgParser;-><init>()V

    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/parser/StringMsgParser;->parseUrl(Ljava/lang/String;)Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/address/TelURLImpl;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    new-instance v4, Ljava/text/ParseException;

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4
.end method

.method public createURI(Ljava/lang/String;)Ljavax/sip/address/URI;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v6, 0x0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "null arg"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    :try_start_0
    new-instance v2, Lgov/nist/javax/sip/parser/URLParser;

    invoke-direct {v2, p1}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgov/nist/javax/sip/parser/URLParser;->peekScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v3, Ljava/text/ParseException;

    const-string v4, "bad scheme"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/text/ParseException;

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    :cond_1
    :try_start_1
    const-string v3, "sip"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/parser/URLParser;->sipURL(Z)Lgov/nist/javax/sip/address/SipUri;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_2
    const-string v3, "sips"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/parser/URLParser;->sipURL(Z)Lgov/nist/javax/sip/address/SipUri;

    move-result-object v3

    goto :goto_0

    :cond_3
    const-string v3, "tel"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/parser/URLParser;->telURL(Z)Lgov/nist/javax/sip/address/TelURLImpl;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_0

    :cond_4
    new-instance v3, Lgov/nist/javax/sip/address/GenericURI;

    invoke-direct {v3, p1}, Lgov/nist/javax/sip/address/GenericURI;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
