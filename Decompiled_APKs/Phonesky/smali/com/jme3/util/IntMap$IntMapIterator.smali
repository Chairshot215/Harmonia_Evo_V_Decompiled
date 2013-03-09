.class final Lcom/jme3/util/IntMap$IntMapIterator;
.super Ljava/lang/Object;
.source "IntMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/util/IntMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "IntMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/jme3/util/IntMap$Entry",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private cur:Lcom/jme3/util/IntMap$Entry;

.field private el:I

.field private idx:I

.field final synthetic this$0:Lcom/jme3/util/IntMap;


# direct methods
.method public constructor <init>(Lcom/jme3/util/IntMap;)V
    .locals 1
    .parameter

    .prologue
    .local p0, this:Lcom/jme3/util/IntMap$IntMapIterator;,"Lcom/jme3/util/IntMap<TT;>.IntMapIterator;"
    const/4 v0, 0x0

    .line 223
    iput-object p1, p0, Lcom/jme3/util/IntMap$IntMapIterator;->this$0:Lcom/jme3/util/IntMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput v0, p0, Lcom/jme3/util/IntMap$IntMapIterator;->idx:I

    .line 221
    iput v0, p0, Lcom/jme3/util/IntMap$IntMapIterator;->el:I

    .line 224
    return-void
.end method


# virtual methods
.method public beginUse()V
    .locals 2

    .prologue
    .local p0, this:Lcom/jme3/util/IntMap$IntMapIterator;,"Lcom/jme3/util/IntMap<TT;>.IntMapIterator;"
    const/4 v1, 0x0

    .line 227
    iget-object v0, p0, Lcom/jme3/util/IntMap$IntMapIterator;->this$0:Lcom/jme3/util/IntMap;

    #getter for: Lcom/jme3/util/IntMap;->table:[Lcom/jme3/util/IntMap$Entry;
    invoke-static {v0}, Lcom/jme3/util/IntMap;->access$000(Lcom/jme3/util/IntMap;)[Lcom/jme3/util/IntMap$Entry;

    move-result-object v0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/jme3/util/IntMap$IntMapIterator;->cur:Lcom/jme3/util/IntMap$Entry;

    .line 228
    iput v1, p0, Lcom/jme3/util/IntMap$IntMapIterator;->idx:I

    .line 229
    iput v1, p0, Lcom/jme3/util/IntMap$IntMapIterator;->el:I

    .line 230
    return-void
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 233
    .local p0, this:Lcom/jme3/util/IntMap$IntMapIterator;,"Lcom/jme3/util/IntMap<TT;>.IntMapIterator;"
    iget v0, p0, Lcom/jme3/util/IntMap$IntMapIterator;->el:I

    iget-object v1, p0, Lcom/jme3/util/IntMap$IntMapIterator;->this$0:Lcom/jme3/util/IntMap;

    #getter for: Lcom/jme3/util/IntMap;->size:I
    invoke-static {v1}, Lcom/jme3/util/IntMap;->access$100(Lcom/jme3/util/IntMap;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Lcom/jme3/util/IntMap$Entry;
    .locals 4

    .prologue
    .line 237
    .local p0, this:Lcom/jme3/util/IntMap$IntMapIterator;,"Lcom/jme3/util/IntMap<TT;>.IntMapIterator;"
    iget v2, p0, Lcom/jme3/util/IntMap$IntMapIterator;->el:I

    iget-object v3, p0, Lcom/jme3/util/IntMap$IntMapIterator;->this$0:Lcom/jme3/util/IntMap;

    #getter for: Lcom/jme3/util/IntMap;->size:I
    invoke-static {v3}, Lcom/jme3/util/IntMap;->access$100(Lcom/jme3/util/IntMap;)I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 238
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No more elements!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 240
    :cond_0
    iget-object v2, p0, Lcom/jme3/util/IntMap$IntMapIterator;->cur:Lcom/jme3/util/IntMap$Entry;

    if-eqz v2, :cond_1

    .line 241
    iget-object v0, p0, Lcom/jme3/util/IntMap$IntMapIterator;->cur:Lcom/jme3/util/IntMap$Entry;

    .line 242
    .local v0, e:Lcom/jme3/util/IntMap$Entry;
    iget-object v2, p0, Lcom/jme3/util/IntMap$IntMapIterator;->cur:Lcom/jme3/util/IntMap$Entry;

    iget-object v2, v2, Lcom/jme3/util/IntMap$Entry;->next:Lcom/jme3/util/IntMap$Entry;

    iput-object v2, p0, Lcom/jme3/util/IntMap$IntMapIterator;->cur:Lcom/jme3/util/IntMap$Entry;

    .line 243
    iget v2, p0, Lcom/jme3/util/IntMap$IntMapIterator;->el:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/jme3/util/IntMap$IntMapIterator;->el:I

    move-object v1, v0

    .line 263
    .end local v0           #e:Lcom/jme3/util/IntMap$Entry;
    .local v1, e:Lcom/jme3/util/IntMap$Entry;
    :goto_0
    return-object v1

    .line 256
    .end local v1           #e:Lcom/jme3/util/IntMap$Entry;
    :cond_1
    iget-object v2, p0, Lcom/jme3/util/IntMap$IntMapIterator;->this$0:Lcom/jme3/util/IntMap;

    #getter for: Lcom/jme3/util/IntMap;->table:[Lcom/jme3/util/IntMap$Entry;
    invoke-static {v2}, Lcom/jme3/util/IntMap;->access$000(Lcom/jme3/util/IntMap;)[Lcom/jme3/util/IntMap$Entry;

    move-result-object v2

    iget v3, p0, Lcom/jme3/util/IntMap$IntMapIterator;->idx:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/jme3/util/IntMap$IntMapIterator;->idx:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/jme3/util/IntMap$IntMapIterator;->cur:Lcom/jme3/util/IntMap$Entry;

    .line 257
    iget-object v2, p0, Lcom/jme3/util/IntMap$IntMapIterator;->cur:Lcom/jme3/util/IntMap$Entry;

    if-eqz v2, :cond_1

    .line 259
    iget-object v0, p0, Lcom/jme3/util/IntMap$IntMapIterator;->cur:Lcom/jme3/util/IntMap$Entry;

    .line 260
    .restart local v0       #e:Lcom/jme3/util/IntMap$Entry;
    iget-object v2, p0, Lcom/jme3/util/IntMap$IntMapIterator;->cur:Lcom/jme3/util/IntMap$Entry;

    iget-object v2, v2, Lcom/jme3/util/IntMap$Entry;->next:Lcom/jme3/util/IntMap$Entry;

    iput-object v2, p0, Lcom/jme3/util/IntMap$IntMapIterator;->cur:Lcom/jme3/util/IntMap$Entry;

    .line 261
    iget v2, p0, Lcom/jme3/util/IntMap$IntMapIterator;->el:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/jme3/util/IntMap$IntMapIterator;->el:I

    move-object v1, v0

    .line 263
    .end local v0           #e:Lcom/jme3/util/IntMap$Entry;
    .restart local v1       #e:Lcom/jme3/util/IntMap$Entry;
    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 206
    .local p0, this:Lcom/jme3/util/IntMap$IntMapIterator;,"Lcom/jme3/util/IntMap<TT;>.IntMapIterator;"
    invoke-virtual {p0}, Lcom/jme3/util/IntMap$IntMapIterator;->next()Lcom/jme3/util/IntMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 0

    .prologue
    .line 267
    .local p0, this:Lcom/jme3/util/IntMap$IntMapIterator;,"Lcom/jme3/util/IntMap<TT;>.IntMapIterator;"
    return-void
.end method
