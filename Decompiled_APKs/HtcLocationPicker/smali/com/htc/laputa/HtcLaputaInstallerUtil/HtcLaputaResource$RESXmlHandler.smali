.class Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource$RESXmlHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "HtcLaputaResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RESXmlHandler"
.end annotation


# static fields
.field static final ATR_RESNUMBER:Ljava/lang/String; = "res_number"

.field static final ELM_LAPUTA:Ljava/lang/String; = "laputa"


# instance fields
.field mResVersion:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource;


# direct methods
.method public constructor <init>(Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource$RESXmlHandler;->this$0:Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource;

    .line 191
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 192
    return-void
.end method


# virtual methods
.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "qName"
    .parameter "atts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 201
    const-string v0, "laputa"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const-string v0, "res_number"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource$RESXmlHandler;->mResVersion:Ljava/lang/String;

    .line 204
    const-string v0, "HtcLaputaInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resource version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource$RESXmlHandler;->mResVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    return-void
.end method
