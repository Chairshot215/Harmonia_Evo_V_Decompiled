.class public Lcom/htc/htcSceneManager/scene/Entry;
.super Ljava/lang/Object;
.source "Entry.java"


# instance fields
.field private mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htcSceneManager/scene/Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mInfo:Landroid/os/Bundle;

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addEntry(Lcom/htc/htcSceneManager/scene/Entry;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/htcSceneManager/scene/Entry;->mEntries:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/htcSceneManager/scene/Entry;->mEntries:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/htc/htcSceneManager/scene/Entry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/htcSceneManager/scene/Entry;->mInfo:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/htc/htcSceneManager/scene/Entry;->mInfo:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Lcom/htc/htcSceneManager/scene/Entry;->mInfo:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getEntries()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htcSceneManager/scene/Entry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/htcSceneManager/scene/Entry;->mEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getEntryByTag(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htcSceneManager/scene/Entry;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_1

    const/4 v2, 0x0

    :cond_0
    return-object v2

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/htc/htcSceneManager/scene/Entry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htcSceneManager/scene/Entry;

    invoke-virtual {v0}, Lcom/htc/htcSceneManager/scene/Entry;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getInfo()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/htc/htcSceneManager/scene/Entry;->mInfo:Landroid/os/Bundle;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/htcSceneManager/scene/Entry;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public isCompleted()Z
    .locals 1

    invoke-virtual {p0}, Lcom/htc/htcSceneManager/scene/Entry;->getTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/htcSceneManager/scene/Entry;->mTag:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "Entry(%s)(%d, %d)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/htcSceneManager/scene/Entry;->getTag()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/htc/htcSceneManager/scene/Entry;->getInfo()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Bundle;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/htc/htcSceneManager/scene/Entry;->getEntries()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
