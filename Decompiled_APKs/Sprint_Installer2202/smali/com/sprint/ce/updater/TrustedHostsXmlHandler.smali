.class public Lcom/sprint/ce/updater/TrustedHostsXmlHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "TrustedHostsXmlHandler.java"


# static fields
.field private static final tagEntries:Ljava/lang/String; = "entries"

.field private static final tagHost:Ljava/lang/String; = "host"

.field private static final tagResponse:Ljava/lang/String; = "response"

.field private static final tagTtl:Ljava/lang/String; = "ttl"


# instance fields
.field private mHosts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTtl:Ljava/lang/String;

.field private sbToken:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .parameter "ch"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sprint/ce/updater/TrustedHostsXmlHandler;->sbToken:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/sprint/ce/updater/TrustedHostsXmlHandler;->sbToken:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 62
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "uri"
    .parameter "name"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 42
    const-string v0, "ttl"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/sprint/ce/updater/TrustedHostsXmlHandler;->sbToken:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/sprint/ce/updater/TrustedHostsXmlHandler;->sbToken:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/ce/updater/TrustedHostsXmlHandler;->mTtl:Ljava/lang/String;

    .line 53
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/ce/updater/TrustedHostsXmlHandler;->sbToken:Ljava/lang/StringBuilder;

    .line 54
    return-void

    .line 46
    :cond_1
    const-string v0, "host"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    iget-object v0, p0, Lcom/sprint/ce/updater/TrustedHostsXmlHandler;->sbToken:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sprint/ce/updater/TrustedHostsXmlHandler;->sbToken:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/sprint/ce/updater/TrustedHostsXmlHandler;->mHosts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sprint/ce/updater/TrustedHostsXmlHandler;->sbToken:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 49
    :cond_2
    const-string v0, "response"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-static {}, Lcom/sprint/ce/updater/TrustedHosts;->getInstance()Lcom/sprint/ce/updater/TrustedHosts;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/ce/updater/TrustedHostsXmlHandler;->mTtl:Ljava/lang/String;

    iget-object v2, p0, Lcom/sprint/ce/updater/TrustedHostsXmlHandler;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/sprint/ce/updater/TrustedHosts;->setData(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .parameter "uri"
    .parameter "name"
    .parameter "qName"
    .parameter "atts"

    .prologue
    .line 28
    const-string v0, "ttl"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sprint/ce/updater/TrustedHostsXmlHandler;->sbToken:Ljava/lang/StringBuilder;

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    const-string v0, "entries"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/ce/updater/TrustedHostsXmlHandler;->mHosts:Ljava/util/ArrayList;

    goto :goto_0

    .line 34
    :cond_2
    const-string v0, "host"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sprint/ce/updater/TrustedHostsXmlHandler;->sbToken:Ljava/lang/StringBuilder;

    goto :goto_0
.end method
