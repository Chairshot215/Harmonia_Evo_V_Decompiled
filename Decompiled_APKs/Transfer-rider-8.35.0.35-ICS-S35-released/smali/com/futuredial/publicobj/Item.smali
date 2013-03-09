.class public Lcom/futuredial/publicobj/Item;
.super Ljava/lang/Object;
.source "Item.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public m_objFieldArray:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/publicobj/Field;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    .line 40
    return-void
.end method


# virtual methods
.method public AddField(Lcom/futuredial/publicobj/Field;)Z
    .locals 3
    .parameter "objField"

    .prologue
    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, arrlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    iget-object v1, p0, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/futuredial/publicobj/Field;->GetID()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/futuredial/publicobj/Field;->GetID()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #arrlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 50
    .restart local v0       #arrlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    :goto_0
    iget-object v1, p0, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/futuredial/publicobj/Field;->GetID()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const/4 v1, 0x1

    return v1

    .line 53
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #arrlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .restart local v0       #arrlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public AddFieldBinary(I[BI)Z
    .locals 2
    .parameter "nID"
    .parameter "pszData"
    .parameter "nLen"

    .prologue
    .line 95
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 96
    new-instance v0, Lcom/futuredial/publicobj/Field;

    invoke-direct {v0}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 97
    .local v0, field:Lcom/futuredial/publicobj/Field;
    invoke-virtual {v0, p1, p2, p3}, Lcom/futuredial/publicobj/Field;->SetBinaryData(I[BI)Z

    .line 98
    invoke-virtual {p0, v0}, Lcom/futuredial/publicobj/Item;->AddField(Lcom/futuredial/publicobj/Field;)Z

    move-result v1

    .line 100
    .end local v0           #field:Lcom/futuredial/publicobj/Field;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public AddFieldIntData(II)Z
    .locals 3
    .parameter "nID"
    .parameter "nData"

    .prologue
    .line 111
    new-instance v0, Lcom/futuredial/publicobj/Field;

    invoke-direct {v0}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 112
    .local v0, field:Lcom/futuredial/publicobj/Field;
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, strData:Ljava/lang/String;
    invoke-virtual {v0, p1, v1}, Lcom/futuredial/publicobj/Field;->SetStringData(ILjava/lang/String;)Z

    .line 114
    invoke-virtual {p0, v0}, Lcom/futuredial/publicobj/Item;->AddField(Lcom/futuredial/publicobj/Field;)Z

    move-result v2

    return v2
.end method

.method public AddFieldString(ILjava/lang/String;)Z
    .locals 2
    .parameter "nID"
    .parameter "strData"

    .prologue
    .line 104
    new-instance v0, Lcom/futuredial/publicobj/Field;

    invoke-direct {v0}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 105
    .local v0, field:Lcom/futuredial/publicobj/Field;
    invoke-virtual {v0, p1, p2}, Lcom/futuredial/publicobj/Field;->SetStringData(ILjava/lang/String;)Z

    .line 106
    invoke-virtual {p0, v0}, Lcom/futuredial/publicobj/Item;->AddField(Lcom/futuredial/publicobj/Field;)Z

    move-result v1

    return v1
.end method

.method public AppendItem(Lcom/futuredial/publicobj/Item;)V
    .locals 5
    .parameter "item"

    .prologue
    .line 124
    iget-object v4, p1, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 125
    .local v0, enumFieldList:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 126
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 127
    .local v1, fieldList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    const/4 v2, 0x0

    .local v2, i:I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, nCount:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 129
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/futuredial/publicobj/Field;

    invoke-virtual {p0, v4}, Lcom/futuredial/publicobj/Item;->AddField(Lcom/futuredial/publicobj/Field;)Z

    .line 127
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    .end local v1           #fieldList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    .end local v2           #i:I
    .end local v3           #nCount:I
    :cond_1
    return-void
.end method

.method public DeleteField(I)V
    .locals 2
    .parameter "nID"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    return-void
.end method

.method public GetFieldCount()I
    .locals 8

    .prologue
    .line 63
    const/4 v2, 0x0

    .line 64
    .local v2, fldCount:I
    iget-object v6, p0, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 65
    .local v1, enm:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 66
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 67
    .local v0, arrlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    const/4 v3, 0x0

    .local v3, i:I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, nCount:I
    :goto_1
    if-ge v3, v4, :cond_0

    .line 69
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/futuredial/publicobj/Field;

    .line 70
    .local v5, tmpField:Lcom/futuredial/publicobj/Field;
    invoke-virtual {v5}, Lcom/futuredial/publicobj/Field;->GetID()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0xfc1

    if-ne v6, v7, :cond_1

    .line 72
    iget-object v6, v5, Lcom/futuredial/publicobj/Field;->m_property:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v2, v6

    .line 67
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 74
    :cond_1
    invoke-virtual {v5}, Lcom/futuredial/publicobj/Field;->GetID()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x13ee

    if-eq v6, v7, :cond_2

    invoke-virtual {v5}, Lcom/futuredial/publicobj/Field;->GetID()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x13ec

    if-eq v6, v7, :cond_2

    invoke-virtual {v5}, Lcom/futuredial/publicobj/Field;->GetID()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x13ed

    if-ne v6, v7, :cond_3

    .line 78
    :cond_2
    iget-object v6, v5, Lcom/futuredial/publicobj/Field;->m_property:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v2, v6

    goto :goto_2

    .line 82
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v2, v6

    .line 83
    goto :goto_0

    .line 87
    .end local v0           #arrlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    .end local v3           #i:I
    .end local v4           #nCount:I
    .end local v5           #tmpField:Lcom/futuredial/publicobj/Field;
    :cond_4
    return v2
.end method

.method public GetItemSize()I
    .locals 7

    .prologue
    .line 15
    const/4 v4, 0x0

    .line 17
    .local v4, iSize:I
    iget-object v6, p0, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    if-eqz v6, :cond_1

    .line 20
    iget-object v6, p0, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 24
    iget-object v6, p0, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 25
    .local v1, enumFieldList:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 26
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 27
    .local v2, fieldList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    const/4 v3, 0x0

    .local v3, i:I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, nCount:I
    :goto_0
    if-ge v3, v5, :cond_0

    .line 28
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/futuredial/publicobj/Field;

    .line 29
    .local v0, curField:Lcom/futuredial/publicobj/Field;
    invoke-virtual {v0}, Lcom/futuredial/publicobj/Field;->GetFieldSize()I

    move-result v6

    add-int/2addr v4, v6

    .line 27
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 34
    .end local v0           #curField:Lcom/futuredial/publicobj/Field;
    .end local v1           #enumFieldList:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;>;"
    .end local v2           #fieldList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    .end local v3           #i:I
    .end local v5           #nCount:I
    :cond_1
    return v4
.end method

.method public Reset()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 44
    return-void
.end method

.method public getFields(I)Ljava/util/ArrayList;
    .locals 2
    .parameter "nID"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/publicobj/Field;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method
