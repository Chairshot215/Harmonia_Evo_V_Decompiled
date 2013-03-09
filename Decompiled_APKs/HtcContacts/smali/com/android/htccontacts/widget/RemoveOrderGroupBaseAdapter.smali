.class public Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;
.super Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;
.source "RemoveOrderGroupBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;
    }
.end annotation


# instance fields
.field countMemberIndex:I

.field protected groupIsReadOnlyIndex:I

.field protected mDefaultPhotoDrawable:Landroid/graphics/drawable/Drawable;

.field protected mGroupItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mPredefinedGroupDrawableMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/View;)V
    .locals 1
    .parameter "context"
    .parameter "layout"
    .parameter "c"
    .parameter "separaterView"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/View;)V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;->mPredefinedGroupDrawableMap:Ljava/util/HashMap;

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;->groupIsReadOnlyIndex:I

    .line 45
    invoke-direct {p0}, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;->initPredefineGroupIconMap()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .parameter "context"
    .parameter "c"

    .prologue
    .line 48
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/View;)V

    .line 49
    return-void
.end method

.method private getDefaultIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "title"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;->mDefaultPhotoDrawable:Landroid/graphics/drawable/Drawable;

    .line 154
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    .line 155
    iget-object v2, p0, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;->mPredefinedGroupDrawableMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 156
    .local v1, predefinedIcon:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 157
    move-object v0, v1

    .line 160
    .end local v1           #predefinedIcon:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v0
.end method

.method private initPredefineGroupIconMap()V
    .locals 9

    .prologue
    .line 211
    iget-object v7, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x2080251

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;->mDefaultPhotoDrawable:Landroid/graphics/drawable/Drawable;

    .line 212
    iget-object v7, p0, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;->mPredefinedGroupDrawableMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 213
    invoke-static {}, Lcom/htc/provider/HtcContactsContract$Groups;->getDefaultGroupIconResourceMap()Ljava/util/HashMap;

    move-result-object v4

    .line 214
    .local v4, resMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 215
    .local v5, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 216
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 217
    .local v3, res:Landroid/content/res/Resources;
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 218
    .local v6, title:Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 219
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 220
    .local v2, id:I
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 221
    iget-object v7, p0, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;->mPredefinedGroupDrawableMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 224
    .end local v2           #id:I
    :cond_0
    iget-object v7, p0, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;->mPredefinedGroupDrawableMap:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;->mDefaultPhotoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 227
    .end local v6           #title:Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 15
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 64
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v10

    .line 65
    .local v10, position:I
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 66
    .local v2, buffer:Ljava/lang/StringBuffer;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$ViewTag;

    .line 67
    .local v11, tag:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$ViewTag;
    iget-object v13, p0, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;->mGroupItem:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;

    .line 69
    .local v9, item:Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;
    iget-object v13, v9, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;->Title:Ljava/lang/CharSequence;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 70
    .local v12, title:Ljava/lang/String;
    iget v7, v9, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;->GroupIsReadOnly:I

    .line 71
    .local v7, groupIsReadOnly:I
    if-eqz v11, :cond_0

    iget-object v13, v11, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$ViewTag;->primaryTextView:Lcom/htc/widget/HtcListItem2LineText;

    if-eqz v13, :cond_0

    .line 73
    if-eqz v12, :cond_3

    .line 74
    iget v13, v9, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;->GroupIsReadOnly:I

    move-object/from16 v0, p2

    invoke-static {v0, v12, v13}, Lcom/htc/util/contacts/ContactsUtility;->getDisplayGroupName(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 75
    .local v6, displayTitle:Ljava/lang/String;
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 76
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    const/16 v13, 0x20

    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 78
    const/16 v13, 0x28

    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 79
    iget v13, v9, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;->MemberCount:I

    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 80
    const/16 v13, 0x29

    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 81
    iget-object v13, v11, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$ViewTag;->primaryTextView:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 85
    .end local v6           #displayTitle:Ljava/lang/String;
    :goto_0
    iget-object v13, v11, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$ViewTag;->primaryTextView:Lcom/htc/widget/HtcListItem2LineText;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 89
    :cond_0
    iget-object v4, v11, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$ViewTag;->checkBox:Lcom/htc/widget/HtcListItemCheckBox;

    .line 90
    .local v4, checkBox:Lcom/htc/widget/HtcListItemCheckBox;
    iget-boolean v13, v9, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;->IsDeleted:Z

    invoke-virtual {v4, v13}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 91
    iget-object v13, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->mContext:Landroid/content/Context;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/android/htccontacts/customize/CustomizeResource;->getCustomizeResourceId(Landroid/content/Context;I)I

    move-result v13

    invoke-virtual {v4, v13}, Lcom/htc/widget/HtcListItemCheckBox;->setButtonDrawable(I)V

    .line 92
    iget-boolean v13, v9, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;->IsDefaultGroup:Z

    if-nez v13, :cond_4

    iget v13, v9, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;->GroupIsReadOnly:I

    if-nez v13, :cond_4

    .line 93
    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Lcom/htc/widget/HtcListItemCheckBox;->setClickable(Z)V

    .line 94
    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Lcom/htc/widget/HtcListItemCheckBox;->setEnabled(Z)V

    .line 95
    new-instance v13, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$1;

    invoke-direct {v13, p0, v9, v4}, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$1;-><init>(Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;Lcom/htc/widget/HtcListItemCheckBox;)V

    invoke-virtual {v4, v13}, Lcom/htc/widget/HtcListItemCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    :goto_1
    if-eqz v11, :cond_2

    iget-object v13, v11, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$ViewTag;->iconView:Landroid/widget/ImageView;

    if-eqz v13, :cond_2

    .line 108
    iget-boolean v8, v9, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;->IsPhoto:Z

    .line 109
    .local v8, isPhoto:Z
    const/4 v1, 0x0

    .line 110
    .local v1, b:Landroid/graphics/Bitmap;
    if-eqz v8, :cond_1

    .line 111
    const/4 v3, 0x0

    .line 112
    .local v3, bytes:[B
    iget v13, v9, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;->OrginalCursorIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 113
    iget v13, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->photoIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 114
    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 115
    if-eqz v3, :cond_1

    .line 116
    const/4 v13, 0x0

    array-length v14, v3

    invoke-static {v3, v13, v14}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 120
    .end local v3           #bytes:[B
    :cond_1
    if-nez v1, :cond_6

    .line 121
    invoke-direct {p0, v12}, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;->getDefaultIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 122
    .local v5, defaultIcon:Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_5

    .line 123
    iget-object v13, v11, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$ViewTag;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v13, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    .end local v1           #b:Landroid/graphics/Bitmap;
    .end local v5           #defaultIcon:Landroid/graphics/drawable/Drawable;
    .end local v8           #isPhoto:Z
    :cond_2
    :goto_2
    return-void

    .line 83
    .end local v4           #checkBox:Lcom/htc/widget/HtcListItemCheckBox;
    :cond_3
    iget-object v13, v11, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$ViewTag;->primaryTextView:Lcom/htc/widget/HtcListItem2LineText;

    const-string v14, ""

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_0

    .line 103
    .restart local v4       #checkBox:Lcom/htc/widget/HtcListItemCheckBox;
    :cond_4
    const v13, 0x7f020048

    invoke-virtual {v4, v13}, Lcom/htc/widget/HtcListItemCheckBox;->setButtonDrawable(I)V

    .line 104
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Lcom/htc/widget/HtcListItemCheckBox;->setEnabled(Z)V

    .line 105
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Lcom/htc/widget/HtcListItemCheckBox;->setClickable(Z)V

    goto :goto_1

    .line 125
    .restart local v1       #b:Landroid/graphics/Bitmap;
    .restart local v5       #defaultIcon:Landroid/graphics/drawable/Drawable;
    .restart local v8       #isPhoto:Z
    :cond_5
    iget-object v13, v11, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$ViewTag;->iconView:Landroid/widget/ImageView;

    const v14, 0x2080251

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageResourceWithoutRelayout(I)V

    goto :goto_2

    .line 129
    .end local v5           #defaultIcon:Landroid/graphics/drawable/Drawable;
    :cond_6
    iget-object v13, v11, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$ViewTag;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v13, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2
.end method

.method public destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 206
    iput-object v0, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->mContext:Landroid/content/Context;

    .line 207
    iput-object v0, p0, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;->mGroupItem:Ljava/util/ArrayList;

    .line 208
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;->mGroupItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;->mGroupItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 58
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getOrderGroupList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;->mGroupItem:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 136
    iget-boolean v1, p0, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;->mDataValid:Z

    if-nez v1, :cond_0

    .line 137
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "this should only be called when the cursor is valid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 140
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t move cursor to position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    :cond_1
    if-nez p2, :cond_2

    .line 144
    iget-object v1, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1, v2, p3}, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 148
    .local v0, v:Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 149
    return-object v0

    .line 146
    .end local v0           #v:Landroid/view/View;
    :cond_2
    move-object v0, p2

    .restart local v0       #v:Landroid/view/View;
    goto :goto_0
.end method

.method protected processCursor(Landroid/database/Cursor;)V
    .locals 5
    .parameter "cursor"

    .prologue
    const/4 v4, -0x1

    .line 164
    if-eqz p1, :cond_5

    .line 165
    iget-object v3, p0, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;->mGroupItem:Ljava/util/ArrayList;

    if-nez v3, :cond_6

    .line 166
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;->mGroupItem:Ljava/util/ArrayList;

    .line 170
    :goto_0
    iget v3, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->nameIdx:I

    if-ne v3, v4, :cond_0

    .line 171
    const-string v3, "title"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->nameIdx:I

    .line 173
    :cond_0
    iget v3, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->photoIdIdx:I

    if-ne v3, v4, :cond_1

    .line 174
    const-string v3, "photo"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->photoIdIdx:I

    .line 177
    :cond_1
    const-string v3, "summ_count"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;->countMemberIndex:I

    .line 181
    const-string v3, "group_is_read_only"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;->groupIsReadOnlyIndex:I

    .line 183
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 185
    :cond_2
    iget v3, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->nameIdx:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, name:Ljava/lang/String;
    iget v3, p0, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;->countMemberIndex:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 188
    .local v1, memberCount:I
    new-instance v0, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;

    invoke-direct {v0, v2}, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;-><init>(Ljava/lang/CharSequence;)V

    .line 189
    .local v0, item:Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;
    iput v1, v0, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;->MemberCount:I

    .line 190
    iget v3, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->photoIdIdx:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->photoIdIdx:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    array-length v3, v3

    if-gtz v3, :cond_7

    .line 191
    :cond_3
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;->IsPhoto:Z

    .line 195
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    iput v3, v0, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;->OrginalCursorIndex:I

    .line 196
    iget v3, p0, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;->groupIsReadOnlyIndex:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;->GroupIsReadOnly:I

    .line 197
    invoke-static {v2}, Lcom/htc/provider/HtcContactsContract$Groups;->isDefaultGroupName(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;->IsDefaultGroup:Z

    .line 198
    iget-object v3, p0, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;->mGroupItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 201
    .end local v0           #item:Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;
    .end local v1           #memberCount:I
    .end local v2           #name:Ljava/lang/String;
    :cond_4
    invoke-interface {p1, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 203
    :cond_5
    return-void

    .line 168
    :cond_6
    iget-object v3, p0, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;->mGroupItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 193
    .restart local v0       #item:Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;
    .restart local v1       #memberCount:I
    .restart local v2       #name:Ljava/lang/String;
    :cond_7
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;->IsPhoto:Z

    goto :goto_1
.end method

.method public reassignOrderGroupList(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;>;"
    iget-object v0, p0, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;->mGroupItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 233
    iget-object v0, p0, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;->mGroupItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 234
    return-void
.end method
