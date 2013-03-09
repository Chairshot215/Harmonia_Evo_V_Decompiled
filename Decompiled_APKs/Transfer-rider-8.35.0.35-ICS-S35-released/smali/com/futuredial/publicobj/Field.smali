.class public Lcom/futuredial/publicobj/Field;
.super Ljava/lang/Object;
.source "Field.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public m_nID:Ljava/lang/Integer;

.field public m_property:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/publicobj/Field;",
            ">;"
        }
    .end annotation
.end field

.field public m_strBuffer:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/futuredial/publicobj/Field;->m_nID:Ljava/lang/Integer;

    .line 9
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/publicobj/Field;->m_property:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {p0}, Lcom/futuredial/publicobj/Field;->Reset()V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/futuredial/publicobj/Field;)V
    .locals 2
    .parameter "objValue"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/futuredial/publicobj/Field;->m_nID:Ljava/lang/Integer;

    .line 9
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/publicobj/Field;->m_property:Ljava/util/ArrayList;

    .line 48
    invoke-virtual {p0}, Lcom/futuredial/publicobj/Field;->Reset()V

    .line 49
    iget-object v0, p1, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    iput-object v0, p0, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    .line 50
    iget-object v0, p1, Lcom/futuredial/publicobj/Field;->m_nID:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/futuredial/publicobj/Field;->m_nID:Ljava/lang/Integer;

    .line 51
    iget-object v0, p0, Lcom/futuredial/publicobj/Field;->m_property:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/futuredial/publicobj/Field;->m_property:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 2
    .parameter "id"
    .parameter "val"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/futuredial/publicobj/Field;->m_nID:Ljava/lang/Integer;

    .line 9
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/publicobj/Field;->m_property:Ljava/util/ArrayList;

    .line 43
    iput-object p1, p0, Lcom/futuredial/publicobj/Field;->m_nID:Ljava/lang/Integer;

    .line 44
    iput-object p2, p0, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public AddProperty(Lcom/futuredial/publicobj/Field;)Z
    .locals 1
    .parameter "field"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/futuredial/publicobj/Field;->m_property:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public GetBinaryData(I)[B
    .locals 1
    .parameter "nLen"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    .line 86
    iget-object v0, p0, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public GetBufferLen()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public GetFieldSize()I
    .locals 5

    .prologue
    .line 16
    const/4 v1, 0x0

    .line 21
    .local v1, iSize:I
    iget-object v4, p0, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 22
    iget-object v4, p0, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    .line 24
    :cond_0
    iget-object v4, p0, Lcom/futuredial/publicobj/Field;->m_property:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 26
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v4, p0, Lcom/futuredial/publicobj/Field;->m_property:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, nCount:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 27
    iget-object v4, p0, Lcom/futuredial/publicobj/Field;->m_property:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/futuredial/publicobj/Field;

    .line 28
    .local v3, propertyField:Lcom/futuredial/publicobj/Field;
    if-eqz v3, :cond_1

    .line 29
    invoke-virtual {v3}, Lcom/futuredial/publicobj/Field;->GetFieldSize()I

    move-result v4

    add-int/2addr v1, v4

    .line 26
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    .end local v0           #i:I
    .end local v2           #nCount:I
    .end local v3           #propertyField:Lcom/futuredial/publicobj/Field;
    :cond_2
    return v1
.end method

.method public GetID()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/futuredial/publicobj/Field;->m_nID:Ljava/lang/Integer;

    return-object v0
.end method

.method public GetInt()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public GetProperty()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/publicobj/Field;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/futuredial/publicobj/Field;->m_property:Ljava/util/ArrayList;

    return-object v0
.end method

.method public GetStringData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    return-object v0
.end method

.method public Reset()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/publicobj/Field;->m_nID:Ljava/lang/Integer;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/futuredial/publicobj/Field;->m_property:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 59
    return-void
.end method

.method public SetBinaryData(I[BI)Z
    .locals 1
    .parameter "nID"
    .parameter "pData"
    .parameter "nLen"

    .prologue
    .line 90
    if-eqz p2, :cond_0

    if-lez p3, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/futuredial/publicobj/Field;->Reset()V

    .line 92
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/publicobj/Field;->m_nID:Ljava/lang/Integer;

    .line 93
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2, p3}, Ljava/lang/String;-><init>([BI)V

    iput-object v0, p0, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    .line 94
    const/4 v0, 0x1

    .line 96
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public SetInt(II)Z
    .locals 1
    .parameter "nID"
    .parameter "nData"

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/futuredial/publicobj/Field;->Reset()V

    .line 71
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/publicobj/Field;->m_nID:Ljava/lang/Integer;

    .line 72
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public SetIntData(II)Z
    .locals 1
    .parameter "nID"
    .parameter "nData"

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/futuredial/publicobj/Field;->Reset()V

    .line 109
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/publicobj/Field;->m_nID:Ljava/lang/Integer;

    .line 110
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method public SetStringData(ILjava/lang/String;)Z
    .locals 1
    .parameter "nID"
    .parameter "strData"

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/futuredial/publicobj/Field;->Reset()V

    .line 101
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/publicobj/Field;->m_nID:Ljava/lang/Integer;

    .line 102
    iput-object p2, p0, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    .line 103
    const/4 v0, 0x1

    return v0
.end method
