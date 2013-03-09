.class public Lgov/nist/javax/sip/header/Organization;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "Organization.java"

# interfaces
.implements Ljavax/sip/header/OrganizationHeader;


# static fields
.field private static final serialVersionUID:J = -0x2682caa11d164bc8L


# instance fields
.field protected organization:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Organization"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/header/Organization;->organization:Ljava/lang/String;

    return-object v0
.end method

.method public getOrganization()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/header/Organization;->organization:Ljava/lang/String;

    return-object v0
.end method

.method public setOrganization(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, Organization, setOrganization(), the organization parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/header/Organization;->organization:Ljava/lang/String;

    return-void
.end method
