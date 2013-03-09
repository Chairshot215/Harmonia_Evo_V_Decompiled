.class public final Lcom/coremobility/integration/i/d;
.super Ljava/io/DataInputStream;


# instance fields
.field private a:I

.field private b:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/DataInputStream;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v0, 0x2000

    iput v0, p0, Lcom/coremobility/integration/i/d;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/i/d;->b:Ljava/io/InputStream;

    iput-object p1, p0, Lcom/coremobility/integration/i/d;->b:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 7

    const/4 v2, 0x0

    const-string v3, ""

    :try_start_0
    iget v0, p0, Lcom/coremobility/integration/i/d;->a:I

    new-array v0, v0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/coremobility/integration/i/d;->b:Ljava/io/InputStream;

    const/4 v5, 0x0

    iget v6, p0, Lcom/coremobility/integration/i/d;->a:I

    invoke-virtual {v4, v0, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v3

    :goto_1
    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_0
    :goto_2
    iget-object v1, p0, Lcom/coremobility/integration/i/d;->b:Ljava/io/InputStream;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/coremobility/integration/i/d;->b:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    iput-object v2, p0, Lcom/coremobility/integration/i/d;->b:Ljava/io/InputStream;

    :cond_1
    return-object v0

    :cond_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :try_start_6
    iget-object v1, p0, Lcom/coremobility/integration/i/d;->b:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/coremobility/integration/i/d;->b:Ljava/io/InputStream;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v1, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_3

    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_3
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/coremobility/integration/i/d;->b:Ljava/io/InputStream;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/coremobility/integration/i/d;->b:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    iput-object v2, p0, Lcom/coremobility/integration/i/d;->b:Ljava/io/InputStream;

    :cond_4
    throw v0

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v1, v2

    move-object v0, v3

    goto :goto_1

    :catch_3
    move-exception v3

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Lcom/coremobility/integration/i/a;)Z
    .locals 9

    const/4 v8, -0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    iget v2, p0, Lcom/coremobility/integration/i/d;->a:I

    new-array v5, v2, [B

    invoke-static {p1}, Lcom/coremobility/integration/file/b;->a(Ljava/lang/String;)Ljava/io/FileOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    move v4, v1

    :cond_0
    :try_start_1
    invoke-virtual {p2}, Lcom/coremobility/integration/i/a;->a()Z

    move-result v6

    if-eqz v6, :cond_5

    move v0, v1

    :cond_1
    :goto_0
    if-eq v4, v8, :cond_2

    if-nez v0, :cond_0

    :cond_2
    iget-object v4, p0, Lcom/coremobility/integration/i/d;->b:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/coremobility/integration/i/d;->b:Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    iget-object v1, p0, Lcom/coremobility/integration/i/d;->b:Ljava/io/InputStream;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/coremobility/integration/i/d;->b:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    iput-object v3, p0, Lcom/coremobility/integration/i/d;->b:Ljava/io/InputStream;

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_4
    :goto_2
    return v0

    :cond_5
    :try_start_2
    iget-object v4, p0, Lcom/coremobility/integration/i/d;->b:Ljava/io/InputStream;

    const/4 v6, 0x0

    iget v7, p0, Lcom/coremobility/integration/i/d;->a:I

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-eq v4, v8, :cond_1

    if-eqz v4, :cond_1

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v0

    move-object v0, v2

    :goto_3
    iget-object v2, p0, Lcom/coremobility/integration/i/d;->b:Ljava/io/InputStream;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/coremobility/integration/i/d;->b:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    iput-object v3, p0, Lcom/coremobility/integration/i/d;->b:Ljava/io/InputStream;

    :cond_6
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    move v0, v1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v3

    :goto_4
    iget-object v1, p0, Lcom/coremobility/integration/i/d;->b:Ljava/io/InputStream;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/coremobility/integration/i/d;->b:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    iput-object v3, p0, Lcom/coremobility/integration/i/d;->b:Ljava/io/InputStream;

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_8
    throw v0

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v0, v3

    goto :goto_3

    :cond_9
    move v0, v1

    goto :goto_2
.end method
