.class Lcom/htc/android/mail/ByteStringStreams$BSAOutputStream;
.super Ljava/io/OutputStream;
.source "ByteStringStreams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ByteStringStreams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BSAOutputStream"
.end annotation


# instance fields
.field private mLine:Lcom/htc/android/mail/ByteString;

.field private mLineLen:I

.field private mLineNum:I

.field private mLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private mNumWritten:I

.field private mTotalBytes:I

.field private mWriteOffset:I


# direct methods
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
    .line 168
    .local p1, lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/ByteString;>;"
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 161
    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/android/mail/ByteStringStreams$BSAOutputStream;->mLineNum:I

    .line 169
    iput-object p1, p0, Lcom/htc/android/mail/ByteStringStreams$BSAOutputStream;->mLines:Ljava/util/ArrayList;

    .line 170
    add-int/lit8 v2, p2, -0x1

    iput v2, p0, Lcom/htc/android/mail/ByteStringStreams$BSAOutputStream;->mLineNum:I

    .line 172
    move v0, p2

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 173
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/ByteString;

    .line 175
    .local v1, s:Lcom/htc/android/mail/ByteString;
    iget v2, p0, Lcom/htc/android/mail/ByteStringStreams$BSAOutputStream;->mTotalBytes:I

    invoke-virtual {v1}, Lcom/htc/android/mail/ByteString;->length()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/htc/android/mail/ByteStringStreams$BSAOutputStream;->mTotalBytes:I

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    .end local v1           #s:Lcom/htc/android/mail/ByteString;
    :cond_0
    return-void
.end method

.method private final nextLine()V
    .locals 2

    .prologue
    .line 214
    iget v0, p0, Lcom/htc/android/mail/ByteStringStreams$BSAOutputStream;->mLineNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/android/mail/ByteStringStreams$BSAOutputStream;->mLineNum:I

    .line 215
    iget-object v0, p0, Lcom/htc/android/mail/ByteStringStreams$BSAOutputStream;->mLines:Ljava/util/ArrayList;

    iget v1, p0, Lcom/htc/android/mail/ByteStringStreams$BSAOutputStream;->mLineNum:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/ByteString;

    iput-object v0, p0, Lcom/htc/android/mail/ByteStringStreams$BSAOutputStream;->mLine:Lcom/htc/android/mail/ByteString;

    .line 217
    iget-object v0, p0, Lcom/htc/android/mail/ByteStringStreams$BSAOutputStream;->mLine:Lcom/htc/android/mail/ByteString;

    iget-object v0, v0, Lcom/htc/android/mail/ByteString;->mStorage:[B

    array-length v0, v0

    iput v0, p0, Lcom/htc/android/mail/ByteStringStreams$BSAOutputStream;->mLineLen:I

    .line 218
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/ByteStringStreams$BSAOutputStream;->mWriteOffset:I

    .line 219
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    .prologue
    .line 203
    iget-object v1, p0, Lcom/htc/android/mail/ByteStringStreams$BSAOutputStream;->mLine:Lcom/htc/android/mail/ByteString;

    iget v2, p0, Lcom/htc/android/mail/ByteStringStreams$BSAOutputStream;->mWriteOffset:I

    iput v2, v1, Lcom/htc/android/mail/ByteString;->mLength:I

    .line 206
    iget-object v1, p0, Lcom/htc/android/mail/ByteStringStreams$BSAOutputStream;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 208
    .local v0, i:I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/htc/android/mail/ByteStringStreams$BSAOutputStream;->mLineNum:I

    if-le v0, v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/htc/android/mail/ByteStringStreams$BSAOutputStream;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 211
    :cond_0
    return-void
.end method

.method public final write(I)V
    .locals 3
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    iget v0, p0, Lcom/htc/android/mail/ByteStringStreams$BSAOutputStream;->mNumWritten:I

    iget v1, p0, Lcom/htc/android/mail/ByteStringStreams$BSAOutputStream;->mTotalBytes:I

    if-ne v0, v1, :cond_0

    .line 185
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Buffer space exhausted"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_0
    iget v0, p0, Lcom/htc/android/mail/ByteStringStreams$BSAOutputStream;->mWriteOffset:I

    iget v1, p0, Lcom/htc/android/mail/ByteStringStreams$BSAOutputStream;->mLineLen:I

    if-ne v0, v1, :cond_1

    .line 189
    invoke-direct {p0}, Lcom/htc/android/mail/ByteStringStreams$BSAOutputStream;->nextLine()V

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/ByteStringStreams$BSAOutputStream;->mLine:Lcom/htc/android/mail/ByteString;

    iget-object v0, v0, Lcom/htc/android/mail/ByteString;->mStorage:[B

    iget-object v1, p0, Lcom/htc/android/mail/ByteStringStreams$BSAOutputStream;->mLine:Lcom/htc/android/mail/ByteString;

    iget v1, v1, Lcom/htc/android/mail/ByteString;->mOffset:I

    iget v2, p0, Lcom/htc/android/mail/ByteStringStreams$BSAOutputStream;->mWriteOffset:I

    add-int/2addr v1, v2

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 193
    iget v0, p0, Lcom/htc/android/mail/ByteStringStreams$BSAOutputStream;->mNumWritten:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/android/mail/ByteStringStreams$BSAOutputStream;->mNumWritten:I

    .line 194
    iget v0, p0, Lcom/htc/android/mail/ByteStringStreams$BSAOutputStream;->mWriteOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/android/mail/ByteStringStreams$BSAOutputStream;->mWriteOffset:I

    .line 195
    return-void
.end method
