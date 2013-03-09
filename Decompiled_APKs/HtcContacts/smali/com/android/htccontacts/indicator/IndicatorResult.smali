.class public Lcom/android/htccontacts/indicator/IndicatorResult;
.super Ljava/lang/Object;
.source "IndicatorResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;,
        Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;
    }
.end annotation


# instance fields
.field protected mBundle:Landroid/os/Bundle;

.field protected mPublishResult:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mResult:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mStatusInfo:Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;

.field protected mStatuses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/htccontacts/indicator/IndicatorResult;-><init>(Landroid/os/Bundle;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/android/htccontacts/indicator/IndicatorResult;->mBundle:Landroid/os/Bundle;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorResult;->mResult:Ljava/util/HashMap;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorResult;->mPublishResult:Ljava/util/HashMap;

    .line 70
    new-instance v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;

    invoke-direct {v0}, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorResult;->mStatusInfo:Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorResult;->mStatuses:Ljava/util/ArrayList;

    .line 72
    return-void
.end method


# virtual methods
.method public addPublishResult(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter "result"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorResult;->mPublishResult:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    return-void
.end method

.method public addResult(Ljava/lang/String;I)V
    .locals 2
    .parameter "type"
    .parameter "count"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorResult;->mResult:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void
.end method

.method public clearResult()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorResult;->mResult:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 95
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorResult;->mPublishResult:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 96
    return-void
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorResult;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getCount(Ljava/lang/String;)I
    .locals 1
    .parameter "type"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorResult;->mResult:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorResult;->mResult:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 119
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPublishResult(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorResult;->mPublishResult:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorResult;->mPublishResult:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 126
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStatusInfo()Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorResult;->mStatusInfo:Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;

    return-object v0
.end method

.method public getStatuses()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorResult;->mStatuses:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTotalCount()I
    .locals 5

    .prologue
    .line 107
    const/4 v2, 0x0

    .line 108
    .local v2, total:I
    iget-object v4, p0, Lcom/android/htccontacts/indicator/IndicatorResult;->mResult:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    .line 109
    .local v3, values:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 110
    .local v1, integer:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_0

    .line 112
    .end local v1           #integer:Ljava/lang/Integer;
    :cond_0
    return v2
.end method

.method public getTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorResult;->mResult:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected setBundle(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorResult;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorResult;->mBundle:Landroid/os/Bundle;

    .line 78
    :cond_0
    iput-object p1, p0, Lcom/android/htccontacts/indicator/IndicatorResult;->mBundle:Landroid/os/Bundle;

    .line 79
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 134
    iget-object v3, p0, Lcom/android/htccontacts/indicator/IndicatorResult;->mResult:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 135
    .local v1, ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .local v2, out:Ljava/lang/StringBuilder;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 137
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 138
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 141
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 142
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 144
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 147
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
