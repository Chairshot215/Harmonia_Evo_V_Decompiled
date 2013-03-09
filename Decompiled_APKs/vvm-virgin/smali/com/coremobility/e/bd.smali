.class public final Lcom/coremobility/e/bd;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field protected d:Lcom/coremobility/integration/b/c;

.field protected e:[B

.field protected f:S

.field final synthetic g:Lcom/coremobility/e/aw;


# direct methods
.method public constructor <init>(Lcom/coremobility/e/aw;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/e/bd;->g:Lcom/coremobility/e/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private d()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/coremobility/e/bd;->e:[B

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/e/bd;->d:Lcom/coremobility/integration/b/c;

    iget-short v3, p0, Lcom/coremobility/e/bd;->f:S

    invoke-virtual {v0, v3}, Lcom/coremobility/integration/b/c;->b(I)I

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/coremobility/integration/m;

    invoke-direct {v0, v2}, Lcom/coremobility/integration/m;-><init>(I)V

    iget-object v3, p0, Lcom/coremobility/e/bd;->d:Lcom/coremobility/integration/b/c;

    iget-short v4, p0, Lcom/coremobility/e/bd;->f:S

    invoke-virtual {v3, v4, v2, v0}, Lcom/coremobility/integration/b/c;->a(IILcom/coremobility/integration/m;)Z

    move-result v3

    iget v0, v0, Lcom/coremobility/integration/m;->a:I

    int-to-short v0, v0

    invoke-static {v3}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v3, Lcom/coremobility/integration/n;

    invoke-direct {v3}, Lcom/coremobility/integration/n;-><init>()V

    iget-object v4, p0, Lcom/coremobility/e/bd;->d:Lcom/coremobility/integration/b/c;

    iget-short v5, p0, Lcom/coremobility/e/bd;->f:S

    invoke-virtual {v4, v5, v0, v3}, Lcom/coremobility/integration/b/c;->a(IILcom/coremobility/integration/n;)Z

    move-result v0

    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, v3, Lcom/coremobility/integration/n;->b:[B

    iput-object v0, p0, Lcom/coremobility/e/bd;->e:[B

    iget-object v0, p0, Lcom/coremobility/e/bd;->e:[B

    if-eqz v0, :cond_2

    :goto_2
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/coremobility/e/bd;->e:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/coremobility/e/bd;->a:I

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/coremobility/e/bd;->b:I

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/e/bd;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/16 v1, 0x21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading retrieve ack from database."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/coremobility/e/bd;->e:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/e/bd;->e:[B

    :cond_0
    return-void
.end method

.method public final a(IILjava/lang/String;)V
    .locals 8

    const/16 v7, 0x21

    const/4 v6, 0x0

    const/4 v0, 0x1

    new-array v1, v0, [[B

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v0, p3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    new-instance v2, Lcom/coremobility/integration/m;

    invoke-direct {v2}, Lcom/coremobility/integration/m;-><init>()V

    iget-object v3, p0, Lcom/coremobility/e/bd;->d:Lcom/coremobility/integration/b/c;

    iget-short v4, p0, Lcom/coremobility/e/bd;->f:S

    array-length v5, v0

    invoke-virtual {v3, v4, v2, v0, v5}, Lcom/coremobility/integration/b/c;->a(ILcom/coremobility/integration/m;[BI)Z

    move-result v2

    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error adding ack for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to DB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v7, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    aput-object v0, v1, v6

    iget-object v0, p0, Lcom/coremobility/e/bd;->e:[B

    if-nez v0, :cond_1

    aget-object v0, v1, v6

    iput-object v0, p0, Lcom/coremobility/e/bd;->e:[B

    iput p1, p0, Lcom/coremobility/e/bd;->a:I

    iput p2, p0, Lcom/coremobility/e/bd;->b:I

    iput-object p3, p0, Lcom/coremobility/e/bd;->c:Ljava/lang/String;

    :cond_1
    return-void

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Add Ret Ack Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v7, v0, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(S)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/coremobility/integration/b/c;->a()Lcom/coremobility/integration/b/c;

    move-result-object v2

    iput-object v2, p0, Lcom/coremobility/e/bd;->d:Lcom/coremobility/integration/b/c;

    iput v1, p0, Lcom/coremobility/e/bd;->a:I

    iput v1, p0, Lcom/coremobility/e/bd;->b:I

    iput-object v3, p0, Lcom/coremobility/e/bd;->c:Ljava/lang/String;

    iput-object v3, p0, Lcom/coremobility/e/bd;->e:[B

    iput-short p1, p0, Lcom/coremobility/e/bd;->f:S

    invoke-direct {p0}, Lcom/coremobility/e/bd;->d()V

    iget-object v2, p0, Lcom/coremobility/e/bd;->g:Lcom/coremobility/e/aw;

    invoke-static {v2}, Lcom/coremobility/e/aw;->a(Lcom/coremobility/e/aw;)Lcom/coremobility/e/ax;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/coremobility/e/bd;->g:Lcom/coremobility/e/aw;

    invoke-static {v2}, Lcom/coremobility/e/aw;->a(Lcom/coremobility/e/aw;)Lcom/coremobility/e/ax;

    move-result-object v3

    iget-object v2, p0, Lcom/coremobility/e/bd;->g:Lcom/coremobility/e/aw;

    iget-object v2, v2, Lcom/coremobility/e/aw;->y:Lcom/coremobility/e/c;

    invoke-virtual {v2}, Lcom/coremobility/e/c;->g()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/coremobility/e/bd;->e:[B

    if-eqz v2, :cond_1

    move v2, v0

    :goto_0
    if-nez v2, :cond_2

    :goto_1
    invoke-virtual {v3, v0}, Lcom/coremobility/e/ax;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/e/bd;->g:Lcom/coremobility/e/aw;

    invoke-static {v0}, Lcom/coremobility/e/aw;->a(Lcom/coremobility/e/aw;)Lcom/coremobility/e/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/e/ax;->c()V

    :cond_0
    return-void

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final b()V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/coremobility/e/bd;->e:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iput-object v2, p0, Lcom/coremobility/e/bd;->e:[B

    iput v1, p0, Lcom/coremobility/e/bd;->a:I

    iput v1, p0, Lcom/coremobility/e/bd;->b:I

    iput-object v2, p0, Lcom/coremobility/e/bd;->c:Ljava/lang/String;

    new-instance v0, Lcom/coremobility/integration/m;

    invoke-direct {v0, v1}, Lcom/coremobility/integration/m;-><init>(I)V

    iget-object v2, p0, Lcom/coremobility/e/bd;->d:Lcom/coremobility/integration/b/c;

    iget-short v3, p0, Lcom/coremobility/e/bd;->f:S

    invoke-virtual {v2, v3, v1, v0}, Lcom/coremobility/integration/b/c;->a(IILcom/coremobility/integration/m;)Z

    move-result v1

    iget v0, v0, Lcom/coremobility/integration/m;->a:I

    int-to-short v0, v0

    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v1, p0, Lcom/coremobility/e/bd;->d:Lcom/coremobility/integration/b/c;

    iget-short v2, p0, Lcom/coremobility/e/bd;->f:S

    invoke-virtual {v1, v2, v0}, Lcom/coremobility/integration/b/c;->a(II)Z

    move-result v0

    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-direct {p0}, Lcom/coremobility/e/bd;->d()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lcom/coremobility/e/bd;->e:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
