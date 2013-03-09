.class final Lcom/jme3/light/LightList$2;
.super Ljava/lang/Object;
.source "LightList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jme3/light/LightList;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/jme3/light/Light;",
        ">;"
    }
.end annotation


# instance fields
.field index:I

.field final synthetic this$0:Lcom/jme3/light/LightList;


# direct methods
.method constructor <init>(Lcom/jme3/light/LightList;)V
    .locals 1
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/jme3/light/LightList$2;->this$0:Lcom/jme3/light/LightList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/light/LightList$2;->index:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 274
    iget v0, p0, Lcom/jme3/light/LightList$2;->index:I

    iget-object v1, p0, Lcom/jme3/light/LightList$2;->this$0:Lcom/jme3/light/LightList;

    invoke-virtual {v1}, Lcom/jme3/light/LightList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Lcom/jme3/light/Light;
    .locals 3

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/jme3/light/LightList$2;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/jme3/light/LightList$2;->this$0:Lcom/jme3/light/LightList;

    #getter for: Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;
    invoke-static {v0}, Lcom/jme3/light/LightList;->access$000(Lcom/jme3/light/LightList;)[Lcom/jme3/light/Light;

    move-result-object v0

    iget v1, p0, Lcom/jme3/light/LightList$2;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jme3/light/LightList$2;->index:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/jme3/light/LightList$2;->next()Lcom/jme3/light/Light;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/jme3/light/LightList$2;->this$0:Lcom/jme3/light/LightList;

    iget v1, p0, Lcom/jme3/light/LightList$2;->index:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/jme3/light/LightList$2;->index:I

    invoke-virtual {v0, v1}, Lcom/jme3/light/LightList;->remove(I)V

    .line 286
    return-void
.end method
