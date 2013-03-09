.class public final Lcom/htc/protobuf/ByteString;
.super Ljava/lang/Object;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/protobuf/ByteString$1;,
        Lcom/htc/protobuf/ByteString$CodedBuilder;,
        Lcom/htc/protobuf/ByteString$Output;
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/htc/protobuf/ByteString;


# instance fields
.field private final bytes:[B

.field private volatile hash:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/htc/protobuf/ByteString;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/htc/protobuf/ByteString;-><init>([B)V

    sput-object v0, Lcom/htc/protobuf/ByteString;->EMPTY:Lcom/htc/protobuf/ByteString;

    return-void
.end method

.method private constructor <init>([B)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/protobuf/ByteString;->hash:I

    iput-object p1, p0, Lcom/htc/protobuf/ByteString;->bytes:[B

    return-void
.end method

.method synthetic constructor <init>([BLcom/htc/protobuf/ByteString$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/protobuf/ByteString;-><init>([B)V

    return-void
.end method

.method public static copyFrom(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/protobuf/ByteString;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    new-instance v0, Lcom/htc/protobuf/ByteString;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/protobuf/ByteString;-><init>([B)V

    return-object v0
.end method

.method public static copyFrom([B)Lcom/htc/protobuf/ByteString;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/htc/protobuf/ByteString;->copyFrom([BII)Lcom/htc/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public static copyFrom([BII)Lcom/htc/protobuf/ByteString;
    .locals 2

    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Lcom/htc/protobuf/ByteString;

    invoke-direct {v1, v0}, Lcom/htc/protobuf/ByteString;-><init>([B)V

    return-object v1
.end method

.method public static copyFromUtf8(Ljava/lang/String;)Lcom/htc/protobuf/ByteString;
    .locals 3

    :try_start_0
    new-instance v1, Lcom/htc/protobuf/ByteString;

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/protobuf/ByteString;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-8 not supported?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static newCodedBuilder(I)Lcom/htc/protobuf/ByteString$CodedBuilder;
    .locals 2

    new-instance v0, Lcom/htc/protobuf/ByteString$CodedBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/protobuf/ByteString$CodedBuilder;-><init>(ILcom/htc/protobuf/ByteString$1;)V

    return-object v0
.end method

.method public static newOutput()Lcom/htc/protobuf/ByteString$Output;
    .locals 1

    const/16 v0, 0x20

    invoke-static {v0}, Lcom/htc/protobuf/ByteString;->newOutput(I)Lcom/htc/protobuf/ByteString$Output;

    move-result-object v0

    return-object v0
.end method

.method public static newOutput(I)Lcom/htc/protobuf/ByteString$Output;
    .locals 3

    new-instance v0, Lcom/htc/protobuf/ByteString$Output;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/htc/protobuf/ByteString$Output;-><init>(Ljava/io/ByteArrayOutputStream;Lcom/htc/protobuf/ByteString$1;)V

    return-object v0
.end method


# virtual methods
.method public asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    iget-object v1, p0, Lcom/htc/protobuf/ByteString;->bytes:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method public byteAt(I)B
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/ByteString;->bytes:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public copyTo([BI)V
    .locals 3

    iget-object v0, p0, Lcom/htc/protobuf/ByteString;->bytes:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/protobuf/ByteString;->bytes:[B

    array-length v2, v2

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public copyTo([BIII)V
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/ByteString;->bytes:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    instance-of v7, p1, Lcom/htc/protobuf/ByteString;

    if-nez v7, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/htc/protobuf/ByteString;

    iget-object v7, p0, Lcom/htc/protobuf/ByteString;->bytes:[B

    array-length v3, v7

    iget-object v7, v1, Lcom/htc/protobuf/ByteString;->bytes:[B

    array-length v7, v7

    if-eq v3, v7, :cond_3

    move v5, v6

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/htc/protobuf/ByteString;->bytes:[B

    iget-object v2, v1, Lcom/htc/protobuf/ByteString;->bytes:[B

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_0

    aget-byte v7, v4, v0

    aget-byte v8, v2, v0

    if-eq v7, v8, :cond_4

    move v5, v6

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 6

    iget v0, p0, Lcom/htc/protobuf/ByteString;->hash:I

    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/htc/protobuf/ByteString;->bytes:[B

    iget-object v4, p0, Lcom/htc/protobuf/ByteString;->bytes:[B

    array-length v2, v4

    move v0, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    mul-int/lit8 v4, v0, 0x1f

    aget-byte v5, v3, v1

    add-int v0, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput v0, p0, Lcom/htc/protobuf/ByteString;->hash:I

    :cond_2
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/ByteString;->bytes:[B

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newCodedInput()Lcom/htc/protobuf/CodedInputStream;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/ByteString;->bytes:[B

    invoke-static {v0}, Lcom/htc/protobuf/CodedInputStream;->newInstance([B)Lcom/htc/protobuf/CodedInputStream;

    move-result-object v0

    return-object v0
.end method

.method public newInput()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/htc/protobuf/ByteString;->bytes:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/ByteString;->bytes:[B

    array-length v0, v0

    return v0
.end method

.method public toByteArray()[B
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/htc/protobuf/ByteString;->bytes:[B

    array-length v1, v2

    new-array v0, v1, [B

    iget-object v2, p0, Lcom/htc/protobuf/ByteString;->bytes:[B

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/protobuf/ByteString;->bytes:[B

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public toStringUtf8()Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/protobuf/ByteString;->bytes:[B

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-8 not supported?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
