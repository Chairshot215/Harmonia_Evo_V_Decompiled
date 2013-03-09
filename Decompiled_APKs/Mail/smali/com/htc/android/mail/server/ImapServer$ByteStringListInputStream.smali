.class Lcom/htc/android/mail/server/ImapServer$ByteStringListInputStream;
.super Ljava/io/InputStream;
.source "ImapServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/server/ImapServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteStringListInputStream"
.end annotation


# instance fields
.field line:I

.field mByteStringList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/mail/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field pos:I

.field size:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/mail/ByteString;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/ByteString;>;"
    const/4 v1, 0x0

    .line 6156
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 6157
    iput-object p1, p0, Lcom/htc/android/mail/server/ImapServer$ByteStringListInputStream;->mByteStringList:Ljava/util/List;

    .line 6158
    iget-object v0, p0, Lcom/htc/android/mail/server/ImapServer$ByteStringListInputStream;->mByteStringList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/server/ImapServer$ByteStringListInputStream;->size:I

    .line 6159
    iput v1, p0, Lcom/htc/android/mail/server/ImapServer$ByteStringListInputStream;->pos:I

    .line 6160
    iput v1, p0, Lcom/htc/android/mail/server/ImapServer$ByteStringListInputStream;->line:I

    .line 6161
    return-void
.end method


# virtual methods
.method public read()I
    .locals 4

    .prologue
    .line 6165
    iget v2, p0, Lcom/htc/android/mail/server/ImapServer$ByteStringListInputStream;->line:I

    iget v3, p0, Lcom/htc/android/mail/server/ImapServer$ByteStringListInputStream;->size:I

    if-lt v2, v3, :cond_1

    const/4 v0, -0x1

    .line 6172
    :cond_0
    :goto_0
    return v0

    .line 6166
    :cond_1
    iget-object v2, p0, Lcom/htc/android/mail/server/ImapServer$ByteStringListInputStream;->mByteStringList:Ljava/util/List;

    iget v3, p0, Lcom/htc/android/mail/server/ImapServer$ByteStringListInputStream;->line:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/ByteString;

    .line 6167
    .local v1, byteString:Lcom/htc/android/mail/ByteString;
    iget v2, p0, Lcom/htc/android/mail/server/ImapServer$ByteStringListInputStream;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/htc/android/mail/server/ImapServer$ByteStringListInputStream;->pos:I

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/ByteString;->byteAt(I)B

    move-result v2

    and-int/lit16 v0, v2, 0xff

    .line 6168
    .local v0, b:I
    iget v2, p0, Lcom/htc/android/mail/server/ImapServer$ByteStringListInputStream;->pos:I

    invoke-virtual {v1}, Lcom/htc/android/mail/ByteString;->length()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 6169
    iget v2, p0, Lcom/htc/android/mail/server/ImapServer$ByteStringListInputStream;->line:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/android/mail/server/ImapServer$ByteStringListInputStream;->line:I

    .line 6170
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/android/mail/server/ImapServer$ByteStringListInputStream;->pos:I

    goto :goto_0
.end method
