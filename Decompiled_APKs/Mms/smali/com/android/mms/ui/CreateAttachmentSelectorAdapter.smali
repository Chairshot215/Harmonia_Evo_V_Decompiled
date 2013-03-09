.class public Lcom/android/mms/ui/CreateAttachmentSelectorAdapter;
.super Lcom/android/mms/ui/IconListAdapter;
.source "CreateAttachmentSelectorAdapter.java"


# static fields
.field public static final ADD_SLIDESHOW:I = 0x3

.field public static final MODE_CREATE:I = 0x0

.field public static final RECORD_SOUND:I = 0x2

.field public static final RECORD_VIDEO:I = 0x1

.field public static final TAKE_PICTURE:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 38
    invoke-static {p2, p1}, Lcom/android/mms/ui/CreateAttachmentSelectorAdapter;->getData(ILandroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/IconListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 39
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
    .line 54
    .local p0, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconListAdapter$IconListItem;>;"
    new-instance v0, Lcom/android/mms/ui/IconListAdapter$IconListItem;

    invoke-direct {v0, p1}, Lcom/android/mms/ui/IconListAdapter$IconListItem;-><init>(Ljava/lang/String;)V

    .line 55
    .local v0, temp:Lcom/android/mms/ui/IconListAdapter$IconListItem;
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method protected static getData(ILandroid/content/Context;)Ljava/util/List;
    .locals 2
    .parameter "mode"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 43
    .local v0, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconListAdapter$IconListItem;>;"
    if-nez p0, :cond_0

    .line 45
    const v1, 0x7f0900dc

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/CreateAttachmentSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;)V

    .line 46
    const v1, 0x7f090127

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/CreateAttachmentSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;)V

    .line 47
    const v1, 0x7f0900df

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/CreateAttachmentSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;)V

    .line 48
    const v1, 0x20c01f6

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/CreateAttachmentSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;)V

    .line 50
    :cond_0
    return-object v0
.end method
