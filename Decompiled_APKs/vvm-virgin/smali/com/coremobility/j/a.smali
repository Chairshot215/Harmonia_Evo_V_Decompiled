.class public final Lcom/coremobility/j/a;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/coremobility/integration/b/c;

.field b:Lcom/coremobility/integration/g/b;

.field c:Ljava/lang/String;

.field d:Ljava/lang/StringBuilder;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;

.field q:I

.field r:I

.field s:I

.field t:Z

.field u:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/j/a;->u:I

    return-void
.end method

.method private static a([B)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v4, Ljava/lang/StringBuffer;

    const/16 v0, 0x20

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    move v3, v2

    :goto_1
    const/16 v0, 0x10

    if-ge v3, v0, :cond_2

    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    int-to-byte v5, v0

    aget-byte v0, p0, v3

    and-int/lit8 v0, v0, 0xf

    int-to-byte v6, v0

    if-ltz v5, :cond_1

    const/16 v0, 0xf

    if-gt v5, v0, :cond_1

    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    and-int/lit16 v0, v5, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    and-int/lit16 v0, v6, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/coremobility/j/a;->d:Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coremobility/j/a;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coremobility/j/a;->d:Ljava/lang/StringBuilder;

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coremobility/j/a;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coremobility/j/a;->d:Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/coremobility/j/a;->d:Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coremobility/j/a;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coremobility/j/a;->d:Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coremobility/j/a;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private c(I)V
    .locals 4

    const/16 v3, 0x2f

    const/4 v2, 0x0

    iget v0, p0, Lcom/coremobility/j/a;->s:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CM+HT40x bad db-item, db-id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CM+HT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremobility/j/a;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bad db-item, db-id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private d(I)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v7, 0x2

    const/16 v6, 0x2f

    const/4 v0, 0x0

    new-instance v2, Lcom/coremobility/integration/n;

    invoke-direct {v2}, Lcom/coremobility/integration/n;-><init>()V

    iget-object v3, p0, Lcom/coremobility/j/a;->a:Lcom/coremobility/integration/b/c;

    const/16 v4, 0x1004

    invoke-virtual {v3, v4, p1, v2}, Lcom/coremobility/integration/b/c;->a(IILcom/coremobility/integration/n;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CM+HT40x no db-item at db-id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v6, v1, v2}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    iget v3, v2, Lcom/coremobility/integration/n;->a:I

    const/16 v4, 0x8

    if-ge v3, v4, :cond_1

    invoke-direct {p0, p1}, Lcom/coremobility/j/a;->c(I)V

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v4, v2, Lcom/coremobility/integration/n;->b:[B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lcom/coremobility/j/a;->q:I

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lcom/coremobility/j/a;->s:I

    iget v3, p0, Lcom/coremobility/j/a;->q:I

    if-eq v3, v1, :cond_2

    iget v3, p0, Lcom/coremobility/j/a;->q:I

    if-eq v3, v7, :cond_2

    invoke-direct {p0, p1}, Lcom/coremobility/j/a;->c(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CM+HT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/coremobility/j/a;->s:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "no \'nonce\', db-id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v6, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget v3, p0, Lcom/coremobility/j/a;->s:I

    const/16 v5, 0x191

    if-eq v3, v5, :cond_3

    iget v3, p0, Lcom/coremobility/j/a;->s:I

    const/16 v5, 0x197

    if-eq v3, v5, :cond_3

    invoke-direct {p0, p1}, Lcom/coremobility/j/a;->c(I)V

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/coremobility/j/a;->q:I

    if-ne v3, v7, :cond_5

    iget v2, v2, Lcom/coremobility/integration/n;->a:I

    const/16 v3, 0x10

    if-ge v2, v3, :cond_4

    invoke-direct {p0, p1}, Lcom/coremobility/j/a;->c(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/coremobility/j/a;->r:I

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lcom/coremobility/j/a;->t:Z

    :cond_5
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/coremobility/j/a;->l:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/coremobility/j/a;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/coremobility/j/a;->l:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/coremobility/j/a;->l:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    const/16 v1, 0x2f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CM+HT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/coremobility/j/a;->s:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " no \'realm\', db-id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    iget v2, p0, Lcom/coremobility/j/a;->q:I

    if-ne v2, v7, :cond_b

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/coremobility/j/a;->c:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/coremobility/j/a;->e:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/coremobility/j/a;->f:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/coremobility/j/a;->g:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/coremobility/j/a;->h:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/coremobility/j/a;->i:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/coremobility/j/a;->k:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/coremobility/j/a;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/coremobility/j/a;->h:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/coremobility/j/a;->h:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    const/16 v1, 0x2f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CM+HT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/coremobility/j/a;->s:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "no \'nonce\', db-id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lcom/coremobility/j/a;->n:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/coremobility/j/a;->n:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_b

    :cond_a
    const/16 v1, 0x2f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CM+HT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/coremobility/j/a;->s:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "no \'nonce\', db-id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_b
    move v0, v1

    goto/16 :goto_0
.end method

.method private e(I)Z
    .locals 6

    const/16 v5, 0x2f

    const/4 v4, 0x2

    const/4 v0, 0x0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    iget v1, p0, Lcom/coremobility/j/a;->q:I

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Lcom/coremobility/j/a;->s:I

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Lcom/coremobility/j/a;->q:I

    if-ne v1, v4, :cond_0

    iget v1, p0, Lcom/coremobility/j/a;->r:I

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-boolean v1, p0, Lcom/coremobility/j/a;->t:Z

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    :cond_0
    iget-object v1, p0, Lcom/coremobility/j/a;->l:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/coremobility/j/a;->l:Ljava/lang/String;

    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coremobility/j/a;->m:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/coremobility/j/a;->m:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget v1, p0, Lcom/coremobility/j/a;->q:I

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/coremobility/j/a;->c:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/coremobility/j/a;->c:Ljava/lang/String;

    :goto_2
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coremobility/j/a;->e:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/coremobility/j/a;->e:Ljava/lang/String;

    :goto_3
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coremobility/j/a;->f:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/coremobility/j/a;->f:Ljava/lang/String;

    :goto_4
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coremobility/j/a;->g:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/coremobility/j/a;->g:Ljava/lang/String;

    :goto_5
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coremobility/j/a;->h:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/coremobility/j/a;->h:Ljava/lang/String;

    :goto_6
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coremobility/j/a;->i:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/coremobility/j/a;->i:Ljava/lang/String;

    :goto_7
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coremobility/j/a;->k:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/coremobility/j/a;->k:Ljava/lang/String;

    :goto_8
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coremobility/j/a;->n:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/coremobility/j/a;->n:Ljava/lang/String;

    :goto_9
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    new-instance v1, Lcom/coremobility/integration/n;

    invoke-direct {v1}, Lcom/coremobility/integration/n;-><init>()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, v1, Lcom/coremobility/integration/n;->b:[B

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    iput v2, v1, Lcom/coremobility/integration/n;->a:I

    iget-object v2, p0, Lcom/coremobility/j/a;->a:Lcom/coremobility/integration/b/c;

    const/16 v3, 0x1004

    iget-object v4, v1, Lcom/coremobility/integration/n;->b:[B

    iget v1, v1, Lcom/coremobility/integration/n;->a:I

    invoke-virtual {v2, v3, p1, v4, v1}, Lcom/coremobility/integration/b/c;->a(II[BI)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x2f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CM+HT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/coremobility/j/a;->s:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " fail db-item save, db-id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_3
    const-string v1, ""

    goto/16 :goto_0

    :cond_4
    const-string v1, ""

    goto/16 :goto_1

    :cond_5
    const-string v1, ""

    goto/16 :goto_2

    :cond_6
    const-string v1, ""

    goto/16 :goto_3

    :cond_7
    const-string v1, ""

    goto/16 :goto_4

    :cond_8
    const-string v1, ""

    goto/16 :goto_5

    :cond_9
    const-string v1, ""

    goto/16 :goto_6

    :cond_a
    const-string v1, ""

    goto :goto_7

    :cond_b
    const-string v1, ""

    goto :goto_8

    :cond_c
    const-string v1, ""
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CM+HT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/coremobility/j/a;->s:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "fail db-item save\', db-id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v5, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/16 v9, 0x10

    const/16 v8, 0x20

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/coremobility/j/a;->u:I

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/coremobility/j/a;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/j/a;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/j/a;->m:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/j/a;->j:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    :cond_0
    move v0, v1

    :goto_1
    iput-object p1, p0, Lcom/coremobility/j/a;->m:Ljava/lang/String;

    iput-object p2, p0, Lcom/coremobility/j/a;->j:Ljava/lang/String;

    iget v3, p0, Lcom/coremobility/j/a;->q:I

    if-ne v3, v1, :cond_3

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Basic"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coremobility/j/a;->d:Ljava/lang/StringBuilder;

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/coremobility/j/a;->d:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1c

    :goto_3
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/j/a;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/coremobility/j/a;->q:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1b

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/coremobility/j/a;->c:Ljava/lang/String;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/coremobility/j/a;->c:Ljava/lang/String;

    const-string v4, "md5-sess"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    move v3, v1

    :goto_4
    iget-object v4, p0, Lcom/coremobility/j/a;->m:Ljava/lang/String;

    if-eqz v4, :cond_d

    move v4, v1

    :goto_5
    invoke-static {v4}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v4, p0, Lcom/coremobility/j/a;->l:Ljava/lang/String;

    if-eqz v4, :cond_e

    move v4, v1

    :goto_6
    invoke-static {v4}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v4, p0, Lcom/coremobility/j/a;->j:Ljava/lang/String;

    if-eqz v4, :cond_f

    move v4, v1

    :goto_7
    invoke-static {v4}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v4, Lcom/coremobility/integration/g/b;

    invoke-direct {v4}, Lcom/coremobility/integration/g/b;-><init>()V

    iput-object v4, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    new-array v4, v9, [B

    iget-object v5, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    iget-object v6, p0, Lcom/coremobility/j/a;->m:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    iget-object v7, p0, Lcom/coremobility/j/a;->m:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/coremobility/integration/g/b;->a([BI)V

    iget-object v5, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    invoke-virtual {v5}, Lcom/coremobility/integration/g/b;->a()V

    iget-object v5, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    iget-object v6, p0, Lcom/coremobility/j/a;->l:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    iget-object v7, p0, Lcom/coremobility/j/a;->l:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/coremobility/integration/g/b;->a([BI)V

    iget-object v5, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    invoke-virtual {v5}, Lcom/coremobility/integration/g/b;->a()V

    iget-object v5, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    iget-object v6, p0, Lcom/coremobility/j/a;->j:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    iget-object v7, p0, Lcom/coremobility/j/a;->j:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/coremobility/integration/g/b;->a([BI)V

    iget-object v5, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    invoke-virtual {v5, v4}, Lcom/coremobility/integration/g/b;->a([B)I

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/coremobility/j/a;->h:Ljava/lang/String;

    if-eqz v3, :cond_10

    move v3, v1

    :goto_8
    invoke-static {v3}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v3, p0, Lcom/coremobility/j/a;->n:Ljava/lang/String;

    if-eqz v3, :cond_11

    move v3, v1

    :goto_9
    invoke-static {v3}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v3, Lcom/coremobility/integration/g/b;

    invoke-direct {v3}, Lcom/coremobility/integration/g/b;-><init>()V

    iput-object v3, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    iget-object v3, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    invoke-virtual {v3, v4, v9}, Lcom/coremobility/integration/g/b;->a([BI)V

    iget-object v3, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    invoke-virtual {v3}, Lcom/coremobility/integration/g/b;->a()V

    iget-object v3, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    iget-object v5, p0, Lcom/coremobility/j/a;->h:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    iget-object v6, p0, Lcom/coremobility/j/a;->h:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lcom/coremobility/integration/g/b;->a([BI)V

    iget-object v3, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    invoke-virtual {v3}, Lcom/coremobility/integration/g/b;->a()V

    iget-object v3, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    iget-object v5, p0, Lcom/coremobility/j/a;->n:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    iget-object v6, p0, Lcom/coremobility/j/a;->n:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lcom/coremobility/integration/g/b;->a([BI)V

    iget-object v3, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    invoke-virtual {v3, v4}, Lcom/coremobility/integration/g/b;->a([B)I

    :cond_4
    invoke-static {v4}, Lcom/coremobility/j/a;->a([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/coremobility/j/a;->o:Ljava/lang/String;

    :cond_5
    if-eqz p3, :cond_6

    if-eqz p4, :cond_6

    iget-object v3, p0, Lcom/coremobility/j/a;->g:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/coremobility/j/a;->e:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/coremobility/j/a;->g:Ljava/lang/String;

    invoke-virtual {v3, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/coremobility/j/a;->e:Ljava/lang/String;

    invoke-virtual {v3, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1e

    :cond_6
    move v3, v1

    :goto_a
    iput-object p3, p0, Lcom/coremobility/j/a;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/coremobility/j/a;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/coremobility/j/a;->k:Ljava/lang/String;

    if-eqz v4, :cond_1d

    iget-object v4, p0, Lcom/coremobility/j/a;->k:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1d

    iget v4, p0, Lcom/coremobility/j/a;->r:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/coremobility/j/a;->r:I

    iget-object v4, p0, Lcom/coremobility/j/a;->k:Ljava/lang/String;

    const-string v5, "response"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    :goto_b
    if-nez v0, :cond_7

    if-nez v3, :cond_7

    iget-object v0, p0, Lcom/coremobility/j/a;->k:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/j/a;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    :cond_7
    if-nez v4, :cond_12

    move v0, v1

    :goto_c
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/j/a;->g:Ljava/lang/String;

    if-eqz v0, :cond_13

    move v0, v1

    :goto_d
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/j/a;->e:Ljava/lang/String;

    if-eqz v0, :cond_14

    move v0, v1

    :goto_e
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/j/a;->o:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/coremobility/j/a;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v8, :cond_15

    move v0, v1

    :goto_f
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/j/a;->h:Ljava/lang/String;

    if-eqz v0, :cond_16

    move v0, v1

    :goto_10
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v0, Lcom/coremobility/integration/g/b;

    invoke-direct {v0}, Lcom/coremobility/integration/g/b;-><init>()V

    iput-object v0, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    new-array v3, v9, [B

    iget-object v0, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    iget-object v5, p0, Lcom/coremobility/j/a;->g:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    iget-object v6, p0, Lcom/coremobility/j/a;->g:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lcom/coremobility/integration/g/b;->a([BI)V

    iget-object v0, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    invoke-virtual {v0}, Lcom/coremobility/integration/g/b;->a()V

    iget-object v0, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    iget-object v5, p0, Lcom/coremobility/j/a;->e:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    iget-object v6, p0, Lcom/coremobility/j/a;->e:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lcom/coremobility/integration/g/b;->a([BI)V

    if-eqz v4, :cond_8

    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    invoke-virtual {v0}, Lcom/coremobility/integration/g/b;->a()V

    iget-object v0, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v8}, Lcom/coremobility/integration/g/b;->a([BI)V

    :cond_8
    iget-object v0, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    invoke-virtual {v0, v3}, Lcom/coremobility/integration/g/b;->a([B)I

    invoke-static {v3}, Lcom/coremobility/j/a;->a([B)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_17

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v8, :cond_17

    move v0, v1

    :goto_11
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v0, Lcom/coremobility/integration/g/b;

    invoke-direct {v0}, Lcom/coremobility/integration/g/b;-><init>()V

    iput-object v0, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    iget-object v0, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    iget-object v5, p0, Lcom/coremobility/j/a;->o:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5, v8}, Lcom/coremobility/integration/g/b;->a([BI)V

    iget-object v0, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    invoke-virtual {v0}, Lcom/coremobility/integration/g/b;->a()V

    iget-object v0, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    iget-object v5, p0, Lcom/coremobility/j/a;->h:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    iget-object v6, p0, Lcom/coremobility/j/a;->h:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lcom/coremobility/integration/g/b;->a([BI)V

    iget-object v0, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    invoke-virtual {v0}, Lcom/coremobility/integration/g/b;->a()V

    iget-object v0, p0, Lcom/coremobility/j/a;->k:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/coremobility/j/a;->r:I

    if-eqz v0, :cond_18

    move v0, v1

    :goto_12
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/j/a;->n:Ljava/lang/String;

    if-eqz v0, :cond_19

    move v0, v1

    :goto_13
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p0, Lcom/coremobility/j/a;->r:I

    invoke-static {v0}, Lcom/coremobility/g/l;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v5, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    array-length v6, v0

    invoke-virtual {v5, v0, v6}, Lcom/coremobility/integration/g/b;->a([BI)V

    iget-object v0, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    invoke-virtual {v0}, Lcom/coremobility/integration/g/b;->a()V

    iget-object v0, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    iget-object v5, p0, Lcom/coremobility/j/a;->n:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    iget-object v6, p0, Lcom/coremobility/j/a;->n:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lcom/coremobility/integration/g/b;->a([BI)V

    iget-object v0, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    invoke-virtual {v0}, Lcom/coremobility/integration/g/b;->a()V

    iget-object v0, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    iget-object v5, p0, Lcom/coremobility/j/a;->k:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    iget-object v6, p0, Lcom/coremobility/j/a;->k:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lcom/coremobility/integration/g/b;->a([BI)V

    iget-object v0, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    invoke-virtual {v0}, Lcom/coremobility/integration/g/b;->a()V

    :cond_9
    iget-object v0, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4, v8}, Lcom/coremobility/integration/g/b;->a([BI)V

    iget-object v0, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    invoke-virtual {v0, v3}, Lcom/coremobility/integration/g/b;->a([B)I

    invoke-static {v3}, Lcom/coremobility/j/a;->a([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/j/a;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/coremobility/j/a;->p:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/coremobility/j/a;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v8, :cond_1a

    move v0, v1

    :goto_14
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Digest"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coremobility/j/a;->d:Ljava/lang/StringBuilder;

    const-string v0, "username"

    iget-object v3, p0, Lcom/coremobility/j/a;->m:Ljava/lang/String;

    iget-object v4, p0, Lcom/coremobility/j/a;->d:Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/coremobility/j/a;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coremobility/j/a;->d:Ljava/lang/StringBuilder;

    const-string v4, "=\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coremobility/j/a;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coremobility/j/a;->d:Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "realm"

    iget-object v3, p0, Lcom/coremobility/j/a;->l:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/coremobility/j/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "nonce"

    iget-object v3, p0, Lcom/coremobility/j/a;->h:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/coremobility/j/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "uri"

    iget-object v3, p0, Lcom/coremobility/j/a;->e:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/coremobility/j/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "response"

    iget-object v3, p0, Lcom/coremobility/j/a;->p:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/coremobility/j/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/j/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/coremobility/j/a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    const-string v0, "algorithm"

    iget-object v3, p0, Lcom/coremobility/j/a;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/coremobility/j/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    iget-object v0, p0, Lcom/coremobility/j/a;->i:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/coremobility/j/a;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b

    const-string v0, "opaque"

    iget-object v3, p0, Lcom/coremobility/j/a;->i:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/coremobility/j/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    iget-object v0, p0, Lcom/coremobility/j/a;->k:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/j/a;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "cnonce"

    iget-object v3, p0, Lcom/coremobility/j/a;->n:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/coremobility/j/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "qop"

    iget-object v3, p0, Lcom/coremobility/j/a;->k:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/coremobility/j/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "nc"

    iget v3, p0, Lcom/coremobility/j/a;->r:I

    invoke-static {v3}, Lcom/coremobility/g/l;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/coremobility/j/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_c
    move v3, v2

    goto/16 :goto_4

    :cond_d
    move v4, v2

    goto/16 :goto_5

    :cond_e
    move v4, v2

    goto/16 :goto_6

    :cond_f
    move v4, v2

    goto/16 :goto_7

    :cond_10
    move v3, v2

    goto/16 :goto_8

    :cond_11
    move v3, v2

    goto/16 :goto_9

    :cond_12
    move v0, v2

    goto/16 :goto_c

    :cond_13
    move v0, v2

    goto/16 :goto_d

    :cond_14
    move v0, v2

    goto/16 :goto_e

    :cond_15
    move v0, v2

    goto/16 :goto_f

    :cond_16
    move v0, v2

    goto/16 :goto_10

    :cond_17
    move v0, v2

    goto/16 :goto_11

    :cond_18
    move v0, v2

    goto/16 :goto_12

    :cond_19
    move v0, v2

    goto/16 :goto_13

    :cond_1a
    move v0, v2

    goto/16 :goto_14

    :cond_1b
    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    goto/16 :goto_2

    :cond_1c
    move v1, v2

    goto/16 :goto_3

    :cond_1d
    move v4, v2

    goto/16 :goto_b

    :cond_1e
    move v3, v2

    goto/16 :goto_a

    :cond_1f
    move v0, v2

    goto/16 :goto_1
.end method

.method public final a()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/coremobility/j/a;->u:I

    if-ne v2, v0, :cond_1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/j/a;->d:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    const/16 v0, 0x2f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CM+HT%d \'stale\' irrelevant "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/coremobility/j/a;->s:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/coremobility/j/a;->t:Z

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final a(I)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/coremobility/j/a;->u:I

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iput v1, p0, Lcom/coremobility/j/a;->u:I

    invoke-static {}, Lcom/coremobility/integration/b/c;->a()Lcom/coremobility/integration/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/j/a;->a:Lcom/coremobility/integration/b/c;

    iput v2, p0, Lcom/coremobility/j/a;->q:I

    iput v2, p0, Lcom/coremobility/j/a;->r:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/coremobility/j/a;->s:I

    iput-boolean v2, p0, Lcom/coremobility/j/a;->t:Z

    invoke-direct {p0, p1}, Lcom/coremobility/j/a;->d(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x2

    iput v1, p0, Lcom/coremobility/j/a;->u:I

    :cond_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;I)Z
    .locals 9

    const/4 v8, 0x2

    const/4 v3, 0x0

    const/16 v7, 0x2f

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v0, 0x191

    if-eq p2, v0, :cond_0

    const/16 v0, 0x197

    if-eq p2, v0, :cond_0

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p0, Lcom/coremobility/j/a;->u:I

    if-nez v0, :cond_4

    move v0, v2

    :goto_1
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iput v2, p0, Lcom/coremobility/j/a;->u:I

    invoke-static {}, Lcom/coremobility/integration/b/c;->a()Lcom/coremobility/integration/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/j/a;->a:Lcom/coremobility/integration/b/c;

    iput v1, p0, Lcom/coremobility/j/a;->q:I

    iput v1, p0, Lcom/coremobility/j/a;->r:I

    iput p2, p0, Lcom/coremobility/j/a;->s:I

    iput-boolean v1, p0, Lcom/coremobility/j/a;->t:Z

    const-string v0, "Basic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput v2, p0, Lcom/coremobility/j/a;->q:I

    const/4 v0, 0x6

    :goto_2
    iput-object v3, p0, Lcom/coremobility/j/a;->l:Ljava/lang/String;

    iput-object v3, p0, Lcom/coremobility/j/a;->h:Ljava/lang/String;

    iput-object v3, p0, Lcom/coremobility/j/a;->k:Ljava/lang/String;

    iput-object v3, p0, Lcom/coremobility/j/a;->c:Ljava/lang/String;

    iput-object v3, p0, Lcom/coremobility/j/a;->f:Ljava/lang/String;

    move v3, v0

    :cond_1
    :goto_3
    if-lez v3, :cond_16

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v3, v0, :cond_16

    const-string v0, "$="

    invoke-static {p1, v0, v3}, Lcom/coremobility/j/r;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v3, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x22

    if-ne v0, v5, :cond_8

    const-string v0, "$\""

    add-int/lit8 v5, v3, 0x1

    invoke-static {p1, v0, v5}, Lcom/coremobility/j/r;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    const-string v5, ","

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    :goto_4
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v5, "realm"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    iput-object v0, p0, Lcom/coremobility/j/a;->l:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move v0, v1

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    const-string v0, "Digest"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput v8, p0, Lcom/coremobility/j/a;->q:I

    const/4 v0, 0x7

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CM+HT"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/coremobility/j/a;->s:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " unk auth-scheme"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v7, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_5
    if-nez v1, :cond_7

    iput v8, p0, Lcom/coremobility/j/a;->u:I

    :cond_7
    return v1

    :cond_8
    const-string v0, "$,"

    invoke-static {p1, v0, v3}, Lcom/coremobility/j/r;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v3, v5

    goto :goto_4

    :cond_a
    const-string v5, "uri"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    iput-object v0, p0, Lcom/coremobility/j/a;->e:Ljava/lang/String;

    goto/16 :goto_3

    :cond_b
    const-string v5, "nonce"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    iput-object v0, p0, Lcom/coremobility/j/a;->h:Ljava/lang/String;

    goto/16 :goto_3

    :cond_c
    const-string v5, "nc"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-static {v0}, Lcom/coremobility/g/l;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coremobility/j/a;->r:I

    goto/16 :goto_3

    :cond_d
    const-string v5, "algorithm"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    iput-object v0, p0, Lcom/coremobility/j/a;->c:Ljava/lang/String;

    goto/16 :goto_3

    :cond_e
    const-string v5, "qop"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    const-string v4, "auth"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "auth"

    iput-object v0, p0, Lcom/coremobility/j/a;->k:Ljava/lang/String;

    goto/16 :goto_3

    :cond_f
    const-string v5, "opaque"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    iput-object v0, p0, Lcom/coremobility/j/a;->i:Ljava/lang/String;

    goto/16 :goto_3

    :cond_10
    const-string v5, "response"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    iput-object v0, p0, Lcom/coremobility/j/a;->p:Ljava/lang/String;

    goto/16 :goto_3

    :cond_11
    const-string v5, "username"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    iput-object v0, p0, Lcom/coremobility/j/a;->m:Ljava/lang/String;

    goto/16 :goto_3

    :cond_12
    const-string v5, "stale"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const-string v4, "true"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    iput-boolean v2, p0, Lcom/coremobility/j/a;->t:Z

    goto/16 :goto_3

    :cond_13
    const-string v4, "false"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iput-boolean v1, p0, Lcom/coremobility/j/a;->t:Z

    goto/16 :goto_3

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CM+HT"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/coremobility/j/a;->s:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\'stale\' val unk"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v7, v0, v4}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_15
    const-string v5, "domain"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-object v0, p0, Lcom/coremobility/j/a;->f:Ljava/lang/String;

    goto/16 :goto_3

    :cond_16
    iget-object v0, p0, Lcom/coremobility/j/a;->l:Ljava/lang/String;

    if-nez v0, :cond_17

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CM+HT"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/coremobility/j/a;->s:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " no \'realm\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v7, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_17
    iget v0, p0, Lcom/coremobility/j/a;->q:I

    if-ne v0, v2, :cond_18

    move v1, v2

    goto/16 :goto_5

    :cond_18
    iget-object v0, p0, Lcom/coremobility/j/a;->h:Ljava/lang/String;

    if-nez v0, :cond_19

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CM+HT"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/coremobility/j/a;->s:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " no \'nonce\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v7, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_19
    iget-object v0, p0, Lcom/coremobility/j/a;->k:Ljava/lang/String;

    if-nez v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CM+HT"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/coremobility/j/a;->s:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "unk qop option(s)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v7, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1a
    iget-object v0, p0, Lcom/coremobility/j/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/coremobility/j/a;->c:Ljava/lang/String;

    const-string v3, "md5"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/coremobility/j/a;->c:Ljava/lang/String;

    const-string v3, "md5-sess"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CM+HT"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/coremobility/j/a;->s:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " algorithm"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/coremobility/j/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "unk"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v7, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1b
    iget-object v0, p0, Lcom/coremobility/j/a;->f:Ljava/lang/String;

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CM+HT"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/coremobility/j/a;->s:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ig \'domain\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1, v2}, Lcom/coremobility/g/l;->a(JZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/j/a;->n:Ljava/lang/String;

    move v1, v2

    goto/16 :goto_5
.end method

.method public final b(I)Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/coremobility/j/a;->u:I

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-direct {p0, p1}, Lcom/coremobility/j/a;->e(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
