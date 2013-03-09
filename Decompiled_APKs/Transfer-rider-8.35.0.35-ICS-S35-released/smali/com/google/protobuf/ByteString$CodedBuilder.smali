.class final Lcom/google/protobuf/ByteString$CodedBuilder;
.super Ljava/lang/Object;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CodedBuilder"
.end annotation


# instance fields
.field private final buffer:[B

.field private final output:Lcom/google/protobuf/CodedOutputStream;


# direct methods
.method private constructor <init>(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/google/protobuf/ByteString$CodedBuilder;->buffer:[B

    .line 375
    iget-object v0, p0, Lcom/google/protobuf/ByteString$CodedBuilder;->buffer:[B

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->newInstance([B)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/ByteString$CodedBuilder;->output:Lcom/google/protobuf/CodedOutputStream;

    .line 376
    return-void
.end method

.method synthetic constructor <init>(ILcom/google/protobuf/ByteString$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 369
    invoke-direct {p0, p1}, Lcom/google/protobuf/ByteString$CodedBuilder;-><init>(I)V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 379
    iget-object v0, p0, Lcom/google/protobuf/ByteString$CodedBuilder;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedOutputStream;->checkNoSpaceLeft()V

    .line 384
    new-instance v0, Lcom/google/protobuf/ByteString;

    iget-object v1, p0, Lcom/google/protobuf/ByteString$CodedBuilder;->buffer:[B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/ByteString;-><init>([BLcom/google/protobuf/ByteString$1;)V

    return-object v0
.end method

.method public getCodedOutput()Lcom/google/protobuf/CodedOutputStream;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/google/protobuf/ByteString$CodedBuilder;->output:Lcom/google/protobuf/CodedOutputStream;

    return-object v0
.end method
