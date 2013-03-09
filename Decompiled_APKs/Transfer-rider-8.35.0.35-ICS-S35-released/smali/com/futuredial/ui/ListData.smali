.class Lcom/futuredial/ui/ListData;
.super Ljava/lang/Object;
.source "CMultiCheckHandle.java"


# instance fields
.field public m_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/ui/ListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/ui/ListData;->m_list:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 2
    .parameter "i"
    .parameter "n"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/futuredial/ui/ListData;->m_list:Ljava/util/ArrayList;

    new-instance v1, Lcom/futuredial/ui/ListItem;

    invoke-direct {v1, p1, p2}, Lcom/futuredial/ui/ListItem;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 2
    .parameter "n"

    .prologue
    .line 45
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/futuredial/ui/ListData;->m_list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 46
    iget-object v1, p0, Lcom/futuredial/ui/ListData;->m_list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/futuredial/ui/ListItem;

    iget-object v1, v1, Lcom/futuredial/ui/ListItem;->itemName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    const/4 v1, 0x1

    .line 48
    :goto_1
    return v1

    .line 45
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public removeByIndex(Ljava/lang/Integer;)V
    .locals 2
    .parameter "idx"

    .prologue
    .line 35
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/futuredial/ui/ListData;->m_list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 36
    iget-object v1, p0, Lcom/futuredial/ui/ListData;->m_list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/futuredial/ui/ListItem;

    iget-object v1, v1, Lcom/futuredial/ui/ListItem;->index:Ljava/lang/Integer;

    if-ne v1, p1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/futuredial/ui/ListData;->m_list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 35
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_1
    return-void
.end method

.method public removeByName(Ljava/lang/String;)V
    .locals 2
    .parameter "n"

    .prologue
    .line 29
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/futuredial/ui/ListData;->m_list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 30
    iget-object v1, p0, Lcom/futuredial/ui/ListData;->m_list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/futuredial/ui/ListItem;

    iget-object v1, v1, Lcom/futuredial/ui/ListItem;->itemName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    iget-object v1, p0, Lcom/futuredial/ui/ListData;->m_list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 29
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :cond_1
    return-void
.end method
