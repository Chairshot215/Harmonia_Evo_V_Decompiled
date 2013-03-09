.class public Lgnu/kawa/util/RangeTable;
.super Ljava/lang/Object;
.source "RangeTable.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field hash:Ljava/util/Hashtable;

.field index:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/16 v0, 0x80

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lgnu/kawa/util/RangeTable;->index:[Ljava/lang/Object;

    .line 11
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lgnu/kawa/util/RangeTable;->hash:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lgnu/kawa/util/RangeTable;->copy()Lgnu/kawa/util/RangeTable;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lgnu/kawa/util/RangeTable;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lgnu/kawa/util/RangeTable;

    invoke-direct {v0}, Lgnu/kawa/util/RangeTable;-><init>()V

    .line 63
    .local v0, copy:Lgnu/kawa/util/RangeTable;
    iget-object v1, p0, Lgnu/kawa/util/RangeTable;->index:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Lgnu/kawa/util/RangeTable;->index:[Ljava/lang/Object;

    .line 64
    iget-object v1, p0, Lgnu/kawa/util/RangeTable;->hash:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/Hashtable;

    iput-object p0, v0, Lgnu/kawa/util/RangeTable;->hash:Ljava/util/Hashtable;

    .line 65
    return-object v0
.end method

.method public lookup(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 15
    and-int/lit8 v0, p1, 0x7f

    if-ne v0, p1, :cond_0

    .line 16
    iget-object v0, p0, Lgnu/kawa/util/RangeTable;->index:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 17
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgnu/kawa/util/RangeTable;->hash:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public remove(I)V
    .locals 0
    .parameter "key"

    .prologue
    .line 57
    invoke-virtual {p0, p1, p1}, Lgnu/kawa/util/RangeTable;->remove(II)V

    .line 58
    return-void
.end method

.method public remove(II)V
    .locals 3
    .parameter "lo"
    .parameter "hi"

    .prologue
    .line 42
    if-le p1, p2, :cond_1

    .line 53
    :cond_0
    return-void

    .line 44
    :cond_1
    move v0, p1

    .line 46
    .local v0, i:I
    :goto_0
    and-int/lit8 v1, v0, 0x7f

    if-ne v1, v0, :cond_2

    .line 47
    iget-object v1, p0, Lgnu/kawa/util/RangeTable;->index:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 50
    :goto_1
    if-eq v0, p2, :cond_0

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_2
    iget-object v1, p0, Lgnu/kawa/util/RangeTable;->hash:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public set(IILjava/lang/Object;)V
    .locals 3
    .parameter "lo"
    .parameter "hi"
    .parameter "value"

    .prologue
    .line 22
    if-le p1, p2, :cond_1

    .line 33
    :cond_0
    return-void

    .line 24
    :cond_1
    move v0, p1

    .line 26
    .local v0, i:I
    :goto_0
    and-int/lit8 v1, v0, 0x7f

    if-ne v1, v0, :cond_2

    .line 27
    iget-object v1, p0, Lgnu/kawa/util/RangeTable;->index:[Ljava/lang/Object;

    aput-object p3, v1, v0

    .line 30
    :goto_1
    if-eq v0, p2, :cond_0

    .line 24
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    :cond_2
    iget-object v1, p0, Lgnu/kawa/util/RangeTable;->hash:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public set(ILjava/lang/Object;)V
    .locals 0
    .parameter "key"
    .parameter "value"

    .prologue
    .line 37
    invoke-virtual {p0, p1, p1, p2}, Lgnu/kawa/util/RangeTable;->set(IILjava/lang/Object;)V

    .line 38
    return-void
.end method
