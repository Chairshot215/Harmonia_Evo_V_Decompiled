.class public Lcom/android/mms/ui/BlockListAdapter;
.super Landroid/widget/CursorAdapter;
.source "BlockListAdapter.java"

# interfaces
.implements Ljava/util/Observer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "context"
    .parameter "c"

    .prologue
    .line 44
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mms/ui/BlockListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 0
    .parameter "context"
    .parameter "c"
    .parameter "autoRequery"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 49
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 53
    if-nez p1, :cond_0

    .line 64
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    .line 56
    .local v2, item:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    const/4 v5, 0x1

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, number:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v0

    .line 58
    .local v0, cache:Lcom/android/mms/util/ContactNameCache;
    invoke-virtual {v0, p2, v4}, Lcom/android/mms/util/ContactNameCache;->getContactInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/Telephony$namephoto;

    move-result-object v1

    .line 59
    .local v1, info:Landroid/provider/Telephony$namephoto;
    iget-object v3, v1, Landroid/provider/Telephony$namephoto;->mName:Ljava/lang/String;

    .line 61
    .local v3, name:Ljava/lang/String;
    iget-object v5, v2, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->TitleImage:Lcom/htc/widget/HtcListItemTileImage;

    iget-object v6, v1, Landroid/provider/Telephony$namephoto;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 62
    iget-object v5, v2, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Text:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v5, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 63
    iget-object v5, v2, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Text:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v5, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPhoto()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 67
    iget-object v1, p0, Lcom/android/mms/ui/BlockListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/provider/HtcUnionContact$ContactUtils;->getMyContactPossiblePhotoBitmap(Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 75
    .local v0, photo:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 76
    iget-object v1, p0, Lcom/android/mms/ui/BlockListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200f3

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 80
    :cond_0
    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/4 v3, 0x0

    .line 85
    const/4 v2, 0x1

    invoke-static {p1, v3, v3, v2}, Lcom/android/mms/ui/HtcListItemComposer;->createSimpleListItem(Landroid/content/Context;ZZZ)Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    move-result-object v0

    .line 86
    .local v0, group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    iget-object v2, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Text:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 87
    iget-object v1, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->ListItem:Landroid/view/View;

    .line 88
    .local v1, view:Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 89
    return-object v1
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0
    .parameter "o"
    .parameter "arg"

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/android/mms/ui/BlockListAdapter;->notifyDataSetChanged()V

    .line 94
    return-void
.end method
