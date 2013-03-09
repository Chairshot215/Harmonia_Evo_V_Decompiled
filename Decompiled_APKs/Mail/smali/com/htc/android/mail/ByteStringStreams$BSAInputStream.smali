.class Lcom/htc/android/mail/ByteStringStreams$BSAInputStream;
.super Ljava/io/InputStream;
.source "ByteStringStreams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ByteStringStreams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BSAInputStream"
.end annotation


# instance fields
.field protected mLine:Lcom/htc/android/mail/ByteString;

.field protected mLineLen:I

.field protected mLineNum:I

.field protected mLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field protected mNumRead:I

.field protected mReadOffset:I

.field protected mTotalBytes:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/mail/ByteStringStreams$BSAInputStream;->mLineNum:I

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;II)V
    .locals 4
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
    .line 59
    .local p1, lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/ByteString;>;"
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 47
    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/android/mail/ByteStringStreams$BSAInputStream;->mLineNum:I

    .line 60
    iput-object p1, p0, Lcom/htc/android/mail/ByteStringStreams$BSAInputStream;->mLines:Ljava/util/ArrayList;

    .line 61
    add-int/lit8 v2, p2, -0x1

    iput v2, p0, Lcom/htc/android/mail/ByteStringStreams$BSAInputStream;->mLineNum:I

    .line 63
    move v0, p2

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 64
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/ByteString;

    .line 66
    .local v1, s:Lcom/htc/android/mail/ByteString;
    iget v2, p0, Lcom/htc/android/mail/ByteStringStreams$BSAInputStream;->mTotalBytes:I

    invoke-virtual {v1}, Lcom/htc/android/mail/ByteString;->length()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/htc/android/mail/ByteStringStreams$BSAInputStream;->mTotalBytes:I

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    .end local v1           #s:Lcom/htc/android/mail/ByteString;
    :cond_0
    return-void
.end method


# virtual methods
.method final nextLine()V
    .locals 2

    .prologue
    .line 114
    iget v0, p0, Lcom/htc/android/mail/ByteStringStreams$BSAInputStream;->mLineNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/android/mail/ByteStringStreams$BSAInputStream;->mLineNum:I

    .line 115
    iget-object v0, p0, Lcom/htc/android/mail/ByteStringStreams$BSAInputStream;->mLines:Ljava/util/ArrayList;

    iget v1, p0, Lcom/htc/android/mail/ByteStringStreams$BSAInputStream;->mLineNum:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/ByteString;

    iput-object v0, p0, Lcom/htc/android/mail/ByteStringStreams$BSAInputStream;->mLine:Lcom/htc/android/mail/ByteString;

    .line 117
    iget-object v0, p0, Lcom/htc/android/mail/ByteStringStreams$BSAInputStream;->mLine:Lcom/htc/android/mail/ByteString;

    invoke-virtual {v0}, Lcom/htc/android/mail/ByteString;->length()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/ByteStringStreams$BSAInputStream;->mLineLen:I

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/ByteStringStreams$BSAInputStream;->mReadOffset:I

    .line 119
    return-void
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    iget v0, p0, Lcom/htc/android/mail/ByteStringStreams$BSAInputStream;->mNumRead:I

    iget v1, p0, Lcom/htc/android/mail/ByteStringStreams$BSAInputStream;->mTotalBytes:I

    if-ge v0, v1, :cond_1

    .line 101
    iget v0, p0, Lcom/htc/android/mail/ByteStringStreams$BSAInputStream;->mReadOffset:I

    iget v1, p0, Lcom/htc/android/mail/ByteStringStreams$BSAInputStream;->mLineLen:I

    if-ne v0, v1, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/htc/android/mail/ByteStringStreams$BSAInputStream;->nextLine()V

    .line 105
    :cond_0
    iget v0, p0, Lcom/htc/android/mail/ByteStringStreams$BSAInputStream;->mNumRead:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/android/mail/ByteStringStreams$BSAInputStream;->mNumRead:I

    .line 107
    iget-object v0, p0, Lcom/htc/android/mail/ByteStringStreams$BSAInputStream;->mLine:Lcom/htc/android/mail/ByteString;

    iget-object v0, v0, Lcom/htc/android/mail/ByteString;->mStorage:[B

    iget-object v1, p0, Lcom/htc/android/mail/ByteStringStreams$BSAInputStream;->mLine:Lcom/htc/android/mail/ByteString;

    iget v1, v1, Lcom/htc/android/mail/ByteString;->mOffset:I

    iget v2, p0, Lcom/htc/android/mail/ByteStringStreams$BSAInputStream;->mReadOffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/htc/android/mail/ByteStringStreams$BSAInputStream;->mReadOffset:I

    add-int/2addr v1, v2

    aget-byte v0, v0, v1

    .line 110
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final readBase64()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    :cond_0
    iget v1, p0, Lcom/htc/android/mail/ByteStringStreams$BSAInputStream;->mNumRead:I

    iget v2, p0, Lcom/htc/android/mail/ByteStringStreams$BSAInputStream;->mTotalBytes:I

    if-ge v1, v2, :cond_6

    .line 72
    iget v1, p0, Lcom/htc/android/mail/ByteStringStreams$BSAInputStream;->mReadOffset:I

    iget v2, p0, Lcom/htc/android/mail/ByteStringStreams$BSAInputStream;->mLineLen:I

    if-ne v1, v2, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/htc/android/mail/ByteStringStreams$BSAInputStream;->nextLine()V

    .line 77
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

    .line 79
    .local v0, candidate:B
    iget v1, p0, Lcom/htc/android/mail/ByteStringStreams$BSAInputStream;->mNumRead:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/android/mail/ByteStringStreams$BSAInputStream;->mNumRead:I

    .line 82
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

    .line 92
    .end local v0           #candidate:B
    :cond_5
    :goto_0
    return v0

    :cond_6
    const/4 v0, -0x1

    goto :goto_0
.end method
