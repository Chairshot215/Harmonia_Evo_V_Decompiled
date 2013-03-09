.class public Lcom/jme3/shader/DefineList;
.super Ljava/lang/Object;
.source "DefineList.java"

# interfaces
.implements Lcom/jme3/export/Savable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/shader/DefineList$1;
    }
.end annotation


# instance fields
.field private compiled:Ljava/lang/String;

.field private final defines:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/DefineList;->defines:Ljava/util/SortedMap;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/shader/DefineList;->compiled:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addFrom(Lcom/jme3/shader/DefineList;)V
    .locals 2
    .parameter "other"

    .prologue
    .line 147
    if-nez p1, :cond_0

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/shader/DefineList;->compiled:Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lcom/jme3/shader/DefineList;->defines:Ljava/util/SortedMap;

    iget-object v1, p1, Lcom/jme3/shader/DefineList;->defines:Ljava/util/SortedMap;

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/jme3/shader/DefineList;->defines:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->clear()V

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/jme3/shader/DefineList;->compiled:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public getCompiled()Ljava/lang/String;
    .locals 5

    .prologue
    .line 155
    iget-object v3, p0, Lcom/jme3/shader/DefineList;->compiled:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .local v2, sb:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/jme3/shader/DefineList;->defines:Ljava/util/SortedMap;

    invoke-interface {v3}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 158
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "#define "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 161
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/jme3/shader/DefineList;->compiled:Ljava/lang/String;

    .line 163
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :cond_1
    iget-object v3, p0, Lcom/jme3/shader/DefineList;->compiled:Ljava/lang/String;

    return-object v3
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 8
    .parameter "im"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 67
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v1

    .line 69
    .local v1, ic:Lcom/jme3/export/InputCapsule;
    const-string v4, "keys"

    invoke-interface {v1, v4, v7}, Lcom/jme3/export/InputCapsule;->readStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, keys:[Ljava/lang/String;
    const-string v4, "vals"

    invoke-interface {v1, v4, v7}, Lcom/jme3/export/InputCapsule;->readStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, vals:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 72
    iget-object v4, p0, Lcom/jme3/shader/DefineList;->defines:Ljava/util/SortedMap;

    aget-object v5, v2, v0

    aget-object v6, v3, v0

    invoke-interface {v4, v5, v6}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_0
    const-string v4, "compiled"

    invoke-interface {v1, v4, v7}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/jme3/shader/DefineList;->compiled:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public set(Ljava/lang/String;Lcom/jme3/shader/VarType;Ljava/lang/Object;)Z
    .locals 5
    .parameter "key"
    .parameter "type"
    .parameter "val"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 96
    if-nez p3, :cond_0

    .line 97
    iget-object v2, p0, Lcom/jme3/shader/DefineList;->defines:Ljava/util/SortedMap;

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iput-object v4, p0, Lcom/jme3/shader/DefineList;->compiled:Ljava/lang/String;

    .line 134
    .end local p3
    :goto_0
    return v1

    .line 102
    .restart local p3
    :cond_0
    sget-object v2, Lcom/jme3/shader/DefineList$1;->$SwitchMap$com$jme3$shader$VarType:[I

    invoke-virtual {p2}, Lcom/jme3/shader/VarType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 127
    iget-object v2, p0, Lcom/jme3/shader/DefineList;->defines:Ljava/util/SortedMap;

    const-string v3, "1"

    invoke-interface {v2, p1, v3}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "1"

    if-eq v2, v3, :cond_2

    .line 128
    iput-object v4, p0, Lcom/jme3/shader/DefineList;->compiled:Ljava/lang/String;

    goto :goto_0

    .line 104
    :pswitch_0
    check-cast p3, Ljava/lang/Boolean;

    .end local p3
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    iget-object v2, p0, Lcom/jme3/shader/DefineList;->defines:Ljava/util/SortedMap;

    const-string v3, "1"

    invoke-interface {v2, p1, v3}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "1"

    if-eq v2, v3, :cond_2

    .line 107
    iput-object v4, p0, Lcom/jme3/shader/DefineList;->compiled:Ljava/lang/String;

    goto :goto_0

    .line 110
    :cond_1
    iget-object v2, p0, Lcom/jme3/shader/DefineList;->defines:Ljava/util/SortedMap;

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 111
    iget-object v2, p0, Lcom/jme3/shader/DefineList;->defines:Ljava/util/SortedMap;

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iput-object v4, p0, Lcom/jme3/shader/DefineList;->compiled:Ljava/lang/String;

    goto :goto_0

    .line 119
    .restart local p3
    :pswitch_1
    iget-object v2, p0, Lcom/jme3/shader/DefineList;->defines:Ljava/util/SortedMap;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 120
    .local v0, original:Ljava/lang/String;
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 121
    iput-object v4, p0, Lcom/jme3/shader/DefineList;->compiled:Ljava/lang/String;

    goto :goto_0

    .line 134
    .end local v0           #original:Ljava/lang/String;
    .end local p3
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 168
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 170
    .local v1, i:I
    iget-object v4, p0, Lcom/jme3/shader/DefineList;->defines:Ljava/util/SortedMap;

    invoke-interface {v4}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 171
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    iget-object v4, p0, Lcom/jme3/shader/DefineList;->defines:Ljava/util/SortedMap;

    invoke-interface {v4}, Ljava/util/SortedMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v1, v4, :cond_0

    .line 173
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
