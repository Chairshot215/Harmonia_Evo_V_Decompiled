.class public abstract Lcom/coremobility/integration/x;
.super Ljava/lang/Object;


# instance fields
.field protected a:I

.field public b:I

.field public c:[Lcom/coremobility/integration/y;


# direct methods
.method public constructor <init>(I)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/coremobility/integration/y;

    new-instance v1, Lcom/coremobility/integration/y;

    invoke-direct {v1, p0, v3, v5}, Lcom/coremobility/integration/y;-><init>(Lcom/coremobility/integration/x;II)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/coremobility/integration/y;

    invoke-direct {v1, p0, v4, v3}, Lcom/coremobility/integration/y;-><init>(Lcom/coremobility/integration/x;II)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/coremobility/integration/y;

    invoke-direct {v1, p0, v3, v5}, Lcom/coremobility/integration/y;-><init>(Lcom/coremobility/integration/x;II)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/coremobility/integration/y;

    invoke-direct {v1, p0, v6, v6}, Lcom/coremobility/integration/y;-><init>(Lcom/coremobility/integration/x;II)V

    aput-object v1, v0, v3

    const/4 v1, 0x4

    new-instance v2, Lcom/coremobility/integration/y;

    invoke-direct {v2, p0, v5, v5}, Lcom/coremobility/integration/y;-><init>(Lcom/coremobility/integration/x;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/coremobility/integration/y;

    invoke-direct {v2, p0, v4, v3}, Lcom/coremobility/integration/y;-><init>(Lcom/coremobility/integration/x;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/coremobility/integration/y;

    invoke-direct {v2, p0, v3, v4}, Lcom/coremobility/integration/y;-><init>(Lcom/coremobility/integration/x;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/coremobility/integration/y;

    invoke-direct {v2, p0, v3, v4}, Lcom/coremobility/integration/y;-><init>(Lcom/coremobility/integration/x;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/coremobility/integration/y;

    invoke-direct {v2, p0, v5, v5}, Lcom/coremobility/integration/y;-><init>(Lcom/coremobility/integration/x;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/coremobility/integration/y;

    invoke-direct {v2, p0, v4, v3}, Lcom/coremobility/integration/y;-><init>(Lcom/coremobility/integration/x;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/coremobility/integration/y;

    invoke-direct {v2, p0, v3, v6}, Lcom/coremobility/integration/y;-><init>(Lcom/coremobility/integration/x;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/coremobility/integration/y;

    invoke-direct {v2, p0, v3, v6}, Lcom/coremobility/integration/y;-><init>(Lcom/coremobility/integration/x;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/coremobility/integration/y;

    invoke-direct {v2, p0, v4, v5}, Lcom/coremobility/integration/y;-><init>(Lcom/coremobility/integration/x;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/coremobility/integration/y;

    invoke-direct {v2, p0, v3, v3}, Lcom/coremobility/integration/y;-><init>(Lcom/coremobility/integration/x;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/coremobility/integration/y;

    invoke-direct {v2, p0, v4, v4}, Lcom/coremobility/integration/y;-><init>(Lcom/coremobility/integration/x;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/coremobility/integration/y;

    invoke-direct {v2, p0, v3, v3}, Lcom/coremobility/integration/y;-><init>(Lcom/coremobility/integration/x;II)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/coremobility/integration/x;->c:[Lcom/coremobility/integration/y;

    iput p1, p0, Lcom/coremobility/integration/x;->a:I

    iput v3, p0, Lcom/coremobility/integration/x;->b:I

    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "undef"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "Active"

    goto :goto_0

    :pswitch_1
    const-string v0, "Blocked"

    goto :goto_0

    :pswitch_2
    const-string v0, "Dormant"

    goto :goto_0

    :pswitch_3
    const-string v0, "Inactive"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public final a(ILcom/coremobility/f/g;)V
    .locals 9

    const/4 v8, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, Lcom/coremobility/integration/x;->b:I

    iget-object v3, p0, Lcom/coremobility/integration/x;->c:[Lcom/coremobility/integration/y;

    mul-int/lit8 v4, v0, 0x4

    add-int/2addr v4, p1

    aget-object v3, v3, v4

    iget v4, v3, Lcom/coremobility/integration/y;->b:I

    iput v4, p0, Lcom/coremobility/integration/x;->b:I

    const/16 v4, 0xc

    const-string v5, "%s: %s + %s -> %s, %s"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/coremobility/integration/x;->a()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v0}, Lcom/coremobility/integration/x;->a(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    const/4 v7, 0x2

    packed-switch p1, :pswitch_data_0

    const-string v0, "undef"

    :goto_0
    aput-object v0, v6, v7

    iget v0, p0, Lcom/coremobility/integration/x;->b:I

    invoke-static {v0}, Lcom/coremobility/integration/x;->a(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v8

    const/4 v7, 0x4

    iget v0, v3, Lcom/coremobility/integration/y;->a:I

    packed-switch v0, :pswitch_data_1

    const-string v0, "undef"

    :goto_1
    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v0, v3, Lcom/coremobility/integration/y;->a:I

    packed-switch v0, :pswitch_data_2

    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    :goto_2
    :pswitch_0
    return-void

    :pswitch_1
    const-string v0, "Activate"

    goto :goto_0

    :pswitch_2
    const-string v0, "Release"

    goto :goto_0

    :pswitch_3
    const-string v0, "Request"

    goto :goto_0

    :pswitch_4
    const-string v0, "Suspend"

    goto :goto_0

    :pswitch_5
    const-string v0, "NoAction"

    goto :goto_1

    :pswitch_6
    const-string v0, "Report"

    goto :goto_1

    :pswitch_7
    const-string v0, "Suspended"

    goto :goto_1

    :pswitch_8
    const-string v0, "Unexpected"

    goto :goto_1

    :pswitch_9
    iget v3, p0, Lcom/coremobility/integration/x;->a:I

    iget v0, p0, Lcom/coremobility/integration/x;->b:I

    if-eq v0, v8, :cond_0

    move v0, v1

    :goto_3
    invoke-virtual {p2, v3, v0}, Lcom/coremobility/f/g;->a(IZ)V

    goto :goto_2

    :cond_0
    move v0, v2

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_0
        :pswitch_9
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/coremobility/f/g;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/coremobility/integration/v;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/coremobility/integration/x;->a:I

    return v0
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method
