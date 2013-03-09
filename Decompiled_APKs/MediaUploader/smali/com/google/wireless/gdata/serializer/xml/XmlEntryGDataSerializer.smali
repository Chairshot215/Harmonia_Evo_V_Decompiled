.class public Lcom/google/wireless/gdata/serializer/xml/XmlEntryGDataSerializer;
.super Ljava/lang/Object;
.source "XmlEntryGDataSerializer.java"

# interfaces
.implements Lcom/google/wireless/gdata/serializer/GDataSerializer;


# instance fields
.field private final entry:Lcom/google/wireless/gdata/data/Entry;

.field private final factory:Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;


# direct methods
.method public constructor <init>(Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata/data/Entry;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/wireless/gdata/serializer/xml/XmlEntryGDataSerializer;->factory:Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;

    .line 39
    iput-object p2, p0, Lcom/google/wireless/gdata/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata/data/Entry;

    .line 40
    return-void
.end method

.method private final declareEntryNamespaces(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    const-string v0, ""

    const-string v1, "http://www.w3.org/2005/Atom"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v0, "gd"

    const-string v1, "http://schemas.google.com/g/2005"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0, p1}, Lcom/google/wireless/gdata/serializer/xml/XmlEntryGDataSerializer;->declareExtraEntryNamespaces(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 90
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

    .line 214
    invoke-static {p1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    const-string v0, "author"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 218
    const-string v0, "name"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 219
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 220
    const-string v0, "name"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 221
    const-string v0, "email"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 222
    invoke-interface {p0, p2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 223
    const-string v0, "email"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 224
    const-string v0, "author"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
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

    .line 231
    invoke-static {p1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    :goto_0
    return-void

    .line 235
    :cond_0
    const-string v0, "category"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 236
    invoke-static {p1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 237
    const-string v0, "term"

    invoke-interface {p0, v1, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 239
    :cond_1
    invoke-static {p2}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 240
    const-string v0, "scheme"

    invoke-interface {p0, v1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 242
    :cond_2
    const-string v0, "category"

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

    .line 201
    if-nez p1, :cond_0

    .line 208
    :goto_0
    return-void

    .line 204
    :cond_0
    const-string v0, "content"

    invoke-interface {p0, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 205
    const-string v0, "type"

    const-string v1, "text"

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 206
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 207
    const-string v0, "content"

    invoke-interface {p0, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private final serializeEntryContents(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 105
    if-eq p2, v3, :cond_0

    .line 106
    iget-object v0, p0, Lcom/google/wireless/gdata/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata/data/Entry;

    invoke-virtual {v0}, Lcom/google/wireless/gdata/data/Entry;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/wireless/gdata/serializer/xml/XmlEntryGDataSerializer;->serializeId(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/gdata/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata/data/Entry;

    invoke-virtual {v0}, Lcom/google/wireless/gdata/data/Entry;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/wireless/gdata/serializer/xml/XmlEntryGDataSerializer;->serializeTitle(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 111
    if-eq p2, v3, :cond_1

    .line 112
    const-string v0, "edit"

    iget-object v1, p0, Lcom/google/wireless/gdata/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata/data/Entry;

    invoke-virtual {v1}, Lcom/google/wireless/gdata/data/Entry;->getEditUri()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/google/wireless/gdata/serializer/xml/XmlEntryGDataSerializer;->serializeLink(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v0, "alternate"

    iget-object v1, p0, Lcom/google/wireless/gdata/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata/data/Entry;

    invoke-virtual {v1}, Lcom/google/wireless/gdata/data/Entry;->getHtmlUri()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text/html"

    invoke-static {p1, v0, v1, v2}, Lcom/google/wireless/gdata/serializer/xml/XmlEntryGDataSerializer;->serializeLink(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/google/wireless/gdata/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata/data/Entry;

    invoke-virtual {v0}, Lcom/google/wireless/gdata/data/Entry;->getSummary()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/wireless/gdata/serializer/xml/XmlEntryGDataSerializer;->serializeSummary(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/google/wireless/gdata/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata/data/Entry;

    invoke-virtual {v0}, Lcom/google/wireless/gdata/data/Entry;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/wireless/gdata/serializer/xml/XmlEntryGDataSerializer;->serializeContent(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/google/wireless/gdata/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata/data/Entry;

    invoke-virtual {v0}, Lcom/google/wireless/gdata/data/Entry;->getAuthor()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata/data/Entry;

    invoke-virtual {v1}, Lcom/google/wireless/gdata/data/Entry;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/wireless/gdata/serializer/xml/XmlEntryGDataSerializer;->serializeAuthor(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/google/wireless/gdata/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata/data/Entry;

    invoke-virtual {v0}, Lcom/google/wireless/gdata/data/Entry;->getCategory()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata/data/Entry;

    invoke-virtual {v1}, Lcom/google/wireless/gdata/data/Entry;->getCategoryScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/wireless/gdata/serializer/xml/XmlEntryGDataSerializer;->serializeCategory(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    if-nez p2, :cond_2

    .line 126
    iget-object v0, p0, Lcom/google/wireless/gdata/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata/data/Entry;

    invoke-virtual {v0}, Lcom/google/wireless/gdata/data/Entry;->getPublicationDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/wireless/gdata/serializer/xml/XmlEntryGDataSerializer;->serializePublicationDate(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 130
    :cond_2
    if-eq p2, v3, :cond_3

    .line 131
    iget-object v0, p0, Lcom/google/wireless/gdata/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata/data/Entry;

    invoke-virtual {v0}, Lcom/google/wireless/gdata/data/Entry;->getUpdateDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/wireless/gdata/serializer/xml/XmlEntryGDataSerializer;->serializeUpdateDate(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 135
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/gdata/serializer/xml/XmlEntryGDataSerializer;->serializeExtraEntryContents(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 136
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

    .line 156
    invoke-static {p1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 159
    :cond_0
    const-string v0, "id"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 160
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 161
    const-string v0, "id"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method public static serializeLink(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
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

    .line 177
    invoke-static {p2}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 180
    :cond_0
    const-string v0, "link"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 181
    const-string v0, "rel"

    invoke-interface {p0, v1, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 182
    const-string v0, "href"

    invoke-interface {p0, v1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 183
    invoke-static {p3}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "type"

    invoke-interface {p0, v1, v0, p3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 184
    :cond_1
    const-string v0, "link"

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

    .line 249
    invoke-static {p1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 252
    :cond_0
    const-string v0, "published"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 253
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 254
    const-string v0, "published"

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

    .line 190
    invoke-static {p1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    :goto_0
    return-void

    .line 193
    :cond_0
    const-string v0, "summary"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 194
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 195
    const-string v0, "summary"

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

    .line 167
    invoke-static {p1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 170
    :cond_0
    const-string v0, "title"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 171
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 172
    const-string v0, "title"

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

    .line 261
    invoke-static {p1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    :goto_0
    return-void

    .line 264
    :cond_0
    const-string v0, "updated"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 265
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 266
    const-string v0, "updated"

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
    .line 95
    return-void
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "application/atom+xml"

    return-object v0
.end method

.method protected getEntry()Lcom/google/wireless/gdata/data/Entry;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/wireless/gdata/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata/data/Entry;

    return-object v0
.end method

.method public serialize(Ljava/io/OutputStream;I)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/google/wireless/gdata/serializer/xml/XmlEntryGDataSerializer;->factory:Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;

    invoke-interface {v0}, Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;->createSerializer()Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 70
    const-string v1, "UTF-8"

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 71
    const-string v1, "UTF-8"

    new-instance v2, Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 73
    invoke-direct {p0, v0}, Lcom/google/wireless/gdata/serializer/xml/XmlEntryGDataSerializer;->declareEntryNamespaces(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 74
    const-string v1, "http://www.w3.org/2005/Atom"

    const-string v2, "entry"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 76
    invoke-direct {p0, v0, p2}, Lcom/google/wireless/gdata/serializer/xml/XmlEntryGDataSerializer;->serializeEntryContents(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 78
    const-string v1, "http://www.w3.org/2005/Atom"

    const-string v2, "entry"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 79
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 80
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 81
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    new-instance v1, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v2, "Unable to create XmlSerializer."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected serializeExtraEntryContents(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    return-void
.end method
