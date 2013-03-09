.class public abstract Lcom/coremobility/f/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coremobility/integration/app/f;


# instance fields
.field protected n:[Lcom/coremobility/integration/x;

.field protected o:I

.field protected p:Lcom/coremobility/f/h;

.field public q:[Lcom/coremobility/f/k;

.field protected r:I


# direct methods
.method protected constructor <init>(I)V
    .locals 9

    const/16 v8, 0xc

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [Lcom/coremobility/f/k;

    new-instance v1, Lcom/coremobility/f/k;

    invoke-direct {v1, p0, v8, v6}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/coremobility/f/k;

    invoke-direct {v1, p0, v5, v4}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/coremobility/f/k;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2, v5}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/coremobility/f/k;

    invoke-direct {v1, p0, v8, v6}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v1, v0, v4

    const/4 v1, 0x4

    new-instance v2, Lcom/coremobility/f/k;

    invoke-direct {v2, p0, v4, v4}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/coremobility/f/k;

    invoke-direct {v2, p0, v4, v6}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/coremobility/f/k;

    invoke-direct {v2, p0, v4, v7}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/coremobility/f/k;

    invoke-direct {v2, p0, v8, v6}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/coremobility/f/k;

    invoke-direct {v2, p0, v4, v5}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/coremobility/f/k;

    const/16 v3, 0x8

    invoke-direct {v2, p0, v3, v4}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/coremobility/f/k;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3, v5}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/coremobility/f/k;

    const/16 v3, 0x9

    invoke-direct {v2, p0, v3, v6}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/coremobility/f/k;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2, v4}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v1, v0, v8

    const/16 v1, 0xd

    new-instance v2, Lcom/coremobility/f/k;

    const/16 v3, 0xa

    invoke-direct {v2, p0, v3, v4}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/coremobility/f/k;

    const/4 v3, 0x6

    invoke-direct {v2, p0, v3, v7}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/coremobility/f/k;

    invoke-direct {v2, p0, v5, v4}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/coremobility/f/k;

    invoke-direct {v2, p0, v5, v4}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/coremobility/f/k;

    invoke-direct {v2, p0, v5, v4}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/coremobility/f/k;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3, v5}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/coremobility/f/k;

    invoke-direct {v2, p0, v7, v6}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lcom/coremobility/f/k;

    invoke-direct {v2, p0, v5, v4}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lcom/coremobility/f/k;

    invoke-direct {v2, p0, v4, v7}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lcom/coremobility/f/k;

    invoke-direct {v2, p0, v8, v7}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lcom/coremobility/f/k;

    invoke-direct {v2, p0, v8, v7}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lcom/coremobility/f/k;

    invoke-direct {v2, p0, v4, v4}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Lcom/coremobility/f/k;

    invoke-direct {v2, p0, v4, v4}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Lcom/coremobility/f/k;

    invoke-direct {v2, p0, v4, v4}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Lcom/coremobility/f/k;

    invoke-direct {v2, p0, v7, v6}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Lcom/coremobility/f/k;

    invoke-direct {v2, p0, v4, v4}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Lcom/coremobility/f/k;

    invoke-direct {v2, p0, v4, v4}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Lcom/coremobility/f/k;

    invoke-direct {v2, p0, v4, v4}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Lcom/coremobility/f/k;

    invoke-direct {v2, p0, v8, v4}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/coremobility/f/g;->q:[Lcom/coremobility/f/k;

    iput p1, p0, Lcom/coremobility/f/g;->o:I

    iput v6, p0, Lcom/coremobility/f/g;->r:I

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/coremobility/integration/x;

    iput-object v0, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    return-void
.end method

.method private a(ILcom/coremobility/f/j;)V
    .locals 6

    iget v0, p0, Lcom/coremobility/f/g;->r:I

    iget-object v1, p0, Lcom/coremobility/f/g;->q:[Lcom/coremobility/f/k;

    mul-int/lit8 v2, v0, 0x8

    add-int/2addr v2, p1

    aget-object v1, v1, v2

    iget v2, v1, Lcom/coremobility/f/k;->b:I

    iput v2, p0, Lcom/coremobility/f/g;->r:I

    const/16 v2, 0xc

    const-string v3, "%s + %s -> %s, %s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Lcom/coremobility/f/g;->d(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    packed-switch p1, :pswitch_data_0

    const-string v0, "undef"

    :goto_0
    aput-object v0, v4, v5

    const/4 v0, 0x2

    iget v5, p0, Lcom/coremobility/f/g;->r:I

    invoke-static {v5}, Lcom/coremobility/f/g;->d(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x3

    iget v5, v1, Lcom/coremobility/f/k;->a:I

    invoke-static {v5}, Lcom/coremobility/f/g;->c(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v0, v1, Lcom/coremobility/f/k;->a:I

    invoke-direct {p0, v0, p2}, Lcom/coremobility/f/g;->c(ILcom/coremobility/f/j;)V

    invoke-virtual {p0}, Lcom/coremobility/f/g;->f()V

    return-void

    :pswitch_0
    const-string v0, "Activated"

    goto :goto_0

    :pswitch_1
    const-string v0, "BlockNow"

    goto :goto_0

    :pswitch_2
    const-string v0, "DelayedBlock"

    goto :goto_0

    :pswitch_3
    const-string v0, "NoBlocks"

    goto :goto_0

    :pswitch_4
    const-string v0, "Shutdown"

    goto :goto_0

    :pswitch_5
    const-string v0, "SocketsClosed"

    goto :goto_0

    :pswitch_6
    const-string v0, "Suspend"

    goto :goto_0

    :pswitch_7
    const-string v0, "TimerFired"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private b(I)I
    .locals 3

    const/16 v1, 0xa

    move v0, p1

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/coremobility/integration/x;->b:I

    if-nez v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private b(ILcom/coremobility/f/j;)V
    .locals 5

    const/16 v0, 0xc

    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/coremobility/f/g;->c(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/coremobility/f/g;->c(ILcom/coremobility/f/j;)V

    return-void
.end method

.method private static c(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "undef"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "CloseNetwork"

    goto :goto_0

    :pswitch_1
    const-string v0, "CloseUc"

    goto :goto_0

    :pswitch_2
    const-string v0, "LastBlocker"

    goto :goto_0

    :pswitch_3
    const-string v0, "NoAction"

    goto :goto_0

    :pswitch_4
    const-string v0, "RestartTimer"

    goto :goto_0

    :pswitch_5
    const-string v0, "StartTimer"

    goto :goto_0

    :pswitch_6
    const-string v0, "StopTimer"

    goto :goto_0

    :pswitch_7
    const-string v0, "StopTimerClose"

    goto :goto_0

    :pswitch_8
    const-string v0, "StopTimerCloseUc"

    goto :goto_0

    :pswitch_9
    const-string v0, "StopTimerLast"

    goto :goto_0

    :pswitch_a
    const-string v0, "StopTimerUc"

    goto :goto_0

    :pswitch_b
    const-string v0, "UnavailComplete"

    goto :goto_0

    :pswitch_c
    const-string v0, "Unexpected"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private c(ILcom/coremobility/f/j;)V
    .locals 6

    const/16 v5, 0xa

    const/16 v3, 0xb

    const/4 v0, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0, v2, p2}, Lcom/coremobility/f/g;->b(ILcom/coremobility/f/j;)V

    invoke-direct {p0, v3, p2}, Lcom/coremobility/f/g;->b(ILcom/coremobility/f/j;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v0, p2}, Lcom/coremobility/f/g;->b(ILcom/coremobility/f/j;)V

    const/4 v0, 0x5

    invoke-direct {p0, v0, p2}, Lcom/coremobility/f/g;->b(ILcom/coremobility/f/j;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/coremobility/f/g;->p:Lcom/coremobility/f/h;

    iget v1, p2, Lcom/coremobility/f/j;->a:I

    invoke-virtual {v0, v1}, Lcom/coremobility/f/h;->a(I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/coremobility/f/g;->p:Lcom/coremobility/f/h;

    const v1, 0x340001

    invoke-static {v1, v0}, Lcom/coremobility/g/b;->b(ILjava/lang/Object;)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, v0, p2}, Lcom/coremobility/f/g;->b(ILcom/coremobility/f/j;)V

    invoke-direct {p0, v2, p2}, Lcom/coremobility/f/g;->b(ILcom/coremobility/f/j;)V

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x7

    invoke-direct {p0, v0, p2}, Lcom/coremobility/f/g;->b(ILcom/coremobility/f/j;)V

    invoke-direct {p0, v3, p2}, Lcom/coremobility/f/g;->b(ILcom/coremobility/f/j;)V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0, v0, p2}, Lcom/coremobility/f/g;->b(ILcom/coremobility/f/j;)V

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lcom/coremobility/f/g;->b(ILcom/coremobility/f/j;)V

    goto :goto_0

    :pswitch_8
    invoke-direct {p0, v0, p2}, Lcom/coremobility/f/g;->b(ILcom/coremobility/f/j;)V

    invoke-direct {p0, v3, p2}, Lcom/coremobility/f/g;->b(ILcom/coremobility/f/j;)V

    goto :goto_0

    :pswitch_9
    invoke-direct {p0, v2}, Lcom/coremobility/f/g;->b(I)I

    move-result v3

    if-ge v3, v5, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v0, v0, v3

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/coremobility/integration/x;->d()V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    :goto_3
    if-ge v3, v5, :cond_0

    iget-object v0, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v0, v0, v3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/coremobility/integration/x;->b:I

    const/4 v4, 0x3

    if-eq v0, v4, :cond_4

    move v0, v1

    :goto_4
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/coremobility/integration/x;->d()V

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private static d(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "undef"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "Available"

    goto :goto_0

    :pswitch_1
    const-string v0, "Deactivate"

    goto :goto_0

    :pswitch_2
    const-string v0, "Suspended"

    goto :goto_0

    :pswitch_3
    const-string v0, "Unavailable"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private f(Lcom/coremobility/integration/x;)I
    .locals 3

    const/16 v1, 0xa

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v2, v2, v0

    if-ne p1, v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private g(Lcom/coremobility/integration/x;)Z
    .locals 6

    const/16 v5, 0xa

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/coremobility/f/g;->f(Lcom/coremobility/integration/x;)I

    move-result v3

    if-ge v3, v5, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-direct {p0, v2}, Lcom/coremobility/f/g;->b(I)I

    move-result v4

    if-ge v4, v5, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    if-ge v3, v4, :cond_2

    iget-object v0, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v0, v0, v4

    const/4 v2, 0x3

    invoke-virtual {v0, v2, p0}, Lcom/coremobility/integration/x;->a(ILcom/coremobility/f/g;)V

    :goto_2
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method


# virtual methods
.method public abstract a(Lcom/coremobility/f/l;)I
.end method

.method public abstract a(IZ)V
.end method

.method public final a(Lcom/coremobility/integration/x;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/coremobility/f/g;->f(Lcom/coremobility/integration/x;)I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :cond_0
    return-void
.end method

.method public final a(Lcom/coremobility/integration/x;I)V
    .locals 1

    if-ltz p2, :cond_0

    const/16 v0, 0xa

    if-gt p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aput-object p1, v0, p2

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final a(Z)V
    .locals 5

    const/16 v4, 0xa

    const/4 v3, 0x3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    iget-object v2, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v2, v2, v1

    iput v3, v2, Lcom/coremobility/integration/x;->b:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/coremobility/f/g;->r:I

    iget-object v1, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v1, v1, v0

    iput v0, v1, Lcom/coremobility/integration/x;->b:I

    iput v3, p0, Lcom/coremobility/f/g;->r:I

    :cond_2
    new-instance v1, Lcom/coremobility/f/h;

    invoke-direct {v1, p0, p0}, Lcom/coremobility/f/h;-><init>(Lcom/coremobility/f/g;Lcom/coremobility/f/g;)V

    iput-object v1, p0, Lcom/coremobility/f/g;->p:Lcom/coremobility/f/h;

    :goto_1
    if-ge v0, v4, :cond_4

    iget-object v1, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/coremobility/integration/x;->a(Lcom/coremobility/f/g;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public abstract a(I)Z
.end method

.method public a(Lcom/coremobility/integration/v;I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract b()V
.end method

.method public b(Lcom/coremobility/f/l;)V
    .locals 0

    return-void
.end method

.method public final b(Lcom/coremobility/integration/x;)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/coremobility/f/g;->r:I

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/coremobility/f/g;->g(Lcom/coremobility/integration/x;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p1, v1, p0}, Lcom/coremobility/integration/x;->a(ILcom/coremobility/f/g;)V

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/coremobility/f/g;->a(ILcom/coremobility/f/j;)V

    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    invoke-virtual {p1, v0, p0}, Lcom/coremobility/integration/x;->a(ILcom/coremobility/f/g;)V

    goto :goto_1
.end method

.method public abstract c()V
.end method

.method public final c(Lcom/coremobility/integration/x;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v3, p0, Lcom/coremobility/f/g;->r:I

    if-eqz v3, :cond_0

    invoke-direct {p0, p1}, Lcom/coremobility/f/g;->g(Lcom/coremobility/integration/x;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p1, v1, p0}, Lcom/coremobility/integration/x;->a(ILcom/coremobility/f/g;)V

    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lcom/coremobility/f/g;->a(ILcom/coremobility/f/j;)V

    :goto_1
    const/4 v0, 0x3

    if-ne v0, v3, :cond_1

    invoke-virtual {p1}, Lcom/coremobility/integration/x;->d()V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    invoke-virtual {p1, v0, p0}, Lcom/coremobility/integration/x;->a(ILcom/coremobility/f/g;)V

    goto :goto_1
.end method

.method public abstract d()V
.end method

.method public final d(Lcom/coremobility/integration/x;)V
    .locals 6

    const/16 v5, 0xa

    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p1, Lcom/coremobility/integration/x;->b:I

    invoke-virtual {p1, v1, p0}, Lcom/coremobility/integration/x;->a(ILcom/coremobility/f/g;)V

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/coremobility/f/g;->f(Lcom/coremobility/integration/x;)I

    move-result v3

    if-ge v3, v5, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    :goto_1
    if-ge v3, v5, :cond_4

    iget-object v0, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v0, v0, v3

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/coremobility/integration/x;->b:I

    if-eq v0, v4, :cond_2

    move v0, v1

    :goto_2
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v0, v0, v3

    invoke-virtual {v0, v2, p0}, Lcom/coremobility/integration/x;->a(ILcom/coremobility/f/g;)V

    :cond_0
    :goto_3
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/coremobility/f/j;

    invoke-direct {v0, p0, p1}, Lcom/coremobility/f/j;-><init>(Lcom/coremobility/f/g;Lcom/coremobility/integration/x;)V

    invoke-direct {p0, v4, v0}, Lcom/coremobility/f/g;->a(ILcom/coremobility/f/j;)V

    goto :goto_3
.end method

.method public abstract e()V
.end method

.method public final e(Lcom/coremobility/integration/x;)V
    .locals 6

    const/16 v5, 0xa

    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p1, Lcom/coremobility/integration/x;->b:I

    invoke-virtual {p1, v1, p0}, Lcom/coremobility/integration/x;->a(ILcom/coremobility/f/g;)V

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/coremobility/f/g;->f(Lcom/coremobility/integration/x;)I

    move-result v3

    if-ge v3, v5, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    :goto_1
    if-ge v3, v5, :cond_4

    iget-object v0, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v0, v0, v3

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/coremobility/integration/x;->b:I

    if-eq v0, v4, :cond_2

    move v0, v1

    :goto_2
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v0, v0, v3

    invoke-virtual {v0, v2, p0}, Lcom/coremobility/integration/x;->a(ILcom/coremobility/f/g;)V

    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lcom/coremobility/f/g;->a(ILcom/coremobility/f/j;)V

    :cond_0
    :goto_3
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/coremobility/f/j;

    invoke-direct {v0, p0, p1}, Lcom/coremobility/f/j;-><init>(Lcom/coremobility/f/g;Lcom/coremobility/integration/x;)V

    invoke-direct {p0, v4, v0}, Lcom/coremobility/f/g;->a(ILcom/coremobility/f/j;)V

    goto :goto_3
.end method

.method public abstract f()V
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/coremobility/f/g;->o:I

    return v0
.end method

.method public final h()I
    .locals 4

    const/16 v3, 0xa

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/coremobility/f/g;->b(I)I

    move-result v1

    if-ge v1, v3, :cond_1

    iget-object v2, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/coremobility/integration/x;->b()I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eq v3, v1, :cond_0

    const/16 v0, 0x79

    goto :goto_0
.end method

.method public final i()I
    .locals 4

    const/16 v3, 0xa

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/coremobility/f/g;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/coremobility/f/g;->b(I)I

    move-result v1

    if-ge v1, v3, :cond_1

    iget-object v2, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/coremobility/integration/x;->b()I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eq v3, v1, :cond_0

    const/16 v0, 0x79

    goto :goto_0
.end method

.method protected final j()V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/coremobility/f/g;->a(ILcom/coremobility/f/j;)V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/coremobility/integration/x;->c()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coremobility/f/g;->p:Lcom/coremobility/f/h;

    invoke-static {v0}, Lcom/coremobility/g/b;->a(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/coremobility/g/b;->b(Ljava/lang/Object;)V

    const/high16 v1, 0x34

    invoke-static {v1, v0}, Lcom/coremobility/g/b;->b(ILcom/coremobility/g/a;)V

    return-void
.end method

.method public final k()I
    .locals 1

    iget v0, p0, Lcom/coremobility/f/g;->r:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final l()V
    .locals 2

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/coremobility/f/g;->a(ILcom/coremobility/f/j;)V

    return-void
.end method
