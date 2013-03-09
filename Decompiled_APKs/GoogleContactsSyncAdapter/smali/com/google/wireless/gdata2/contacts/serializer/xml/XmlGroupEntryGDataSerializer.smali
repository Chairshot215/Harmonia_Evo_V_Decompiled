.class public Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlGroupEntryGDataSerializer;
.super Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;
.source "XmlGroupEntryGDataSerializer.java"


# direct methods
.method public constructor <init>(Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata2/contacts/data/GroupEntry;)V
    .locals 0
    .parameter "factory"
    .parameter "entry"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;-><init>(Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata2/data/Entry;)V

    .line 23
    return-void
.end method

.method private serializeSystemGroup(Lcom/google/wireless/gdata2/contacts/data/GroupEntry;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .parameter "entry"
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->getSystemGroup()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, systemGroup:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    const-string v1, "systemGroup"

    invoke-interface {p2, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 50
    const-string v1, "id"

    invoke-interface {p2, v2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 51
    const-string v1, "systemGroup"

    invoke-interface {p2, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 53
    :cond_0
    return-void
.end method


# virtual methods
.method protected declareExtraEntryNamespaces(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->declareExtraEntryNamespaces(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 31
    const-string v0, "gContact"

    const-string v1, "http://schemas.google.com/contact/2008"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method protected getGroupEntry()Lcom/google/wireless/gdata2/contacts/data/GroupEntry;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlGroupEntryGDataSerializer;->getEntry()Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;

    return-object v0
.end method

.method protected serializeExtraEntryContents(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 1
    .parameter "serializer"
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlGroupEntryGDataSerializer;->getGroupEntry()Lcom/google/wireless/gdata2/contacts/data/GroupEntry;

    move-result-object v0

    .line 41
    .local v0, entry:Lcom/google/wireless/gdata2/contacts/data/GroupEntry;
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->validate()V

    .line 43
    invoke-direct {p0, v0, p1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlGroupEntryGDataSerializer;->serializeSystemGroup(Lcom/google/wireless/gdata2/contacts/data/GroupEntry;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 44
    return-void
.end method
