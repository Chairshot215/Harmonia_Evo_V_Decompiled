.class public Lcom/android/mms/ui/LayoutSelectorAdapter;
.super Lcom/android/mms/ui/IconListAdapter;
.source "LayoutSelectorAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    invoke-static {p1}, Lcom/android/mms/ui/LayoutSelectorAdapter;->getData(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/IconListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 33
    return-void
.end method

.method protected static addItem(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "title"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconListAdapter$IconListItem;>;"
    new-instance v0, Lcom/android/mms/ui/IconListAdapter$IconListItem;

    invoke-direct {v0, p1}, Lcom/android/mms/ui/IconListAdapter$IconListItem;-><init>(Ljava/lang/String;)V

    .line 45
    .local v0, temp:Lcom/android/mms/ui/IconListAdapter$IconListItem;
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method protected static getData(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 37
    .local v0, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconListAdapter$IconListItem;>;"
    const v1, 0x7f0900e5

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/LayoutSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;)V

    .line 38
    const v1, 0x7f0900e6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/LayoutSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;)V

    .line 40
    return-object v0
.end method
