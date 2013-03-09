.class public Lcom/android/mms/util/SimIndexUtil;
.super Ljava/lang/Object;
.source "SimIndexUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSimIndexes(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 1
    .parameter "sIndexes"
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p0}, Lcom/android/mms/util/SimIndexUtil;->getSimIndexes(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 49
    .local v0, indexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v0, p1}, Lcom/android/mms/util/SimIndexUtil;->addSimIndexes(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 51
    return-object v0
.end method

.method public static addSimIndexes(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .locals 1
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, indexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez p0, :cond_0

    .line 38
    new-instance p0, Ljava/util/ArrayList;

    .end local p0           #indexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .restart local p0       #indexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    if-lez p1, :cond_1

    .line 41
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_1
    return-object p0
.end method

.method public static getSimIndexes(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .parameter "s"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .local v3, indexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 32
    :cond_0
    return-object v3

    .line 20
    :cond_1
    const-string v7, ";"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 22
    .local v6, sIndexes:[Ljava/lang/String;
    if-eqz v6, :cond_0

    array-length v7, v6

    if-eqz v7, :cond_0

    .line 25
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v2, v0, v1

    .line 26
    .local v2, index:Ljava/lang/String;
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 28
    .local v4, integer:Ljava/lang/Integer;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lez v7, :cond_2

    .line 29
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static hasIndex(Ljava/lang/String;I)Z
    .locals 2
    .parameter "sIndexes"
    .parameter "index"

    .prologue
    .line 85
    invoke-static {p0}, Lcom/android/mms/util/SimIndexUtil;->getSimIndexes(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 87
    .local v0, indexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v0, p1}, Lcom/android/mms/util/SimIndexUtil;->hasIndex(Ljava/util/ArrayList;I)Z

    move-result v1

    return v1
.end method

.method public static hasIndex(Ljava/util/ArrayList;I)Z
    .locals 3
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, indexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 77
    .local v1, idx:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 78
    const/4 v2, 0x1

    .line 81
    .end local v1           #idx:Ljava/lang/Integer;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .parameter "sIndexes"

    .prologue
    .line 91
    invoke-static {p0}, Lcom/android/mms/util/SimIndexUtil;->getSimIndexes(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 92
    const/4 v0, 0x1

    .line 94
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static turnIndexesToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, indexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .local v2, sb:Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 59
    :cond_0
    const-string v4, ""

    .line 72
    :goto_0
    return-object v4

    .line 61
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 62
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_3

    .line 63
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 64
    .local v1, index:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_2

    .line 65
    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    add-int/lit8 v4, v3, -0x1

    if-eq v0, v4, :cond_2

    .line 68
    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 72
    .end local v1           #index:Ljava/lang/Integer;
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method
