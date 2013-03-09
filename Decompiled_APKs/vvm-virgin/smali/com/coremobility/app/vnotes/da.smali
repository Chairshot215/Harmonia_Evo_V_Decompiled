.class public final Lcom/coremobility/app/vnotes/da;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coremobility/integration/app/k;
.implements Lcom/coremobility/integration/b/e;


# instance fields
.field a:Ljava/util/Vector;

.field b:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/da;->b:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/da;->a:Ljava/util/Vector;

    return-void
.end method

.method public static a(Landroid/content/Context;I[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    const/4 v7, 0x6

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vnote Query for ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v7, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/coremobility/integration/app/k;->B:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dir_id=5 AND _id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is_deleted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "record_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "out_timestamp DESC,_id DESC"

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "Vnote Query ended"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v7, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;ILcom/coremobility/app/vnotes/ka;)V
    .locals 12

    const/4 v11, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    sget-object v0, Lcom/coremobility/app/vnotes/da;->y:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v0, "updateVnoteCache VN_EVENT_VNOTEADDED query executed"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v11, v0, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/coremobility/app/vnotes/cq;->c:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    const-string v0, "updateVnoteCache VN_EVENT_VNOTEADDED query finished"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v11, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v7, v0, [I

    new-array v5, v0, [Ljava/lang/String;

    new-array v4, v0, [J

    new-array v2, v0, [I

    new-array v1, v0, [Ljava/lang/String;

    new-array v3, v0, [I

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v6

    :cond_0
    const/4 v9, 0x3

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v0

    const/4 v9, 0x2

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    aput v9, v7, v0

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    int-to-long v9, v9

    aput-wide v9, v4, v0

    const/4 v9, 0x5

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    aput v9, v2, v0

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    aput v9, v3, v0

    const/4 v9, 0x7

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_0

    :cond_1
    move-object v0, v1

    move-object v1, v2

    move-object v2, v4

    move-object v4, v5

    move-object v5, v7

    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    invoke-static {v2}, Lcom/coremobility/app/vnotes/cf;->a([J)J

    move-result-wide v6

    invoke-virtual {p2, v6, v7}, Lcom/coremobility/app/vnotes/ka;->c(J)V

    invoke-virtual {p2, v5}, Lcom/coremobility/app/vnotes/ka;->a([I)V

    invoke-virtual {p2, v4}, Lcom/coremobility/app/vnotes/ka;->a([Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/coremobility/app/vnotes/ka;->b([I)V

    invoke-virtual {p2, v0}, Lcom/coremobility/app/vnotes/ka;->b([Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Lcom/coremobility/app/vnotes/ka;->c([I)V

    return-void

    :cond_2
    move-object v0, v3

    move-object v1, v3

    move-object v2, v3

    move-object v4, v3

    move-object v5, v3

    goto :goto_0
.end method

.method public static a(Lcom/coremobility/k/de;Lcom/coremobility/app/vnotes/ka;)Z
    .locals 12

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/coremobility/k/de;->g()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {p1, v3, v4}, Lcom/coremobility/app/vnotes/ka;->a(J)V

    invoke-virtual {p0}, Lcom/coremobility/k/de;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coremobility/app/vnotes/ka;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coremobility/k/de;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coremobility/app/vnotes/ka;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coremobility/k/de;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coremobility/app/vnotes/ka;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coremobility/k/de;->a()J

    move-result-wide v3

    long-to-int v0, v3

    int-to-long v3, v0

    invoke-virtual {p1, v3, v4}, Lcom/coremobility/app/vnotes/ka;->b(J)V

    invoke-virtual {p0}, Lcom/coremobility/k/de;->b()[J

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coremobility/app/vnotes/ka;->a([J)V

    invoke-virtual {p0}, Lcom/coremobility/k/de;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/coremobility/app/vnotes/ka;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coremobility/k/de;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/coremobility/app/vnotes/ka;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coremobility/k/de;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/coremobility/app/vnotes/ka;->f(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coremobility/k/de;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/coremobility/app/vnotes/ka;->g(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coremobility/k/de;->f()Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_1

    aget-wide v5, v0, v2

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-static {v3}, Lcom/coremobility/j/r;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    if-nez v0, :cond_3

    new-array v0, v1, [I

    new-array v3, v1, [Ljava/lang/String;

    new-array v5, v1, [I

    new-array v6, v1, [Ljava/lang/String;

    new-array v7, v1, [I

    invoke-virtual {p0}, Lcom/coremobility/k/de;->c()J

    move-result-wide v8

    invoke-virtual {p0}, Lcom/coremobility/k/de;->d()J

    move-result-wide v10

    long-to-int v10, v10

    invoke-virtual {p0}, Lcom/coremobility/k/de;->w()I

    move-result v11

    invoke-virtual {p1, v8, v9}, Lcom/coremobility/app/vnotes/ka;->c(J)V

    aput v10, v0, v2

    aput-object v4, v3, v2

    aput v11, v5, v2

    invoke-virtual {p0}, Lcom/coremobility/k/de;->y()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    invoke-virtual {p0}, Lcom/coremobility/k/de;->x()I

    move-result v4

    aput v4, v7, v2

    invoke-virtual {p1, v0}, Lcom/coremobility/app/vnotes/ka;->a([I)V

    invoke-virtual {p1, v3}, Lcom/coremobility/app/vnotes/ka;->a([Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Lcom/coremobility/app/vnotes/ka;->b([I)V

    invoke-virtual {p1, v6}, Lcom/coremobility/app/vnotes/ka;->b([Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Lcom/coremobility/app/vnotes/ka;->c([I)V

    :goto_2
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/da;->a:Ljava/util/Vector;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/da;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final a(I)I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/da;->a:Ljava/util/Vector;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/coremobility/app/vnotes/da;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/da;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public final a(Landroid/database/Cursor;)V
    .locals 2

    if-nez p1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/da;->a:Ljava/util/Vector;

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/da;->a:Ljava/util/Vector;

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/da;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0
.end method

.method public final a(ILandroid/database/Cursor;Lcom/coremobility/app/vnotes/ka;Landroid/content/Context;)Z
    .locals 6

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/da;->a:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/da;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    :cond_0
    move v0, v2

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/coremobility/app/vnotes/da;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/da;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremobility/app/vnotes/db;

    const/4 v3, 0x0

    if-nez v1, :cond_5

    new-instance v1, Lcom/coremobility/app/vnotes/db;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/db;-><init>(Lcom/coremobility/app/vnotes/da;)V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/da;->b:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    move v0, v4

    move-object v1, v3

    :goto_1
    if-eqz v0, :cond_4

    invoke-interface {p2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-static {p2}, Lcom/coremobility/app/vnotes/cq;->c(Landroid/database/Cursor;)Lcom/coremobility/k/de;

    move-result-object v3

    new-instance v1, Lcom/coremobility/app/vnotes/ka;

    invoke-direct {v1}, Lcom/coremobility/app/vnotes/ka;-><init>()V

    invoke-static {v3, v1}, Lcom/coremobility/app/vnotes/da;->a(Lcom/coremobility/k/de;Lcom/coremobility/app/vnotes/ka;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Lcom/coremobility/k/de;->g()I

    move-result v3

    invoke-static {p4, v3, v1}, Lcom/coremobility/app/vnotes/da;->a(Landroid/content/Context;ILcom/coremobility/app/vnotes/ka;)V

    :cond_3
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lcom/coremobility/app/vnotes/db;->a:Ljava/lang/ref/SoftReference;

    :cond_4
    if-eqz p3, :cond_1

    invoke-virtual {v1}, Lcom/coremobility/app/vnotes/ka;->a()J

    move-result-wide v2

    invoke-virtual {p3, v2, v3}, Lcom/coremobility/app/vnotes/ka;->a(J)V

    invoke-virtual {v1}, Lcom/coremobility/app/vnotes/ka;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/coremobility/app/vnotes/ka;->b(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/coremobility/app/vnotes/ka;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/coremobility/app/vnotes/ka;->c(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/coremobility/app/vnotes/ka;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/coremobility/app/vnotes/ka;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/coremobility/app/vnotes/ka;->b()J

    move-result-wide v2

    invoke-virtual {p3, v2, v3}, Lcom/coremobility/app/vnotes/ka;->b(J)V

    invoke-virtual {v1}, Lcom/coremobility/app/vnotes/ka;->c()[J

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/coremobility/app/vnotes/ka;->a([J)V

    invoke-virtual {v1}, Lcom/coremobility/app/vnotes/ka;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/coremobility/app/vnotes/ka;->d(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/coremobility/app/vnotes/ka;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/coremobility/app/vnotes/ka;->e(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/coremobility/app/vnotes/ka;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/coremobility/app/vnotes/ka;->f(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/coremobility/app/vnotes/ka;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/coremobility/app/vnotes/ka;->g(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/coremobility/app/vnotes/ka;->j()J

    move-result-wide v2

    invoke-virtual {p3, v2, v3}, Lcom/coremobility/app/vnotes/ka;->c(J)V

    invoke-virtual {v1}, Lcom/coremobility/app/vnotes/ka;->k()[I

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/coremobility/app/vnotes/ka;->a([I)V

    invoke-virtual {v1}, Lcom/coremobility/app/vnotes/ka;->l()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/coremobility/app/vnotes/ka;->a([Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/coremobility/app/vnotes/ka;->n()[I

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/coremobility/app/vnotes/ka;->b([I)V

    invoke-virtual {v1}, Lcom/coremobility/app/vnotes/ka;->p()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/coremobility/app/vnotes/ka;->b([Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/coremobility/app/vnotes/ka;->o()[I

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/coremobility/app/vnotes/ka;->c([I)V

    invoke-virtual {v1}, Lcom/coremobility/app/vnotes/ka;->q()Lcom/coremobility/l/an;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/coremobility/app/vnotes/ka;->a(Lcom/coremobility/l/an;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, v1, Lcom/coremobility/app/vnotes/db;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    move-object v2, v1

    move v0, v4

    move-object v1, v3

    goto/16 :goto_1

    :cond_6
    iget-object v0, v1, Lcom/coremobility/app/vnotes/db;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/ka;

    move-object v5, v0

    move v0, v2

    move-object v2, v1

    move-object v1, v5

    goto/16 :goto_1
.end method

.method public final b(I)I
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/da;->a:Ljava/util/Vector;

    if-nez v0, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/da;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/da;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/da;->b:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/da;->a:Ljava/util/Vector;

    return-void
.end method

.method public final c(I)Lcom/coremobility/app/vnotes/ka;
    .locals 2

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/da;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/db;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/coremobility/app/vnotes/db;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/ka;

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
