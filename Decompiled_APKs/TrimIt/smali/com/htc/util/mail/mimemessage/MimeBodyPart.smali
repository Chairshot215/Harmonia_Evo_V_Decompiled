.class public Lcom/htc/util/mail/mimemessage/MimeBodyPart;
.super Lcom/htc/util/mail/mimemessage/BodyPart;
.source "MimeBodyPart.java"


# static fields
.field private static final END_OF_LINE:Ljava/util/regex/Pattern;

.field private static final REMOVE_OPTIONAL_BRACKETS:Ljava/util/regex/Pattern;


# instance fields
.field protected mBody:Lcom/htc/util/mail/mimemessage/Body;

.field protected mExtendedHeader:Lcom/htc/util/mail/mimemessage/MimeHeader;

.field protected mHeader:Lcom/htc/util/mail/mimemessage/MimeHeader;

.field protected mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "^<?([^>]+)>?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/util/mail/mimemessage/MimeBodyPart;->REMOVE_OPTIONAL_BRACKETS:Ljava/util/regex/Pattern;

    .line 38
    const-string v0, "\r?\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/util/mail/mimemessage/MimeBodyPart;->END_OF_LINE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/util/mail/mimemessage/MimeBodyPart;-><init>(Lcom/htc/util/mail/mimemessage/Body;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/htc/util/mail/mimemessage/Body;)V
    .locals 1
    .parameter "body"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/util/mail/mimemessage/MimeBodyPart;-><init>(Lcom/htc/util/mail/mimemessage/Body;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/htc/util/mail/mimemessage/Body;Ljava/lang/String;)V
    .locals 1
    .parameter "body"
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/htc/util/mail/mimemessage/BodyPart;-><init>()V

    .line 30
    new-instance v0, Lcom/htc/util/mail/mimemessage/MimeHeader;

    invoke-direct {v0}, Lcom/htc/util/mail/mimemessage/MimeHeader;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeBodyPart;->mHeader:Lcom/htc/util/mail/mimemessage/MimeHeader;

    .line 49
    if-eqz p2, :cond_0

    .line 50
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0, p2}, Lcom/htc/util/mail/mimemessage/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/util/mail/mimemessage/MimeBodyPart;->setBody(Lcom/htc/util/mail/mimemessage/Body;)V

    .line 53
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeBodyPart;->mHeader:Lcom/htc/util/mail/mimemessage/MimeHeader;

    invoke-virtual {v0, p1, p2}, Lcom/htc/util/mail/mimemessage/MimeHeader;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public getBody()Lcom/htc/util/mail/mimemessage/Body;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeBodyPart;->mBody:Lcom/htc/util/mail/mimemessage/Body;

    return-object v0
.end method

.method public getContentId()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 116
    const-string v1, "Content-ID"

    invoke-virtual {p0, v1}, Lcom/htc/util/mail/mimemessage/MimeBodyPart;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, contentId:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 118
    const/4 v1, 0x0

    .line 121
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/htc/util/mail/mimemessage/MimeBodyPart;->REMOVE_OPTIONAL_BRACKETS:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, "$1"

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 98
    const-string v1, "Content-Type"

    invoke-virtual {p0, v1}, Lcom/htc/util/mail/mimemessage/MimeBodyPart;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, contentType:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 100
    const-string v0, "text/plain"

    .line 102
    .end local v0           #contentType:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getDisposition()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 107
    const-string v1, "Content-Disposition"

    invoke-virtual {p0, v1}, Lcom/htc/util/mail/mimemessage/MimeBodyPart;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, contentDisposition:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 109
    const/4 v0, 0x0

    .line 111
    .end local v0           #contentDisposition:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getExtendedHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeBodyPart;->mExtendedHeader:Lcom/htc/util/mail/mimemessage/MimeHeader;

    if-nez v0, :cond_0

    .line 171
    const/4 v0, 0x0

    .line 173
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeBodyPart;->mExtendedHeader:Lcom/htc/util/mail/mimemessage/MimeHeader;

    invoke-virtual {v0, p1}, Lcom/htc/util/mail/mimemessage/MimeHeader;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getFirstHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeBodyPart;->mHeader:Lcom/htc/util/mail/mimemessage/MimeHeader;

    invoke-virtual {v0, p1}, Lcom/htc/util/mail/mimemessage/MimeHeader;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeBodyPart;->mHeader:Lcom/htc/util/mail/mimemessage/MimeHeader;

    invoke-virtual {v0, p1}, Lcom/htc/util/mail/mimemessage/MimeHeader;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/htc/util/mail/mimemessage/MimeBodyPart;->getContentType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/util/mail/mimemessage/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 138
    iget v0, p0, Lcom/htc/util/mail/mimemessage/MimeBodyPart;->mSize:I

    return v0
.end method

.method public isMimeType(Ljava/lang/String;)Z
    .locals 1
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/htc/util/mail/mimemessage/MimeBodyPart;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeBodyPart;->mHeader:Lcom/htc/util/mail/mimemessage/MimeHeader;

    invoke-virtual {v0, p1}, Lcom/htc/util/mail/mimemessage/MimeHeader;->removeHeader(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public setBody(Lcom/htc/util/mail/mimemessage/Body;)V
    .locals 8
    .parameter "body"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 80
    iput-object p1, p0, Lcom/htc/util/mail/mimemessage/MimeBodyPart;->mBody:Lcom/htc/util/mail/mimemessage/Body;

    .line 81
    instance-of v3, p1, Lcom/htc/util/mail/mimemessage/Multipart;

    if-eqz v3, :cond_1

    move-object v1, p1

    .line 82
    check-cast v1, Lcom/htc/util/mail/mimemessage/Multipart;

    .line 83
    .local v1, multipart:Lcom/htc/util/mail/mimemessage/Multipart;
    invoke-virtual {v1, p0}, Lcom/htc/util/mail/mimemessage/Multipart;->setParent(Lcom/htc/util/mail/mimemessage/Part;)V

    .line 84
    const-string v3, "Content-Type"

    invoke-virtual {v1}, Lcom/htc/util/mail/mimemessage/Multipart;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/htc/util/mail/mimemessage/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .end local v1           #multipart:Lcom/htc/util/mail/mimemessage/Multipart;
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    instance-of v3, p1, Lcom/htc/util/mail/mimemessage/TextBody;

    if-eqz v3, :cond_0

    .line 87
    const-string v3, "%s;\n charset=utf-8"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/htc/util/mail/mimemessage/MimeBodyPart;->getMimeType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, contentType:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/util/mail/mimemessage/MimeBodyPart;->getContentType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "name"

    invoke-static {v3, v4}, Lcom/htc/util/mail/mimemessage/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, name:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";\n name=\"%s\""

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    :cond_2
    const-string v3, "Content-Type"

    invoke-virtual {p0, v3, v0}, Lcom/htc/util/mail/mimemessage/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v3, "Content-Transfer-Encoding"

    const-string v4, "base64"

    invoke-virtual {p0, v3, v4}, Lcom/htc/util/mail/mimemessage/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setExtendedHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 150
    if-nez p2, :cond_1

    .line 151
    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeBodyPart;->mExtendedHeader:Lcom/htc/util/mail/mimemessage/MimeHeader;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeBodyPart;->mExtendedHeader:Lcom/htc/util/mail/mimemessage/MimeHeader;

    invoke-virtual {v0, p1}, Lcom/htc/util/mail/mimemessage/MimeHeader;->removeHeader(Ljava/lang/String;)V

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeBodyPart;->mExtendedHeader:Lcom/htc/util/mail/mimemessage/MimeHeader;

    if-nez v0, :cond_2

    .line 157
    new-instance v0, Lcom/htc/util/mail/mimemessage/MimeHeader;

    invoke-direct {v0}, Lcom/htc/util/mail/mimemessage/MimeHeader;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeBodyPart;->mExtendedHeader:Lcom/htc/util/mail/mimemessage/MimeHeader;

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeBodyPart;->mExtendedHeader:Lcom/htc/util/mail/mimemessage/MimeHeader;

    sget-object v1, Lcom/htc/util/mail/mimemessage/MimeBodyPart;->END_OF_LINE:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/htc/util/mail/mimemessage/MimeHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeBodyPart;->mHeader:Lcom/htc/util/mail/mimemessage/MimeHeader;

    invoke-virtual {v0, p1, p2}, Lcom/htc/util/mail/mimemessage/MimeHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 134
    iput p1, p0, Lcom/htc/util/mail/mimemessage/MimeBodyPart;->mSize:I

    .line 135
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 180
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 181
    .local v0, writer:Ljava/io/BufferedWriter;
    iget-object v1, p0, Lcom/htc/util/mail/mimemessage/MimeBodyPart;->mHeader:Lcom/htc/util/mail/mimemessage/MimeHeader;

    invoke-virtual {v1, p1}, Lcom/htc/util/mail/mimemessage/MimeHeader;->writeTo(Ljava/io/OutputStream;)V

    .line 182
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 184
    iget-object v1, p0, Lcom/htc/util/mail/mimemessage/MimeBodyPart;->mBody:Lcom/htc/util/mail/mimemessage/Body;

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/htc/util/mail/mimemessage/MimeBodyPart;->mBody:Lcom/htc/util/mail/mimemessage/Body;

    invoke-interface {v1, p1}, Lcom/htc/util/mail/mimemessage/Body;->writeTo(Ljava/io/OutputStream;)V

    .line 187
    :cond_0
    return-void
.end method
