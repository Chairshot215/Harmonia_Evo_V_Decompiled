.class public Lcom/android/htccontacts/link/LinkTypeListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "LinkTypeListAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LinkTypeListItem"


# instance fields
.field private mAvailableAccount:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/model/AccountType;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field public mPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/model/AccountType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p2, availableAccount:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountType;>;"
    const v0, 0x1090004

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 48
    iput-object p1, p0, Lcom/android/htccontacts/link/LinkTypeListAdapter;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/android/htccontacts/link/LinkTypeListAdapter;->mAvailableAccount:Ljava/util/ArrayList;

    .line 50
    return-void
.end method


# virtual methods
.method public getAvailableAccount()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/model/AccountType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/htccontacts/link/LinkTypeListAdapter;->mAvailableAccount:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 58
    if-nez p2, :cond_0

    .line 59
    new-instance v0, Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;

    const-string v5, "type"

    invoke-direct {v0, v5}, Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, cache:Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;
    new-instance p2, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    .end local p2
    iget-object v5, p0, Lcom/android/htccontacts/link/LinkTypeListAdapter;->mContext:Landroid/content/Context;

    const/16 v6, 0xc8

    invoke-direct {p2, v5, v6}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .line 61
    .restart local p2
    const/4 v5, 0x3

    iput v5, v0, Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;->mType:I

    .line 62
    invoke-virtual {p2, v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setTag(Ljava/lang/Object;)V

    .line 65
    .end local v0           #cache:Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;

    .line 66
    .restart local v0       #cache:Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;
    move v2, p1

    .line 67
    .local v2, index:I
    iput p1, v0, Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;->mPos:I

    .line 69
    if-nez v2, :cond_2

    move-object v5, p2

    .line 70
    check-cast v5, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    const v6, 0x2080846

    invoke-virtual {v5, v6}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setPhotoImage(I)V

    move-object v5, p2

    .line 71
    check-cast v5, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    iget-object v6, p0, Lcom/android/htccontacts/link/LinkTypeListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00ee

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/htccontacts/link/LinkTypeListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a027c

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/htccontacts/link/LinkTypeListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0185

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setListItem2Text(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 91
    :cond_1
    :goto_0
    iget v5, v0, Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;->mPos:I

    iget-object v6, p0, Lcom/android/htccontacts/link/LinkTypeListAdapter;->mAvailableAccount:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_4

    move-object v5, p2

    .line 93
    check-cast v5, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setRoundCorner(I)V

    .line 98
    :goto_1
    return-object p2

    .line 75
    :cond_2
    iget-object v5, p0, Lcom/android/htccontacts/link/LinkTypeListAdapter;->mAvailableAccount:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/model/AccountType;

    .line 76
    .local v3, source:Lcom/android/htccontacts/model/AccountType;
    if-eqz v3, :cond_1

    iget-object v5, v3, Lcom/android/htccontacts/model/AccountType;->resPackageName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget v5, v3, Lcom/android/htccontacts/model/AccountType;->iconRes:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    iget v5, v3, Lcom/android/htccontacts/model/AccountType;->titleRes:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 77
    iget-object v5, p0, Lcom/android/htccontacts/link/LinkTypeListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, v3, Lcom/android/htccontacts/model/AccountType;->resPackageName:Ljava/lang/String;

    iget v7, v3, Lcom/android/htccontacts/model/AccountType;->iconRes:I

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, icon:Landroid/graphics/drawable/Drawable;
    move-object v5, p2

    .line 79
    check-cast v5, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    invoke-virtual {v5, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setPhotoImage(Landroid/graphics/drawable/Drawable;)V

    .line 81
    iget-object v5, p0, Lcom/android/htccontacts/link/LinkTypeListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, v3, Lcom/android/htccontacts/model/AccountType;->resPackageName:Ljava/lang/String;

    iget v7, v3, Lcom/android/htccontacts/model/AccountType;->titleRes:I

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    .local v4, title:Ljava/lang/CharSequence;
    move-object v5, p2

    .line 84
    check-cast v5, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    if-nez v4, :cond_3

    const-string v6, ""

    :goto_2
    iget-object v7, p0, Lcom/android/htccontacts/link/LinkTypeListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a027c

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setListItem2Text(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .end local v1           #icon:Landroid/graphics/drawable/Drawable;
    .end local v3           #source:Lcom/android/htccontacts/model/AccountType;
    .end local v4           #title:Ljava/lang/CharSequence;
    :cond_4
    move-object v5, p2

    .line 95
    check-cast v5, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setRoundCorner(I)V

    goto :goto_1
.end method
