.class public Lgov/nist/javax/sip/header/ContentEncoding;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "ContentEncoding.java"

# interfaces
.implements Ljavax/sip/header/ContentEncodingHeader;


# static fields
.field private static final serialVersionUID:J = 0x1c3b09a8a2de85c9L


# instance fields
.field protected contentEncoding:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Content-Encoding"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Content-Encoding"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lgov/nist/javax/sip/header/ContentEncoding;->contentEncoding:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentEncoding;->contentEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentEncoding;->contentEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception,  encoding is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/header/ContentEncoding;->contentEncoding:Ljava/lang/String;

    return-void
.end method
