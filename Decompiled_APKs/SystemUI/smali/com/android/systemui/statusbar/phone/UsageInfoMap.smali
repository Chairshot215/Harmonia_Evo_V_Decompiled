.class Lcom/android/systemui/statusbar/phone/UsageInfoMap;
.super Ljava/util/TreeMap;
.source "CarrierAppView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/TreeMap",
        "<",
        "Lcom/android/systemui/statusbar/phone/CategoryUsageInfo;",
        "Ljava/util/TreeSet",
        "<",
        "Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UsageInfoMap"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    return-void
.end method

.method private addACategoryInfo(Lcom/android/systemui/statusbar/phone/CategoryUsageInfo;Ljava/util/TreeSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/phone/CategoryUsageInfo;",
            "Ljava/util/TreeSet",
            "<",
            "Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "UsageInfoMap"

    const-string v1, "addACategoryInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/UsageInfoMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private removeACategoryInfo(Lcom/android/systemui/statusbar/phone/CategoryUsageInfo;)V
    .locals 3

    const-string v1, "UsageInfoMap"

    const-string v2, "removeACategoryInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/UsageInfoMap;->keySet()Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "UsageInfoMap"

    const-string v2, "No any category info exist."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/UsageInfoMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/CategoryUsageInfo;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CategoryUsageInfo;->getCategoryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/CategoryUsageInfo;->getCategoryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public addAnUsageInfo(Lcom/android/systemui/statusbar/phone/CategoryUsageInfo;Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;)V
    .locals 5

    const-string v3, "UsageInfoMap"

    const-string v4, "addAnUsageInfo"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/UsageInfoMap;->getSubcategoryInfoSet(Lcom/android/systemui/statusbar/phone/CategoryUsageInfo;)Ljava/util/TreeSet;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {v1, p2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/UsageInfoMap;->addACategoryInfo(Lcom/android/systemui/statusbar/phone/CategoryUsageInfo;Ljava/util/TreeSet;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;->getSubcategoryName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;->getSubcategoryName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    invoke-virtual {v1, p2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public deleteAnUsageInfo(Lcom/android/systemui/statusbar/phone/CategoryUsageInfo;Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;)V
    .locals 4

    const-string v2, "UsageInfoMap"

    const-string v3, "deleteAnUsageInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/UsageInfoMap;->getSubcategoryInfoSet(Lcom/android/systemui/statusbar/phone/CategoryUsageInfo;)Ljava/util/TreeSet;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;->getSubcategoryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;->getSubcategoryName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/UsageInfoMap;->removeACategoryInfo(Lcom/android/systemui/statusbar/phone/CategoryUsageInfo;)V

    goto :goto_0
.end method

.method public getSubcategoryInfoSet(Lcom/android/systemui/statusbar/phone/CategoryUsageInfo;)Ljava/util/TreeSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/phone/CategoryUsageInfo;",
            ")",
            "Ljava/util/TreeSet",
            "<",
            "Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;",
            ">;"
        }
    .end annotation

    const-string v5, "UsageInfoMap"

    const-string v6, "getSubcategoryInfoSet"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/UsageInfoMap;->keySet()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v3, v2

    :goto_0
    return-object v3

    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/CategoryUsageInfo;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/CategoryUsageInfo;->getCategoryName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/CategoryUsageInfo;->getCategoryName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/UsageInfoMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/TreeSet;

    move-object v3, v2

    goto :goto_0

    :cond_2
    move-object v3, v2

    goto :goto_0
.end method

.method public updateAnUsageInfo(Lcom/android/systemui/statusbar/phone/CategoryUsageInfo;Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;)V
    .locals 5

    const-string v3, "UsageInfoMap"

    const-string v4, "updateAnUsageInfo"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/UsageInfoMap;->getSubcategoryInfoSet(Lcom/android/systemui/statusbar/phone/CategoryUsageInfo;)Ljava/util/TreeSet;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/UsageInfoMap;->addAnUsageInfo(Lcom/android/systemui/statusbar/phone/CategoryUsageInfo;Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;->getSubcategoryName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;->getSubcategoryName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;->getMax()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;->setMax(J)V

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;->getUsed()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;->setUsed(J)V

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;->getProgress()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;->setProgress(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1, p2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
