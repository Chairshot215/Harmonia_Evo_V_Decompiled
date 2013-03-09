.class public final Lcom/coremobility/k/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coremobility/integration/b/e;


# static fields
.field private static a:[Lcom/coremobility/k/c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/coremobility/k/c;

    new-instance v1, Lcom/coremobility/k/c;

    const-string v2, "vnotes_db"

    invoke-direct {v1, v2, v3}, Lcom/coremobility/k/c;-><init>(Ljava/lang/String;Z)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/coremobility/k/c;

    const-string v2, "vnotes_db_ex"

    invoke-direct {v1, v2, v4}, Lcom/coremobility/k/c;-><init>(Ljava/lang/String;Z)V

    aput-object v1, v0, v4

    sput-object v0, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/coremobility/integration/b/d;I)I
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    if-ltz p1, :cond_2

    const/4 v0, 0x7

    if-ge p1, v0, :cond_2

    move v0, v10

    :goto_0
    if-eqz v0, :cond_3

    :try_start_0
    new-instance v1, Lcom/coremobility/integration/h/d;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lcom/coremobility/integration/h/d;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v0}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/h/d;Lcom/coremobility/integration/h/d;)V

    new-instance v2, Lcom/coremobility/integration/b/a;

    invoke-direct {v2}, Lcom/coremobility/integration/b/a;-><init>()V

    const-string v3, "is_deleted"

    iget-object v0, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    iget-object v4, v2, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v4, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, v1, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq p1, v0, :cond_0

    const-string v3, "dir_id"

    iget-object v0, v1, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, v2, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dir_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vnotes"

    invoke-virtual {p0, v1, v2, v0}, Lcom/coremobility/integration/b/d;->a(Ljava/lang/String;Lcom/coremobility/integration/b/a;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-lez v8, :cond_1

    :try_start_1
    invoke-static {}, Lcom/coremobility/integration/app/j;->a()Lcom/coremobility/integration/app/j;

    const-wide/16 v0, 0x0

    const-string v2, "delete_bulk"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/coremobility/integration/app/j;->a(JLjava/lang/String;IIIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    move v0, v8

    :goto_1
    return v0

    :cond_2
    move v0, v9

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    move v0, v9

    :goto_2
    const/16 v2, 0x1c

    const-string v3, "EmptyFolder Exception %s"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v9

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v0

    move v0, v8

    goto :goto_2

    :cond_3
    move v0, v9

    goto :goto_1
.end method

.method private static a(Lcom/coremobility/integration/b/d;IIILjava/lang/String;)I
    .locals 5

    new-instance v1, Lcom/coremobility/integration/b/a;

    invoke-direct {v1}, Lcom/coremobility/integration/b/a;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id IN ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v0, "is_deleted"

    iget-object v3, v1, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eq p1, p2, :cond_0

    if-ltz p2, :cond_1

    const/4 v0, 0x7

    if-ge p2, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    const-string v0, "dir_id"

    iget-object v3, v1, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    const-string v0, "vnotes"

    invoke-virtual {p0, v0, v1, v2}, Lcom/coremobility/integration/b/d;->a(Ljava/lang/String;Lcom/coremobility/integration/b/a;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/coremobility/integration/b/d;Lcom/coremobility/integration/b/a;)I
    .locals 10

    const-wide/16 v7, 0x0

    const/4 v3, 0x1

    const/4 v0, -0x1

    const/16 v9, 0x1c

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Lcom/coremobility/integration/b/a;

    invoke-direct {v1, p1}, Lcom/coremobility/integration/b/a;-><init>(Lcom/coremobility/integration/b/a;)V

    :goto_0
    const-string v4, "record_id"

    iget-object v5, v1, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v1, 0x1c

    const-string v4, "VnotesMime INSERT Missing Record ID"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return v0

    :cond_0
    new-instance v1, Lcom/coremobility/integration/b/a;

    invoke-direct {v1}, Lcom/coremobility/integration/b/a;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "VnotesMime INSERT Exception: %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-static {v9, v4, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :try_start_1
    const-string v4, "file_type"

    iget-object v5, v1, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v1, 0x1c

    const-string v4, "VnotesMime INSERT Missing File Type"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const-string v4, "filename_only"

    iget-object v5, v1, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const/16 v1, 0x1c

    const-string v4, "VnotesMime INSERT Missing Filename"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/coremobility/integration/b/d;->d:[Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {p0}, Lcom/coremobility/integration/b/d;->c()V

    const-string v5, "vnotes_mime"

    invoke-virtual {p0, v5, v1}, Lcom/coremobility/integration/b/d;->a(Ljava/lang/String;Lcom/coremobility/integration/b/a;)J

    move-result-wide v5

    cmp-long v1, v5, v7

    if-gez v1, :cond_5

    const/16 v1, 0x1c

    const-string v7, "VnotesMime INSERT Failed"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v1, v7, v8}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/coremobility/integration/b/d;->e()V

    move v1, v2

    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/coremobility/integration/b/d;->d()V

    :cond_4
    monitor-exit v4

    long-to-int v0, v5

    goto :goto_1

    :cond_5
    cmp-long v1, v5, v7

    if-nez v1, :cond_6

    const/16 v1, 0x1c

    const-string v7, "VnotesMime INSERT abort, duplicate"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v1, v7, v8}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/coremobility/integration/b/d;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v2

    goto :goto_2

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v4

    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_6
    move v1, v3

    goto :goto_2
.end method

.method public static a(Lcom/coremobility/integration/b/d;Lcom/coremobility/integration/b/a;Lcom/coremobility/integration/b/a;)I
    .locals 10

    const-wide/16 v1, -0x1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    const/16 v1, 0x1c

    :try_start_0
    const-string v2, "Invalid input %s"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez p1, :cond_0

    const-string v0, "null"

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x1

    :goto_1
    return v0

    :cond_0
    const-string v0, "valid"

    goto :goto_0

    :cond_1
    const-string v3, "dir_id"

    iget-object v4, p1, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "dir_id"

    iget-object v4, p1, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    :cond_2
    const-string v3, "status"

    iget-object v4, p1, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "status"

    iget-object v4, p1, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    :cond_3
    if-eqz p2, :cond_6

    const-string v3, "record_id"

    iget-object v4, p2, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    const/16 v0, 0x1c

    const-string v1, "VnotesMime should not specfiy Record ID"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x1

    goto :goto_1

    :cond_4
    const-string v3, "file_type"

    iget-object v4, p2, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const/16 v0, 0x1c

    const-string v1, "VnotesMime INSERT Missing File Type"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x1

    goto :goto_1

    :cond_5
    const-string v3, "filename_only"

    iget-object v4, p2, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const/16 v0, 0x1c

    const-string v1, "VnotesMime INSERT Missing Filename"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x1

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/coremobility/integration/b/d;->d:[Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0}, Lcom/coremobility/integration/b/d;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v4, "vnotes"

    invoke-virtual {p0, v4, p1}, Lcom/coremobility/integration/b/d;->a(Ljava/lang/String;Lcom/coremobility/integration/b/a;)J

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-gtz v4, :cond_7

    const/16 v0, 0x1c

    const-string v4, "Vnotes INSERT Failed"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :cond_7
    if-eqz p2, :cond_8

    long-to-int v4, v1

    const-string v5, "record_id"

    iget-object v6, p2, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "vnotes_mime"

    invoke-virtual {p0, v4, p2}, Lcom/coremobility/integration/b/d;->a(Ljava/lang/String;Lcom/coremobility/integration/b/a;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_8

    const/16 v0, 0x1c

    const-string v4, "VnotesMime INSERT Failed"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v0, 0x0

    :cond_8
    move-wide v8, v1

    move v2, v0

    move-wide v0, v8

    :goto_2
    if-eqz v2, :cond_9

    :try_start_3
    invoke-virtual {p0}, Lcom/coremobility/integration/b/d;->d()V

    :goto_3
    monitor-exit v3

    long-to-int v0, v0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const/16 v4, 0x1c

    const-string v5, "InsertVnotes Exception %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    move-wide v8, v1

    move v2, v0

    move-wide v0, v8

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Lcom/coremobility/integration/b/d;->e()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-wide/16 v0, -0x1

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v3

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    const/16 v1, 0x1c

    const-string v2, "InsertVnotes Exception %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x1

    goto/16 :goto_1
.end method

.method public static a(Lcom/coremobility/integration/b/d;Ljava/lang/String;)I
    .locals 5

    const/4 v4, 0x3

    const/4 v0, 0x0

    new-instance v1, Lcom/coremobility/integration/h/d;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, v4, p1}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v3, 0x6

    invoke-static {p0, v3, v4, v0, v2}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;IIILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    iget-object v0, v1, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public static a(Lcom/coremobility/integration/b/d;ZLcom/coremobility/integration/b/a;)I
    .locals 17

    const-wide/16 v2, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x1

    const-wide/16 v11, -0x1

    if-eqz p2, :cond_5

    :try_start_0
    new-instance v1, Lcom/coremobility/integration/b/a;

    move-object/from16 v0, p2

    invoke-direct {v1, v0}, Lcom/coremobility/integration/b/a;-><init>(Lcom/coremobility/integration/b/a;)V

    :goto_0
    const-string v4, "dir_id"

    iget-object v5, v1, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "dir_id"

    iget-object v5, v1, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :cond_0
    const-string v4, "status"

    iget-object v5, v1, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "status"

    iget-object v5, v1, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :cond_1
    const-string v4, "filename_only"

    iget-object v5, v1, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "filename_only"

    iget-object v5, v1, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/coremobility/integration/b/d;->d:[Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v16, v4, v5

    monitor-enter v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/coremobility/integration/b/d;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v4, "vnotes"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v1}, Lcom/coremobility/integration/b/d;->a(Ljava/lang/String;Lcom/coremobility/integration/b/a;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v14

    const-wide/16 v1, 0x0

    cmp-long v1, v14, v1

    if-gtz v1, :cond_6

    const/16 v1, 0x1c

    :try_start_3
    const-string v2, "Vnotes INSERT Failed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-wide v8, v11

    move-wide v2, v14

    :goto_1
    if-eqz v13, :cond_3

    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/coremobility/integration/b/d;->d()V

    :cond_3
    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p1, :cond_4

    if-eqz v13, :cond_4

    :try_start_5
    invoke-static {}, Lcom/coremobility/integration/app/j;->a()Lcom/coremobility/integration/app/j;

    const-string v10, "insert"

    long-to-int v11, v2

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v14, v6

    move v15, v7

    invoke-static/range {v8 .. v15}, Lcom/coremobility/integration/app/j;->a(JLjava/lang/String;IIIII)V

    :cond_4
    long-to-int v1, v2

    :goto_2
    return v1

    :cond_5
    new-instance v1, Lcom/coremobility/integration/b/a;

    invoke-direct {v1}, Lcom/coremobility/integration/b/a;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/16 v2, 0x1c

    const-string v3, "InsertVnotes Exception %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, -0x1

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_8

    :try_start_6
    const-string v2, "insert"

    long-to-int v3, v14

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v10}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;Ljava/lang/String;IIIIILjava/lang/String;II)J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_7

    const/16 v3, 0x1c

    :try_start_7
    const-string v4, "Changes INSERT Failed"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/coremobility/integration/b/d;->e()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :goto_3
    move-wide v8, v1

    move v13, v3

    move-wide v2, v14

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_4
    const/16 v4, 0x1c

    :try_start_8
    const-string v5, "InsertVnotes Exception %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v9

    invoke-static {v4, v5, v8}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/coremobility/integration/b/d;->e()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-wide v8, v11

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_9
    monitor-exit v16

    throw v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :catch_2
    move-exception v1

    move-wide v2, v14

    goto :goto_4

    :catch_3
    move-exception v3

    move-wide v11, v1

    move-object v1, v3

    move-wide v2, v14

    goto :goto_4

    :cond_7
    move v3, v13

    goto :goto_3

    :cond_8
    move-wide v1, v11

    move v3, v13

    goto :goto_3
.end method

.method public static a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILcom/coremobility/integration/b/a;Ljava/lang/String;)I
    .locals 27

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/16 v16, 0x1

    const/16 v19, -0x1

    const/16 v18, -0x1

    new-instance v22, Lcom/coremobility/integration/h/d;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    new-instance v23, Lcom/coremobility/integration/h/d;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    const-string v11, ""

    const/4 v13, -0x1

    new-instance v24, Lcom/coremobility/integration/h/d;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    const-wide/16 v14, -0x1

    const/16 v4, 0x1c

    :try_start_0
    const-string v6, "update table is %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v7, v9

    invoke-static {v4, v6, v7}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    const-string v4, "vnotes"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_8

    const-string v7, "vnotes"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/coremobility/integration/b/d;->d:[Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v6, v4, v6

    if-eqz p1, :cond_17

    const-string v4, "dir_id"

    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v9, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "dir_id"

    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v9, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v19

    :cond_0
    const-string v4, "status"

    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v9, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "status"

    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v9, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v18

    :cond_1
    if-gtz p3, :cond_5

    const/16 p1, 0x0

    const/16 v4, 0x1c

    const-string v9, "Change Updates Not Done for RecId %d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v10, v12

    invoke-static {v4, v9, v10}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v20, v6

    move-object v4, v7

    move/from16 v21, p1

    move/from16 p1, v8

    :goto_0
    monitor-enter v20
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/coremobility/integration/b/d;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v0, v4, v1, v2}, Lcom/coremobility/integration/b/d;->a(Ljava/lang/String;Lcom/coremobility/integration/b/a;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v17

    if-nez v21, :cond_2

    if-eqz p1, :cond_14

    :cond_2
    :try_start_3
    const-string v5, "update"

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v4, -0x1

    move/from16 v0, v19

    if-ne v0, v4, :cond_10

    const/4 v9, 0x0

    :goto_1
    const/4 v4, -0x1

    move/from16 v0, v18

    if-ne v0, v4, :cond_11

    const/4 v10, 0x0

    :goto_2
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v4, p0

    move/from16 v6, p3

    invoke-static/range {v4 .. v13}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;Ljava/lang/String;IIIIILjava/lang/String;II)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gtz v6, :cond_13

    const/16 v6, 0x1c

    :try_start_4
    const-string v7, "Changes INSERT Failed"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/coremobility/integration/b/d;->e()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_3
    move/from16 v14, v17

    :goto_4
    if-eqz v6, :cond_3

    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/coremobility/integration/b/d;->d()V

    :cond_3
    monitor-exit v20
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v21, :cond_12

    if-eqz v6, :cond_12

    :try_start_6
    invoke-static {}, Lcom/coremobility/integration/app/j;->a()Lcom/coremobility/integration/app/j;

    const-string v6, "update"

    move-object/from16 v0, v22

    iget-object v7, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move/from16 v7, p3

    move/from16 v10, v19

    move/from16 v11, v18

    invoke-static/range {v4 .. v11}, Lcom/coremobility/integration/app/j;->a(JLjava/lang/String;IIIII)V

    :cond_4
    :goto_5
    move v4, v14

    :goto_6
    return v4

    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ILcom/coremobility/integration/h/d;Lcom/coremobility/integration/h/d;)Z

    move-result v4

    if-nez v4, :cond_6

    const/16 p1, 0x0

    const/16 v4, 0x1c

    const-string v9, "Change Updates Not Done for RecId %d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v10, v12

    invoke-static {v4, v9, v10}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v20, v6

    move-object v4, v7

    move/from16 v21, p1

    move/from16 p1, v8

    goto/16 :goto_0

    :cond_6
    const/4 v9, 0x0

    const/4 v4, -0x1

    move/from16 v0, v19

    if-eq v0, v4, :cond_7

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move/from16 v0, v19

    if-eq v0, v4, :cond_7

    move/from16 v9, p1

    :cond_7
    const/4 v4, -0x1

    move/from16 v0, v18

    if-eq v0, v4, :cond_16

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move/from16 v0, v18

    if-eq v0, v4, :cond_16

    :goto_7
    const/16 v4, 0x1c

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Updates with update_changes = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " RecId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4, v9, v10}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v20, v6

    move-object v4, v7

    move/from16 v21, p1

    move/from16 p1, v8

    goto/16 :goto_0

    :cond_8
    const-string v4, "vnotes_mime"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_f

    const-string v7, "vnotes_mime"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/coremobility/integration/b/d;->d:[Ljava/lang/Object;

    const/4 v6, 0x1

    aget-object v6, v4, v6

    const/4 v8, 0x0

    if-eqz p1, :cond_15

    const-string v4, "mime_guid"

    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v9, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "mime_guid"

    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v9, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_9
    const-string v4, "transcribe_rate"

    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v9, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "transcribe_rate"

    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v9, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v13

    :cond_a
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "transcribe_rate"

    aput-object v10, v4, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mime_guid = \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "vnotes_mime"

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v9, v4, v12}, Lcom/coremobility/integration/b/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/coremobility/integration/b/b;

    move-result-object v4

    if-nez v4, :cond_b

    const/4 v4, 0x0

    :goto_8
    if-nez v4, :cond_d

    const/16 p1, 0x0

    const/16 v4, 0x1c

    const-string v9, "Change Updates Mime table Not Done for RecId %d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v10, v12

    invoke-static {v4, v9, v10}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v20, v6

    move-object v4, v7

    move/from16 v21, v8

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v4}, Lcom/coremobility/integration/b/b;->b()I

    move-result v9

    if-nez v9, :cond_c

    invoke-virtual {v4}, Lcom/coremobility/integration/b/b;->a()V

    const/4 v4, 0x0

    goto :goto_8

    :cond_c
    invoke-virtual {v4}, Lcom/coremobility/integration/b/b;->c()Z

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/coremobility/integration/b/b;->a(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v24

    iput-object v9, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/coremobility/integration/b/b;->a()V

    const/4 v4, 0x1

    goto :goto_8

    :cond_d
    invoke-static {v11}, Lcom/coremobility/j/r;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v13, v4, :cond_e

    const/4 v4, -0x1

    if-ne v13, v4, :cond_e

    const/16 p1, 0x0

    :cond_e
    const/16 v4, 0x1c

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Updates Mime with update_changes = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Guid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4, v9, v10}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v20, v6

    move-object v4, v7

    move/from16 v21, v8

    goto/16 :goto_0

    :cond_f
    const/16 v4, 0x1c

    const-string v5, "VnotesDB Delete, Invalid Table %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    invoke-static {v4, v5, v6}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    const/4 v4, 0x0

    goto/16 :goto_6

    :cond_10
    move/from16 v9, v19

    goto/16 :goto_1

    :cond_11
    move/from16 v10, v18

    goto/16 :goto_2

    :catch_0
    move-exception v4

    :goto_9
    const/16 v6, 0x1c

    :try_start_7
    const-string v7, "Update Exception %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v9

    invoke-static {v6, v7, v8}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/coremobility/integration/b/d;->e()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-wide/from16 v25, v14

    move v14, v5

    move-wide/from16 v4, v25

    goto/16 :goto_4

    :catchall_0
    move-exception v4

    :try_start_8
    monitor-exit v20

    throw v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :catch_1
    move-exception v4

    const/16 v5, 0x1c

    const-string v6, "Update Exception %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-static {v5, v6, v7}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, 0x0

    goto/16 :goto_6

    :cond_12
    if-eqz p1, :cond_4

    if-eqz v6, :cond_4

    :try_start_9
    invoke-static {}, Lcom/coremobility/integration/app/j;->a()Lcom/coremobility/integration/app/j;

    const-string v9, "update"

    move-object/from16 v0, v24

    iget-object v6, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-wide v7, v4

    move/from16 v10, p3

    invoke-static/range {v7 .. v13}, Lcom/coremobility/integration/app/j;->a(JLjava/lang/String;ILjava/lang/String;II)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_5

    :catch_2
    move-exception v4

    move/from16 v5, v17

    goto :goto_9

    :catch_3
    move-exception v6

    move-wide v14, v4

    move-object v4, v6

    move/from16 v5, v17

    goto :goto_9

    :cond_13
    move/from16 v6, v16

    goto/16 :goto_3

    :cond_14
    move-wide v4, v14

    move/from16 v6, v16

    goto/16 :goto_3

    :cond_15
    move-object/from16 v20, v6

    move-object v4, v7

    move/from16 v21, v8

    goto/16 :goto_0

    :cond_16
    move/from16 p1, v9

    goto/16 :goto_7

    :cond_17
    move-object/from16 v20, v6

    move-object v4, v7

    move/from16 v21, p1

    move/from16 p1, v8

    goto/16 :goto_0
.end method

.method public static a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILjava/lang/String;)I
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILjava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILjava/lang/String;Z)I
    .locals 21

    const/16 v16, 0x1

    const-wide/16 v14, -0x1

    new-instance v17, Lcom/coremobility/integration/h/d;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    new-instance v18, Lcom/coremobility/integration/h/d;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    :try_start_0
    const-string v4, "vnotes"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "vnotes"

    if-eqz p1, :cond_0

    if-gtz p3, :cond_4

    const/16 p1, 0x0

    const/16 v5, 0x1c

    const-string v6, "Change Updates Not Done for RecId %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    new-instance v19, Lcom/coremobility/integration/h/d;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/coremobility/integration/b/d;->d:[Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v20, v5, v6

    monitor-enter v20
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/coremobility/integration/b/d;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_9

    :try_start_2
    const-string v5, "vnotes_mime"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/coremobility/k/b;->b(Lcom/coremobility/integration/b/d;ILjava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    :goto_1
    const-string v4, "vnotes"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v0, v1, v4}, Lcom/coremobility/k/b;->b(Lcom/coremobility/integration/b/d;ILjava/lang/String;)I

    :cond_1
    :goto_2
    if-eqz p1, :cond_e

    if-eqz v16, :cond_e

    const-string v5, "delete"

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v4, p0

    move/from16 v6, p3

    invoke-static/range {v4 .. v13}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;Ljava/lang/String;IIIIILjava/lang/String;II)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gtz v6, :cond_d

    const/16 v6, 0x1c

    :try_start_3
    const-string v7, "Changes INSERT Failed"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/coremobility/integration/b/d;->e()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    if-eqz v6, :cond_2

    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/coremobility/integration/b/d;->d()V

    :cond_2
    monitor-exit v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p1, :cond_3

    if-eqz v6, :cond_3

    :try_start_5
    invoke-static {}, Lcom/coremobility/integration/app/j;->a()Lcom/coremobility/integration/app/j;

    const-string v6, "delete"

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move/from16 v7, p3

    invoke-static/range {v4 .. v11}, Lcom/coremobility/integration/app/j;->a(JLjava/lang/String;IIIII)V

    :cond_3
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_4
    return v4

    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ILcom/coremobility/integration/h/d;Lcom/coremobility/integration/h/d;)Z

    move-result v5

    if-nez v5, :cond_0

    const/16 p1, 0x0

    goto/16 :goto_0

    :cond_5
    const-string v4, "vnotes_mime"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "vnotes_mime"

    const/16 p1, 0x0

    goto/16 :goto_0

    :cond_6
    const-string v4, "changes"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "changes"

    const/16 p1, 0x0

    goto/16 :goto_0

    :cond_7
    const/16 v4, 0x1c

    const-string v5, "VnotesDB Delete, Invalid Table %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    invoke-static {v4, v5, v6}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    const/4 v4, 0x0

    goto :goto_4

    :cond_8
    :try_start_6
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v4, v1}, Lcom/coremobility/integration/b/d;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v4

    :goto_5
    const/16 v5, 0x1c

    :try_start_7
    const-string v6, "Delete Exception %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-static {v5, v6, v7}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/coremobility/integration/b/d;->e()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v6, 0x0

    move-wide v4, v14

    goto/16 :goto_3

    :cond_9
    if-eqz p5, :cond_b

    :try_start_8
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v7, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v6, v4, v7, v5}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;IIILjava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_a

    const/4 v4, 0x1

    :goto_6
    if-nez v4, :cond_c

    const/16 v4, 0x1c

    const-string v5, "Set Delete Field Failed"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v16, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/coremobility/integration/b/d;->e()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_2

    :catchall_0
    move-exception v4

    :try_start_9
    monitor-exit v20

    throw v4
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :catch_1
    move-exception v4

    const/16 v5, 0x1c

    const-string v6, "Delete Exception %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-static {v5, v6, v7}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_a
    const/4 v4, 0x0

    goto :goto_6

    :cond_b
    :try_start_a
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-static {v0, v1, v4, v2}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;Lcom/coremobility/integration/h/d;Ljava/lang/String;Lcom/coremobility/integration/h/d;)Z

    move-result v4

    goto :goto_6

    :cond_c
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_2

    :catch_2
    move-exception v6

    move-wide v14, v4

    move-object v4, v6

    goto/16 :goto_5

    :cond_d
    move/from16 v6, v16

    goto/16 :goto_3

    :cond_e
    move-wide v4, v14

    move/from16 v6, v16

    goto/16 :goto_3
.end method

.method private static a(Lcom/coremobility/integration/b/d;Ljava/lang/String;IIIIILjava/lang/String;II)J
    .locals 7

    new-instance v0, Lcom/coremobility/integration/b/a;

    invoke-direct {v0}, Lcom/coremobility/integration/b/a;-><init>()V

    const-string v1, "operation"

    iget-object v2, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v2, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "record_id"

    iget-object v2, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "new_dir_id"

    iget-object v2, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "new_status"

    iget-object v2, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "old_dir_id"

    iget-object v2, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "old_status"

    iget-object v2, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "guid"

    iget-object v2, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v2, v1, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "old_rate"

    iget-object v2, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "new_rate"

    iget-object v2, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "changes"

    invoke-virtual {p0, v1, v0}, Lcom/coremobility/integration/b/d;->a(Ljava/lang/String;Lcom/coremobility/integration/b/a;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const/16 v2, 0x1c

    const-string v3, "Changes INSERT Failed: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-wide v0
.end method

.method public static a(Lcom/coremobility/integration/b/d;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coremobility/integration/b/b;
    .locals 5

    :try_start_0
    invoke-virtual {p0, p1, p3, p2, p4}, Lcom/coremobility/integration/b/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/coremobility/integration/b/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/16 v1, 0x1c

    const-string v2, "QueryDB Exception %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(I)Lcom/coremobility/integration/b/d;
    .locals 7

    const/4 v6, 0x4

    const/4 v4, 0x2

    const/4 v0, 0x0

    sget-object v1, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v2, v1, p0

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v1, v1, p0

    iget-object v1, v1, Lcom/coremobility/k/c;->a:Lcom/coremobility/integration/b/d;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v0, v0, p0

    iget v1, v0, Lcom/coremobility/k/c;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/coremobility/k/c;->b:I

    sget-object v0, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v0, v0, p0

    iget-object v0, v0, Lcom/coremobility/k/c;->a:Lcom/coremobility/integration/b/d;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    sget-object v1, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v1, v1, p0

    iget-boolean v1, v1, Lcom/coremobility/k/c;->d:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    invoke-static {}, Lcom/coremobility/integration/file/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "smvvm"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v3, v3, p0

    iget-object v3, v3, Lcom/coremobility/k/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    sget-object v3, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v3, v3, p0

    invoke-static {v1}, Lcom/coremobility/integration/b/d;->a(Ljava/lang/String;)Lcom/coremobility/integration/b/d;

    move-result-object v1

    iput-object v1, v3, Lcom/coremobility/k/c;->a:Lcom/coremobility/integration/b/d;

    sget-object v1, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v1, v1, p0

    iget-object v1, v1, Lcom/coremobility/k/c;->a:Lcom/coremobility/integration/b/d;

    if-nez v1, :cond_2

    const/16 v1, 0x1c

    const-string v3, "VNOTES DB OpenDatabase Error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    :try_start_3
    sget-object v1, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v1, v1, p0

    iget-object v1, v1, Lcom/coremobility/k/c;->c:Ljava/lang/String;

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v1, v1, p0

    iget-object v1, v1, Lcom/coremobility/k/c;->a:Lcom/coremobility/integration/b/d;

    sget-object v3, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v3, v3, p0

    iget-boolean v3, v3, Lcom/coremobility/k/c;->d:Z

    iput-boolean v3, v1, Lcom/coremobility/integration/b/d;->b:Z

    sget-object v1, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v1, v1, p0

    iget-object v1, v1, Lcom/coremobility/k/c;->a:Lcom/coremobility/integration/b/d;

    invoke-virtual {v1}, Lcom/coremobility/integration/b/d;->f()I

    move-result v1

    if-nez v1, :cond_5

    sget-object v3, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v3, v3, p0

    iget-object v3, v3, Lcom/coremobility/k/c;->a:Lcom/coremobility/integration/b/d;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/coremobility/integration/b/d;->a(I)V

    :cond_3
    :goto_2
    const/16 v3, 0x1c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VNOTES Provider DB Open. Version = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    if-lez v1, :cond_4

    if-ge v1, v6, :cond_4

    sget-object v3, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v3, v3, p0

    iget-object v3, v3, Lcom/coremobility/k/c;->a:Lcom/coremobility/integration/b/d;

    invoke-static {v3, v1}, Lcom/coremobility/k/b;->c(Lcom/coremobility/integration/b/d;I)Z

    :cond_4
    sget-object v1, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v1, v1, p0

    iget-object v1, v1, Lcom/coremobility/k/c;->a:Lcom/coremobility/integration/b/d;

    invoke-static {v1}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v1, v1, p0

    iget-object v1, v1, Lcom/coremobility/k/c;->a:Lcom/coremobility/integration/b/d;

    invoke-virtual {v1}, Lcom/coremobility/integration/b/d;->b()V

    sget-object v1, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v1, v1, p0

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/coremobility/k/c;->a:Lcom/coremobility/integration/b/d;

    const/16 v1, 0x1c

    const-string v3, "VNOTES DB Open Error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :cond_5
    if-ge v1, v4, :cond_3

    :try_start_5
    sget-object v3, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v3, v3, p0

    iget-object v3, v3, Lcom/coremobility/k/c;->a:Lcom/coremobility/integration/b/d;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/coremobility/integration/b/d;->a(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const/16 v3, 0x1c

    :try_start_6
    const-string v4, "CM_VnotesDbUtils OpenDB() Exception %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v3, v4, v5}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v1, v1, p0

    iget-object v1, v1, Lcom/coremobility/k/c;->a:Lcom/coremobility/integration/b/d;

    invoke-virtual {v1}, Lcom/coremobility/integration/b/d;->b()V

    sget-object v1, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v1, v1, p0

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/coremobility/k/c;->a:Lcom/coremobility/integration/b/d;

    monitor-exit v2

    goto/16 :goto_0

    :cond_6
    sget-object v0, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v0, v0, p0

    iget v1, v0, Lcom/coremobility/k/c;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/coremobility/k/c;->b:I

    sget-object v0, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v0, v0, p0

    iget-object v0, v0, Lcom/coremobility/k/c;->a:Lcom/coremobility/integration/b/d;

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0
.end method

.method private static a(Lcom/coremobility/integration/b/d;ILjava/lang/String;)Ljava/lang/String;
    .locals 10

    const/16 v3, 0x32

    const/4 v4, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v6, ","

    invoke-direct {v0, p2, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v6, "out_timestamp ASC,_id ASC"

    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v7, v2

    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    new-instance v0, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dir_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "is_deleted"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "!="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    const-string v8, "vnotes"

    invoke-virtual {p0, v8, v0, v7, v6}, Lcom/coremobility/integration/b/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/coremobility/integration/b/b;

    move-result-object v6

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v0, v4

    :goto_2
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/coremobility/integration/b/b;->b()I

    move-result v3

    invoke-virtual {v6}, Lcom/coremobility/integration/b/b;->a()V

    sub-int v6, v0, v3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v6, v5, :cond_6

    if-lez v6, :cond_6

    move v0, v2

    move v3, v2

    :goto_3
    if-ge v3, v6, :cond_5

    const/16 v5, 0x2c

    invoke-virtual {p2, v5, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-ne v5, v4, :cond_4

    add-int/lit8 v4, v6, -0x1

    if-eq v3, v4, :cond_5

    move-object p2, v1

    :cond_1
    :goto_4
    return-object p2

    :cond_2
    new-instance v0, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dir_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "is_deleted"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "=0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    const/16 v0, 0x96

    goto :goto_2

    :pswitch_2
    move v0, v3

    goto :goto_2

    :pswitch_3
    move v0, v3

    goto :goto_2

    :cond_3
    move-object p2, v1

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_6
    if-lt v3, v0, :cond_1

    move-object p2, v1

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Lcom/coremobility/integration/b/d;J)V
    .locals 6

    const/16 v5, 0x1c

    const/4 v4, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "changes"

    invoke-virtual {p0, v1, v0}, Lcom/coremobility/integration/b/d;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x1c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DeleteChangesRecord with Count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "DeleteChangesRecord Exception %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v5, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static a(Lcom/coremobility/integration/h/d;Lcom/coremobility/integration/h/d;)V
    .locals 3

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    goto :goto_0
.end method

.method private static a(Lcom/coremobility/integration/b/d;)Z
    .locals 6

    const/16 v5, 0x1c

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x1c

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VNOTES Provider Tables Open. Version = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/coremobility/integration/b/d;->f()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "create table IF NOT EXISTS vnotes ( _id integer primary key autoincrement, dir_id integer null, sender_name text null, sender_mdn text null, sender_email text null, subject text null, recipient_mdns text null, recipient_emails text null, previous_sender text null, guid text null, in_reply_to_guid text null, in_reply_to_name text null, uri text null, status integer null, out_timestamp integer null, sent_timestamp integer null, recv_timestamp integer null, read_timestamp integer null, repl_timestamp integer null, fwd_timestamp integer null, forward_to_guid text null, is_deleted integer default 0, txt_summary text null );"

    invoke-virtual {p0, v2}, Lcom/coremobility/integration/b/d;->b(Ljava/lang/String;)V

    const-string v2, "create table IF NOT EXISTS vnotes_mime ( record_id integer not null, file_type integer null, file_order integer null, filename_only text not null, file_size integer null, duration integer null, transcribe_rate integer null, mime_guid text not null, primary key(record_id,file_type,file_order) );"

    invoke-virtual {p0, v2}, Lcom/coremobility/integration/b/d;->b(Ljava/lang/String;)V

    const-string v2, "create table IF NOT EXISTS changes ( _id integer primary key autoincrement, operation text not null, record_id integer null, old_dir_id integer null, old_status integer null, new_dir_id integer null, new_status integer null, guid text null, old_rate integer null, new_rate integer null  );"

    invoke-virtual {p0, v2}, Lcom/coremobility/integration/b/d;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v2

    const-string v3, "CM_VnotesDbUtils OpenVnotesDbTables() Exception %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v5, v3, v0}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0
.end method

.method private static a(Lcom/coremobility/integration/b/d;ILcom/coremobility/integration/h/d;Lcom/coremobility/integration/h/d;)Z
    .locals 7

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v3, "dir_id"

    aput-object v3, v2, v1

    const-string v3, "status"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "vnotes"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v3, v2, v5}, Lcom/coremobility/integration/b/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/coremobility/integration/b/b;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v2}, Lcom/coremobility/integration/b/b;->b()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/coremobility/integration/b/b;->a()V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/coremobility/integration/b/b;->c()Z

    invoke-virtual {v2, v1}, Lcom/coremobility/integration/b/b;->a(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p2, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    invoke-virtual {v2, v6}, Lcom/coremobility/integration/b/b;->a(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/coremobility/integration/b/b;->a()V

    move v0, v1

    goto :goto_0
.end method

.method public static a(Lcom/coremobility/integration/b/d;IZJ)Z
    .locals 8

    const/16 v7, 0x1c

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/coremobility/integration/b/a;

    invoke-direct {v3}, Lcom/coremobility/integration/b/a;-><init>()V

    if-eqz p2, :cond_0

    const-string v4, "is_deleted"

    iget-object v5, v3, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    const-string v4, "status"

    invoke-virtual {v3, v4, p3, p4}, Lcom/coremobility/integration/b/a;->a(Ljava/lang/String;J)V

    const-string v4, "vnotes"

    invoke-virtual {p0, v4, v3, v2}, Lcom/coremobility/integration/b/d;->a(Ljava/lang/String;Lcom/coremobility/integration/b/a;Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x1c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDeletedItem with VnoteId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "SetVnotesDeleteField Exception %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v7, v3, v0}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0
.end method

.method private static a(Lcom/coremobility/integration/b/d;Lcom/coremobility/integration/h/d;Ljava/lang/String;Lcom/coremobility/integration/h/d;)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Lcom/coremobility/integration/b/d;->d:[Ljava/lang/Object;

    aget-object v4, v0, v1

    monitor-enter v4

    const/4 v0, 0x3

    if-ne v3, v0, :cond_0

    const/4 v0, 0x6

    :try_start_0
    invoke-static {p0, v0, p2}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    monitor-exit v4

    move v0, v1

    :goto_0
    return v0

    :cond_0
    new-instance v5, Lcom/coremobility/integration/h/d;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    invoke-static {p1, v5}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/h/d;Lcom/coremobility/integration/h/d;)V

    iget-object v0, p1, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v0, v5, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v3, v6, v0, p2}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;IIILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    iget-object v0, p3, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v2

    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private static a(Lcom/coremobility/integration/b/d;Ljava/lang/String;I)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x2

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "record_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "filename_only"

    aput-object v5, v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filename_only = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "vnotes_mime"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v4, v2, v6}, Lcom/coremobility/integration/b/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/coremobility/integration/b/b;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v3}, Lcom/coremobility/integration/b/b;->b()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v3}, Lcom/coremobility/integration/b/b;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/16 v4, 0x1c

    const-string v5, "FileInUseByOtherVnotes Exception %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v4, v5, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/coremobility/integration/b/b;->a()V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v3}, Lcom/coremobility/integration/b/b;->c()Z

    move v2, v0

    :goto_1
    invoke-virtual {v3}, Lcom/coremobility/integration/b/b;->b()I

    move-result v4

    if-ge v2, v4, :cond_4

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/coremobility/integration/b/b;->a(I)I

    move-result v4

    if-eq v4, p2, :cond_3

    invoke-virtual {v3}, Lcom/coremobility/integration/b/b;->a()V

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lcom/coremobility/integration/b/b;->d()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Lcom/coremobility/integration/b/b;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static b(Lcom/coremobility/integration/b/d;ILjava/lang/String;)I
    .locals 11

    const/4 v3, 0x0

    const/4 v10, 0x1

    const/16 v9, 0x1c

    const/4 v1, 0x0

    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "record_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "filename_only"

    aput-object v4, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "record_id = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p2, :cond_1

    const-string v0, ""

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v0, "vnotes_mime"

    const/4 v5, 0x0

    invoke-virtual {p0, v0, v4, v2, v5}, Lcom/coremobility/integration/b/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/coremobility/integration/b/b;

    move-result-object v2

    if-nez v2, :cond_2

    move v0, v1

    :cond_0
    :goto_1
    return v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v2}, Lcom/coremobility/integration/b/b;->b()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v2}, Lcom/coremobility/integration/b/b;->a()V

    move v0, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/coremobility/integration/b/b;->c()Z

    move v0, v1

    :goto_2
    invoke-virtual {v2}, Lcom/coremobility/integration/b/b;->b()I

    move-result v5

    if-ge v0, v5, :cond_6

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/coremobility/integration/b/b;->c(I)Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, p0, Lcom/coremobility/integration/b/d;->b:Z

    if-eqz v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    invoke-static {}, Lcom/coremobility/integration/file/a;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "smvvm"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Deleteting Mime File "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    invoke-static {v5}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;)I

    :cond_4
    :goto_3
    invoke-virtual {v2}, Lcom/coremobility/integration/b/b;->d()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    invoke-static {p0, v5, p1}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_4

    const/16 v6, 0x1c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Deleteting Mime File "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    invoke-static {v5}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;)I

    const-string v6, "VN-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v5}, Lcom/coremobility/k/a;->a(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v3, v2

    move-object v2, v0

    move v0, v1

    :goto_4
    const-string v4, "DeleteVnotesMimes Exception %s"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v9, v4, v5}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/coremobility/integration/b/b;->a()V

    goto/16 :goto_1

    :cond_6
    :try_start_2
    invoke-virtual {v2}, Lcom/coremobility/integration/b/b;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    const-string v0, "vnotes_mime"

    invoke-virtual {p0, v0, v4}, Lcom/coremobility/integration/b/d;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v0

    const/16 v2, 0x1c

    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DeleteVnotesMimes VnotesId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v2

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v2, v0

    move v0, v1

    goto :goto_4
.end method

.method public static b(Lcom/coremobility/integration/b/d;Lcom/coremobility/integration/b/a;)I
    .locals 14

    const/4 v10, 0x1

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Lcom/coremobility/integration/b/a;

    invoke-direct {v0, p1}, Lcom/coremobility/integration/b/a;-><init>(Lcom/coremobility/integration/b/a;)V

    :goto_0
    const-string v1, "record_id"

    iget-object v2, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v0, 0x1c

    const-string v1, "VnotesMime INSERT Missing Record ID"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x1

    :goto_1
    return v0

    :cond_0
    new-instance v0, Lcom/coremobility/integration/b/a;

    invoke-direct {v0}, Lcom/coremobility/integration/b/a;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v1, 0x1c

    const-string v2, "VnotesMime INSERT Exception: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x1

    goto :goto_1

    :cond_1
    :try_start_1
    const-string v1, "record_id"

    iget-object v2, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v1, "file_type"

    iget-object v3, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v0, 0x1c

    const-string v1, "VnotesMime INSERT Missing File Type"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x1

    goto :goto_1

    :cond_2
    const-string v1, "filename_only"

    iget-object v3, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v0, 0x1c

    const-string v1, "VnotesMime INSERT Missing Filename"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/coremobility/integration/b/d;->d:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v11, v1, v3

    monitor-enter v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {p0}, Lcom/coremobility/integration/b/d;->c()V

    const-string v1, "vnotes_mime"

    invoke-virtual {p0, v1, v0}, Lcom/coremobility/integration/b/d;->a(Ljava/lang/String;Lcom/coremobility/integration/b/a;)J

    move-result-wide v12

    const-wide/16 v0, 0x0

    cmp-long v0, v12, v0

    if-gez v0, :cond_6

    const/16 v0, 0x1c

    const-string v1, "VnotesMime INSERT Failed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/coremobility/integration/b/d;->e()V

    :cond_4
    :goto_2
    const-string v1, "insert"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v9}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;Ljava/lang/String;IIIIILjava/lang/String;II)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_7

    const/16 v0, 0x1c

    const-string v1, "Changes INSERT MIME INBOX Failed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/coremobility/integration/b/d;->e()V

    :goto_3
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/coremobility/integration/b/d;->d()V

    :cond_5
    monitor-exit v11

    long-to-int v0, v12

    goto/16 :goto_1

    :cond_6
    const-wide/16 v0, 0x0

    cmp-long v0, v12, v0

    if-nez v0, :cond_4

    const/16 v0, 0x1c

    const-string v1, "VnotesMime INSERT abort, duplicate"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/coremobility/integration/b/d;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v11

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_7
    move v0, v10

    goto :goto_3
.end method

.method public static b(Lcom/coremobility/integration/b/d;Ljava/lang/String;)I
    .locals 11

    const/16 v10, 0x1c

    const/4 v8, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeleteBulkList with VnotesList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v10, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v9, Lcom/coremobility/integration/h/d;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    :try_start_0
    new-instance v1, Lcom/coremobility/integration/h/d;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lcom/coremobility/integration/h/d;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    new-instance v3, Ljava/util/StringTokenizer;

    const-string v0, ","

    invoke-direct {v3, p1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, v9, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0, v1, v2}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ILcom/coremobility/integration/h/d;Lcom/coremobility/integration/h/d;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v9, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-static {p0, v1, p1, v9}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;Lcom/coremobility/integration/h/d;Ljava/lang/String;Lcom/coremobility/integration/h/d;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x1c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeleteBulkList with VnotesList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/integration/app/j;->a()Lcom/coremobility/integration/app/j;

    const-wide/16 v0, 0x0

    const-string v2, "delete_bulk"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/coremobility/integration/app/j;->a(JLjava/lang/String;IIIII)V

    :goto_1
    iget-object v0, v9, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_3
    const/16 v0, 0x1c

    const-string v1, "DeleteBulkList failed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "DeleteBulkList Exception %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v8

    invoke-static {v10, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    move v0, v8

    goto :goto_0
.end method

.method public static b(I)V
    .locals 3

    sget-object v0, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v1, v0, p0

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/coremobility/k/c;->b:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    sget-object v0, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v0, v0, p0

    iget v2, v0, Lcom/coremobility/k/c;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/coremobility/k/c;->b:I

    sget-object v0, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/coremobility/k/c;->b:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v0, v0, p0

    iget-object v0, v0, Lcom/coremobility/k/c;->a:Lcom/coremobility/integration/b/d;

    invoke-virtual {v0}, Lcom/coremobility/integration/b/d;->b()V

    sget-object v0, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v0, v0, p0

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/coremobility/k/c;->a:Lcom/coremobility/integration/b/d;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Lcom/coremobility/integration/b/d;I)V
    .locals 8

    const/4 v0, 0x1

    const/16 v7, 0x1c

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/coremobility/integration/b/d;->d:[Ljava/lang/Object;

    aget-object v2, v2, v1

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Lcom/coremobility/integration/b/d;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    :try_start_1
    invoke-static {p0, p1, v3}, Lcom/coremobility/k/b;->b(Lcom/coremobility/integration/b/d;ILjava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "vnotes"

    invoke-virtual {p0, v4, v3}, Lcom/coremobility/integration/b/d;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x1c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DeleteVnotesRecord with VnoteId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v3, v5}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/coremobility/integration/b/d;->d()V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const/16 v3, 0x1c

    :try_start_3
    const-string v4, "DeleteVnotesRecord Exception %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/coremobility/integration/b/d;->e()V

    const-string v0, "DeleteVnotesRecord failed."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static c(Lcom/coremobility/integration/b/d;Ljava/lang/String;)I
    .locals 12

    const/16 v11, 0x1c

    const/4 v10, 0x1

    const/4 v9, 0x0

    :try_start_0
    new-instance v0, Lcom/coremobility/integration/b/a;

    invoke-direct {v0}, Lcom/coremobility/integration/b/a;-><init>()V

    const-string v1, "is_deleted"

    iget-object v2, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "vnotes"

    invoke-virtual {p0, v1, v0, p1}, Lcom/coremobility/integration/b/d;->a(Ljava/lang/String;Lcom/coremobility/integration/b/a;Ljava/lang/String;)I

    move-result v8

    const/16 v0, 0x1c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeleteBulkList with WhereClause = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/integration/app/j;->a()Lcom/coremobility/integration/app/j;

    const-wide/16 v0, 0x0

    const-string v2, "delete_bulk"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/coremobility/integration/app/j;->a(JLjava/lang/String;IIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v8

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "DeleteBulkList Exception %s"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v9

    invoke-static {v11, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    move v0, v9

    goto :goto_0
.end method

.method private static c(Lcom/coremobility/integration/b/d;I)Z
    .locals 8

    const/16 v7, 0x1c

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    const/16 v2, 0x1c

    :try_start_0
    const-string v3, "CM_VnotesDbUtils UpgradeVnotesDb() old %d new %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "ALTER TABLE vnotes ADD txt_summary text null;"

    invoke-virtual {p0, v2}, Lcom/coremobility/integration/b/d;->b(Ljava/lang/String;)V

    const-string v2, "ALTER TABLE vnotes_mime ADD transcribe_rate integer null;"

    invoke-virtual {p0, v2}, Lcom/coremobility/integration/b/d;->b(Ljava/lang/String;)V

    const-string v2, "ALTER TABLE vnotes_mime ADD mime_guid text null;"

    invoke-virtual {p0, v2}, Lcom/coremobility/integration/b/d;->b(Ljava/lang/String;)V

    const-string v2, "ALTER TABLE changes ADD guid text null;"

    invoke-virtual {p0, v2}, Lcom/coremobility/integration/b/d;->b(Ljava/lang/String;)V

    const-string v2, "ALTER TABLE changes ADD old_rate integer null;"

    invoke-virtual {p0, v2}, Lcom/coremobility/integration/b/d;->b(Ljava/lang/String;)V

    const-string v2, "ALTER TABLE changes ADD new_rate integer null;"

    invoke-virtual {p0, v2}, Lcom/coremobility/integration/b/d;->b(Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/coremobility/integration/b/d;->a(I)V

    const/16 v2, 0x1c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VNOTES Provider Upgrade. oldVersion = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " newVersion = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "CM_VnotesDbUtils UpgradeVnotesDb() Exception %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v7, v3, v0}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0

    :pswitch_1
    const/16 v2, 0x1c

    :try_start_1
    const-string v3, "CM_VnotesDbUtils UpgradeVnotesDb() old %d new %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "ALTER TABLE vnotes_mime ADD transcribe_rate integer null;"

    invoke-virtual {p0, v2}, Lcom/coremobility/integration/b/d;->b(Ljava/lang/String;)V

    const-string v2, "ALTER TABLE vnotes_mime ADD mime_guid text null;"

    invoke-virtual {p0, v2}, Lcom/coremobility/integration/b/d;->b(Ljava/lang/String;)V

    const-string v2, "ALTER TABLE changes ADD guid text null;"

    invoke-virtual {p0, v2}, Lcom/coremobility/integration/b/d;->b(Ljava/lang/String;)V

    const-string v2, "ALTER TABLE changes ADD old_rate integer null;"

    invoke-virtual {p0, v2}, Lcom/coremobility/integration/b/d;->b(Ljava/lang/String;)V

    const-string v2, "ALTER TABLE changes ADD new_rate integer null;"

    invoke-virtual {p0, v2}, Lcom/coremobility/integration/b/d;->b(Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/coremobility/integration/b/d;->a(I)V

    const/16 v2, 0x1c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VNOTES Provider Upgrade. oldVersion = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " newVersion = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
