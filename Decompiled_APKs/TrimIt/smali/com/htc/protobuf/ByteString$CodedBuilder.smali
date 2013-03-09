.class final Lcom/htc/protobuf/ByteString$CodedBuilder;
.super Ljava/lang/Object;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CodedBuilder"
.end annotation


# instance fields
.field private final buffer:[B

.field private final output:Lcom/htc/protobuf/CodedOutputStream;


# direct methods
.method private constructor <init>(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/htc/protobuf/ByteString$CodedBuilder;->buffer:[B

    .line 328
    iget-object v0, p0, Lcom/htc/protobuf/ByteString$CodedBuilder;->buffer:[B

    invoke-static {v0}, Lcom/htc/protobuf/CodedOutputStream;->newInstance([B)Lcom/htc/protobuf/CodedOutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/ByteString$CodedBuilder;->output:Lcom/htc/protobuf/CodedOutputStream;

    .line 329
    return-void
.end method

.method synthetic constructor <init>(ILcom/htc/protobuf/ByteString$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 322
    invoke-direct {p0, p1}, Lcom/htc/protobuf/ByteString$CodedBuilder;-><init>(I)V

    return-void
.end method


# virtual methods
.method public build()Lcom/htc/protobuf/ByteString;
    .locals 3

    .prologue
    .line 332
    iget-object v0, p0, Lcom/htc/protobuf/ByteString$CodedBuilder;->output:Lcom/htc/protobuf/CodedOutputStream;

    invoke-virtual {v0}, Lcom/htc/protobuf/CodedOutputStream;->checkNoSpaceLeft()V

    .line 337
    new-instance v0, Lcom/htc/protobuf/ByteString;

    iget-object v1, p0, Lcom/htc/protobuf/ByteString$CodedBuilder;->buffer:[B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/htc/protobuf/ByteString;-><init>([BLcom/htc/protobuf/ByteString$1;)V

    return-object v0
.end method

.method public getCodedOutput()Lcom/htc/protobuf/CodedOutputStream;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/htc/protobuf/ByteString$CodedBuilder;->output:Lcom/htc/protobuf/CodedOutputStream;

    return-object v0
.end method
