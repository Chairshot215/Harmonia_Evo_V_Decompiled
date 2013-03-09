.class public final Lcom/coremobility/c/ak;
.super Lcom/coremobility/integration/u;


# instance fields
.field public a:I

.field public b:I

.field final synthetic c:Lcom/coremobility/c/ah;


# direct methods
.method protected constructor <init>(Lcom/coremobility/c/ah;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/c/ak;->c:Lcom/coremobility/c/ah;

    invoke-direct {p0}, Lcom/coremobility/integration/u;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([B)V
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/coremobility/c/ak;->a:I

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/coremobility/c/ak;->b:I

    return-void
.end method

.method public final a()[B
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget v2, p0, Lcom/coremobility/c/ak;->a:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v2, p0, Lcom/coremobility/c/ak;->b:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
