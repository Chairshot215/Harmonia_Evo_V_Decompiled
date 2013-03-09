.class final Lcom/coremobility/integration/a/e;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/coremobility/integration/a/a;

.field private b:Lcom/coremobility/integration/a/h;


# direct methods
.method constructor <init>(Lcom/coremobility/integration/a/a;)V
    .locals 2

    iput-object p1, p0, Lcom/coremobility/integration/a/e;->a:Lcom/coremobility/integration/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/coremobility/integration/a/h;

    iget-object v1, p0, Lcom/coremobility/integration/a/e;->a:Lcom/coremobility/integration/a/a;

    invoke-direct {v0, v1}, Lcom/coremobility/integration/a/h;-><init>(Lcom/coremobility/integration/a/a;)V

    iput-object v0, p0, Lcom/coremobility/integration/a/e;->b:Lcom/coremobility/integration/a/h;

    return-void
.end method


# virtual methods
.method public final a()Lcom/coremobility/integration/a/g;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/integration/a/e;->b:Lcom/coremobility/integration/a/h;

    invoke-virtual {v0}, Lcom/coremobility/integration/a/h;->a()Lcom/coremobility/integration/a/g;

    move-result-object v0

    return-object v0
.end method

.method final a(Ljava/util/Hashtable;)V
    .locals 6

    const/4 v5, 0x5

    const/4 v4, 0x0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    const-string v1, "/sdcard/configuration.xml"

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    iget-object v2, p0, Lcom/coremobility/integration/a/e;->b:Lcom/coremobility/integration/a/h;

    invoke-virtual {v2, p1}, Lcom/coremobility/integration/a/h;->a(Ljava/util/Hashtable;)V

    iget-object v2, p0, Lcom/coremobility/integration/a/e;->b:Lcom/coremobility/integration/a/h;

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v0, Lcom/coremobility/a/a;->i:Z

    if-eqz v0, :cond_0

    :try_start_1
    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "configuration"

    const-string v2, "raw"

    const-string v3, "com.coremobility.app.vnotes"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    iget-object v2, p0, Lcom/coremobility/integration/a/e;->b:Lcom/coremobility/integration/a/h;

    invoke-virtual {v2, p1}, Lcom/coremobility/integration/a/h;->a(Ljava/util/Hashtable;)V

    iget-object v2, p0, Lcom/coremobility/integration/a/e;->b:Lcom/coremobility/integration/a/h;

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConfigXML error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConfigXML error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
