.class public abstract Lcom/jme3/util/NativeObject;
.super Ljava/lang/Object;
.source "NativeObject.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field protected handleRef:Ljava/lang/Object;

.field protected id:I

.field protected final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected updateNeeded:Z


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/jme3/util/NativeObject;->id:I

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/util/NativeObject;->handleRef:Ljava/lang/Object;

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/util/NativeObject;->updateNeeded:Z

    .line 76
    iput-object p1, p0, Lcom/jme3/util/NativeObject;->type:Ljava/lang/Class;

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/jme3/util/NativeObject;->handleRef:Ljava/lang/Object;

    .line 78
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;I)V
    .locals 1
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/jme3/util/NativeObject;->id:I

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/util/NativeObject;->handleRef:Ljava/lang/Object;

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/util/NativeObject;->updateNeeded:Z

    .line 85
    iput-object p1, p0, Lcom/jme3/util/NativeObject;->type:Ljava/lang/Class;

    .line 86
    iput p2, p0, Lcom/jme3/util/NativeObject;->id:I

    .line 87
    return-void
.end method


# virtual methods
.method public clearUpdateNeeded()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/util/NativeObject;->updateNeeded:Z

    .line 122
    return-void
.end method

.method protected clone()Lcom/jme3/util/NativeObject;
    .locals 3

    .prologue
    .line 143
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/util/NativeObject;

    .line 144
    .local v1, obj:Lcom/jme3/util/NativeObject;
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Lcom/jme3/util/NativeObject;->handleRef:Ljava/lang/Object;

    .line 145
    const/4 v2, -0x1

    iput v2, v1, Lcom/jme3/util/NativeObject;->id:I

    .line 146
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/jme3/util/NativeObject;->updateNeeded:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    return-object v1

    .line 148
    .end local v1           #obj:Lcom/jme3/util/NativeObject;
    :catch_0
    move-exception v0

    .line 149
    .local v0, ex:Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/jme3/util/NativeObject;->clone()Lcom/jme3/util/NativeObject;

    move-result-object v0

    return-object v0
.end method

.method public abstract createDestructableClone()Lcom/jme3/util/NativeObject;
.end method

.method public abstract deleteObject(Ljava/lang/Object;)V
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/jme3/util/NativeObject;->id:I

    return v0
.end method

.method public isUpdateNeeded()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/jme3/util/NativeObject;->updateNeeded:Z

    return v0
.end method

.method public abstract resetObject()V
.end method

.method public setId(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 95
    iget v0, p0, Lcom/jme3/util/NativeObject;->id:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 96
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ID has already been set for this GL object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    iput p1, p0, Lcom/jme3/util/NativeObject;->id:I

    .line 99
    return-void
.end method

.method public setUpdateNeeded()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/util/NativeObject;->updateNeeded:Z

    .line 115
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Native"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/util/NativeObject;->type:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jme3/util/NativeObject;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
