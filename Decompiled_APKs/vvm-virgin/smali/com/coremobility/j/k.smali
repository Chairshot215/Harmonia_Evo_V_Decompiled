.class public Lcom/coremobility/j/k;
.super Ljava/lang/Object;


# instance fields
.field protected final b:[I

.field protected c:[Lcom/coremobility/j/i;


# direct methods
.method public constructor <init>()V
    .locals 9

    const/4 v8, 0x7

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2a

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/coremobility/j/k;->b:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/j/k;->c:[Lcom/coremobility/j/i;

    new-array v0, v8, [Lcom/coremobility/j/i;

    iput-object v0, p0, Lcom/coremobility/j/k;->c:[Lcom/coremobility/j/i;

    move v2, v1

    :goto_0
    if-ge v2, v8, :cond_1

    const/4 v0, 0x6

    new-array v3, v0, [I

    mul-int/lit8 v4, v2, 0x6

    move v0, v1

    :goto_1
    const/4 v5, 0x3

    if-ge v0, v5, :cond_0

    mul-int/lit8 v5, v0, 0x2

    add-int/2addr v5, v4

    mul-int/lit8 v6, v0, 0x2

    iget-object v7, p0, Lcom/coremobility/j/k;->b:[I

    aget v7, v7, v5

    aput v7, v3, v6

    mul-int/lit8 v6, v0, 0x2

    add-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Lcom/coremobility/j/k;->b:[I

    add-int/lit8 v5, v5, 0x1

    aget v5, v7, v5

    aput v5, v3, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/coremobility/j/k;->c:[Lcom/coremobility/j/i;

    new-instance v4, Lcom/coremobility/j/i;

    invoke-direct {v4, v3}, Lcom/coremobility/j/i;-><init>([I)V

    aput-object v4, v0, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x58t 0x2t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x20t 0x1ct 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x20t 0x1ct 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x20t 0x1ct 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x10t 0xet 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x20t 0x1ct 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x20t 0x1ct 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x20t 0x1ct 0x0t 0x0t
    .end array-data
.end method

.method protected static b(I)I
    .locals 1

    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x1e -> :sswitch_0
        0x1f -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x32 -> :sswitch_0
        0x33 -> :sswitch_0
        0x34 -> :sswitch_0
        0xc8 -> :sswitch_2
        0xc9 -> :sswitch_2
        0xca -> :sswitch_2
        0xcb -> :sswitch_2
        0xcc -> :sswitch_2
        0xcd -> :sswitch_2
        0xce -> :sswitch_2
        0x12c -> :sswitch_3
        0x12d -> :sswitch_3
        0x12e -> :sswitch_3
        0x12f -> :sswitch_3
        0x130 -> :sswitch_3
        0x131 -> :sswitch_3
        0x132 -> :sswitch_3
        0x133 -> :sswitch_3
        0x190 -> :sswitch_1
        0x192 -> :sswitch_1
        0x193 -> :sswitch_1
        0x194 -> :sswitch_1
        0x195 -> :sswitch_1
        0x196 -> :sswitch_1
        0x197 -> :sswitch_1
        0x198 -> :sswitch_1
        0x199 -> :sswitch_1
        0x19a -> :sswitch_1
        0x19b -> :sswitch_1
        0x19c -> :sswitch_1
        0x19d -> :sswitch_1
        0x19e -> :sswitch_1
        0x19f -> :sswitch_1
        0x1a0 -> :sswitch_1
        0x1a1 -> :sswitch_1
        0x1f4 -> :sswitch_1
        0x1f5 -> :sswitch_1
        0x1f6 -> :sswitch_1
        0x1f7 -> :sswitch_1
        0x1f8 -> :sswitch_1
        0x1f9 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method protected a(I)Lcom/coremobility/j/h;
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/coremobility/j/k;->c:[Lcom/coremobility/j/i;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coremobility/j/k;->c:[Lcom/coremobility/j/i;

    array-length v1, v1

    const/4 v2, 0x7

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    new-instance v0, Lcom/coremobility/j/h;

    iget-object v1, p0, Lcom/coremobility/j/k;->c:[Lcom/coremobility/j/i;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-direct {v0, p1, v1, v3}, Lcom/coremobility/j/h;-><init>(ILcom/coremobility/j/i;Z)V

    goto :goto_0

    :sswitch_1
    new-instance v0, Lcom/coremobility/j/h;

    iget-object v1, p0, Lcom/coremobility/j/k;->c:[Lcom/coremobility/j/i;

    aget-object v1, v1, v4

    invoke-direct {v0, p1, v1, v3}, Lcom/coremobility/j/h;-><init>(ILcom/coremobility/j/i;Z)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/coremobility/j/h;

    iget-object v1, p0, Lcom/coremobility/j/k;->c:[Lcom/coremobility/j/i;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-direct {v0, p1, v1, v4}, Lcom/coremobility/j/h;-><init>(ILcom/coremobility/j/i;Z)V

    goto :goto_0

    :sswitch_3
    new-instance v0, Lcom/coremobility/j/h;

    iget-object v1, p0, Lcom/coremobility/j/k;->c:[Lcom/coremobility/j/i;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-direct {v0, p1, v1, v4}, Lcom/coremobility/j/h;-><init>(ILcom/coremobility/j/i;Z)V

    goto :goto_0

    :sswitch_4
    new-instance v0, Lcom/coremobility/j/h;

    iget-object v1, p0, Lcom/coremobility/j/k;->c:[Lcom/coremobility/j/i;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-direct {v0, p1, v1, v3}, Lcom/coremobility/j/h;-><init>(ILcom/coremobility/j/i;Z)V

    goto :goto_0

    :sswitch_5
    new-instance v0, Lcom/coremobility/j/h;

    iget-object v1, p0, Lcom/coremobility/j/k;->c:[Lcom/coremobility/j/i;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-direct {v0, p1, v1, v3}, Lcom/coremobility/j/h;-><init>(ILcom/coremobility/j/i;Z)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_3
        0x5 -> :sswitch_0
        0x6 -> :sswitch_2
        0x7 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_1
        0xb -> :sswitch_1
        0xc -> :sswitch_1
        0x14 -> :sswitch_1
        0x15 -> :sswitch_1
        0x16 -> :sswitch_1
        0x1e -> :sswitch_1
        0x1f -> :sswitch_1
        0x28 -> :sswitch_1
        0x29 -> :sswitch_1
        0x2a -> :sswitch_1
        0x2b -> :sswitch_1
        0x2c -> :sswitch_1
        0x32 -> :sswitch_1
        0x33 -> :sswitch_1
        0x34 -> :sswitch_1
        0x64 -> :sswitch_1
        0x65 -> :sswitch_1
        0xc9 -> :sswitch_1
        0xca -> :sswitch_1
        0xcb -> :sswitch_1
        0xcc -> :sswitch_1
        0xcd -> :sswitch_1
        0xce -> :sswitch_1
        0x12c -> :sswitch_1
        0x12e -> :sswitch_1
        0x12f -> :sswitch_1
        0x130 -> :sswitch_1
        0x131 -> :sswitch_1
        0x132 -> :sswitch_1
        0x133 -> :sswitch_1
        0x190 -> :sswitch_1
        0x191 -> :sswitch_4
        0x192 -> :sswitch_1
        0x193 -> :sswitch_1
        0x194 -> :sswitch_1
        0x195 -> :sswitch_1
        0x196 -> :sswitch_1
        0x197 -> :sswitch_1
        0x198 -> :sswitch_1
        0x199 -> :sswitch_1
        0x19a -> :sswitch_1
        0x19b -> :sswitch_1
        0x19c -> :sswitch_1
        0x19d -> :sswitch_1
        0x19e -> :sswitch_1
        0x19f -> :sswitch_1
        0x1a0 -> :sswitch_1
        0x1a1 -> :sswitch_1
        0x1f4 -> :sswitch_1
        0x1f5 -> :sswitch_1
        0x1f6 -> :sswitch_1
        0x1f7 -> :sswitch_5
        0x1f8 -> :sswitch_1
        0x1f9 -> :sswitch_1
    .end sparse-switch
.end method
