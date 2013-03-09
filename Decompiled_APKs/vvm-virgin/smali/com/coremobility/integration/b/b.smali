.class public final Lcom/coremobility/integration/b/b;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/database/Cursor;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/coremobility/integration/b/b;->a:Landroid/database/Cursor;

    iput-object v0, p0, Lcom/coremobility/integration/b/b;->a:Landroid/database/Cursor;

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    iget-object v0, p0, Lcom/coremobility/integration/b/b;->a:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/coremobility/integration/b/b;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/coremobility/integration/b/b;->a:Landroid/database/Cursor;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/coremobility/integration/b/b;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/b/b;->a:Landroid/database/Cursor;

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/coremobility/integration/b/b;->a:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/coremobility/integration/b/b;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public final b(I)J
    .locals 2

    iget-object v0, p0, Lcom/coremobility/integration/b/b;->a:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/coremobility/integration/b/b;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final c(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/integration/b/b;->a:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/coremobility/integration/b/b;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lcom/coremobility/integration/b/b;->a:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/coremobility/integration/b/b;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lcom/coremobility/integration/b/b;->a:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/coremobility/integration/b/b;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    goto :goto_0
.end method
