.class public Lgov/nist/javax/sip/header/ContentLanguage;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "ContentLanguage.java"

# interfaces
.implements Ljavax/sip/header/ContentLanguageHeader;


# static fields
.field private static final serialVersionUID:J = -0x481aef79f0bb5eceL


# instance fields
.field protected locale:Ljava/util/Locale;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Content-Language"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Content-Language"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ContentLanguage;->setLanguageTag(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    invoke-super {p0}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ContentLanguage;

    iget-object v1, p0, Lgov/nist/javax/sip/header/ContentLanguage;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgov/nist/javax/sip/header/ContentLanguage;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    iput-object v1, v0, Lgov/nist/javax/sip/header/ContentLanguage;->locale:Ljava/util/Locale;

    :cond_0
    return-object v0
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ContentLanguage;->getLanguageTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLanguage()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentLanguage;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getLanguageTag()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    iget-object v1, p0, Lgov/nist/javax/sip/header/ContentLanguage;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentLanguage;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/javax/sip/header/ContentLanguage;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/header/ContentLanguage;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setContentLanguage(Ljava/util/Locale;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/header/ContentLanguage;->locale:Ljava/util/Locale;

    return-void
.end method

.method public setLanguageTag(Ljava/lang/String;)V
    .locals 4

    const/16 v1, 0x2d

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    new-instance v1, Ljava/util/Locale;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lgov/nist/javax/sip/header/ContentLanguage;->locale:Ljava/util/Locale;

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lgov/nist/javax/sip/header/ContentLanguage;->locale:Ljava/util/Locale;

    goto :goto_0
.end method
