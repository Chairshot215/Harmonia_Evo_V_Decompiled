.class public Lgov/nist/javax/sip/header/SIPDateHeader;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "SIPDateHeader.java"

# interfaces
.implements Ljavax/sip/header/DateHeader;


# static fields
.field private static final serialVersionUID:J = 0x1811114988a6e228L


# instance fields
.field protected date:Lgov/nist/javax/sip/header/SIPDate;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Date"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    invoke-super {p0}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/SIPDateHeader;

    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPDateHeader;->date:Lgov/nist/javax/sip/header/SIPDate;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPDateHeader;->date:Lgov/nist/javax/sip/header/SIPDate;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/SIPDate;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/SIPDate;

    iput-object v1, v0, Lgov/nist/javax/sip/header/SIPDateHeader;->date:Lgov/nist/javax/sip/header/SIPDate;

    :cond_0
    return-object v0
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDateHeader;->date:Lgov/nist/javax/sip/header/SIPDate;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/SIPDate;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDateHeader;->date:Lgov/nist/javax/sip/header/SIPDate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDateHeader;->date:Lgov/nist/javax/sip/header/SIPDate;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/SIPDate;->getJavaCal()Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0
.end method

.method public setDate(Lgov/nist/javax/sip/header/SIPDate;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPDateHeader;->date:Lgov/nist/javax/sip/header/SIPDate;

    return-void
.end method

.method public setDate(Ljava/util/Calendar;)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Lgov/nist/javax/sip/header/SIPDate;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lgov/nist/javax/sip/header/SIPDate;-><init>(J)V

    iput-object v0, p0, Lgov/nist/javax/sip/header/SIPDateHeader;->date:Lgov/nist/javax/sip/header/SIPDate;

    :cond_0
    return-void
.end method
