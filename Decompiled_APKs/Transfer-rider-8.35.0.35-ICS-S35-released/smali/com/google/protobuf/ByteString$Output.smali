.class public final Lcom/google/protobuf/ByteString$Output;
.super Ljava/io/FilterOutputStream;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Output"
.end annotation


# instance fields
.field private final bout:Ljava/io/ByteArrayOutputStream;


# direct methods
.method private constructor <init>(Ljava/io/ByteArrayOutputStream;)V
    .locals 0
    .parameter "bout"

    .prologue
    .line 338
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 339
    iput-object p1, p0, Lcom/google/protobuf/ByteString$Output;->bout:Ljava/io/ByteArrayOutputStream;

    .line 340
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/ByteArrayOutputStream;Lcom/google/protobuf/ByteString$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 331
    invoke-direct {p0, p1}, Lcom/google/protobuf/ByteString$Output;-><init>(Ljava/io/ByteArrayOutputStream;)V

    return-void
.end method


# virtual methods
.method public toByteString()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 346
    iget-object v1, p0, Lcom/google/protobuf/ByteString$Output;->bout:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 347
    .local v0, byteArray:[B
    new-instance v1, Lcom/google/protobuf/ByteString;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/ByteString;-><init>([BLcom/google/protobuf/ByteString$1;)V

    return-object v1
.end method
