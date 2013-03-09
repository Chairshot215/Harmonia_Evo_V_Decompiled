.class public final Lcom/coremobility/j/g;
.super Ljava/lang/Thread;


# instance fields
.field private A:Ljava/lang/String;

.field private B:I

.field private C:I

.field private D:I

.field private E:Lcom/coremobility/j/c;

.field private F:Z

.field private a:Z

.field private b:Z

.field private c:I

.field private d:Lcom/coremobility/integration/e/d;

.field private e:Z

.field private f:Z

.field private g:Ljava/io/OutputStream;

.field private h:Ljava/util/Hashtable;

.field private i:I

.field private j:Z

.field private k:I

.field private l:[B

.field private m:I

.field private n:I

.field private o:Z

.field private p:Ljava/io/InputStream;

.field private q:Ljava/util/Hashtable;

.field private r:Z

.field private s:Z

.field private t:Lcom/coremobility/j/d;

.field private u:I

.field private v:I

.field private w:[B

.field private x:I

.field private y:I

.field private z:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IILcom/coremobility/j/c;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v0, "CM_HttpThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/coremobility/j/g;->a:Z

    iput-boolean v1, p0, Lcom/coremobility/j/g;->b:Z

    iput-object v2, p0, Lcom/coremobility/j/g;->d:Lcom/coremobility/integration/e/d;

    iput-boolean v1, p0, Lcom/coremobility/j/g;->e:Z

    iput-boolean v1, p0, Lcom/coremobility/j/g;->f:Z

    iput-object v2, p0, Lcom/coremobility/j/g;->g:Ljava/io/OutputStream;

    iput-object v2, p0, Lcom/coremobility/j/g;->h:Ljava/util/Hashtable;

    iput v1, p0, Lcom/coremobility/j/g;->i:I

    iput-boolean v1, p0, Lcom/coremobility/j/g;->j:Z

    iput v1, p0, Lcom/coremobility/j/g;->k:I

    iput-object v2, p0, Lcom/coremobility/j/g;->l:[B

    iput v1, p0, Lcom/coremobility/j/g;->m:I

    iput v1, p0, Lcom/coremobility/j/g;->n:I

    iput-boolean v1, p0, Lcom/coremobility/j/g;->o:Z

    iput-object v2, p0, Lcom/coremobility/j/g;->p:Ljava/io/InputStream;

    iput-object v2, p0, Lcom/coremobility/j/g;->q:Ljava/util/Hashtable;

    iput-boolean v1, p0, Lcom/coremobility/j/g;->r:Z

    iput-boolean v1, p0, Lcom/coremobility/j/g;->s:Z

    iput-object v2, p0, Lcom/coremobility/j/g;->t:Lcom/coremobility/j/d;

    iput v1, p0, Lcom/coremobility/j/g;->u:I

    iput v1, p0, Lcom/coremobility/j/g;->v:I

    iput-object v2, p0, Lcom/coremobility/j/g;->w:[B

    iput v1, p0, Lcom/coremobility/j/g;->x:I

    iput v1, p0, Lcom/coremobility/j/g;->y:I

    iput-boolean v1, p0, Lcom/coremobility/j/g;->z:Z

    iput-object v2, p0, Lcom/coremobility/j/g;->A:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/coremobility/j/g;->F:Z

    iput-object p1, p0, Lcom/coremobility/j/g;->A:Ljava/lang/String;

    iput p2, p0, Lcom/coremobility/j/g;->B:I

    const v0, 0xea60

    iput v0, p0, Lcom/coremobility/j/g;->C:I

    iput p3, p0, Lcom/coremobility/j/g;->D:I

    iput-object p4, p0, Lcom/coremobility/j/g;->E:Lcom/coremobility/j/c;

    iput-boolean v1, p0, Lcom/coremobility/j/g;->F:Z

    new-instance v0, Lcom/coremobility/integration/e/d;

    invoke-direct {v0}, Lcom/coremobility/integration/e/d;-><init>()V

    iput-object v0, p0, Lcom/coremobility/j/g;->d:Lcom/coremobility/integration/e/d;

    iget-object v0, p0, Lcom/coremobility/j/g;->d:Lcom/coremobility/integration/e/d;

    invoke-virtual {v0}, Lcom/coremobility/integration/e/d;->a()V

    return-void
.end method

.method private g()V
    .locals 10

    const/4 v9, 0x1

    const/16 v2, 0x2e

    const/16 v8, 0x2c

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/coremobility/j/g;->d:Lcom/coremobility/integration/e/d;

    if-nez v0, :cond_0

    const-string v0, "HttpThead, conn released"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget v0, p0, Lcom/coremobility/j/g;->c:I

    if-ge v0, v8, :cond_1

    iget-object v0, p0, Lcom/coremobility/j/g;->d:Lcom/coremobility/integration/e/d;

    invoke-virtual {v0}, Lcom/coremobility/integration/e/d;->d()I

    move-result v0

    iput v0, p0, Lcom/coremobility/j/g;->c:I

    iget v0, p0, Lcom/coremobility/j/g;->c:I

    if-gez v0, :cond_1

    const/16 v0, 0x2c

    iput v0, p0, Lcom/coremobility/j/g;->c:I

    :cond_1
    const/16 v0, 0x2e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Http response, responseCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/coremobility/j/g;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/coremobility/j/d;

    iget v1, p0, Lcom/coremobility/j/g;->c:I

    iget-object v2, p0, Lcom/coremobility/j/g;->d:Lcom/coremobility/integration/e/d;

    invoke-virtual {v2}, Lcom/coremobility/integration/e/d;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/coremobility/j/d;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/coremobility/j/g;->t:Lcom/coremobility/j/d;

    iget-object v0, p0, Lcom/coremobility/j/g;->d:Lcom/coremobility/integration/e/d;

    invoke-virtual {v0}, Lcom/coremobility/integration/e/d;->j()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v5

    move v2, v3

    :goto_1
    array-length v0, v4

    if-ge v2, v0, :cond_3

    aget-object v0, v4, v2

    check-cast v0, Ljava/lang/String;

    aget-object v1, v5, v2

    check-cast v1, Ljava/util/List;

    invoke-static {v0}, Lcom/coremobility/j/r;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/coremobility/j/g;->t:Lcom/coremobility/j/d;

    iget-object v6, v6, Lcom/coremobility/j/d;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    const/16 v0, 0x2e

    const-string v1, "Http response Headers invalid key "

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v6}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iput v8, p0, Lcom/coremobility/j/g;->c:I

    iput v3, p0, Lcom/coremobility/j/g;->n:I

    iput v3, p0, Lcom/coremobility/j/g;->y:I

    iput-boolean v9, p0, Lcom/coremobility/j/g;->f:Z

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0x2e

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Http response Headers "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x2c

    iput v0, p0, Lcom/coremobility/j/g;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/j/g;->n:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/j/g;->y:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->f:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public final a([BII)I
    .locals 6

    const/16 v5, 0x2e

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/coremobility/j/g;->d:Lcom/coremobility/integration/e/d;

    if-nez v3, :cond_0

    const-string v1, "HttpThead, conn released"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    iget-object v3, p0, Lcom/coremobility/j/g;->g:Ljava/io/OutputStream;

    if-nez v3, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/coremobility/j/g;->d:Lcom/coremobility/integration/e/d;

    invoke-virtual {v3}, Lcom/coremobility/integration/e/d;->g()Ljava/io/OutputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/coremobility/j/g;->g:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    iget-object v3, p0, Lcom/coremobility/j/g;->g:Ljava/io/OutputStream;

    monitor-enter v3

    :try_start_1
    iget v0, p0, Lcom/coremobility/j/g;->k:I

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/coremobility/j/g;->l:[B

    if-ne v0, p1, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p0, Lcom/coremobility/j/g;->m:I

    iget v4, p0, Lcom/coremobility/j/g;->k:I

    add-int/2addr v4, p2

    if-ne v0, v4, :cond_2

    move v2, v1

    :cond_2
    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p0, Lcom/coremobility/j/g;->k:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/coremobility/j/g;->k:I

    :goto_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ex in PostData "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    :try_start_2
    iget v0, p0, Lcom/coremobility/j/g;->n:I

    if-nez v0, :cond_5

    iput-object p1, p0, Lcom/coremobility/j/g;->l:[B

    iput p2, p0, Lcom/coremobility/j/g;->m:I

    iput p3, p0, Lcom/coremobility/j/g;->n:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move v0, v2

    goto :goto_2

    :catch_1
    move-exception v0

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method public final a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/coremobility/j/g;->F:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Ljava/util/Hashtable;)V
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/coremobility/j/g;->B:I

    if-nez v1, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/coremobility/j/g;->q:Ljava/util/Hashtable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->r:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final a(Ljava/util/Hashtable;I)V
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/coremobility/j/g;->B:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/coremobility/j/g;->B:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/coremobility/j/g;->h:Ljava/util/Hashtable;

    iput p2, p0, Lcom/coremobility/j/g;->i:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->j:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final b([BII)I
    .locals 6

    const/16 v5, 0x2e

    const/4 v1, 0x1

    const/4 v0, -0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/coremobility/j/g;->d:Lcom/coremobility/integration/e/d;

    if-nez v3, :cond_0

    const-string v1, "HttpThead, conn released"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    iget-object v3, p0, Lcom/coremobility/j/g;->p:Ljava/io/InputStream;

    if-nez v3, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/coremobility/j/g;->d:Lcom/coremobility/integration/e/d;

    invoke-virtual {v3}, Lcom/coremobility/integration/e/d;->f()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/coremobility/j/g;->p:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    iget-object v3, p0, Lcom/coremobility/j/g;->p:Ljava/io/InputStream;

    monitor-enter v3

    :try_start_1
    iget v4, p0, Lcom/coremobility/j/g;->u:I

    if-lez v4, :cond_4

    iget-object v0, p0, Lcom/coremobility/j/g;->w:[B

    if-ne v0, p1, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p0, Lcom/coremobility/j/g;->x:I

    iget v4, p0, Lcom/coremobility/j/g;->u:I

    add-int/2addr v4, p2

    if-ne v0, v4, :cond_2

    move v2, v1

    :cond_2
    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p0, Lcom/coremobility/j/g;->u:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/coremobility/j/g;->u:I

    :goto_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ex in GetData "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    :try_start_2
    iget v1, p0, Lcom/coremobility/j/g;->v:I

    if-ne v1, v0, :cond_5

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/j/g;->u:I

    const/4 v0, -0x2

    goto :goto_2

    :cond_5
    iget v0, p0, Lcom/coremobility/j/g;->y:I

    if-nez v0, :cond_6

    iput-object p1, p0, Lcom/coremobility/j/g;->w:[B

    iput p2, p0, Lcom/coremobility/j/g;->x:I

    iput p3, p0, Lcom/coremobility/j/g;->y:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move v0, v2

    goto :goto_2

    :catch_1
    move-exception v0

    :cond_6
    move v0, v2

    goto :goto_2
.end method

.method public final b()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->b:Z

    const/16 v0, 0x2e

    const-string v1, "Suspended"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/util/Hashtable;)V
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/coremobility/j/g;->B:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/coremobility/j/g;->q:Ljava/util/Hashtable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->r:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final c()V
    .locals 3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/coremobility/j/g;->b:Z

    const/16 v0, 0x2e

    const-string v1, "Resumed"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/coremobility/j/g;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->s:Z

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/coremobility/j/g;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final e()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/coremobility/j/g;->o:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final f()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/coremobility/j/g;->z:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final run()V
    .locals 10

    const/4 v9, 0x0

    const/16 v7, 0x1e

    const/16 v8, 0x2e

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/coremobility/j/g;->c:I

    const/16 v0, 0x2e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connect to server["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/coremobility/j/g;->A:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] openMode["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/coremobility/j/g;->B:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] from thread..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/j/g;->d:Lcom/coremobility/integration/e/d;

    iget-object v3, p0, Lcom/coremobility/j/g;->A:Ljava/lang/String;

    iget v4, p0, Lcom/coremobility/j/g;->B:I

    iget v5, p0, Lcom/coremobility/j/g;->C:I

    iget v6, p0, Lcom/coremobility/j/g;->D:I

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/coremobility/integration/e/d;->a(Ljava/lang/String;III)V

    const/16 v0, 0x2e

    const-string v3, "Connection to server made"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/coremobility/j/g;->E:Lcom/coremobility/j/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/j/g;->E:Lcom/coremobility/j/c;

    iget v3, p0, Lcom/coremobility/j/g;->c:I

    invoke-interface {v0, v3}, Lcom/coremobility/j/c;->d(I)V

    :cond_0
    :goto_1
    iget-boolean v0, p0, Lcom/coremobility/j/g;->F:Z

    if-nez v0, :cond_10

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->d()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremobility/j/g;->a:Z

    iget-boolean v0, p0, Lcom/coremobility/j/g;->j:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/coremobility/j/g;->b:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/coremobility/integration/app/CM_Service;->a:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremobility/j/g;->j:Z

    iget-object v3, p0, Lcom/coremobility/j/g;->h:Ljava/util/Hashtable;

    iget v4, p0, Lcom/coremobility/j/g;->i:I

    iget-object v0, p0, Lcom/coremobility/j/g;->d:Lcom/coremobility/integration/e/d;

    if-nez v0, :cond_16

    const/16 v0, 0x2e

    const-string v3, "HttpThead, conn released"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_2
    iget-boolean v0, p0, Lcom/coremobility/j/g;->r:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/coremobility/j/g;->b:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/coremobility/integration/app/CM_Service;->a:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremobility/j/g;->r:Z

    iget-object v3, p0, Lcom/coremobility/j/g;->q:Ljava/util/Hashtable;

    iget-object v0, p0, Lcom/coremobility/j/g;->d:Lcom/coremobility/integration/e/d;

    if-nez v0, :cond_1a

    const/16 v0, 0x2e

    const-string v3, "HttpThead, conn released"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_3
    iget-boolean v0, p0, Lcom/coremobility/j/g;->s:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/coremobility/j/g;->b:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/coremobility/integration/app/CM_Service;->a:Z

    if-nez v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremobility/j/g;->s:Z

    invoke-direct {p0}, Lcom/coremobility/j/g;->g()V

    :cond_3
    iget-object v0, p0, Lcom/coremobility/j/g;->g:Ljava/io/OutputStream;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/coremobility/j/g;->n:I

    if-lez v0, :cond_4

    iget-boolean v0, p0, Lcom/coremobility/j/g;->b:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/coremobility/integration/app/CM_Service;->a:Z

    if-nez v0, :cond_4

    iget-object v3, p0, Lcom/coremobility/j/g;->g:Ljava/io/OutputStream;

    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v0, p0, Lcom/coremobility/j/g;->l:[B

    if-eqz v0, :cond_1f

    move v0, v1

    :goto_4
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p0, Lcom/coremobility/j/g;->n:I

    if-lez v0, :cond_20

    move v0, v1

    :goto_5
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v0, p0, Lcom/coremobility/j/g;->g:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/coremobility/j/g;->l:[B

    iget v5, p0, Lcom/coremobility/j/g;->m:I

    iget v6, p0, Lcom/coremobility/j/g;->n:I

    invoke-virtual {v0, v4, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, p0, Lcom/coremobility/j/g;->g:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    iget v0, p0, Lcom/coremobility/j/g;->m:I

    iget v4, p0, Lcom/coremobility/j/g;->n:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/coremobility/j/g;->m:I

    iget v0, p0, Lcom/coremobility/j/g;->n:I

    iput v0, p0, Lcom/coremobility/j/g;->k:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/j/g;->n:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->o:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c

    :goto_6
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_4
    :try_start_5
    iget-object v0, p0, Lcom/coremobility/j/g;->p:Ljava/io/InputStream;

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/coremobility/j/g;->y:I

    if-lez v0, :cond_6

    iget-boolean v0, p0, Lcom/coremobility/j/g;->b:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/coremobility/integration/app/CM_Service;->a:Z

    if-nez v0, :cond_6

    iget-object v3, p0, Lcom/coremobility/j/g;->p:Ljava/io/InputStream;

    monitor-enter v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    iget-object v0, p0, Lcom/coremobility/j/g;->w:[B

    if-eqz v0, :cond_21

    move v0, v1

    :goto_7
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p0, Lcom/coremobility/j/g;->y:I

    if-lez v0, :cond_22

    move v0, v1

    :goto_8
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    iget-object v0, p0, Lcom/coremobility/j/g;->p:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/coremobility/j/g;->w:[B

    iget v5, p0, Lcom/coremobility/j/g;->x:I

    iget v6, p0, Lcom/coremobility/j/g;->y:I

    invoke-virtual {v0, v4, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    iput v0, p0, Lcom/coremobility/j/g;->v:I

    if-lez v0, :cond_23

    iget v4, p0, Lcom/coremobility/j/g;->x:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/coremobility/j/g;->x:I

    iget v4, p0, Lcom/coremobility/j/g;->y:I

    sub-int/2addr v4, v0

    iput v4, p0, Lcom/coremobility/j/g;->y:I

    iget v4, p0, Lcom/coremobility/j/g;->u:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/coremobility/j/g;->u:I

    iget v0, p0, Lcom/coremobility/j/g;->y:I

    if-nez v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->z:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_e
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_f
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_11

    :cond_5
    :goto_9
    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_6
    :try_start_9
    iget-boolean v0, p0, Lcom/coremobility/j/g;->e:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/coremobility/j/g;->b:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/coremobility/j/g;->f:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/coremobility/integration/app/CM_Service;->a:Z

    if-nez v0, :cond_7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremobility/j/g;->e:Z

    iget-boolean v0, p0, Lcom/coremobility/j/g;->F:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/coremobility/j/g;->E:Lcom/coremobility/j/c;

    iget v3, p0, Lcom/coremobility/j/g;->c:I

    invoke-interface {v0, v3}, Lcom/coremobility/j/c;->e(I)V

    :cond_7
    iget-object v0, p0, Lcom/coremobility/j/g;->t:Lcom/coremobility/j/d;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/coremobility/j/g;->b:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/coremobility/j/g;->f:Z

    if-nez v0, :cond_9

    sget-boolean v0, Lcom/coremobility/integration/app/CM_Service;->a:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/coremobility/j/g;->F:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/coremobility/j/g;->E:Lcom/coremobility/j/c;

    iget-object v3, p0, Lcom/coremobility/j/g;->t:Lcom/coremobility/j/d;

    invoke-interface {v0, v3}, Lcom/coremobility/j/c;->a(Lcom/coremobility/j/d;)V

    :cond_8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/j/g;->t:Lcom/coremobility/j/d;

    :cond_9
    iget-boolean v0, p0, Lcom/coremobility/j/g;->o:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/coremobility/j/g;->n:I

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/coremobility/j/g;->b:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/coremobility/j/g;->f:Z

    if-nez v0, :cond_a

    sget-boolean v0, Lcom/coremobility/integration/app/CM_Service;->a:Z

    if-nez v0, :cond_a

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremobility/j/g;->o:Z

    iget-boolean v0, p0, Lcom/coremobility/j/g;->F:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/coremobility/j/g;->E:Lcom/coremobility/j/c;

    invoke-interface {v0}, Lcom/coremobility/j/c;->b()V

    :cond_a
    iget-boolean v0, p0, Lcom/coremobility/j/g;->z:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/coremobility/j/g;->y:I

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/coremobility/j/g;->b:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/coremobility/j/g;->f:Z

    if-nez v0, :cond_b

    sget-boolean v0, Lcom/coremobility/integration/app/CM_Service;->a:Z

    if-nez v0, :cond_b

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremobility/j/g;->z:Z

    iget-boolean v0, p0, Lcom/coremobility/j/g;->F:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/coremobility/j/g;->E:Lcom/coremobility/j/c;

    invoke-interface {v0}, Lcom/coremobility/j/c;->a()V

    :cond_b
    iget-boolean v0, p0, Lcom/coremobility/j/g;->f:Z

    if-eqz v0, :cond_c

    sget-boolean v0, Lcom/coremobility/integration/app/CM_Service;->a:Z

    if-nez v0, :cond_c

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremobility/j/g;->f:Z

    iget-boolean v0, p0, Lcom/coremobility/j/g;->F:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/coremobility/j/g;->E:Lcom/coremobility/j/c;

    iget v3, p0, Lcom/coremobility/j/g;->c:I

    invoke-interface {v0, v3}, Lcom/coremobility/j/c;->c(I)V

    :cond_c
    sget-boolean v0, Lcom/coremobility/integration/app/CM_Service;->a:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/coremobility/j/g;->a:Z

    if-nez v0, :cond_d

    iget v0, p0, Lcom/coremobility/j/g;->y:I

    if-lez v0, :cond_e

    :cond_d
    iget-boolean v0, p0, Lcom/coremobility/j/g;->b:Z

    if-eqz v0, :cond_0

    :cond_e
    monitor-enter p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :try_start_a
    iget-boolean v0, p0, Lcom/coremobility/j/g;->F:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-nez v0, :cond_f

    :try_start_b
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_12

    :cond_f
    :goto_a
    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    :try_start_d
    monitor-exit p0

    throw v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "Exception in HttpThread "

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v8, v0, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    iget-object v0, p0, Lcom/coremobility/j/g;->g:Ljava/io/OutputStream;

    if-eqz v0, :cond_11

    :try_start_e
    iget-object v0, p0, Lcom/coremobility/j/g;->g:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_13

    :goto_b
    iput-object v9, p0, Lcom/coremobility/j/g;->g:Ljava/io/OutputStream;

    :cond_11
    iget-object v0, p0, Lcom/coremobility/j/g;->p:Ljava/io/InputStream;

    if-eqz v0, :cond_12

    :try_start_f
    iget-object v0, p0, Lcom/coremobility/j/g;->p:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_14

    :goto_c
    iput-object v9, p0, Lcom/coremobility/j/g;->p:Ljava/io/InputStream;

    :cond_12
    iget-object v0, p0, Lcom/coremobility/j/g;->d:Lcom/coremobility/integration/e/d;

    if-eqz v0, :cond_13

    :try_start_10
    iget-object v0, p0, Lcom/coremobility/j/g;->d:Lcom/coremobility/integration/e/d;

    invoke-virtual {v0}, Lcom/coremobility/integration/e/d;->c()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_15

    :cond_13
    :goto_d
    iget-object v0, p0, Lcom/coremobility/j/g;->E:Lcom/coremobility/j/c;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/coremobility/j/g;->E:Lcom/coremobility/j/c;

    invoke-interface {v0}, Lcom/coremobility/j/c;->c()V

    iput-object v9, p0, Lcom/coremobility/j/g;->E:Lcom/coremobility/j/c;

    :cond_14
    iget-object v0, p0, Lcom/coremobility/j/g;->d:Lcom/coremobility/integration/e/d;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/coremobility/j/g;->d:Lcom/coremobility/integration/e/d;

    invoke-virtual {v0}, Lcom/coremobility/integration/e/d;->b()V

    iput-object v9, p0, Lcom/coremobility/j/g;->d:Lcom/coremobility/integration/e/d;

    :cond_15
    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/InterruptedIOException;->getMessage()Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connection timed out["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/coremobility/j/g;->A:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] Mode["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/coremobility/j/g;->B:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/InterruptedIOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v8, v3, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x1f

    iput v0, p0, Lcom/coremobility/j/g;->c:I

    goto/16 :goto_0

    :catch_2
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to connect to server["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/coremobility/j/g;->A:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] Mode["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/coremobility/j/g;->B:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v8, v3, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    iput v7, p0, Lcom/coremobility/j/g;->c:I

    goto/16 :goto_0

    :cond_16
    :try_start_11
    iget v0, p0, Lcom/coremobility/j/g;->B:I

    if-eq v0, v1, :cond_17

    iget v0, p0, Lcom/coremobility/j/g;->B:I

    const/4 v5, 0x3

    if-ne v0, v5, :cond_18

    :cond_17
    move v0, v1

    :goto_e
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    :try_start_12
    iget-object v0, p0, Lcom/coremobility/j/g;->d:Lcom/coremobility/integration/e/d;

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/integration/e/d;->a(Ljava/util/Hashtable;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/j/g;->c:I
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_3
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    :goto_f
    const/4 v0, 0x1

    :try_start_13
    iput-boolean v0, p0, Lcom/coremobility/j/g;->e:Z

    goto/16 :goto_2

    :cond_18
    move v0, v2

    goto :goto_e

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_19

    const/16 v3, 0x17

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0

    :cond_19
    :try_start_14
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coremobility/j/g;->c:I
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_14} :catch_4
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_5

    goto :goto_f

    :catch_4
    move-exception v0

    const/16 v0, 0x1e

    :try_start_15
    iput v0, p0, Lcom/coremobility/j/g;->c:I

    goto :goto_f

    :catch_5
    move-exception v0

    const/16 v0, 0x1e

    iput v0, p0, Lcom/coremobility/j/g;->c:I

    goto :goto_f

    :cond_1a
    iget v0, p0, Lcom/coremobility/j/g;->B:I

    if-eqz v0, :cond_1b

    iget v0, p0, Lcom/coremobility/j/g;->B:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_1d

    :cond_1b
    move v0, v1

    :goto_10
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_0

    :try_start_16
    iget-object v0, p0, Lcom/coremobility/j/g;->d:Lcom/coremobility/integration/e/d;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/integration/e/d;->a(Ljava/util/Hashtable;I)V

    iget-object v0, p0, Lcom/coremobility/j/g;->d:Lcom/coremobility/integration/e/d;

    invoke-virtual {v0}, Lcom/coremobility/integration/e/d;->d()I

    move-result v0

    iput v0, p0, Lcom/coremobility/j/g;->c:I

    iget v0, p0, Lcom/coremobility/j/g;->c:I

    if-gez v0, :cond_1c

    const/16 v0, 0x2c

    iput v0, p0, Lcom/coremobility/j/g;->c:I
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_6
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0

    :cond_1c
    :goto_11
    const/16 v0, 0x2e

    :try_start_17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HttpThead, actually connect, responseCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/coremobility/j/g;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->e:Z

    goto/16 :goto_3

    :cond_1d
    move v0, v2

    goto :goto_10

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1e

    const/16 v3, 0x17

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_0

    :cond_1e
    :try_start_18
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coremobility/j/g;->c:I
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_18} :catch_7
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_8

    goto :goto_11

    :catch_7
    move-exception v0

    const/16 v0, 0x1e

    :try_start_19
    iput v0, p0, Lcom/coremobility/j/g;->c:I

    goto :goto_11

    :catch_8
    move-exception v0

    const/16 v0, 0x1e

    iput v0, p0, Lcom/coremobility/j/g;->c:I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_0

    goto :goto_11

    :cond_1f
    move v0, v2

    goto/16 :goto_4

    :cond_20
    move v0, v2

    goto/16 :goto_5

    :catch_9
    move-exception v0

    const/16 v4, 0x2e

    :try_start_1a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "URL["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/coremobility/j/g;->A:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] is not a HTTP URL"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0xa

    iput v0, p0, Lcom/coremobility/j/g;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/j/g;->n:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/j/g;->y:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->f:Z
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    goto/16 :goto_6

    :catchall_1
    move-exception v0

    :try_start_1b
    monitor-exit v3

    throw v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_0

    :catch_a
    move-exception v0

    const/16 v4, 0x2e

    :try_start_1c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ex in send "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v0, v5}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x2a

    iput v0, p0, Lcom/coremobility/j/g;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/j/g;->n:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/j/g;->y:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->f:Z

    goto/16 :goto_6

    :catch_b
    move-exception v0

    const/16 v4, 0x2e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ex in send "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v0, v5}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x15

    iput v0, p0, Lcom/coremobility/j/g;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/j/g;->n:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/j/g;->y:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->f:Z

    goto/16 :goto_6

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v4, 0x2e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ex in send "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v0, v5}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x28

    iput v0, p0, Lcom/coremobility/j/g;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/j/g;->n:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/j/g;->y:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->f:Z
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    goto/16 :goto_6

    :cond_21
    move v0, v2

    goto/16 :goto_7

    :cond_22
    move v0, v2

    goto/16 :goto_8

    :cond_23
    if-gez v0, :cond_5

    const/4 v0, 0x0

    :try_start_1d
    iput v0, p0, Lcom/coremobility/j/g;->y:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->z:Z
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2
    .catch Ljava/lang/ClassCastException; {:try_start_1d .. :try_end_1d} :catch_d
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_1d} :catch_e
    .catch Ljava/net/SocketTimeoutException; {:try_start_1d .. :try_end_1d} :catch_f
    .catch Ljava/net/SocketException; {:try_start_1d .. :try_end_1d} :catch_10
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_11

    goto/16 :goto_9

    :catch_d
    move-exception v0

    const/16 v4, 0x2e

    :try_start_1e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "URL["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/coremobility/j/g;->A:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] is not a HTTP URL"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0xa

    iput v0, p0, Lcom/coremobility/j/g;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/j/g;->n:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/j/g;->y:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->f:Z
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    goto/16 :goto_9

    :catchall_2
    move-exception v0

    :try_start_1f
    monitor-exit v3

    throw v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_0

    :catch_e
    move-exception v0

    :try_start_20
    iget v4, p0, Lcom/coremobility/j/g;->c:I

    if-eqz v4, :cond_24

    iget v4, p0, Lcom/coremobility/j/g;->c:I

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_25

    :cond_24
    const/16 v4, 0x2e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "URL["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/coremobility/j/g;->A:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] is not a HTTP URL"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0xa

    iput v0, p0, Lcom/coremobility/j/g;->c:I

    :cond_25
    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/j/g;->n:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/j/g;->y:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->f:Z

    goto/16 :goto_9

    :catch_f
    move-exception v0

    const/16 v4, 0x2e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ex in get "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v0, v5}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x2b

    iput v0, p0, Lcom/coremobility/j/g;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/j/g;->n:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/j/g;->y:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->f:Z

    goto/16 :goto_9

    :catch_10
    move-exception v0

    const/16 v4, 0x2e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ex in get "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v0, v5}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x15

    iput v0, p0, Lcom/coremobility/j/g;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/j/g;->n:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/j/g;->y:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->f:Z

    goto/16 :goto_9

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v4, 0x2e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ex in get "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v0, v5}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x29

    iput v0, p0, Lcom/coremobility/j/g;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/j/g;->n:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/j/g;->y:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->f:Z
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_2

    goto/16 :goto_9

    :catch_12
    move-exception v0

    :try_start_21
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    goto/16 :goto_a

    :catch_13
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to close OutputStream to server["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/coremobility/j/g;->A:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] Mode["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/coremobility/j/g;->B:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v8, v3, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_b

    :catch_14
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to close InputStream from server["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/coremobility/j/g;->A:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] Mode["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/coremobility/j/g;->B:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v8, v3, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_c

    :catch_15
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to close connection to server["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/coremobility/j/g;->A:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] Mode["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/coremobility/j/g;->B:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {v8, v3, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_d
.end method
