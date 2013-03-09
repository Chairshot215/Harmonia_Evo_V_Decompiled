.class public Lcom/android/htccontacts/link/pickPhotoAdapter;
.super Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;
.source "pickPhotoAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "pickPhotoAdapter"


# instance fields
.field mCameraText:Ljava/lang/String;

.field mPhotosText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "context"
    .parameter "c"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/link/pickPhotoAdapter;->mAutoRequery:Z

    .line 49
    invoke-virtual {p0, p2}, Lcom/android/htccontacts/link/pickPhotoAdapter;->updateIndex(Landroid/database/Cursor;)V

    .line 50
    invoke-direct {p0}, Lcom/android/htccontacts/link/pickPhotoAdapter;->obtainAlbumAndCameraTitle()V

    .line 51
    return-void
.end method

.method private obtainAlbumAndCameraTitle()V
    .locals 7

    .prologue
    .line 113
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.htc.HTCAlbum.action.ITEM_PICKER_FROM_COLLECTIONS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .local v4, intent:Landroid/content/Intent;
    const-string v5, "image/*"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    iget-object v5, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/android/htccontacts/util/ContactsUtils;->obtainActivityTitleRes(Landroid/content/Context;Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v2

    .line 118
    .local v2, galleryBundle:Landroid/os/Bundle;
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    const-string v5, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .restart local v4       #intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/android/htccontacts/util/ContactsUtils;->obtainActivityTitleRes(Landroid/content/Context;Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    .line 121
    .local v0, cameraBundle:Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 122
    .local v3, galleryTitle:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v5, "labelRes"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 123
    const-string v5, "labelRes"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 125
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 126
    iget-object v5, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f0a00da

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 128
    :cond_1
    const/4 v1, 0x0

    .line 129
    .local v1, cameraTitle:Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v5, "labelRes"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 130
    const-string v5, "labelRes"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 133
    iget-object v5, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f0a012b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 136
    :cond_3
    iput-object v3, p0, Lcom/android/htccontacts/link/pickPhotoAdapter;->mPhotosText:Ljava/lang/String;

    .line 137
    iput-object v1, p0, Lcom/android/htccontacts/link/pickPhotoAdapter;->mCameraText:Ljava/lang/String;

    .line 138
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;

    .local v2, cache:Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;
    move-object v1, p1

    .line 58
    check-cast v1, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    .line 60
    .local v1, builderView:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    const-string v5, "account_type"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, accountType:Ljava/lang/String;
    const-string v5, "data_set"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, dataSet:Ljava/lang/String;
    invoke-static {p2, v0, v3}, Lcom/android/htccontacts/util/LinkUtils;->getAccoutTypeLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, type:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get2LineText()Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get2LineText()Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryTextVisibility(I)V

    .line 68
    invoke-virtual {v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getQuickContactBadge()Lcom/htc/widget/HtcListItemQuickContactBadge;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v5

    invoke-super {p0, p2, p3, v5, v4}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->bindPhoto(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public newStaticView(Landroid/content/Context;I)Landroid/view/View;
    .locals 7
    .parameter "context"
    .parameter "StaticType"

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v4, 0x4

    .line 88
    new-instance v1, Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;

    const-string v2, "photo"

    invoke-direct {v1, v2}, Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;-><init>(Ljava/lang/String;)V

    .line 89
    .local v1, cache:Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;
    new-instance v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    iget-object v2, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mContext:Landroid/content/Context;

    const/16 v3, 0xc8

    invoke-direct {v0, v2, v3}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .line 91
    .local v0, builderView:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    if-ne p2, v4, :cond_1

    .line 92
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get2LineText()Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-result-object v2

    iget-object v3, p0, Lcom/android/htccontacts/link/pickPhotoAdapter;->mPhotosText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText(Ljava/lang/String;)V

    .line 93
    const v2, 0x208023c

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setPhotoImage(I)V

    .line 94
    iput v4, v1, Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;->mType:I

    .line 105
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get2LineText()Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryTextVisibility(I)V

    .line 107
    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setTag(Ljava/lang/Object;)V

    .line 108
    return-object v0

    .line 95
    :cond_1
    if-ne p2, v5, :cond_2

    .line 96
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get2LineText()Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-result-object v2

    iget-object v3, p0, Lcom/android/htccontacts/link/pickPhotoAdapter;->mCameraText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText(Ljava/lang/String;)V

    .line 97
    const v2, 0x208023f

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setPhotoImage(I)V

    .line 98
    iput v5, v1, Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;->mType:I

    goto :goto_0

    .line 99
    :cond_2
    if-ne p2, v6, :cond_0

    .line 100
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get2LineText()Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-result-object v2

    const v3, 0x7f0a012d

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText(I)V

    .line 101
    const v2, 0x2080258

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setPhotoImage(I)V

    .line 102
    iput v6, v1, Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;->mType:I

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 74
    new-instance v1, Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;

    const-string v2, "photo"

    invoke-direct {v1, v2}, Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;-><init>(Ljava/lang/String;)V

    .line 75
    .local v1, cache:Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;
    new-instance v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    iget-object v2, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mContext:Landroid/content/Context;

    const/16 v3, 0xc8

    invoke-direct {v0, v2, v3}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .line 76
    .local v0, builderView:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    const/4 v2, 0x2

    iput v2, v1, Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;->mType:I

    .line 77
    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setTag(Ljava/lang/Object;)V

    .line 78
    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 83
    invoke-super {p0}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->notifyDataSetChanged()V

    .line 84
    return-void
.end method

.method protected updateIndex(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 144
    if-eqz p1, :cond_0

    .line 145
    :try_start_0
    const-string v1, "photo_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mIdxPhotoId:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "pickPhotoAdapter"

    const-string v2, "Failed to get column index for cursor !!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
