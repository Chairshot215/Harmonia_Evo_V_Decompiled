.class Lcom/htc/music/util/HistoryManager$HistoryArrayList;
.super Ljava/util/ArrayList;
.source "HistoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/util/HistoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HistoryArrayList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/htc/music/util/HistoryManager$ActivityHistory;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x180e2d897d4e148L


# instance fields
.field mHistoryManager:Lcom/htc/music/util/HistoryManager;


# direct methods
.method constructor <init>(Lcom/htc/music/util/HistoryManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/util/HistoryManager$HistoryArrayList;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    iput-object p1, p0, Lcom/htc/music/util/HistoryManager$HistoryArrayList;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/util/HistoryManager$HistoryArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/util/HistoryManager$HistoryArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/util/HistoryManager$HistoryArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/util/HistoryManager$ActivityHistory;

    iget-object v1, p0, Lcom/htc/music/util/HistoryManager$HistoryArrayList;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    #getter for: Lcom/htc/music/util/HistoryManager;->mActivityGroup:Landroid/app/ActivityGroup;
    invoke-static {v1}, Lcom/htc/music/util/HistoryManager;->access$000(Lcom/htc/music/util/HistoryManager;)Landroid/app/ActivityGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    iget-object v2, v0, Lcom/htc/music/util/HistoryManager$ActivityHistory;->currentTag:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public clearCategory()V
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/htc/music/util/HistoryManager$HistoryArrayList;->size()I

    move-result v0

    sget v4, Lcom/htc/music/util/HistoryManager;->MAX_SOURCE_HISTORY:I

    add-int/lit8 v3, v4, -0x1

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-le v2, v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/htc/music/util/HistoryManager$HistoryArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/util/HistoryManager$ActivityHistory;

    iget-object v4, p0, Lcom/htc/music/util/HistoryManager$HistoryArrayList;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    #getter for: Lcom/htc/music/util/HistoryManager;->mActivityGroup:Landroid/app/ActivityGroup;
    invoke-static {v4}, Lcom/htc/music/util/HistoryManager;->access$000(Lcom/htc/music/util/HistoryManager;)Landroid/app/ActivityGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v4

    iget-object v5, v1, Lcom/htc/music/util/HistoryManager$ActivityHistory;->currentTag:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clearStore()V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/htc/music/util/HistoryManager$HistoryArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_0
    const/4 v3, -0x1

    if-le v2, v3, :cond_2

    invoke-virtual {p0, v2}, Lcom/htc/music/util/HistoryManager$HistoryArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/util/HistoryManager$ActivityHistory;

    if-nez v1, :cond_0

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    iget v4, v1, Lcom/htc/music/util/HistoryManager$ActivityHistory;->style:I

    if-eq v3, v4, :cond_1

    const/4 v3, 0x5

    iget v4, v1, Lcom/htc/music/util/HistoryManager$ActivityHistory;->style:I

    if-ne v3, v4, :cond_2

    :cond_1
    invoke-virtual {p0, v1}, Lcom/htc/music/util/HistoryManager$HistoryArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4

    instance-of v1, p1, Lcom/htc/music/util/HistoryManager$ActivityHistory;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/htc/music/util/HistoryManager$ActivityHistory;

    iget-object v1, p0, Lcom/htc/music/util/HistoryManager$HistoryArrayList;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    #getter for: Lcom/htc/music/util/HistoryManager;->mActivityGroup:Landroid/app/ActivityGroup;
    invoke-static {v1}, Lcom/htc/music/util/HistoryManager;->access$000(Lcom/htc/music/util/HistoryManager;)Landroid/app/ActivityGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    iget-object v2, v0, Lcom/htc/music/util/HistoryManager$ActivityHistory;->currentTag:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    :cond_0
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public removeRange(II)V
    .locals 5

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/util/HistoryManager$HistoryArrayList;->size()I

    move-result v2

    if-gt p2, v2, :cond_0

    if-lt p1, p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, p1

    :goto_1
    if-ge v1, p2, :cond_2

    invoke-virtual {p0, v1}, Lcom/htc/music/util/HistoryManager$HistoryArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/util/HistoryManager$ActivityHistory;

    iget-object v2, p0, Lcom/htc/music/util/HistoryManager$HistoryArrayList;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    #getter for: Lcom/htc/music/util/HistoryManager;->mActivityGroup:Landroid/app/ActivityGroup;
    invoke-static {v2}, Lcom/htc/music/util/HistoryManager;->access$000(Lcom/htc/music/util/HistoryManager;)Landroid/app/ActivityGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v2

    iget-object v3, v0, Lcom/htc/music/util/HistoryManager$ActivityHistory;->currentTag:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->removeRange(II)V

    goto :goto_0
.end method
