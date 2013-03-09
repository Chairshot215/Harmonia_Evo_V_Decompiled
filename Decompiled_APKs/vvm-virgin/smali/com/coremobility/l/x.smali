.class public final Lcom/coremobility/l/x;
.super Lcom/coremobility/integration/u;


# instance fields
.field a:Lcom/coremobility/l/ac;

.field final synthetic b:Lcom/coremobility/l/v;


# direct methods
.method protected constructor <init>(Lcom/coremobility/l/v;)V
    .locals 1

    iput-object p1, p0, Lcom/coremobility/l/x;->b:Lcom/coremobility/l/v;

    invoke-direct {p0}, Lcom/coremobility/integration/u;-><init>()V

    new-instance v0, Lcom/coremobility/l/ac;

    invoke-direct {v0}, Lcom/coremobility/l/ac;-><init>()V

    iput-object v0, p0, Lcom/coremobility/l/x;->a:Lcom/coremobility/l/ac;

    return-void
.end method


# virtual methods
.method public final a([B)V
    .locals 3

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/coremobility/l/x;->a:Lcom/coremobility/l/ac;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/coremobility/l/ac;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/coremobility/l/x;->a:Lcom/coremobility/l/ac;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, v0, Lcom/coremobility/l/ac;->b:I

    iget-object v0, p0, Lcom/coremobility/l/x;->a:Lcom/coremobility/l/ac;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, v0, Lcom/coremobility/l/ac;->f:I

    iget-object v0, p0, Lcom/coremobility/l/x;->a:Lcom/coremobility/l/ac;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/coremobility/l/ac;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/coremobility/l/x;->a:Lcom/coremobility/l/ac;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/coremobility/l/ac;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/coremobility/l/x;->a:Lcom/coremobility/l/ac;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/coremobility/l/ac;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/coremobility/l/x;->a:Lcom/coremobility/l/ac;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ac;->g:Ljava/lang/String;

    return-void
.end method

.method public final a()[B
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v2, p0, Lcom/coremobility/l/x;->a:Lcom/coremobility/l/ac;

    iget-object v2, v2, Lcom/coremobility/l/ac;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coremobility/l/x;->a:Lcom/coremobility/l/ac;

    iget v2, v2, Lcom/coremobility/l/ac;->b:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v2, p0, Lcom/coremobility/l/x;->a:Lcom/coremobility/l/ac;

    iget v2, v2, Lcom/coremobility/l/ac;->f:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v2, p0, Lcom/coremobility/l/x;->a:Lcom/coremobility/l/ac;

    iget-object v2, v2, Lcom/coremobility/l/ac;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coremobility/l/x;->a:Lcom/coremobility/l/ac;

    iget-object v2, v2, Lcom/coremobility/l/ac;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coremobility/l/x;->a:Lcom/coremobility/l/ac;

    iget-object v2, v2, Lcom/coremobility/l/ac;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coremobility/l/x;->a:Lcom/coremobility/l/ac;

    iget-object v2, v2, Lcom/coremobility/l/ac;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
