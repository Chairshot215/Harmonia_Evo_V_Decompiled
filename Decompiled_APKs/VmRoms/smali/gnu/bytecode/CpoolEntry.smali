.class public abstract Lgnu/bytecode/CpoolEntry;
.super Ljava/lang/Object;
.source "CpoolEntry.java"


# instance fields
.field hash:I

.field public index:I

.field next:Lgnu/bytecode/CpoolEntry;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/ConstantPool;I)V
    .locals 10
    .parameter "cpool"
    .parameter "h"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p2, p0, Lgnu/bytecode/CpoolEntry;->hash:I

    .line 55
    iget-boolean v4, p1, Lgnu/bytecode/ConstantPool;->locked:Z

    if-eqz v4, :cond_0

    .line 56
    new-instance v4, Ljava/lang/Error;

    const-string v5, "adding new entry to locked contant pool"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 57
    :cond_0
    iget v4, p1, Lgnu/bytecode/ConstantPool;->count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Lgnu/bytecode/ConstantPool;->count:I

    iput v4, p0, Lgnu/bytecode/CpoolEntry;->index:I

    .line 60
    iget-object v4, p1, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    if-nez v4, :cond_4

    .line 61
    const/16 v4, 0x3c

    new-array v4, v4, [Lgnu/bytecode/CpoolEntry;

    iput-object v4, p1, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    .line 73
    :cond_1
    :goto_0
    iget-object v4, p1, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    if-eqz v4, :cond_2

    iget v4, p0, Lgnu/bytecode/CpoolEntry;->index:I

    int-to-double v4, v4

    const-wide v6, 0x3fe3333333333333L

    iget-object v8, p1, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    array-length v8, v8

    int-to-double v8, v8

    mul-double/2addr v6, v8

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_3

    .line 74
    :cond_2
    invoke-virtual {p1}, Lgnu/bytecode/ConstantPool;->rehash()V

    .line 77
    :cond_3
    iget-object v4, p1, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    iget v5, p0, Lgnu/bytecode/CpoolEntry;->index:I

    aput-object p0, v4, v5

    .line 79
    invoke-virtual {p0, p1}, Lgnu/bytecode/CpoolEntry;->add_hashed(Lgnu/bytecode/ConstantPool;)V

    .line 80
    return-void

    .line 62
    :cond_4
    iget v4, p0, Lgnu/bytecode/CpoolEntry;->index:I

    iget-object v5, p1, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    array-length v5, v5

    if-lt v4, v5, :cond_1

    .line 64
    iget-object v4, p1, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    array-length v3, v4

    .line 65
    .local v3, old_size:I
    iget-object v4, p1, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    array-length v4, v4

    mul-int/lit8 v2, v4, 0x2

    .line 66
    .local v2, new_size:I
    new-array v1, v2, [Lgnu/bytecode/CpoolEntry;

    .line 67
    .local v1, new_pool:[Lgnu/bytecode/CpoolEntry;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_5

    .line 68
    iget-object v4, p1, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    aget-object v4, v4, v0

    aput-object v4, v1, v0

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 69
    :cond_5
    iput-object v1, p1, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    goto :goto_0
.end method


# virtual methods
.method add_hashed(Lgnu/bytecode/ConstantPool;)V
    .locals 4
    .parameter "cpool"

    .prologue
    .line 44
    iget-object v0, p1, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    .line 45
    .local v0, hashTab:[Lgnu/bytecode/CpoolEntry;
    iget v2, p0, Lgnu/bytecode/CpoolEntry;->hash:I

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    array-length v3, v0

    rem-int v1, v2, v3

    .line 46
    .local v1, index:I
    aget-object v2, v0, v1

    iput-object v2, p0, Lgnu/bytecode/CpoolEntry;->next:Lgnu/bytecode/CpoolEntry;

    .line 47
    aput-object p0, v0, v1

    .line 48
    return-void
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lgnu/bytecode/CpoolEntry;->index:I

    return v0
.end method

.method public abstract getTag()I
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lgnu/bytecode/CpoolEntry;->hash:I

    return v0
.end method

.method public abstract print(Lgnu/bytecode/ClassTypeWriter;I)V
.end method

.method abstract write(Ljava/io/DataOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
