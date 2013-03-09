.class public final Lcom/coremobility/c/af;
.super Lcom/coremobility/integration/u;


# instance fields
.field public a:S

.field public b:S

.field public c:I

.field public d:J

.field final synthetic e:Lcom/coremobility/c/ae;


# direct methods
.method protected constructor <init>(Lcom/coremobility/c/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/c/af;->e:Lcom/coremobility/c/ae;

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

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/coremobility/c/af;->a:S

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/coremobility/c/af;->b:S

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/coremobility/c/af;->c:I

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremobility/c/af;->d:J

    return-void
.end method

.method public final a()[B
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-short v2, p0, Lcom/coremobility/c/af;->a:S

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-short v2, p0, Lcom/coremobility/c/af;->b:S

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget v2, p0, Lcom/coremobility/c/af;->c:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-wide v2, p0, Lcom/coremobility/c/af;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
