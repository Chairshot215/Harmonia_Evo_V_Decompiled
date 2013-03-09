.class public Lgov/nist/javax/sip/address/GenericURI;
.super Lgov/nist/javax/sip/address/NetObject;
.source "GenericURI.java"

# interfaces
.implements Ljavax/sip/address/URI;


# static fields
.field public static final ISUB:Ljava/lang/String; = "isub"

.field public static final PHONE_CONTEXT_TAG:Ljava/lang/String; = "context-tag"

.field public static final POSTDIAL:Ljava/lang/String; = "postdial"

.field public static final PROVIDER_TAG:Ljava/lang/String; = "provider-tag"

.field public static final SIP:Ljava/lang/String; = "sip"

.field public static final SIPS:Ljava/lang/String; = "sips"

.field public static final TEL:Ljava/lang/String; = "tel"

.field private static final serialVersionUID:J = 0x2cee91964ebc9436L


# instance fields
.field protected scheme:Ljava/lang/String;

.field protected uriString:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgov/nist/javax/sip/address/NetObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-direct {p0}, Lgov/nist/javax/sip/address/NetObject;-><init>()V

    :try_start_0
    iput-object p1, p0, Lgov/nist/javax/sip/address/GenericURI;->uriString:Ljava/lang/String;

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lgov/nist/javax/sip/address/GenericURI;->scheme:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/text/ParseException;

    const-string v3, "GenericURI, Bad URI format"

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/address/GenericURI;->uriString:Ljava/lang/String;

    return-object v0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/address/GenericURI;->uriString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    instance-of v1, p1, Ljavax/sip/address/URI;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Ljavax/sip/address/URI;

    invoke-virtual {p0}, Lgov/nist/javax/sip/address/GenericURI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/address/GenericURI;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lgov/nist/javax/sip/address/GenericURI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSipURI()Z
    .locals 1

    instance-of v0, p0, Lgov/nist/javax/sip/address/SipUri;

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lgov/nist/javax/sip/address/GenericURI;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
