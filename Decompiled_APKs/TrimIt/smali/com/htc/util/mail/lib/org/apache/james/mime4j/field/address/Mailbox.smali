.class public Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;
.super Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Address;
.source "Mailbox.java"


# instance fields
.field private domain:Ljava/lang/String;

.field private localPart:Ljava/lang/String;

.field private route:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/DomainList;


# direct methods
.method public constructor <init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "route"
    .parameter "localPart"
    .parameter "domain"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Address;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;->route:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/DomainList;

    .line 51
    iput-object p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;->localPart:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;->domain:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "localPart"
    .parameter "domain"

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;-><init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected final doAddMailboxesTo(Ljava/util/ArrayList;)V
    .locals 0
    .parameter "results"

    .prologue
    .line 113
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method public getAddressString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;->getAddressString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAddressString(Z)Ljava/lang/String;
    .locals 3
    .parameter "includeRoute"

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;->route:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/DomainList;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;->localPart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;->domain:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;->route:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/DomainList;

    invoke-virtual {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/DomainList;->toRouteString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "@"

    goto :goto_1
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;->localPart:Ljava/lang/String;

    return-object v0
.end method

.method public getRoute()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/DomainList;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;->route:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/DomainList;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;->getAddressString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
