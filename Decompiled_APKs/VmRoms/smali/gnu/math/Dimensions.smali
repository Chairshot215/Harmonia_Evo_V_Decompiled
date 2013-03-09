.class public Lgnu/math/Dimensions;
.super Ljava/lang/Object;
.source "Dimensions.java"


# static fields
.field public static Empty:Lgnu/math/Dimensions;

.field private static hashTable:[Lgnu/math/Dimensions;


# instance fields
.field bases:[Lgnu/math/BaseUnit;

.field private chain:Lgnu/math/Dimensions;

.field hash_code:I

.field powers:[S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/16 v0, 0x64

    new-array v0, v0, [Lgnu/math/Dimensions;

    sput-object v0, Lgnu/math/Dimensions;->hashTable:[Lgnu/math/Dimensions;

    .line 41
    new-instance v0, Lgnu/math/Dimensions;

    invoke-direct {v0}, Lgnu/math/Dimensions;-><init>()V

    sput-object v0, Lgnu/math/Dimensions;->Empty:Lgnu/math/Dimensions;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [Lgnu/math/BaseUnit;

    iput-object v0, p0, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    .line 47
    iget-object v0, p0, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    sget-object v1, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    aput-object v1, v0, v2

    .line 48
    invoke-direct {p0, v2}, Lgnu/math/Dimensions;->enterHash(I)V

    .line 49
    return-void
.end method

.method constructor <init>(Lgnu/math/BaseUnit;)V
    .locals 4
    .parameter "unit"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [Lgnu/math/BaseUnit;

    iput-object v0, p0, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    .line 55
    new-array v0, v2, [S

    iput-object v0, p0, Lgnu/math/Dimensions;->powers:[S

    .line 56
    iget-object v0, p0, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    aput-object p1, v0, v3

    .line 57
    iget-object v0, p0, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    sget-object v1, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    aput-object v1, v0, v2

    .line 58
    iget-object v0, p0, Lgnu/math/Dimensions;->powers:[S

    aput-short v2, v0, v3

    .line 59
    iget v0, p1, Lgnu/math/BaseUnit;->index:I

    invoke-direct {p0, v0}, Lgnu/math/Dimensions;->enterHash(I)V

    .line 60
    return-void
.end method

.method private constructor <init>(Lgnu/math/Dimensions;ILgnu/math/Dimensions;II)V
    .locals 9
    .parameter "a"
    .parameter "mul_a"
    .parameter "b"
    .parameter "mul_b"
    .parameter "hash_code"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v1, 0x0

    .local v1, a_i:I
    const/4 v3, 0x0

    .line 67
    .local v3, b_i:I
    iput p5, p0, Lgnu/math/Dimensions;->hash_code:I

    .line 68
    const/4 v1, 0x0

    :goto_0
    iget-object v7, p1, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    aget-object v7, v7, v1

    sget-object v8, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-eq v7, v8, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    :cond_0
    const/4 v3, 0x0

    :goto_1
    iget-object v7, p3, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    aget-object v7, v7, v3

    sget-object v8, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-eq v7, v8, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 70
    :cond_1
    add-int v7, v1, v3

    add-int/lit8 v5, v7, 0x1

    .line 71
    .local v5, t_i:I
    new-array v7, v5, [Lgnu/math/BaseUnit;

    iput-object v7, p0, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    .line 72
    new-array v7, v5, [S

    iput-object v7, p0, Lgnu/math/Dimensions;->powers:[S

    .line 73
    const/4 v5, 0x0

    move v3, v5

    move v1, v5

    .line 76
    :goto_2
    iget-object v7, p1, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    aget-object v0, v7, v1

    .line 77
    .local v0, a_base:Lgnu/math/BaseUnit;
    iget-object v7, p3, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    aget-object v2, v7, v3

    .line 79
    .local v2, b_base:Lgnu/math/BaseUnit;
    iget v7, v0, Lgnu/math/BaseUnit;->index:I

    iget v8, v2, Lgnu/math/BaseUnit;->index:I

    if-ge v7, v8, :cond_3

    .line 81
    iget-object v7, p1, Lgnu/math/Dimensions;->powers:[S

    aget-short v7, v7, v1

    mul-int v4, v7, p2

    .line 82
    .local v4, pow:I
    add-int/lit8 v1, v1, 0x1

    .line 99
    :cond_2
    :goto_3
    int-to-short v7, v4

    if-eq v7, v4, :cond_6

    .line 100
    new-instance v7, Ljava/lang/ArithmeticException;

    const-string v8, "overflow in dimensions"

    invoke-direct {v7, v8}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 84
    .end local v4           #pow:I
    :cond_3
    iget v7, v2, Lgnu/math/BaseUnit;->index:I

    iget v8, v0, Lgnu/math/BaseUnit;->index:I

    if-ge v7, v8, :cond_4

    .line 86
    move-object v0, v2

    .line 87
    iget-object v7, p3, Lgnu/math/Dimensions;->powers:[S

    aget-short v7, v7, v3

    mul-int v4, v7, p4

    .line 88
    .restart local v4       #pow:I
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 90
    .end local v4           #pow:I
    :cond_4
    sget-object v7, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-ne v2, v7, :cond_5

    .line 104
    iget-object v7, p0, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    sget-object v8, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    aput-object v8, v7, v5

    .line 105
    invoke-direct {p0, p5}, Lgnu/math/Dimensions;->enterHash(I)V

    .line 106
    return-void

    .line 94
    :cond_5
    iget-object v7, p1, Lgnu/math/Dimensions;->powers:[S

    aget-short v7, v7, v1

    mul-int/2addr v7, p2

    iget-object v8, p3, Lgnu/math/Dimensions;->powers:[S

    aget-short v8, v8, v3

    mul-int/2addr v8, p4

    add-int v4, v7, v8

    .line 95
    .restart local v4       #pow:I
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    .line 96
    if-nez v4, :cond_2

    goto :goto_2

    .line 101
    :cond_6
    iget-object v7, p0, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    aput-object v0, v7, v5

    .line 102
    iget-object v7, p0, Lgnu/math/Dimensions;->powers:[S

    add-int/lit8 v6, v5, 0x1

    .end local v5           #t_i:I
    .local v6, t_i:I
    int-to-short v8, v4

    aput-short v8, v7, v5

    move v5, v6

    .line 103
    .end local v6           #t_i:I
    .restart local v5       #t_i:I
    goto :goto_2
.end method

.method private enterHash(I)V
    .locals 3
    .parameter "hash_code"

    .prologue
    .line 34
    iput p1, p0, Lgnu/math/Dimensions;->hash_code:I

    .line 35
    const v1, 0x7fffffff

    and-int/2addr v1, p1

    sget-object v2, Lgnu/math/Dimensions;->hashTable:[Lgnu/math/Dimensions;

    array-length v2, v2

    rem-int v0, v1, v2

    .line 36
    .local v0, index:I
    sget-object v1, Lgnu/math/Dimensions;->hashTable:[Lgnu/math/Dimensions;

    aget-object v1, v1, v0

    iput-object v1, p0, Lgnu/math/Dimensions;->chain:Lgnu/math/Dimensions;

    .line 37
    sget-object v1, Lgnu/math/Dimensions;->hashTable:[Lgnu/math/Dimensions;

    aput-object p0, v1, v0

    .line 38
    return-void
.end method

.method private matchesProduct(Lgnu/math/Dimensions;ILgnu/math/Dimensions;I)Z
    .locals 9
    .parameter "a"
    .parameter "mul_a"
    .parameter "b"
    .parameter "mul_b"

    .prologue
    const/4 v8, 0x0

    .line 112
    const/4 v1, 0x0

    .local v1, a_i:I
    const/4 v3, 0x0

    .line 113
    .local v3, b_i:I
    const/4 v5, 0x0

    .line 115
    .local v5, t_i:I
    :goto_0
    iget-object v6, p1, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    aget-object v0, v6, v1

    .line 116
    .local v0, a_base:Lgnu/math/BaseUnit;
    iget-object v6, p3, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    aget-object v2, v6, v3

    .line 118
    .local v2, b_base:Lgnu/math/BaseUnit;
    iget v6, v0, Lgnu/math/BaseUnit;->index:I

    iget v7, v2, Lgnu/math/BaseUnit;->index:I

    if-ge v6, v7, :cond_2

    .line 120
    iget-object v6, p1, Lgnu/math/Dimensions;->powers:[S

    aget-short v6, v6, v1

    mul-int v4, v6, p2

    .line 121
    .local v4, pow:I
    add-int/lit8 v1, v1, 0x1

    .line 138
    :cond_0
    :goto_1
    iget-object v6, p0, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    aget-object v6, v6, v5

    if-ne v6, v0, :cond_1

    iget-object v6, p0, Lgnu/math/Dimensions;->powers:[S

    aget-short v6, v6, v5

    if-eq v6, v4, :cond_6

    :cond_1
    move v6, v8

    .line 139
    .end local v4           #pow:I
    :goto_2
    return v6

    .line 123
    :cond_2
    iget v6, v2, Lgnu/math/BaseUnit;->index:I

    iget v7, v0, Lgnu/math/BaseUnit;->index:I

    if-ge v6, v7, :cond_3

    .line 125
    move-object v0, v2

    .line 126
    iget-object v6, p3, Lgnu/math/Dimensions;->powers:[S

    aget-short v6, v6, v3

    mul-int v4, v6, p4

    .line 127
    .restart local v4       #pow:I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 129
    .end local v4           #pow:I
    :cond_3
    sget-object v6, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-ne v2, v6, :cond_5

    .line 130
    iget-object v6, p0, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    aget-object v6, v6, v5

    if-ne v6, v2, :cond_4

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    move v6, v8

    goto :goto_2

    .line 133
    :cond_5
    iget-object v6, p1, Lgnu/math/Dimensions;->powers:[S

    aget-short v6, v6, v1

    mul-int/2addr v6, p2

    iget-object v7, p3, Lgnu/math/Dimensions;->powers:[S

    aget-short v7, v7, v3

    mul-int/2addr v7, p4

    add-int v4, v6, v7

    .line 134
    .restart local v4       #pow:I
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    .line 135
    if-nez v4, :cond_0

    goto :goto_0

    .line 140
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 141
    goto :goto_0
.end method

.method public static product(Lgnu/math/Dimensions;ILgnu/math/Dimensions;I)Lgnu/math/Dimensions;
    .locals 8
    .parameter "a"
    .parameter "mul_a"
    .parameter "b"
    .parameter "mul_b"

    .prologue
    .line 147
    invoke-virtual {p0}, Lgnu/math/Dimensions;->hashCode()I

    move-result v0

    mul-int/2addr v0, p1

    invoke-virtual {p2}, Lgnu/math/Dimensions;->hashCode()I

    move-result v1

    mul-int/2addr v1, p3

    add-int v5, v0, v1

    .line 148
    .local v5, hash:I
    const v0, 0x7fffffff

    and-int/2addr v0, v5

    sget-object v1, Lgnu/math/Dimensions;->hashTable:[Lgnu/math/Dimensions;

    array-length v1, v1

    rem-int v7, v0, v1

    .line 149
    .local v7, index:I
    sget-object v0, Lgnu/math/Dimensions;->hashTable:[Lgnu/math/Dimensions;

    aget-object v6, v0, v7

    .line 150
    .local v6, dim:Lgnu/math/Dimensions;
    :goto_0
    if-eqz v6, :cond_1

    .line 152
    iget v0, v6, Lgnu/math/Dimensions;->hash_code:I

    if-ne v0, v5, :cond_0

    invoke-direct {v6, p0, p1, p2, p3}, Lgnu/math/Dimensions;->matchesProduct(Lgnu/math/Dimensions;ILgnu/math/Dimensions;I)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v6

    .line 155
    :goto_1
    return-object v0

    .line 150
    :cond_0
    iget-object v6, v6, Lgnu/math/Dimensions;->chain:Lgnu/math/Dimensions;

    goto :goto_0

    .line 155
    :cond_1
    new-instance v0, Lgnu/math/Dimensions;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lgnu/math/Dimensions;-><init>(Lgnu/math/Dimensions;ILgnu/math/Dimensions;II)V

    goto :goto_1
.end method


# virtual methods
.method public getPower(Lgnu/math/BaseUnit;)I
    .locals 3
    .parameter "unit"

    .prologue
    .line 161
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    aget-object v1, v1, v0

    iget v1, v1, Lgnu/math/BaseUnit;->index:I

    iget v2, p1, Lgnu/math/BaseUnit;->index:I

    if-gt v1, v2, :cond_1

    .line 163
    iget-object v1, p0, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 164
    iget-object v1, p0, Lgnu/math/Dimensions;->powers:[S

    aget-short v1, v1, v0

    .line 166
    :goto_1
    return v1

    .line 161
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lgnu/math/Dimensions;->hash_code:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 172
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    aget-object v3, v3, v1

    sget-object v4, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-eq v3, v4, :cond_2

    .line 174
    if-lez v1, :cond_0

    .line 175
    const/16 v3, 0x2a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 176
    :cond_0
    iget-object v3, p0, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 177
    iget-object v3, p0, Lgnu/math/Dimensions;->powers:[S

    aget-short v2, v3, v1

    .line 178
    .local v2, pow:I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 180
    const/16 v3, 0x5e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 181
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 172
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    .end local v2           #pow:I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
