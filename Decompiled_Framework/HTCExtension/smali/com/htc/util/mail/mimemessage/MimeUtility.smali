.class public Lcom/htc/util/mail/mimemessage/MimeUtility;
.super Ljava/lang/Object;
.source "MimeUtility.java"


# static fields
.field private static final PATTERN_CR_OR_LF:Ljava/util/regex/Pattern;

.field protected static mLastContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\r|\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/util/mail/mimemessage/MimeUtility;->PATTERN_CR_OR_LF:Ljava/util/regex/Pattern;

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/util/mail/mimemessage/MimeUtility;->mLastContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectParts(Lcom/htc/util/mail/mimemessage/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/util/mail/mimemessage/Part;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/mail/mimemessage/Part;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/mail/mimemessage/Part;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/htc/util/mail/mimemessage/Part;->getDisposition()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v7, 0x0

    invoke-static {v1, v7}, Lcom/htc/util/mail/mimemessage/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "filename"

    invoke-static {v1, v7}, Lcom/htc/util/mail/mimemessage/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    const-string v7, "attachment"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    if-eqz v2, :cond_2

    const-string v7, "inline"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-interface {p0}, Lcom/htc/util/mail/mimemessage/Part;->getBody()Lcom/htc/util/mail/mimemessage/Body;

    move-result-object v7

    instance-of v7, v7, Lcom/htc/util/mail/mimemessage/Multipart;

    if-eqz v7, :cond_3

    invoke-interface {p0}, Lcom/htc/util/mail/mimemessage/Part;->getBody()Lcom/htc/util/mail/mimemessage/Body;

    move-result-object v6

    check-cast v6, Lcom/htc/util/mail/mimemessage/Multipart;

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v6}, Lcom/htc/util/mail/mimemessage/Multipart;->getCount()I

    move-result v7

    if-ge v4, v7, :cond_4

    invoke-virtual {v6, v4}, Lcom/htc/util/mail/mimemessage/Multipart;->getBodyPart(I)Lcom/htc/util/mail/mimemessage/BodyPart;

    move-result-object v7

    invoke-static {v7, p1, p2}, Lcom/htc/util/mail/mimemessage/MimeUtility;->collectParts(Lcom/htc/util/mail/mimemessage/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-interface {p0}, Lcom/htc/util/mail/mimemessage/Part;->getBody()Lcom/htc/util/mail/mimemessage/Body;

    move-result-object v7

    instance-of v7, v7, Lcom/htc/util/mail/mimemessage/Message;

    if-eqz v7, :cond_5

    invoke-interface {p0}, Lcom/htc/util/mail/mimemessage/Part;->getBody()Lcom/htc/util/mail/mimemessage/Body;

    move-result-object v5

    check-cast v5, Lcom/htc/util/mail/mimemessage/Message;

    invoke-static {v5, p1, p2}, Lcom/htc/util/mail/mimemessage/MimeUtility;->collectParts(Lcom/htc/util/mail/mimemessage/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_4
    :goto_2
    return-void

    :cond_5
    if-nez v0, :cond_6

    invoke-interface {p0}, Lcom/htc/util/mail/mimemessage/Part;->getMimeType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "text/html"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    if-nez v0, :cond_7

    invoke-interface {p0}, Lcom/htc/util/mail/mimemessage/Part;->getMimeType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "text/plain"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static decodeBody(Ljava/io/InputStream;Ljava/lang/String;)Lcom/htc/util/mail/mimemessage/Body;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcom/htc/util/mail/mimemessage/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "quoted-printable"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;

    invoke-direct {v0, p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, v0

    :cond_0
    :goto_0
    new-instance v2, Lcom/htc/util/mail/mimemessage/BinaryTempFileBody;

    invoke-direct {v2}, Lcom/htc/util/mail/mimemessage/BinaryTempFileBody;-><init>()V

    invoke-virtual {v2}, Lcom/htc/util/mail/mimemessage/BinaryTempFileBody;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    return-object v2

    :cond_1
    const-string v3, "base64"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/Base64InputStream;

    invoke-direct {v0, p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/Base64InputStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static findFirstPartByMimeType(Lcom/htc/util/mail/mimemessage/Part;Ljava/lang/String;)Lcom/htc/util/mail/mimemessage/Part;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/htc/util/mail/mimemessage/Part;->getBody()Lcom/htc/util/mail/mimemessage/Body;

    move-result-object v5

    instance-of v5, v5, Lcom/htc/util/mail/mimemessage/Multipart;

    if-eqz v5, :cond_1

    invoke-interface {p0}, Lcom/htc/util/mail/mimemessage/Part;->getBody()Lcom/htc/util/mail/mimemessage/Body;

    move-result-object v3

    check-cast v3, Lcom/htc/util/mail/mimemessage/Multipart;

    const/4 v2, 0x0

    invoke-virtual {v3}, Lcom/htc/util/mail/mimemessage/Multipart;->getCount()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {v3, v2}, Lcom/htc/util/mail/mimemessage/Multipart;->getBodyPart(I)Lcom/htc/util/mail/mimemessage/BodyPart;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/htc/util/mail/mimemessage/MimeUtility;->findFirstPartByMimeType(Lcom/htc/util/mail/mimemessage/Part;Ljava/lang/String;)Lcom/htc/util/mail/mimemessage/Part;

    move-result-object v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lcom/htc/util/mail/mimemessage/Part;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v4, p0

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static findPartByContentId(Lcom/htc/util/mail/mimemessage/Part;Ljava/lang/String;)Lcom/htc/util/mail/mimemessage/Part;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p0}, Lcom/htc/util/mail/mimemessage/Part;->getBody()Lcom/htc/util/mail/mimemessage/Body;

    move-result-object v6

    instance-of v6, v6, Lcom/htc/util/mail/mimemessage/Multipart;

    if-eqz v6, :cond_1

    invoke-interface {p0}, Lcom/htc/util/mail/mimemessage/Part;->getBody()Lcom/htc/util/mail/mimemessage/Body;

    move-result-object v4

    check-cast v4, Lcom/htc/util/mail/mimemessage/Multipart;

    const/4 v3, 0x0

    invoke-virtual {v4}, Lcom/htc/util/mail/mimemessage/Multipart;->getCount()I

    move-result v2

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v4, v3}, Lcom/htc/util/mail/mimemessage/Multipart;->getBodyPart(I)Lcom/htc/util/mail/mimemessage/BodyPart;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/htc/util/mail/mimemessage/MimeUtility;->findPartByContentId(Lcom/htc/util/mail/mimemessage/Part;Ljava/lang/String;)Lcom/htc/util/mail/mimemessage/Part;

    move-result-object v5

    if-eqz v5, :cond_0

    :goto_1
    return-object v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lcom/htc/util/mail/mimemessage/Part;->getContentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v5, p0

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static fold(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9

    const/16 v8, 0x4c

    const/4 v7, 0x0

    const/16 v2, 0x4c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int v6, p1, v1

    if-gt v6, v8, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    neg-int v0, p1

    invoke-static {p0, v7}, Lcom/htc/util/mail/mimemessage/MimeUtility;->indexOfWsp(Ljava/lang/String;I)I

    move-result v5

    :goto_1
    if-ne v5, v1, :cond_1

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    add-int/lit8 v6, v5, 0x1

    invoke-static {p0, v6}, Lcom/htc/util/mail/mimemessage/MimeUtility;->indexOfWsp(Ljava/lang/String;I)I

    move-result v3

    sub-int v6, v3, v0

    if-le v6, v8, :cond_2

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\r\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v5

    :cond_2
    move v5, v3

    goto :goto_1
.end method

.method public static foldAndEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p0
.end method

.method public static foldAndEncode2(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/codec/EncoderUtil$Usage;->TEXT_TOKEN:Lcom/htc/util/mail/lib/org/apache/james/mime4j/codec/EncoderUtil$Usage;

    invoke-static {p0, v1, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/codec/EncoderUtil;->encodeIfNecessary(Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/codec/EncoderUtil$Usage;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/htc/util/mail/mimemessage/MimeUtility;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v4, 0x0

    const/4 v9, 0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    invoke-static {p0}, Lcom/htc/util/mail/mimemessage/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-nez p1, :cond_2

    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    move-object v0, v6

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "="

    const/4 v8, 0x2

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v9

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v7, "\""

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "\""

    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v4, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static getTextFromPart(Lcom/htc/util/mail/mimemessage/Part;)Ljava/lang/String;
    .locals 9

    if-eqz p0, :cond_2

    :try_start_0
    invoke-interface {p0}, Lcom/htc/util/mail/mimemessage/Part;->getBody()Lcom/htc/util/mail/mimemessage/Body;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {p0}, Lcom/htc/util/mail/mimemessage/Part;->getBody()Lcom/htc/util/mail/mimemessage/Body;

    move-result-object v7

    invoke-interface {v7}, Lcom/htc/util/mail/mimemessage/Body;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-interface {p0}, Lcom/htc/util/mail/mimemessage/Part;->getMimeType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v7, "text/*"

    invoke-static {v3, v7}, Lcom/htc/util/mail/mimemessage/MimeUtility;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v2, v5}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    const/4 v2, 0x0

    invoke-interface {p0}, Lcom/htc/util/mail/mimemessage/Part;->getContentType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "charset"

    invoke-static {v7, v8}, Lcom/htc/util/mail/mimemessage/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil;->toJavaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "ASCII"

    :cond_1
    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v6

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    :cond_2
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getTextFromPart(Lcom/htc/util/mail/mimemessage/Part;J)Ljava/lang/String;
    .locals 9

    if-eqz p0, :cond_2

    :try_start_0
    invoke-interface {p0}, Lcom/htc/util/mail/mimemessage/Part;->getBody()Lcom/htc/util/mail/mimemessage/Body;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {p0}, Lcom/htc/util/mail/mimemessage/Part;->getBody()Lcom/htc/util/mail/mimemessage/Body;

    move-result-object v7

    invoke-interface {v7}, Lcom/htc/util/mail/mimemessage/Body;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-interface {p0}, Lcom/htc/util/mail/mimemessage/Part;->getMimeType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v7, "text/*"

    invoke-static {v3, v7}, Lcom/htc/util/mail/mimemessage/MimeUtility;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v2, v5, p1, p2}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->copyWithLimit(Ljava/io/InputStream;Ljava/io/OutputStream;J)J

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    const/4 v2, 0x0

    invoke-interface {p0}, Lcom/htc/util/mail/mimemessage/Part;->getContentType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "charset"

    invoke-static {v7, v8}, Lcom/htc/util/mail/mimemessage/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil;->toJavaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "ASCII"

    :cond_1
    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v6

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    :cond_2
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static indexOfWsp(Ljava/lang/String;I)I
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v1, p1

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x20

    if-eq v0, v3, :cond_0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_1

    :cond_0
    :goto_1
    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public static mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const-string v1, "\\*"

    const-string v2, "\\.\\*"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method public static mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5

    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    invoke-static {p0, v3}, Lcom/htc/util/mail/mimemessage/MimeUtility;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static unfold(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_1

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    sget-object v1, Lcom/htc/util/mail/mimemessage/MimeUtility;->PATTERN_CR_OR_LF:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/htc/util/mail/mimemessage/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/util/mail/mimemessage/MimeUtility;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
