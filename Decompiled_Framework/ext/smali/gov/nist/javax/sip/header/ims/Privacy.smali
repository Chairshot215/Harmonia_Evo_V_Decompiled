.class public Lgov/nist/javax/sip/header/ims/Privacy;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "Privacy.java"

# interfaces
.implements Lgov/nist/javax/sip/header/ims/PrivacyHeader;
.implements Lgov/nist/javax/sip/header/ims/SIPHeaderNamesIms;
.implements Ljavax/sip/header/ExtensionHeader;


# instance fields
.field private privacy:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Privacy"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lgov/nist/javax/sip/header/ims/Privacy;-><init>()V

    iput-object p1, p0, Lgov/nist/javax/sip/header/ims/Privacy;->privacy:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    invoke-super {p0}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ims/Privacy;

    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/Privacy;->privacy:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/Privacy;->privacy:Ljava/lang/String;

    iput-object v1, v0, Lgov/nist/javax/sip/header/ims/Privacy;->privacy:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/Privacy;->privacy:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v1, p1, Lgov/nist/javax/sip/header/ims/PrivacyHeader;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/header/ims/PrivacyHeader;

    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/Privacy;->getPrivacy()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lgov/nist/javax/sip/header/ims/PrivacyHeader;->getPrivacy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPrivacy()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/Privacy;->privacy:Ljava/lang/String;

    return-object v0
.end method

.method public setPrivacy(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, ""

    if-ne p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception,  Privacy, setPrivacy(), privacy value is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lgov/nist/javax/sip/header/ims/Privacy;->privacy:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    new-instance v0, Ljava/text/ParseException;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
