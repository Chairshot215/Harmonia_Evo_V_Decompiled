.class final Lcom/htc/sdcardwizard/CategoryItems$2;
.super Ljava/lang/Object;
.source "CategoryItems.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdcardwizard/CategoryItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/htc/sdcardwizard/CategoryItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/htc/sdcardwizard/CategoryItem;Lcom/htc/sdcardwizard/CategoryItem;)I
    .locals 5
    .parameter "item1"
    .parameter "item2"

    .prologue
    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, res:I
    invoke-virtual {p2}, Lcom/htc/sdcardwizard/CategoryItem;->getSize()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/htc/sdcardwizard/CategoryItem;->getSize()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 129
    const/4 v0, 0x1

    .line 140
    :cond_0
    :goto_0
    return v0

    .line 130
    :cond_1
    invoke-virtual {p2}, Lcom/htc/sdcardwizard/CategoryItem;->getSize()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/htc/sdcardwizard/CategoryItem;->getSize()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    .line 131
    const/4 v0, -0x1

    goto :goto_0

    .line 133
    :cond_2
    const/4 v0, 0x0

    .line 134
    invoke-virtual {p2}, Lcom/htc/sdcardwizard/CategoryItem;->getCount()I

    move-result v1

    invoke-virtual {p1}, Lcom/htc/sdcardwizard/CategoryItem;->getCount()I

    move-result v2

    if-le v1, v2, :cond_3

    .line 135
    const/4 v0, 0x1

    goto :goto_0

    .line 136
    :cond_3
    invoke-virtual {p2}, Lcom/htc/sdcardwizard/CategoryItem;->getCount()I

    move-result v1

    invoke-virtual {p1}, Lcom/htc/sdcardwizard/CategoryItem;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 137
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    check-cast p1, Lcom/htc/sdcardwizard/CategoryItem;

    .end local p1
    check-cast p2, Lcom/htc/sdcardwizard/CategoryItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/htc/sdcardwizard/CategoryItems$2;->compare(Lcom/htc/sdcardwizard/CategoryItem;Lcom/htc/sdcardwizard/CategoryItem;)I

    move-result v0

    return v0
.end method
