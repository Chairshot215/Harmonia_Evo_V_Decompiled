.class final Lcom/coremobility/integration/i/m;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/coremobility/integration/i/f;

.field private b:Lcom/coremobility/integration/i/n;


# direct methods
.method synthetic constructor <init>(Lcom/coremobility/integration/i/f;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coremobility/integration/i/m;-><init>(Lcom/coremobility/integration/i/f;B)V

    return-void
.end method

.method private constructor <init>(Lcom/coremobility/integration/i/f;B)V
    .locals 2

    iput-object p1, p0, Lcom/coremobility/integration/i/m;->a:Lcom/coremobility/integration/i/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/coremobility/integration/i/n;

    iget-object v1, p0, Lcom/coremobility/integration/i/m;->a:Lcom/coremobility/integration/i/f;

    invoke-direct {v0, v1}, Lcom/coremobility/integration/i/n;-><init>(Lcom/coremobility/integration/i/f;)V

    iput-object v0, p0, Lcom/coremobility/integration/i/m;->b:Lcom/coremobility/integration/i/n;

    return-void
.end method


# virtual methods
.method public final a()Lcom/coremobility/integration/i/l;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/integration/i/m;->b:Lcom/coremobility/integration/i/n;

    invoke-virtual {v0}, Lcom/coremobility/integration/i/n;->a()Lcom/coremobility/integration/i/l;

    move-result-object v0

    return-object v0
.end method

.method final a(Ljava/lang/String;)V
    .locals 5

    const/16 v4, 0x17

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "Parse String is null"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/integration/i/m;->b:Lcom/coremobility/integration/i/n;

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpgradeXML Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
