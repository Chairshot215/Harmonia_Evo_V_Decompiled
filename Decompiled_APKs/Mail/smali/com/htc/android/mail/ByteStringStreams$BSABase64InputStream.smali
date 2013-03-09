.class Lcom/htc/android/mail/ByteStringStreams$BSABase64InputStream;
.super Lcom/htc/android/mail/ByteStringStreams$BSAInputStream;
.source "ByteStringStreams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ByteStringStreams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BSABase64InputStream"
.end annotation


# direct methods
.method protected constructor <init>(Ljava/util/ArrayList;II)V
    .locals 0
    .parameter
    .parameter "firstLine"
    .parameter "lastLine"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/ByteString;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/ByteString;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/mail/ByteStringStreams$BSAInputStream;-><init>(Ljava/util/ArrayList;II)V

    .line 126
    return-void
.end method


# virtual methods
.method public final read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    :cond_0
    iget v1, p0, Lcom/htc/android/mail/ByteStringStreams$BSAInputStream;->mNumRead:I

    iget v2, p0, Lcom/htc/android/mail/ByteStringStreams$BSAInputStream;->mTotalBytes:I

    if-ge v1, v2, :cond_6

    .line 134
    iget v1, p0, Lcom/htc/android/mail/ByteStringStreams$BSAInputStream;->mReadOffset:I

    iget v2, p0, Lcom/htc/android/mail/ByteStringStreams$BSAInputStream;->mLineLen:I

    if-ne v1, v2, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/htc/android/mail/ByteStringStreams$BSABase64InputStream;->nextLine()V

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/ByteStringStreams$BSAInputStream;->mLine:Lcom/htc/android/mail/ByteString;

    iget-object v1, v1, Lcom/htc/android/mail/ByteString;->mStorage:[B

    iget-object v2, p0, Lcom/htc/android/mail/ByteStringStreams$BSAInputStream;->mLine:Lcom/htc/android/mail/ByteString;

    iget v2, v2, Lcom/htc/android/mail/ByteString;->mOffset:I

    iget v3, p0, Lcom/htc/android/mail/ByteStringStreams$BSAInputStream;->mReadOffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/htc/android/mail/ByteStringStreams$BSAInputStream;->mReadOffset:I

    add-int/2addr v2, v3

    aget-byte v0, v1, v2

    .line 141
    .local v0, candidate:B
    iget v1, p0, Lcom/htc/android/mail/ByteStringStreams$BSAInputStream;->mNumRead:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/android/mail/ByteStringStreams$BSAInputStream;->mNumRead:I

    .line 144
    const/16 v1, 0x61

    if-lt v0, v1, :cond_2

    const/16 v1, 0x7a

    if-le v0, v1, :cond_5

    :cond_2
    const/16 v1, 0x41

    if-lt v0, v1, :cond_3

    const/16 v1, 0x5a

    if-le v0, v1, :cond_5

    :cond_3
    const/16 v1, 0x30

    if-lt v0, v1, :cond_4

    const/16 v1, 0x39

    if-le v0, v1, :cond_5

    :cond_4
    const/16 v1, 0x2b

    if-eq v0, v1, :cond_5

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_5

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_0

    .line 154
    .end local v0           #candidate:B
    :cond_5
    :goto_0
    return v0

    :cond_6
    const/4 v0, -0x1

    goto :goto_0
.end method
