.class public Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/NamedMailbox;
.super Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;
.source "NamedMailbox.java"


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "route"
    .parameter "localPart"
    .parameter "domain"

    .prologue
    .line 42
    invoke-direct {p0, p2, p3, p4}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;-><init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/NamedMailbox;->name:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;)V
    .locals 3
    .parameter "name"
    .parameter "baseMailbox"

    .prologue
    .line 50
    invoke-virtual {p2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;->getRoute()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/DomainList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;-><init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/NamedMailbox;->name:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "localPart"
    .parameter "domain"

    .prologue
    .line 34
    invoke-direct {p0, p2, p3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/NamedMailbox;->name:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public getAddressString(Z)Ljava/lang/String;
    .locals 3
    .parameter "includeRoute"

    .prologue
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/NamedMailbox;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;->getAddressString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/NamedMailbox;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/NamedMailbox;->name:Ljava/lang/String;

    return-object v0
.end method
