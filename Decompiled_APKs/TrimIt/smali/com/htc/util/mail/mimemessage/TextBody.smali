.class public Lcom/htc/util/mail/mimemessage/TextBody;
.super Ljava/lang/Object;
.source "TextBody.java"

# interfaces
.implements Lcom/htc/util/mail/mimemessage/Body;


# instance fields
.field mBody:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/htc/util/mail/mimemessage/TextBody;->mBody:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 50
    :try_start_0
    iget-object v2, p0, Lcom/htc/util/mail/mimemessage/TextBody;->mBody:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 51
    .local v0, b:[B
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v0           #b:[B
    :goto_0
    return-object v2

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, usee:Ljava/io/UnsupportedEncodingException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/TextBody;->mBody:Ljava/lang/String;

    return-object v0
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
    .line 33
    iget-object v1, p0, Lcom/htc/util/mail/mimemessage/TextBody;->mBody:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 34
    .local v0, bytes:[B
    invoke-static {v0}, Lcom/htc/util/mail/mimemessage/Base64;->encodeBase64Chunked([B)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 35
    return-void
.end method
