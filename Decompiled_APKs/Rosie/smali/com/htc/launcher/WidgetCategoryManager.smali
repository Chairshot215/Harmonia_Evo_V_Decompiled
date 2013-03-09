.class public Lcom/htc/launcher/WidgetCategoryManager;
.super Ljava/lang/Object;
.source "WidgetCategoryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/launcher/WidgetCategoryManager$Category;
    }
.end annotation


# instance fields
.field private mCategoryMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/launcher/WidgetCategoryManager$Category;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/WidgetCategoryManager;->mCategoryMap:Ljava/util/HashMap;

    .line 11
    return-void
.end method

.method public static createCategory(I)Lcom/htc/launcher/WidgetCategoryManager$Category;
    .locals 2
    .parameter "catId"

    .prologue
    .line 47
    new-instance v0, Lcom/htc/launcher/WidgetCategoryManager$Category;

    invoke-direct {v0}, Lcom/htc/launcher/WidgetCategoryManager$Category;-><init>()V

    .line 49
    .local v0, category:Lcom/htc/launcher/WidgetCategoryManager$Category;
    sparse-switch p0, :sswitch_data_0

    .line 61
    const/16 v1, 0x64

    iput v1, v0, Lcom/htc/launcher/WidgetCategoryManager$Category;->mCategoryId:I

    .line 66
    :goto_0
    return-object v0

    .line 51
    :sswitch_0
    const/16 v1, 0x12c

    iput v1, v0, Lcom/htc/launcher/WidgetCategoryManager$Category;->mCategoryId:I

    goto :goto_0

    .line 56
    :sswitch_1
    const/16 v1, 0xc8

    iput v1, v0, Lcom/htc/launcher/WidgetCategoryManager$Category;->mCategoryId:I

    goto :goto_0

    .line 49
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_0
    .end sparse-switch
.end method

.method private declared-synchronized getOrCreateCategory(I)Lcom/htc/launcher/WidgetCategoryManager$Category;
    .locals 3
    .parameter "catId"

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/launcher/WidgetCategoryManager;->mCategoryMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/WidgetCategoryManager$Category;

    .line 85
    .local v0, category:Lcom/htc/launcher/WidgetCategoryManager$Category;
    if-nez v0, :cond_0

    .line 86
    invoke-static {p1}, Lcom/htc/launcher/WidgetCategoryManager;->createCategory(I)Lcom/htc/launcher/WidgetCategoryManager$Category;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/htc/launcher/WidgetCategoryManager;->mCategoryMap:Ljava/util/HashMap;

    iget v2, v0, Lcom/htc/launcher/WidgetCategoryManager$Category;->mCategoryId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_0
    monitor-exit p0

    return-object v0

    .line 84
    .end local v0           #category:Lcom/htc/launcher/WidgetCategoryManager$Category;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private static translateCatId(I)I
    .locals 1
    .parameter "original"

    .prologue
    .line 36
    sparse-switch p0, :sswitch_data_0

    .line 42
    const/16 v0, 0x64

    :goto_0
    return v0

    .line 38
    :sswitch_0
    const/16 v0, 0x12c

    goto :goto_0

    .line 40
    :sswitch_1
    const/16 v0, 0xc8

    goto :goto_0

    .line 36
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public bindCategory(Lcom/htc/launcher/WidgetItem;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 24
    invoke-virtual {p1}, Lcom/htc/launcher/WidgetItem;->getCategoryId()I

    move-result v1

    .line 25
    .local v1, origCatId:I
    invoke-static {v1}, Lcom/htc/launcher/WidgetCategoryManager;->translateCatId(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/launcher/WidgetCategoryManager;->getOrCreateCategory(I)Lcom/htc/launcher/WidgetCategoryManager$Category;

    move-result-object v0

    .line 26
    .local v0, category:Lcom/htc/launcher/WidgetCategoryManager$Category;
    #getter for: Lcom/htc/launcher/WidgetCategoryManager$Category;->mWidgetItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/launcher/WidgetCategoryManager$Category;->access$000(Lcom/htc/launcher/WidgetCategoryManager$Category;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    return-void
.end method

.method public getItems(I)Ljava/util/ArrayList;
    .locals 3
    .parameter "catId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/WidgetItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v1, p0, Lcom/htc/launcher/WidgetCategoryManager;->mCategoryMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/WidgetCategoryManager$Category;

    .line 76
    .local v0, category:Lcom/htc/launcher/WidgetCategoryManager$Category;
    if-eqz v0, :cond_0

    .line 77
    #getter for: Lcom/htc/launcher/WidgetCategoryManager$Category;->mWidgetItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/launcher/WidgetCategoryManager$Category;->access$000(Lcom/htc/launcher/WidgetCategoryManager$Category;)Ljava/util/ArrayList;

    move-result-object v1

    .line 79
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public hasCategory(I)Z
    .locals 3
    .parameter "catId"

    .prologue
    .line 70
    iget-object v1, p0, Lcom/htc/launcher/WidgetCategoryManager;->mCategoryMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/WidgetCategoryManager$Category;

    .line 71
    .local v0, category:Lcom/htc/launcher/WidgetCategoryManager$Category;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public listCategories()[Lcom/htc/launcher/WidgetCategoryManager$Category;
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/launcher/WidgetCategoryManager;->mCategoryMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/htc/launcher/WidgetCategoryManager$Category;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/launcher/WidgetCategoryManager$Category;

    return-object v0
.end method

.method public unbindCategory(Lcom/htc/launcher/WidgetItem;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 30
    invoke-virtual {p1}, Lcom/htc/launcher/WidgetItem;->getCategoryId()I

    move-result v1

    .line 31
    .local v1, origCatId:I
    invoke-static {v1}, Lcom/htc/launcher/WidgetCategoryManager;->translateCatId(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/launcher/WidgetCategoryManager;->getOrCreateCategory(I)Lcom/htc/launcher/WidgetCategoryManager$Category;

    move-result-object v0

    .line 32
    .local v0, category:Lcom/htc/launcher/WidgetCategoryManager$Category;
    #getter for: Lcom/htc/launcher/WidgetCategoryManager$Category;->mWidgetItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/launcher/WidgetCategoryManager$Category;->access$000(Lcom/htc/launcher/WidgetCategoryManager$Category;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method
