.class public final Lcom/coremobility/g/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coremobility/g/a;


# static fields
.field private static e:Lcom/coremobility/g/j;

.field private static f:Lcom/coremobility/g/b;


# instance fields
.field a:[Lcom/coremobility/g/h;

.field b:I

.field c:Z

.field d:I


# direct methods
.method private constructor <init>()V
    .locals 4

    const/16 v3, 0x9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v3, [Lcom/coremobility/g/h;

    iput-object v0, p0, Lcom/coremobility/g/j;->a:[Lcom/coremobility/g/h;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lcom/coremobility/g/j;->a:[Lcom/coremobility/g/h;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a()Lcom/coremobility/g/j;
    .locals 3

    sget-object v0, Lcom/coremobility/g/j;->e:Lcom/coremobility/g/j;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const-string v1, "Creating CM_StartupManager instance"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/coremobility/g/j;

    invoke-direct {v0}, Lcom/coremobility/g/j;-><init>()V

    sput-object v0, Lcom/coremobility/g/j;->e:Lcom/coremobility/g/j;

    :cond_0
    sget-object v0, Lcom/coremobility/g/j;->e:Lcom/coremobility/g/j;

    return-object v0
.end method

.method public static d()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/g/j;->e:Lcom/coremobility/g/j;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;II)V
    .locals 3

    sget v0, Lcom/coremobility/g/k;->b:I

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/coremobility/g/j;->e()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/coremobility/g/k;->c:I

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/coremobility/g/j;->a:[Lcom/coremobility/g/h;

    iget v1, p0, Lcom/coremobility/g/j;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/coremobility/g/j;->b:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/coremobility/g/h;->h()V

    goto :goto_0

    :cond_2
    sget v0, Lcom/coremobility/g/k;->d:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/g/j;->a:[Lcom/coremobility/g/h;

    iget v1, p0, Lcom/coremobility/g/j;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/coremobility/g/j;->b:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/coremobility/g/h;->i()V

    goto :goto_0
.end method

.method public final a(Lcom/coremobility/g/h;I)V
    .locals 1

    iget-object v0, p0, Lcom/coremobility/g/j;->a:[Lcom/coremobility/g/h;

    aput-object p1, v0, p2

    return-void
.end method

.method public final b()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/coremobility/g/b;->a()Lcom/coremobility/g/b;

    move-result-object v0

    sput-object v0, Lcom/coremobility/g/j;->f:Lcom/coremobility/g/b;

    iput v3, p0, Lcom/coremobility/g/j;->b:I

    iput-boolean v3, p0, Lcom/coremobility/g/j;->c:Z

    iput v3, p0, Lcom/coremobility/g/j;->d:I

    sget-object v0, Lcom/coremobility/g/j;->f:Lcom/coremobility/g/b;

    sget v1, Lcom/coremobility/g/k;->a:I

    invoke-virtual {v0, v1, p0}, Lcom/coremobility/g/b;->a(ILcom/coremobility/g/a;)V

    iget-boolean v0, p0, Lcom/coremobility/g/j;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/g/j;->c:Z

    sget-object v0, Lcom/coremobility/g/j;->f:Lcom/coremobility/g/b;

    sget v1, Lcom/coremobility/g/k;->b:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    sget-object v0, Lcom/coremobility/g/j;->f:Lcom/coremobility/g/b;

    if-eqz v0, :cond_0

    sget v0, Lcom/coremobility/g/k;->a:I

    invoke-static {v0, p0}, Lcom/coremobility/g/b;->b(ILcom/coremobility/g/a;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/g/j;->f:Lcom/coremobility/g/b;

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x9

    const/4 v2, 0x0

    :goto_0
    iget v0, p0, Lcom/coremobility/g/j;->b:I

    if-ge v0, v3, :cond_0

    iget-object v0, p0, Lcom/coremobility/g/j;->a:[Lcom/coremobility/g/h;

    iget v1, p0, Lcom/coremobility/g/j;->b:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/coremobility/g/j;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coremobility/g/j;->b:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/coremobility/g/j;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    :goto_1
    return-void

    :pswitch_0
    iget v0, p0, Lcom/coremobility/g/j;->b:I

    if-ge v0, v3, :cond_1

    sget-object v0, Lcom/coremobility/g/j;->f:Lcom/coremobility/g/b;

    sget v1, Lcom/coremobility/g/k;->c:I

    invoke-virtual {v0, v1, v4, v2, v2}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    goto :goto_1

    :cond_1
    iput v2, p0, Lcom/coremobility/g/j;->b:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/coremobility/g/j;->d:I

    sget-object v0, Lcom/coremobility/g/j;->f:Lcom/coremobility/g/b;

    sget v1, Lcom/coremobility/g/k;->b:I

    invoke-virtual {v0, v1, v4, v2, v2}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    goto :goto_1

    :pswitch_1
    iget v0, p0, Lcom/coremobility/g/j;->b:I

    if-ge v0, v3, :cond_2

    sget-object v0, Lcom/coremobility/g/j;->f:Lcom/coremobility/g/b;

    sget v1, Lcom/coremobility/g/k;->d:I

    invoke-virtual {v0, v1, v4, v2, v2}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/coremobility/g/j;->c()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
