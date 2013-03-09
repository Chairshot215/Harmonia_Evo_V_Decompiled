.class public Lcom/android/mms/ui/LocationAttachmentSelectorAdapter;
.super Lcom/android/mms/ui/IconListAdapter;
.source "LocationAttachmentSelectorAdapter.java"


# static fields
.field public static final CURRENT_POSITION:I = 0x0

.field public static final FROM_BOOKMARK:I = 0x1

.field public static final FROM_MAPS:I = 0x2


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    invoke-static {p1}, Lcom/android/mms/ui/LocationAttachmentSelectorAdapter;->getData(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/IconListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 38
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
    .line 51
    .local p0, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconListAdapter$IconListItem;>;"
    new-instance v0, Lcom/android/mms/ui/IconListAdapter$IconListItem;

    invoke-direct {v0, p1}, Lcom/android/mms/ui/IconListAdapter$IconListItem;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, temp:Lcom/android/mms/ui/IconListAdapter$IconListItem;
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
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
    .line 41
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 43
    .local v0, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconListAdapter$IconListItem;>;"
    const v1, 0x7f090144

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/LocationAttachmentSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;)V

    .line 44
    const v1, 0x7f090145

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/LocationAttachmentSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;)V

    .line 45
    const v1, 0x7f090146

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/LocationAttachmentSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;)V

    .line 47
    return-object v0
.end method
