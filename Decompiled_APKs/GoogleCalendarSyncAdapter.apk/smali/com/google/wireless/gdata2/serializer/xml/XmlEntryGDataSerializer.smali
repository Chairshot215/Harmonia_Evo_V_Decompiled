.class public Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;
.super Ljava/lang/Object;
.source "XmlEntryGDataSerializer.java"

# interfaces
.implements Lcom/google/wireless/gdata2/serializer/GDataSerializer;


# static fields
.field private static final EMPTY_ENTRY:Lcom/google/wireless/gdata2/data/Entry;


# instance fields
.field protected final entry:Lcom/google/wireless/gdata2/data/Entry;

.field private final factory:Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;

.field protected oldEntry:Lcom/google/wireless/gdata2/data/Entry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/google/wireless/gdata2/data/Entry;

    invoke-direct {v0}, Lcom/google/wireless/gdata2/data/Entry;-><init>()V

    sput-object v0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->EMPTY_ENTRY:Lcom/google/wireless/gdata2/data/Entry;

    return-void
.end method

.method public constructor <init>(Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata2/data/Entry;)V
    .locals 1
    .parameter "factory"
    .parameter "entry"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->factory:Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;

    .line 44
    iput-object p2, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    .line 45
    sget-object v0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->EMPTY_ENTRY:Lcom/google/wireless/gdata2/data/Entry;

    iput-object v0, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->oldEntry:Lcom/google/wireless/gdata2/data/Entry;

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata2/data/Entry;Lcom/google/wireless/gdata2/data/Entry;)V
    .locals 0
    .parameter "factory"
    .parameter "entry"
    .parameter "oldEntry"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->factory:Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;

    .line 50
    iput-object p2, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    .line 51
    iput-object p3, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->oldEntry:Lcom/google/wireless/gdata2/data/Entry;

    .line 52
    return-void
.end method

.method private declareEntryNamespaces(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    const-string v0, ""

    const-string v1, "http://www.w3.org/2005/Atom"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v0, "gd"

    const-string v1, "http://schemas.google.com/g/2005"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0, p1}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->declareExtraEntryNamespaces(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 124
    return-void
.end method

.method protected static equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 326
    invoke-static {p0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private serializeAuthor(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 254
    iget-object v2, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v2}, Lcom/google/wireless/gdata2/data/Entry;->getAuthor()Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, author:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v2}, Lcom/google/wireless/gdata2/data/Entry;->getEmail()Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, email:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->oldEntry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v2}, Lcom/google/wireless/gdata2/data/Entry;->getAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->oldEntry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v2}, Lcom/google/wireless/gdata2/data/Entry;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->AUTHOR:Ljava/lang/String;

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 261
    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->NAME:Ljava/lang/String;

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 262
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 263
    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->NAME:Ljava/lang/String;

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 264
    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->EMAIL:Ljava/lang/String;

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 265
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 266
    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->EMAIL:Ljava/lang/String;

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 267
    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->AUTHOR:Ljava/lang/String;

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private serializeBatchInfo(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/data/Entry;->getETag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    const-string v0, "http://schemas.google.com/g/2005"

    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ETAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v2}, Lcom/google/wireless/gdata2/data/Entry;->getETag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/batch/BatchUtils;->getBatchOperation(Lcom/google/wireless/gdata2/data/Entry;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 313
    const-string v0, "http://schemas.google.com/gdata/batch"

    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->OPERATION:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 314
    const/4 v0, 0x0

    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TYPE:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-static {v2}, Lcom/google/wireless/gdata2/data/batch/BatchUtils;->getBatchOperation(Lcom/google/wireless/gdata2/data/Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 316
    const-string v0, "http://schemas.google.com/gdata/batch"

    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->OPERATION:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/batch/BatchUtils;->getBatchId(Lcom/google/wireless/gdata2/data/Entry;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 319
    const-string v0, "http://schemas.google.com/gdata/batch"

    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ID:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 320
    iget-object v0, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/batch/BatchUtils;->getBatchId(Lcom/google/wireless/gdata2/data/Entry;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 321
    const-string v0, "http://schemas.google.com/gdata/batch"

    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ID:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 323
    :cond_2
    return-void
.end method

.method private serializeCategory(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 271
    iget-object v2, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v2}, Lcom/google/wireless/gdata2/data/Entry;->getCategory()Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, category:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v2}, Lcom/google/wireless/gdata2/data/Entry;->getCategoryScheme()Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, categoryScheme:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->oldEntry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v2}, Lcom/google/wireless/gdata2/data/Entry;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->oldEntry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v2}, Lcom/google/wireless/gdata2/data/Entry;->getCategoryScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 285
    :goto_0
    return-void

    .line 277
    :cond_0
    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->CATEGORY:Ljava/lang/String;

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 278
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 279
    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TERM:Ljava/lang/String;

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 281
    :cond_1
    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 282
    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->SCHEME:Ljava/lang/String;

    invoke-interface {p1, v3, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 284
    :cond_2
    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->CATEGORY:Ljava/lang/String;

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private serializeContent(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 243
    iget-object v1, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/data/Entry;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, content:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->oldEntry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/data/Entry;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    :goto_0
    return-void

    .line 247
    :cond_0
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->CONTENT:Ljava/lang/String;

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 248
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TYPE:Ljava/lang/String;

    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TEXT:Ljava/lang/String;

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 249
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 250
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->CONTENT:Ljava/lang/String;

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private serializeEntryContents(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 5
    .parameter "serializer"
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 138
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 139
    invoke-direct {p0, p1}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->serializeBatchInfo(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 142
    :cond_0
    if-eq p2, v3, :cond_1

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->isPartial()Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/data/Entry;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->serializeId(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 146
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->serializeTitle(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 148
    if-eq p2, v3, :cond_2

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->isPartial()Z

    move-result v0

    if-nez v0, :cond_2

    .line 149
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->EDIT_REL:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/data/Entry;->getEditUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, v4, v4}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->serializeLink(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ALTERNATE_REL:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/data/Entry;->getHtmlUri()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TEXTHTML:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2, v4}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->serializeLink(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->serializeSummary(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 157
    invoke-direct {p0, p1}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->serializeContent(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 159
    invoke-direct {p0, p1}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->serializeAuthor(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 161
    invoke-direct {p0, p1}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->serializeCategory(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 163
    if-nez p2, :cond_3

    .line 164
    invoke-direct {p0, p1}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->serializePublicationDate(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 167
    :cond_3
    if-eq p2, v3, :cond_4

    .line 168
    invoke-direct {p0, p1}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->serializeUpdateDate(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 171
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->serializeExtraEntryContents(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 172
    return-void
.end method

.method private static serializeId(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 2
    .parameter "serializer"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 190
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    :goto_0
    return-void

    .line 193
    :cond_0
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ID:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 194
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 195
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ID:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method protected static serializeLink(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "serializer"
    .parameter "rel"
    .parameter "href"
    .parameter "type"
    .parameter "etag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 221
    invoke-static {p2}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 224
    :cond_0
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->LINK:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 225
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->REL:Ljava/lang/String;

    invoke-interface {p0, v1, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 226
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->HREF:Ljava/lang/String;

    invoke-interface {p0, v1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 227
    invoke-static {p3}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TYPE:Ljava/lang/String;

    invoke-interface {p0, v1, v0, p3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 228
    :cond_1
    invoke-static {p4}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ETAG:Ljava/lang/String;

    invoke-interface {p0, v1, v0, p4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 229
    :cond_2
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->LINK:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private serializePublicationDate(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 288
    iget-object v1, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/data/Entry;->getPublicationDate()Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, publicationDate:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    :goto_0
    return-void

    .line 292
    :cond_0
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->PUBLISHED:Ljava/lang/String;

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 293
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 294
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->PUBLISHED:Ljava/lang/String;

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private serializeSummary(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 233
    iget-object v1, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/data/Entry;->getSummary()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, summary:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->oldEntry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/data/Entry;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    :goto_0
    return-void

    .line 237
    :cond_0
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->SUMMARY:Ljava/lang/String;

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 238
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 239
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->SUMMARY:Ljava/lang/String;

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private serializeTitle(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 199
    iget-object v1, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/data/Entry;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, title:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->oldEntry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/data/Entry;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    :goto_0
    return-void

    .line 203
    :cond_0
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TITLE:Ljava/lang/String;

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 204
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 205
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TITLE:Ljava/lang/String;

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private serializeUpdateDate(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 298
    iget-object v1, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/data/Entry;->getUpdateDate()Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, updateDate:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->oldEntry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/data/Entry;->getUpdateDate()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    :goto_0
    return-void

    .line 302
    :cond_0
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->UPDATED:Ljava/lang/String;

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 303
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 304
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->UPDATED:Ljava/lang/String;

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method


# virtual methods
.method protected declareExtraEntryNamespaces(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 0
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    return-void
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->isPartial()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "application/xml"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "application/atom+xml"

    goto :goto_0
.end method

.method protected getEntry()Lcom/google/wireless/gdata2/data/Entry;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    return-object v0
.end method

.method public isPartial()Z
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->oldEntry:Lcom/google/wireless/gdata2/data/Entry;

    sget-object v1, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->EMPTY_ENTRY:Lcom/google/wireless/gdata2/data/Entry;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public serialize(Ljava/io/OutputStream;I)V
    .locals 6
    .parameter "out"
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    .line 89
    const/4 v2, 0x0

    .line 91
    .local v2, serializer:Lorg/xmlpull/v1/XmlSerializer;
    :try_start_0
    iget-object v3, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->factory:Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;

    invoke-interface {v3}, Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;->createSerializer()Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 97
    sget-object v3, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->UTF8:Ljava/lang/String;

    invoke-interface {v2, p1, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 98
    if-eq p2, v5, :cond_0

    .line 99
    sget-object v3, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->UTF8:Ljava/lang/String;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 100
    invoke-direct {p0, v2}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->declareEntryNamespaces(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 102
    :cond_0
    const-string v3, "http://www.w3.org/2005/Atom"

    sget-object v4, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ENTRY:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 104
    iget-object v3, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v3}, Lcom/google/wireless/gdata2/data/Entry;->getFields()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, fields:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 106
    const-string v3, "http://schemas.google.com/g/2005"

    sget-object v4, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->FIELDS:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 109
    :cond_1
    invoke-direct {p0, v2, p2}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->serializeEntryContents(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 111
    const-string v3, "http://www.w3.org/2005/Atom"

    sget-object v4, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ENTRY:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 113
    if-eq p2, v5, :cond_2

    .line 114
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 116
    :cond_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 117
    return-void

    .line 92
    .end local v1           #fields:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v3, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v4, "Unable to create XmlSerializer."

    invoke-direct {v3, v4, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected serializeExtraEntryContents(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 0
    .parameter "serializer"
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    return-void
.end method
