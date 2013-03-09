.class public Lcom/jme3/renderer/IDList;
.super Ljava/lang/Object;
.source "IDList.java"


# instance fields
.field public newLen:I

.field public newList:[I

.field public oldLen:I

.field public oldList:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x10

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/jme3/renderer/IDList;->newList:[I

    .line 44
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/jme3/renderer/IDList;->oldList:[I

    .line 45
    iput v1, p0, Lcom/jme3/renderer/IDList;->newLen:I

    .line 46
    iput v1, p0, Lcom/jme3/renderer/IDList;->oldLen:I

    return-void
.end method


# virtual methods
.method public copyNewToOld()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 92
    iget-object v0, p0, Lcom/jme3/renderer/IDList;->newList:[I

    iget-object v1, p0, Lcom/jme3/renderer/IDList;->oldList:[I

    iget v2, p0, Lcom/jme3/renderer/IDList;->newLen:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    iget v0, p0, Lcom/jme3/renderer/IDList;->newLen:I

    iput v0, p0, Lcom/jme3/renderer/IDList;->oldLen:I

    .line 94
    iput v3, p0, Lcom/jme3/renderer/IDList;->newLen:I

    .line 95
    return-void
.end method

.method public moveToNew(I)Z
    .locals 5
    .parameter "idx"

    .prologue
    .line 69
    iget v2, p0, Lcom/jme3/renderer/IDList;->newLen:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jme3/renderer/IDList;->newList:[I

    iget v3, p0, Lcom/jme3/renderer/IDList;->newLen:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    if-eq v2, p1, :cond_1

    .line 71
    :cond_0
    iget-object v2, p0, Lcom/jme3/renderer/IDList;->newList:[I

    iget v3, p0, Lcom/jme3/renderer/IDList;->newLen:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/jme3/renderer/IDList;->newLen:I

    aput p1, v2, v3

    .line 74
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/jme3/renderer/IDList;->oldLen:I

    if-ge v0, v2, :cond_4

    .line 75
    iget-object v2, p0, Lcom/jme3/renderer/IDList;->oldList:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_3

    .line 78
    iget v2, p0, Lcom/jme3/renderer/IDList;->oldLen:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/jme3/renderer/IDList;->oldLen:I

    .line 79
    move v1, v0

    .local v1, j:I
    :goto_1
    iget v2, p0, Lcom/jme3/renderer/IDList;->oldLen:I

    if-ge v1, v2, :cond_2

    .line 80
    iget-object v2, p0, Lcom/jme3/renderer/IDList;->oldList:[I

    iget-object v3, p0, Lcom/jme3/renderer/IDList;->oldList:[I

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    aput v3, v2, v1

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 82
    :cond_2
    const/4 v2, 0x1

    .line 85
    .end local v1           #j:I
    :goto_2
    return v2

    .line 74
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_4
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    iput v1, p0, Lcom/jme3/renderer/IDList;->newLen:I

    .line 53
    iput v1, p0, Lcom/jme3/renderer/IDList;->oldLen:I

    .line 54
    iget-object v0, p0, Lcom/jme3/renderer/IDList;->newList:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 55
    iget-object v0, p0, Lcom/jme3/renderer/IDList;->oldList:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 56
    return-void
.end method
