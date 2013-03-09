.class public Lcom/google/wireless/gdata/contacts/serializer/xml/XmlGroupEntryGDataSerializer;
.super Lcom/google/wireless/gdata/serializer/xml/XmlEntryGDataSerializer;
.source "XmlGroupEntryGDataSerializer.java"


# direct methods
.method public constructor <init>(Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata/contacts/data/GroupEntry;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata/serializer/xml/XmlEntryGDataSerializer;-><init>(Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata/data/Entry;)V

    .line 21
    return-void
.end method

.method private serializeSystemGroup(Lcom/google/wireless/gdata/contacts/data/GroupEntry;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-virtual {p1}, Lcom/google/wireless/gdata/contacts/data/GroupEntry;->getSystemGroup()Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {v0}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    const-string v1, "systemGroup"

    invoke-interface {p2, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 49
    const-string v1, "id"

    invoke-interface {p2, v2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 50
    const-string v0, "systemGroup"

    invoke-interface {p2, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 52
    :cond_0
    return-void
.end method


# virtual methods
.method protected declareExtraEntryNamespaces(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/google/wireless/gdata/serializer/xml/XmlEntryGDataSerializer;->declareExtraEntryNamespaces(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 30
    const-string v0, "gContact"

    const-string v1, "http://schemas.google.com/contact/2008"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method protected getGroupEntry()Lcom/google/wireless/gdata/contacts/data/GroupEntry;
    .locals 0

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/google/wireless/gdata/contacts/serializer/xml/XmlGroupEntryGDataSerializer;->getEntry()Lcom/google/wireless/gdata/data/Entry;

    move-result-object p0

    check-cast p0, Lcom/google/wireless/gdata/contacts/data/GroupEntry;

    return-object p0
.end method

.method protected serializeExtraEntryContents(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/google/wireless/gdata/contacts/serializer/xml/XmlGroupEntryGDataSerializer;->getGroupEntry()Lcom/google/wireless/gdata/contacts/data/GroupEntry;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/google/wireless/gdata/contacts/data/GroupEntry;->validate()V

    .line 42
    invoke-direct {p0, v0, p1}, Lcom/google/wireless/gdata/contacts/serializer/xml/XmlGroupEntryGDataSerializer;->serializeSystemGroup(Lcom/google/wireless/gdata/contacts/data/GroupEntry;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 43
    return-void
.end method
