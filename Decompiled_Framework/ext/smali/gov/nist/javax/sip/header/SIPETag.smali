.class public Lgov/nist/javax/sip/header/SIPETag;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "SIPETag.java"

# interfaces
.implements Ljavax/sip/header/SIPETagHeader;
.implements Ljavax/sip/header/ExtensionHeader;


# static fields
.field private static final serialVersionUID:J = 0x3541b15bf9044cbbL


# instance fields
.field protected entityTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "SIP-ETag"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPETag;-><init>()V

    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/SIPETag;->setETag(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPETag;->entityTag:Ljava/lang/String;

    return-object v0
.end method

.method public getETag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPETag;->entityTag:Ljava/lang/String;

    return-object v0
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception,SIP-ETag, setETag(), the etag parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPETag;->entityTag:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/SIPETag;->setETag(Ljava/lang/String;)V

    return-void
.end method
