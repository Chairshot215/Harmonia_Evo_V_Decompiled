.class public Lgov/nist/javax/sip/header/Subject;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "Subject.java"

# interfaces
.implements Ljavax/sip/header/SubjectHeader;


# static fields
.field private static final serialVersionUID:J = -0x59ead0607d05fec0L


# instance fields
.field protected subject:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Subject"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/header/Subject;->subject:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/header/Subject;->subject:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/header/Subject;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception,  Subject, setSubject(), the subject parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/header/Subject;->subject:Ljava/lang/String;

    return-void
.end method
