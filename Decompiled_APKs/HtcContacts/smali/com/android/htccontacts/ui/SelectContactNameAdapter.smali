.class public Lcom/android/htccontacts/ui/SelectContactNameAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectContactNameAdapter.java"


# static fields
.field private static final mFooterViewCount:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEditNameData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
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
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p2, EditNameData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/htccontacts/ui/SelectContactNameAdapter;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/android/htccontacts/ui/SelectContactNameAdapter;->mEditNameData:Ljava/util/ArrayList;

    .line 47
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/htccontacts/ui/SelectContactNameAdapter;->mEditNameData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/htccontacts/ui/SelectContactNameAdapter;->mEditNameData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 53
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
    .line 57
    iget-object v0, p0, Lcom/android/htccontacts/ui/SelectContactNameAdapter;->mEditNameData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/ui/SelectContactNameAdapter;->mEditNameData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/htccontacts/ui/SelectContactNameAdapter;->mEditNameData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 60
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
    .line 65
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 69
    if-nez p2, :cond_0

    .line 70
    new-instance p2, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    .end local p2
    iget-object v0, p0, Lcom/android/htccontacts/ui/SelectContactNameAdapter;->mContext:Landroid/content/Context;

    const/16 v1, 0x64

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;III)V

    .line 72
    .restart local p2
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ui/SelectContactNameAdapter;->mEditNameData:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/android/htccontacts/ui/SelectContactNameAdapter;->mEditNameData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    move-object v0, p2

    .line 73
    check-cast v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    iget-object v1, p0, Lcom/android/htccontacts/ui/SelectContactNameAdapter;->mEditNameData:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "name"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/htccontacts/ui/SelectContactNameAdapter;->mEditNameData:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "type"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setListItem2Text(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 78
    :goto_0
    return-object p2

    :cond_1
    move-object v0, p2

    .line 75
    check-cast v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get2LineText()Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-result-object v0

    const v1, 0x7f0a0238

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText(I)V

    move-object v0, p2

    .line 76
    check-cast v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get2LineText()Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryTextVisibility(I)V

    goto :goto_0
.end method
