.class public Lcom/google/wireless/gdata2/serializer/xml/XmlBatchGDataSerializer;
.super Ljava/lang/Object;
.source "XmlBatchGDataSerializer.java"

# interfaces
.implements Lcom/google/wireless/gdata2/serializer/GDataSerializer;


# instance fields
.field private final batch:Ljava/util/Enumeration;

.field private final gdataFactory:Lcom/google/wireless/gdata2/client/GDataParserFactory;

.field private final xmlFactory:Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;


# direct methods
.method public constructor <init>(Lcom/google/wireless/gdata2/client/GDataParserFactory;Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;Ljava/util/Enumeration;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlBatchGDataSerializer;->gdataFactory:Lcom/google/wireless/gdata2/client/GDataParserFactory;

    .line 40
    iput-object p2, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlBatchGDataSerializer;->xmlFactory:Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;

    .line 41
    iput-object p3, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlBatchGDataSerializer;->batch:Ljava/util/Enumeration;

    .line 42
    return-void
.end method

.method private static declareNamespaces(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    const-string v0, ""

    const-string v1, "http://www.w3.org/2005/Atom"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v0, "gd"

    const-string v1, "http://schemas.google.com/g/2005"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v0, "batch"

    const-string v1, "http://schemas.google.com/gdata/batch"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "application/atom+xml"

    return-object v0
.end method

.method public getSupportsPartial()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public serialize(Ljava/io/OutputStream;I)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlBatchGDataSerializer;->xmlFactory:Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;

    invoke-interface {v0}, Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;->createSerializer()Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 71
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->UTF8:Ljava/lang/String;

    invoke-interface {v1, p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 72
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->UTF8:Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 74
    invoke-static {v1}, Lcom/google/wireless/gdata2/serializer/xml/XmlBatchGDataSerializer;->declareNamespaces(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 76
    const/4 v0, 0x1

    move v2, v0

    .line 77
    :goto_0
    iget-object v0, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlBatchGDataSerializer;->batch:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlBatchGDataSerializer;->batch:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata2/data/Entry;

    .line 79
    iget-object v3, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlBatchGDataSerializer;->gdataFactory:Lcom/google/wireless/gdata2/client/GDataParserFactory;

    invoke-interface {v3, v0}, Lcom/google/wireless/gdata2/client/GDataParserFactory;->createSerializer(Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/serializer/GDataSerializer;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;

    .line 82
    if-eqz v2, :cond_0

    .line 84
    const/4 v2, 0x0

    .line 85
    const-string v3, "http://www.w3.org/2005/Atom"

    sget-object v4, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->FEED:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 86
    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->declareExtraEntryNamespaces(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 88
    :cond_0
    const/4 v3, 0x3

    invoke-virtual {v0, p1, v3}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->serialize(Ljava/io/OutputStream;I)V

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "Unable to create XmlSerializer."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 91
    :cond_1
    if-eqz v2, :cond_2

    .line 92
    const-string v0, "http://www.w3.org/2005/Atom"

    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->FEED:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 95
    :cond_2
    const-string v0, "http://www.w3.org/2005/Atom"

    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->FEED:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 96
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 97
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 98
    return-void
.end method
