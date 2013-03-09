.class public Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;
.super Ljava/lang/Object;
.source "XmlEntryGDataSerializer.java"

# interfaces
.implements Lcom/google/wireless/gdata2/serializer/GDataSerializer;


# instance fields
.field private final entry:Lcom/google/wireless/gdata2/data/Entry;

.field private final factory:Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;

.field private final supportsPartial:Z


# direct methods
.method public constructor <init>(Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata2/data/Entry;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->factory:Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;

    .line 41
    iput-object p2, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    .line 42
    iget-object v0, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/data/Entry;->getFields()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->supportsPartial:Z

    .line 43
    return-void

    .line 42
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declareEntryNamespaces(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    const-string v0, ""

    const-string v1, "http://www.w3.org/2005/Atom"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v0, "gd"

    const-string v1, "http://schemas.google.com/g/2005"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0, p1}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->declareExtraEntryNamespaces(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 114
    return-void
.end method

.method private static serializeAuthor(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 252
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->AUTHOR:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 256
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->NAME:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 257
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 258
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->NAME:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 259
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->EMAIL:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 260
    invoke-interface {p0, p2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 261
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->EMAIL:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 262
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->AUTHOR:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private serializeBatchInfo(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/data/Entry;->getETag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    const-string v0, "http://schemas.google.com/g/2005"

    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ETAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v2}, Lcom/google/wireless/gdata2/data/Entry;->getETag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/batch/BatchUtils;->getBatchOperation(Lcom/google/wireless/gdata2/data/Entry;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 314
    const-string v0, "http://schemas.google.com/gdata/batch"

    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->OPERATION:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 315
    const/4 v0, 0x0

    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TYPE:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-static {v2}, Lcom/google/wireless/gdata2/data/batch/BatchUtils;->getBatchOperation(Lcom/google/wireless/gdata2/data/Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 317
    const-string v0, "http://schemas.google.com/gdata/batch"

    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->OPERATION:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/batch/BatchUtils;->getBatchId(Lcom/google/wireless/gdata2/data/Entry;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 320
    const-string v0, "http://schemas.google.com/gdata/batch"

    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ID:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 321
    iget-object v0, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/batch/BatchUtils;->getBatchId(Lcom/google/wireless/gdata2/data/Entry;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 322
    const-string v0, "http://schemas.google.com/gdata/batch"

    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ID:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 324
    :cond_2
    return-void
.end method

.method private static serializeCategory(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 269
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    :goto_0
    return-void

    .line 273
    :cond_0
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->CATEGORY:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 274
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 275
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TERM:Ljava/lang/String;

    invoke-interface {p0, v1, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 277
    :cond_1
    invoke-static {p2}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 278
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->SCHEME:Ljava/lang/String;

    invoke-interface {p0, v1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 280
    :cond_2
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->CATEGORY:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private static serializeContent(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
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

    .line 239
    if-nez p1, :cond_0

    .line 246
    :goto_0
    return-void

    .line 242
    :cond_0
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->CONTENT:Ljava/lang/String;

    invoke-interface {p0, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 243
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TYPE:Ljava/lang/String;

    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TEXT:Ljava/lang/String;

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 244
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 245
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->CONTENT:Ljava/lang/String;

    invoke-interface {p0, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private serializeEntryContents(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 128
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 129
    invoke-direct {p0, p1}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->serializeBatchInfo(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 132
    :cond_0
    if-eq p2, v3, :cond_1

    .line 133
    iget-object v0, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/data/Entry;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->serializeId(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/data/Entry;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->serializeTitle(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 138
    if-eq p2, v3, :cond_2

    .line 139
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->EDIT_REL:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/data/Entry;->getEditUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, v4, v4}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->serializeLink(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ALTERNATE_REL:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/data/Entry;->getHtmlUri()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TEXTHTML:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2, v4}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->serializeLink(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/data/Entry;->getSummary()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->serializeSummary(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/data/Entry;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->serializeContent(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/data/Entry;->getAuthor()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/data/Entry;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->serializeAuthor(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/data/Entry;->getCategory()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/data/Entry;->getCategoryScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->serializeCategory(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    if-nez p2, :cond_3

    .line 154
    iget-object v0, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/data/Entry;->getPublicationDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->serializePublicationDate(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 158
    :cond_3
    if-eq p2, v3, :cond_4

    .line 159
    iget-object v0, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/data/Entry;->getUpdateDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->serializeUpdateDate(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 163
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->serializeExtraEntryContents(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 164
    return-void
.end method

.method private static serializeId(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 182
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    :goto_0
    return-void

    .line 185
    :cond_0
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ID:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 186
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 187
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ID:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method protected static serializeLink(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 214
    invoke-static {p2}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    :goto_0
    return-void

    .line 217
    :cond_0
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->LINK:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 218
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->REL:Ljava/lang/String;

    invoke-interface {p0, v1, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 219
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->HREF:Ljava/lang/String;

    invoke-interface {p0, v1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 220
    invoke-static {p3}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TYPE:Ljava/lang/String;

    invoke-interface {p0, v1, v0, p3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 221
    :cond_1
    invoke-static {p4}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ETAG:Ljava/lang/String;

    invoke-interface {p0, v1, v0, p4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 222
    :cond_2
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->LINK:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private static serializePublicationDate(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 287
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    :goto_0
    return-void

    .line 290
    :cond_0
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->PUBLISHED:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 291
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 292
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->PUBLISHED:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private static serializeSummary(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 228
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    :goto_0
    return-void

    .line 231
    :cond_0
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->SUMMARY:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 232
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 233
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->SUMMARY:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private static serializeTitle(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 193
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 196
    :cond_0
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TITLE:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 197
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 198
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TITLE:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private static serializeUpdateDate(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 299
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    :goto_0
    return-void

    .line 302
    :cond_0
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->UPDATED:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 303
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 304
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->UPDATED:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method


# virtual methods
.method protected declareExtraEntryNamespaces(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    return-void
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "application/atom+xml"

    return-object v0
.end method

.method protected getEntry()Lcom/google/wireless/gdata2/data/Entry;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    return-object v0
.end method

.method public getSupportsPartial()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->supportsPartial:Z

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
    const/4 v4, 0x3

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->factory:Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;

    invoke-interface {v0}, Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;->createSerializer()Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 82
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->UTF8:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 83
    if-eq p2, v4, :cond_0

    .line 84
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->UTF8:Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 85
    invoke-direct {p0, v0}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->declareEntryNamespaces(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/data/Entry;->getFields()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->getSupportsPartial()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    const-string v2, "http://schemas.google.com/g/2005"

    sget-object v3, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->PARTIAL:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 90
    const/4 v2, 0x0

    sget-object v3, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->FIELDS:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 93
    :cond_1
    const-string v1, "http://www.w3.org/2005/Atom"

    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ENTRY:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 95
    invoke-direct {p0, v0, p2}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->serializeEntryContents(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 97
    const-string v1, "http://www.w3.org/2005/Atom"

    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ENTRY:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 99
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->getSupportsPartial()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    const-string v1, "http://schemas.google.com/g/2005"

    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->PARTIAL:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 103
    :cond_2
    if-eq p2, v4, :cond_3

    .line 104
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 106
    :cond_3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 107
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "Unable to create XmlSerializer."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected serializeExtraEntryContents(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    return-void
.end method
