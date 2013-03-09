.class public final Lcom/coremobility/app/vnotes/kb;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Vector;

.field private static b:Lcom/coremobility/app/vnotes/kd;


# instance fields
.field private c:Ljava/util/Vector;

.field private d:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/app/vnotes/kb;->a:Ljava/util/Vector;

    sput-object v0, Lcom/coremobility/app/vnotes/kb;->b:Lcom/coremobility/app/vnotes/kd;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/kb;->c:Ljava/util/Vector;

    const/4 v0, 0x1

    iput v0, p0, Lcom/coremobility/app/vnotes/kb;->d:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/coremobility/app/vnotes/kb;->e:I

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 4

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->b()Ljava/util/Vector;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/ke;

    iget-object v3, v0, Lcom/coremobility/app/vnotes/ke;->a:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v0, v0, Lcom/coremobility/app/vnotes/ke;->b:I

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static a()Lcom/coremobility/app/vnotes/kd;
    .locals 1

    sget-object v0, Lcom/coremobility/app/vnotes/kb;->b:Lcom/coremobility/app/vnotes/kd;

    if-nez v0, :cond_0

    new-instance v0, Lcom/coremobility/app/vnotes/kd;

    invoke-direct {v0}, Lcom/coremobility/app/vnotes/kd;-><init>()V

    sput-object v0, Lcom/coremobility/app/vnotes/kb;->b:Lcom/coremobility/app/vnotes/kd;

    :cond_0
    sget-object v0, Lcom/coremobility/app/vnotes/kb;->b:Lcom/coremobility/app/vnotes/kd;

    return-object v0
.end method

.method public static b(I)I
    .locals 4

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->b()Ljava/util/Vector;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/ke;

    iget v3, v0, Lcom/coremobility/app/vnotes/ke;->b:I

    if-ne v3, p0, :cond_0

    iget v0, v0, Lcom/coremobility/app/vnotes/ke;->c:I

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static b()Ljava/util/Vector;
    .locals 1

    sget-object v0, Lcom/coremobility/app/vnotes/kb;->a:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/coremobility/app/vnotes/kb;->a:Ljava/util/Vector;

    :cond_0
    sget-object v0, Lcom/coremobility/app/vnotes/kb;->a:Ljava/util/Vector;

    return-object v0
.end method

.method public static c(I)Ljava/lang/String;
    .locals 5

    const-string v2, ""

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->b()Ljava/util/Vector;

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/ke;

    iget v4, v0, Lcom/coremobility/app/vnotes/ke;->b:I

    if-ne v4, p0, :cond_0

    iget-object v0, v0, Lcom/coremobility/app/vnotes/ke;->a:Ljava/lang/String;

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_1
.end method

.method public static e()I
    .locals 4

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->b()Ljava/util/Vector;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/ke;

    iget v3, v0, Lcom/coremobility/app/vnotes/ke;->c:I

    if-nez v3, :cond_0

    iget v0, v0, Lcom/coremobility/app/vnotes/ke;->b:I

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static f()Z
    .locals 4

    const/4 v2, 0x0

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->b()Ljava/util/Vector;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/ke;

    iget v0, v0, Lcom/coremobility/app/vnotes/ke;->c:I

    if-nez v0, :cond_1

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static h()Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/coremobility/app/vnotes/kb;->b:Lcom/coremobility/app/vnotes/kd;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/coremobility/app/vnotes/kb;->b:Lcom/coremobility/app/vnotes/kd;

    iget v0, v0, Lcom/coremobility/app/vnotes/kd;->c:I

    if-eq v0, v2, :cond_0

    sget-object v0, Lcom/coremobility/app/vnotes/kb;->b:Lcom/coremobility/app/vnotes/kd;

    iget v0, v0, Lcom/coremobility/app/vnotes/kd;->c:I

    const/16 v3, 0x8

    if-eq v0, v3, :cond_0

    sget-object v0, Lcom/coremobility/app/vnotes/kb;->b:Lcom/coremobility/app/vnotes/kd;

    iget v0, v0, Lcom/coremobility/app/vnotes/kd;->c:I

    const/16 v3, 0x9

    if-ne v0, v3, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    sget-object v3, Lcom/coremobility/app/vnotes/kb;->b:Lcom/coremobility/app/vnotes/kd;

    iget-object v3, v3, Lcom/coremobility/app/vnotes/kd;->f:Lcom/coremobility/app/vnotes/ke;

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    sget-object v0, Lcom/coremobility/app/vnotes/kb;->b:Lcom/coremobility/app/vnotes/kd;

    iget-object v0, v0, Lcom/coremobility/app/vnotes/kd;->f:Lcom/coremobility/app/vnotes/ke;

    iget v0, v0, Lcom/coremobility/app/vnotes/ke;->c:I

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    :goto_1
    return v1

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/16 v0, 0x31

    const-string v2, "Could not determine if current subscription was a free trial."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static i()Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    move-result-object v2

    iget v2, v2, Lcom/coremobility/app/vnotes/kb;->d:I

    :goto_0
    if-eq v2, v0, :cond_0

    const/4 v4, 0x7

    if-eq v2, v4, :cond_0

    const/4 v4, 0x3

    if-eq v2, v4, :cond_0

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_1
    return v0

    :cond_2
    const/4 v4, 0x4

    if-eq v2, v4, :cond_3

    const/16 v4, 0xb

    if-ne v2, v4, :cond_1

    :cond_3
    if-eqz v3, :cond_4

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->h()Z

    move-result v2

    :goto_2
    if-nez v2, :cond_1

    move v0, v1

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_2

    :cond_5
    move v2, v0

    goto :goto_0
.end method

.method public static j()Ljava/util/Vector;
    .locals 6

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->b()Ljava/util/Vector;

    move-result-object v2

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/ke;

    iget v5, v0, Lcom/coremobility/app/vnotes/ke;->c:I

    if-eqz v5, :cond_0

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public static k()Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/coremobility/app/vnotes/kb;->b:Lcom/coremobility/app/vnotes/kd;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/coremobility/app/vnotes/kb;->b:Lcom/coremobility/app/vnotes/kd;

    iget v0, v0, Lcom/coremobility/app/vnotes/kd;->c:I

    const/16 v3, 0x8

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->h()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    sget-object v0, Lcom/coremobility/app/vnotes/kb;->b:Lcom/coremobility/app/vnotes/kd;

    iget-wide v5, v0, Lcom/coremobility/app/vnotes/kd;->d:J

    sub-long v3, v5, v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    move v2, v1

    :cond_1
    return v2

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public static l()I
    .locals 4

    const/4 v1, 0x0

    sget-object v0, Lcom/coremobility/app/vnotes/kb;->b:Lcom/coremobility/app/vnotes/kd;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/coremobility/app/vnotes/kb;->b:Lcom/coremobility/app/vnotes/kd;

    iget v0, v0, Lcom/coremobility/app/vnotes/kd;->c:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->h()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sget-object v2, Lcom/coremobility/app/vnotes/kb;->b:Lcom/coremobility/app/vnotes/kd;

    iget-wide v2, v2, Lcom/coremobility/app/vnotes/kd;->d:J

    sub-long v0, v2, v0

    const-wide/32 v2, 0x15180

    div-long/2addr v0, v2

    long-to-int v1, v0

    :cond_1
    return v1

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static m()V
    .locals 1

    sget-object v0, Lcom/coremobility/app/vnotes/kb;->a:Ljava/util/Vector;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/coremobility/app/vnotes/kb;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    iput p1, p0, Lcom/coremobility/app/vnotes/kb;->d:I

    sget-boolean v0, Lcom/coremobility/a/b;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/kb;->c:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/kb;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/kb;->c:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/kc;

    iget v3, p0, Lcom/coremobility/app/vnotes/kb;->d:I

    invoke-interface {v0, v3}, Lcom/coremobility/app/vnotes/kc;->c_(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/coremobility/app/vnotes/kc;)V
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/kb;->c:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/kb;->c:Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/kb;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Lcom/coremobility/app/vnotes/kc;)V
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/kb;->c:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/kb;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/coremobility/app/vnotes/kb;->d:I

    return v0
.end method

.method public final d()V
    .locals 3

    sget-boolean v0, Lcom/coremobility/a/b;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/kb;->c:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/kb;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/kb;->c:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/kc;

    invoke-interface {v0}, Lcom/coremobility/app/vnotes/kc;->h()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lcom/coremobility/app/vnotes/kb;->e:I

    return-void
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/coremobility/app/vnotes/kb;->e:I

    return v0
.end method

.method public final n()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/coremobility/app/vnotes/kb;->a:Ljava/util/Vector;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/coremobility/app/vnotes/kb;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    :cond_0
    sget-object v0, Lcom/coremobility/app/vnotes/kb;->b:Lcom/coremobility/app/vnotes/kd;

    if-eqz v0, :cond_1

    sput-object v1, Lcom/coremobility/app/vnotes/kb;->b:Lcom/coremobility/app/vnotes/kd;

    :cond_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/kb;->c:Ljava/util/Vector;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/kb;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iput-object v1, p0, Lcom/coremobility/app/vnotes/kb;->c:Ljava/util/Vector;

    :cond_2
    return-void
.end method
