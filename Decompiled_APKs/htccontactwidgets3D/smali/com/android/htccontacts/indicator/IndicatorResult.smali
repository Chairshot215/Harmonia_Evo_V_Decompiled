.class public Lcom/android/htccontacts/indicator/IndicatorResult;
.super Ljava/lang/Object;
.source "IndicatorResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;,
        Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;
    }
.end annotation


# instance fields
.field protected mActivityInfo:Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;

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


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/htccontacts/indicator/IndicatorResult;-><init>(Landroid/os/Bundle;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 88
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/android/htccontacts/indicator/IndicatorResult;->mBundle:Landroid/os/Bundle;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorResult;->mResult:Ljava/util/HashMap;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorResult;->mPublishResult:Ljava/util/HashMap;

    .line 92
    new-instance v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;

    invoke-direct {v0}, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorResult;->mStatusInfo:Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;

    .line 93
    new-instance v0, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;

    invoke-direct {v0}, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorResult;->mActivityInfo:Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;

    .line 95
    return-void
.end method


# virtual methods
.method public addPublishResult(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter "result"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorResult;->mPublishResult:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-void
.end method

.method public addResult(Ljava/lang/String;I)V
    .locals 2
    .parameter "type"
    .parameter "count"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorResult;->mResult:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-void
.end method

.method public clearResult()V
    .locals 2

    .prologue
    .line 117
    const-string v0, "getLatestActivity"

    const-string v1, "clearResult"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorResult;->mResult:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 119
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorResult;->mPublishResult:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 121
    return-void
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorResult;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getCount(Ljava/lang/String;)I
    .locals 1
    .parameter "type"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorResult;->mResult:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorResult;->mResult:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 140
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLatestActivity()Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorResult;->mActivityInfo:Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;

    return-object v0
.end method

.method public getPublishResult(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorResult;->mPublishResult:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorResult;->mPublishResult:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 147
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStatusInfo()Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorResult;->mStatusInfo:Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;

    return-object v0
.end method

.method public getTotalCount()I
    .locals 5

    .prologue
    .line 128
    const/4 v2, 0x0

    .line 129
    .local v2, total:I
    iget-object v4, p0, Lcom/android/htccontacts/indicator/IndicatorResult;->mResult:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    .line 130
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

    .line 131
    .local v1, integer:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_0

    .line 133
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
    .line 151
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorResult;->mResult:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected setBundle(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorResult;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorResult;->mBundle:Landroid/os/Bundle;

    .line 101
    :cond_0
    iput-object p1, p0, Lcom/android/htccontacts/indicator/IndicatorResult;->mBundle:Landroid/os/Bundle;

    .line 102
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 165
    iget-object v3, p0, Lcom/android/htccontacts/indicator/IndicatorResult;->mResult:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 166
    .local v1, ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .local v2, out:Ljava/lang/StringBuilder;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 168
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 169
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 172
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 173
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 176
    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 178
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
