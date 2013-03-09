.class Lcom/htc/android/mail/server/ImapServer$ByteStringInputStream;
.super Ljava/io/InputStream;
.source "ImapServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/server/ImapServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteStringInputStream"
.end annotation


# instance fields
.field count:I

.field mByteString:Lcom/htc/android/mail/ByteString;

.field pos:I


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/ByteString;)V
    .locals 1
    .parameter "byteString"

    .prologue
    .line 6138
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 6139
    iput-object p1, p0, Lcom/htc/android/mail/server/ImapServer$ByteStringInputStream;->mByteString:Lcom/htc/android/mail/ByteString;

    .line 6140
    iget-object v0, p0, Lcom/htc/android/mail/server/ImapServer$ByteStringInputStream;->mByteString:Lcom/htc/android/mail/ByteString;

    invoke-virtual {v0}, Lcom/htc/android/mail/ByteString;->length()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/server/ImapServer$ByteStringInputStream;->count:I

    .line 6141
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/server/ImapServer$ByteStringInputStream;->pos:I

    .line 6142
    return-void
.end method


# virtual methods
.method public read()I
    .locals 3

    .prologue
    .line 6146
    iget v0, p0, Lcom/htc/android/mail/server/ImapServer$ByteStringInputStream;->pos:I

    iget v1, p0, Lcom/htc/android/mail/server/ImapServer$ByteStringInputStream;->count:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/server/ImapServer$ByteStringInputStream;->mByteString:Lcom/htc/android/mail/ByteString;

    iget v1, p0, Lcom/htc/android/mail/server/ImapServer$ByteStringInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/android/mail/server/ImapServer$ByteStringInputStream;->pos:I

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ByteString;->byteAt(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
