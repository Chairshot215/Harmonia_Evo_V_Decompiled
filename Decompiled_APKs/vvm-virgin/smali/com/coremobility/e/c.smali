.class public abstract Lcom/coremobility/e/c;
.super Ljava/lang/Object;


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field protected g:Lcom/coremobility/integration/a/a;

.field protected h:Lcom/coremobility/integration/b/c;

.field protected i:[B


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/e/c;->g:Lcom/coremobility/integration/a/a;

    invoke-static {}, Lcom/coremobility/integration/b/c;->a()Lcom/coremobility/integration/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/e/c;->h:Lcom/coremobility/integration/b/c;

    iput v1, p0, Lcom/coremobility/e/c;->b:I

    iput v1, p0, Lcom/coremobility/e/c;->c:I

    iput v1, p0, Lcom/coremobility/e/c;->d:I

    iput-object v2, p0, Lcom/coremobility/e/c;->e:Ljava/lang/String;

    iput-object v2, p0, Lcom/coremobility/e/c;->f:Ljava/lang/String;

    iput-object v2, p0, Lcom/coremobility/e/c;->i:[B

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v1, 0x1

    const/4 v0, -0x1

    if-nez p0, :cond_1

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_0

    if-le v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final a(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v2, p3}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v2, p4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v2, p5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    new-instance v3, Lcom/coremobility/integration/m;

    invoke-direct {v3}, Lcom/coremobility/integration/m;-><init>()V

    iget-object v4, p0, Lcom/coremobility/e/c;->h:Lcom/coremobility/integration/b/c;

    invoke-virtual {p0}, Lcom/coremobility/e/c;->c()S

    move-result v5

    array-length v6, v2

    invoke-virtual {v4, v5, v3, v2, v6}, Lcom/coremobility/integration/b/c;->a(ILcom/coremobility/integration/m;[BI)Z

    move-result v3

    invoke-static {v3}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v3, p0, Lcom/coremobility/e/c;->i:[B

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/coremobility/e/c;->h:Lcom/coremobility/integration/b/c;

    invoke-virtual {p0}, Lcom/coremobility/e/c;->c()S

    move-result v3

    invoke-virtual {v2, v3}, Lcom/coremobility/integration/b/c;->b(I)I

    move-result v2

    if-le v2, v0, :cond_0

    :goto_1
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    :goto_2
    return-void

    :catch_0
    move-exception v2

    const/16 v4, 0x21

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CM+MMN Create Del Notice Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v4, v2, v5}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/coremobility/e/c;->h:Lcom/coremobility/integration/b/c;

    invoke-virtual {p0}, Lcom/coremobility/e/c;->c()S

    move-result v4

    invoke-virtual {v3, v4}, Lcom/coremobility/integration/b/c;->b(I)I

    move-result v3

    if-ne v3, v0, :cond_2

    :goto_3
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iput-object v2, p0, Lcom/coremobility/e/c;->i:[B

    iput p1, p0, Lcom/coremobility/e/c;->b:I

    iput p2, p0, Lcom/coremobility/e/c;->c:I

    iput p3, p0, Lcom/coremobility/e/c;->d:I

    iput-object p4, p0, Lcom/coremobility/e/c;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/coremobility/e/c;->f:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_3
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract b()I
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 10

    const/16 v9, 0x21

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/coremobility/e/c;->g:Lcom/coremobility/integration/a/a;

    invoke-virtual {p0}, Lcom/coremobility/e/c;->b()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/coremobility/e/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CM+MMN High Notification "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_0

    const-string v0, "null"

    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v9, v0, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/coremobility/e/c;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v0, p0, Lcom/coremobility/e/c;->i:[B

    if-nez v0, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/coremobility/e/c;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/e/c;->h:Lcom/coremobility/integration/b/c;

    invoke-virtual {p0}, Lcom/coremobility/e/c;->c()S

    move-result v3

    invoke-virtual {v0, v3}, Lcom/coremobility/integration/b/c;->b(I)I

    move-result v4

    move v3, v1

    move v0, v2

    :goto_1
    if-ge v3, v4, :cond_5

    if-nez v0, :cond_5

    new-instance v5, Lcom/coremobility/integration/m;

    invoke-direct {v5, v2}, Lcom/coremobility/integration/m;-><init>(I)V

    iget-object v6, p0, Lcom/coremobility/e/c;->h:Lcom/coremobility/integration/b/c;

    invoke-virtual {p0}, Lcom/coremobility/e/c;->c()S

    move-result v7

    int-to-short v8, v3

    invoke-virtual {v6, v7, v8, v5}, Lcom/coremobility/integration/b/c;->a(IILcom/coremobility/integration/m;)Z

    move-result v6

    iget v5, v5, Lcom/coremobility/integration/m;->a:I

    int-to-short v5, v5

    invoke-static {v6}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v6, Lcom/coremobility/integration/n;

    invoke-direct {v6, v2}, Lcom/coremobility/integration/n;-><init>(B)V

    iget-object v7, p0, Lcom/coremobility/e/c;->h:Lcom/coremobility/integration/b/c;

    invoke-virtual {p0}, Lcom/coremobility/e/c;->c()S

    move-result v8

    invoke-virtual {v7, v8, v5, v6}, Lcom/coremobility/integration/b/c;->a(IILcom/coremobility/integration/n;)Z

    move-result v5

    invoke-static {v5}, Lcom/coremobility/integration/c/a;->a(Z)V

    :try_start_0
    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v6, v6, Lcom/coremobility/integration/n;->b:[B

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_4

    move v0, v1

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v5

    const-string v5, "CM+MMN Error reading notification from database."

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v9, v5, v6}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    move v1, v0

    goto :goto_0
.end method

.method public abstract c()S
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/e/c;->i:[B

    return-void
.end method

.method public final e()V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/coremobility/e/c;->i:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iput-object v2, p0, Lcom/coremobility/e/c;->i:[B

    iput v1, p0, Lcom/coremobility/e/c;->b:I

    iput v1, p0, Lcom/coremobility/e/c;->c:I

    iput v1, p0, Lcom/coremobility/e/c;->d:I

    iput-object v2, p0, Lcom/coremobility/e/c;->e:Ljava/lang/String;

    iput-object v2, p0, Lcom/coremobility/e/c;->f:Ljava/lang/String;

    new-instance v0, Lcom/coremobility/integration/m;

    invoke-direct {v0, v1}, Lcom/coremobility/integration/m;-><init>(I)V

    iget-object v2, p0, Lcom/coremobility/e/c;->h:Lcom/coremobility/integration/b/c;

    invoke-virtual {p0}, Lcom/coremobility/e/c;->c()S

    move-result v3

    invoke-virtual {v2, v3, v1, v0}, Lcom/coremobility/integration/b/c;->a(IILcom/coremobility/integration/m;)Z

    move-result v2

    iget v0, v0, Lcom/coremobility/integration/m;->a:I

    int-to-short v0, v0

    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    const/16 v2, 0x21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CM+MMN DeleteActive wDbId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/coremobility/e/c;->h:Lcom/coremobility/integration/b/c;

    invoke-virtual {p0}, Lcom/coremobility/e/c;->c()S

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/coremobility/integration/b/c;->a(II)Z

    move-result v0

    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-virtual {p0}, Lcom/coremobility/e/c;->h()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final f()V
    .locals 8

    const/16 v7, 0x21

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/coremobility/e/c;->i:[B

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/e/c;->g:Lcom/coremobility/integration/a/a;

    invoke-virtual {p0}, Lcom/coremobility/e/c;->b()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CM+MMN High Notification "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v3, :cond_2

    const-string v0, "null"

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v7, v0, v4}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/e/c;->e:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/coremobility/e/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coremobility/e/c;->g:Lcom/coremobility/integration/a/a;

    invoke-virtual {p0}, Lcom/coremobility/e/c;->b()I

    move-result v3

    iget-object v4, p0, Lcom/coremobility/e/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v3, v2, v4}, Lcom/coremobility/integration/a/a;->b(IILjava/lang/String;)Z

    iget-object v0, p0, Lcom/coremobility/e/c;->h:Lcom/coremobility/integration/b/c;

    invoke-virtual {p0}, Lcom/coremobility/e/c;->c()S

    move-result v3

    invoke-virtual {v0, v3}, Lcom/coremobility/integration/b/c;->b(I)I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_4

    new-instance v3, Lcom/coremobility/integration/m;

    invoke-direct {v3, v2}, Lcom/coremobility/integration/m;-><init>(I)V

    iget-object v4, p0, Lcom/coremobility/e/c;->h:Lcom/coremobility/integration/b/c;

    invoke-virtual {p0}, Lcom/coremobility/e/c;->c()S

    move-result v5

    int-to-short v6, v1

    invoke-virtual {v4, v5, v6, v3}, Lcom/coremobility/integration/b/c;->a(IILcom/coremobility/integration/m;)Z

    move-result v4

    iget v3, v3, Lcom/coremobility/integration/m;->a:I

    int-to-short v3, v3

    invoke-static {v4}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v4, Lcom/coremobility/integration/n;

    invoke-direct {v4, v2}, Lcom/coremobility/integration/n;-><init>(B)V

    iget-object v5, p0, Lcom/coremobility/e/c;->h:Lcom/coremobility/integration/b/c;

    invoke-virtual {p0}, Lcom/coremobility/e/c;->c()S

    move-result v6

    invoke-virtual {v5, v6, v3, v4}, Lcom/coremobility/integration/b/c;->a(IILcom/coremobility/integration/n;)Z

    move-result v5

    invoke-static {v5}, Lcom/coremobility/integration/c/a;->a(Z)V

    :try_start_0
    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v4, v4, Lcom/coremobility/integration/n;->b:[B

    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/coremobility/e/c;->e:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/coremobility/e/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/coremobility/e/c;->h:Lcom/coremobility/integration/b/c;

    invoke-virtual {p0}, Lcom/coremobility/e/c;->c()S

    move-result v5

    invoke-virtual {v4, v5, v3}, Lcom/coremobility/integration/b/c;->a(II)Z

    move-result v3

    invoke-static {v3}, Lcom/coremobility/integration/c/a;->a(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    move v0, v2

    goto/16 :goto_0

    :cond_2
    move-object v0, v3

    goto/16 :goto_1

    :catch_0
    move-exception v3

    const-string v3, "CM+MMN Error reading notification from database."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v7, v3, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/coremobility/e/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    :cond_4
    return-void
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Lcom/coremobility/e/c;->i:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final h()V
    .locals 6

    const/16 v5, 0x21

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/coremobility/e/c;->i:[B

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/e/c;->h:Lcom/coremobility/integration/b/c;

    invoke-virtual {p0}, Lcom/coremobility/e/c;->c()S

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coremobility/integration/b/c;->b(I)I

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/coremobility/integration/m;

    invoke-direct {v0, v1}, Lcom/coremobility/integration/m;-><init>(I)V

    iget-object v2, p0, Lcom/coremobility/e/c;->h:Lcom/coremobility/integration/b/c;

    invoke-virtual {p0}, Lcom/coremobility/e/c;->c()S

    move-result v3

    invoke-virtual {v2, v3, v1, v0}, Lcom/coremobility/integration/b/c;->a(IILcom/coremobility/integration/m;)Z

    move-result v2

    iget v0, v0, Lcom/coremobility/integration/m;->a:I

    int-to-short v0, v0

    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v2, Lcom/coremobility/integration/n;

    invoke-direct {v2, v1}, Lcom/coremobility/integration/n;-><init>(B)V

    iget-object v3, p0, Lcom/coremobility/e/c;->h:Lcom/coremobility/integration/b/c;

    invoke-virtual {p0}, Lcom/coremobility/e/c;->c()S

    move-result v4

    invoke-virtual {v3, v4, v0, v2}, Lcom/coremobility/integration/b/c;->a(IILcom/coremobility/integration/n;)Z

    move-result v3

    invoke-static {v3}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v2, v2, Lcom/coremobility/integration/n;->b:[B

    iput-object v2, p0, Lcom/coremobility/e/c;->i:[B

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/coremobility/e/c;->i:[B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/coremobility/e/c;->b:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/coremobility/e/c;->c:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/coremobility/e/c;->d:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/coremobility/e/c;->e:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/coremobility/e/c;->f:Ljava/lang/String;

    const/16 v2, 0x21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CM+MMN Oldest wDbId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/coremobility/e/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, "CM+MMN Error reading notification from database."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1
.end method
