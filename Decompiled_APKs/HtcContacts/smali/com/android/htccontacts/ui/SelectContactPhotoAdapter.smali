.class public Lcom/android/htccontacts/ui/SelectContactPhotoAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectContactPhotoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter;->mEntries:Ljava/util/ArrayList;

    .line 46
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter;->mEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 50
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter;->mEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 55
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 60
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 65
    if-nez p2, :cond_0

    .line 66
    new-instance v1, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    iget-object v2, p0, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter;->mContext:Landroid/content/Context;

    const/16 v3, 0xc8

    invoke-direct {v1, v2, v3}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .line 71
    .local v1, v:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    :goto_0
    iget-object v2, p0, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;

    .line 72
    .local v0, entry:Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;
    invoke-virtual {v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get2LineText()Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-result-object v2

    iget-object v3, v0, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;->sTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get2LineText()Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryTextVisibility(I)V

    .line 74
    iget-object v2, v0, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;->bmPhoto:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 75
    const v2, 0x2080846

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setPhotoImage(I)V

    .line 80
    :goto_1
    return-object v1

    .end local v0           #entry:Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;
    .end local v1           #v:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    :cond_0
    move-object v1, p2

    .line 68
    check-cast v1, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    .restart local v1       #v:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    goto :goto_0

    .line 77
    .restart local v0       #entry:Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;
    :cond_1
    invoke-virtual {v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getQuickContactBadge()Lcom/htc/widget/HtcListItemQuickContactBadge;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v2

    iget-object v3, v0, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;->bmPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/htc/widget/QuickContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method
