.class final Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;
.super Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;
.source "CommonContactAttributePicker.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/CommonContactAttributePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ContactsListAdapter"
.end annotation


# instance fields
.field builder:Ljava/lang/StringBuilder;

.field private mAlphabet:Ljava/lang/String;

.field private mGroupingColumnIndex:I

.field protected mIdxSortKey:I

.field protected mIdxSortKeyAlt:I

.field mIndexer:Landroid/widget/AlphabetIndexer;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsEnableHideSubHeaderIfEmpty:Z

.field private mIsSubHeaderEnabled:Z

.field protected mLoading:Z

.field private mSortIndexerColumnIdex:I

.field protected searchKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/htccontacts/CommonContactAttributePicker;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/CommonContactAttributePicker;Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "resource"
    .parameter "cursor"

    .prologue
    const/4 v1, 0x0

    .line 504
    iput-object p1, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    .line 505
    invoke-direct {p0, p2, p3, p4, v1}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 496
    iput-boolean v1, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->mIsSubHeaderEnabled:Z

    .line 497
    iput-boolean v1, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->mIsEnableHideSubHeaderIfEmpty:Z

    .line 499
    iput-boolean v1, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->mLoading:Z

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->builder:Ljava/lang/StringBuilder;

    .line 506
    invoke-virtual {p0, p2}, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->getAlphabet(Landroid/content/Context;)V

    .line 507
    invoke-direct {p0, p4}, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->initColumnIndex(Landroid/database/Cursor;)V

    .line 508
    invoke-virtual {p0, p4}, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->updateIndexer(Landroid/database/Cursor;)V

    .line 509
    iput-boolean v1, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->mAutoRequery:Z

    .line 510
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 513
    return-void
.end method

.method private bindGroupPhoto(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 10
    .parameter "context"
    .parameter "cursor"
    .parameter "photoView"
    .parameter "title"

    .prologue
    const/4 v4, 0x0

    .line 954
    invoke-virtual {p3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$PhotoInfo;

    .line 955
    .local v5, oldInfo:Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$PhotoInfo;
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    .line 956
    .local v6, position:I
    new-instance v3, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$PhotoInfo;

    const-wide/16 v8, 0x0

    invoke-direct {v3, v6, v8, v9, v4}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$PhotoInfo;-><init>(IJLjava/lang/String;)V

    .line 957
    .local v3, info:Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$PhotoInfo;
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 960
    const/4 v1, 0x0

    .line 961
    .local v1, bytes:[B
    const-string v8, "photo"

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 962
    .local v2, index:I
    if-lez v2, :cond_0

    .line 963
    if-nez v5, :cond_1

    .line 964
    .local v4, oldBitmap:Landroid/graphics/Bitmap;
    :goto_0
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 965
    if-eqz v1, :cond_2

    array-length v8, v1

    if-lez v8, :cond_2

    .line 966
    const/4 v8, 0x0

    array-length v9, v1

    invoke-static {v1, v8, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 968
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 969
    iput-object v0, v3, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$PhotoInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 977
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_1
    if-eqz v4, :cond_0

    .line 978
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 982
    .end local v4           #oldBitmap:Landroid/graphics/Bitmap;
    :cond_0
    return-void

    .line 963
    :cond_1
    iget-object v4, v5, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$PhotoInfo;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 971
    .restart local v4       #oldBitmap:Landroid/graphics/Bitmap;
    :cond_2
    invoke-static {p4}, Lcom/htc/provider/HtcContactsContract$Groups;->getDefaultGroupIconResource(Ljava/lang/String;)I

    move-result v7

    .line 973
    .local v7, resId:I
    invoke-virtual {p3, v7}, Landroid/widget/ImageView;->setImageResourceWithoutRelayout(I)V

    goto :goto_1
.end method

.method private checkBottom(Lcom/android/htccontacts/CommonContactAttributePicker$ListItemTagData;Landroid/database/Cursor;)V
    .locals 13
    .parameter "cache"
    .parameter "cursor"

    .prologue
    const/4 v10, -0x1

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1054
    invoke-interface {p2}, Landroid/database/Cursor;->isLast()Z

    move-result v9

    if-nez v9, :cond_a

    .line 1055
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 1056
    .local v2, cursorPosition:I
    iget v9, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->mGroupingColumnIndex:I

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1058
    .local v8, thisItemName:Ljava/lang/String;
    add-int/lit8 v9, v2, 0x1

    invoke-super {p0, v9}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    .line 1059
    .local v6, o:Ljava/lang/Object;
    instance-of v9, v6, Landroid/database/Cursor;

    if-nez v9, :cond_0

    .line 1114
    .end local v2           #cursorPosition:I
    .end local v6           #o:Ljava/lang/Object;
    .end local v8           #thisItemName:Ljava/lang/String;
    :goto_0
    return-void

    .restart local v2       #cursorPosition:I
    .restart local v6       #o:Ljava/lang/Object;
    .restart local v8       #thisItemName:Ljava/lang/String;
    :cond_0
    move-object v0, v6

    .line 1062
    check-cast v0, Landroid/database/Cursor;

    .line 1063
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 1064
    iget v9, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->mGroupingColumnIndex:I

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1067
    .local v4, nextItemName:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1069
    invoke-virtual {p1, v11}, Lcom/android/htccontacts/CommonContactAttributePicker$ListItemTagData;->setBottomRound(Z)V

    .line 1110
    .end local v4           #nextItemName:Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-super {p0, v2}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->getItem(I)Ljava/lang/Object;

    goto :goto_0

    .line 1072
    .restart local v4       #nextItemName:Ljava/lang/String;
    :cond_2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_3
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1076
    :cond_4
    invoke-virtual {p1, v12}, Lcom/android/htccontacts/CommonContactAttributePicker$ListItemTagData;->setBottomRound(Z)V

    goto :goto_1

    .line 1080
    :cond_5
    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 1081
    .local v7, thisItemChar:C
    invoke-virtual {v4, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1085
    .local v3, nextItemChar:C
    invoke-virtual {p0, v2}, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->getSectionForPosition(I)I

    move-result v1

    .line 1087
    .local v1, currSect:I
    add-int/lit8 v9, v2, 0x1

    invoke-virtual {p0, v9}, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->getSectionForPosition(I)I

    move-result v5

    .line 1090
    .local v5, nextSect:I
    if-ne v1, v10, :cond_6

    if-eq v5, v10, :cond_8

    .line 1091
    :cond_6
    if-eq v1, v5, :cond_7

    .line 1092
    invoke-virtual {p1, v12}, Lcom/android/htccontacts/CommonContactAttributePicker$ListItemTagData;->setBottomRound(Z)V

    goto :goto_1

    .line 1094
    :cond_7
    invoke-virtual {p1, v11}, Lcom/android/htccontacts/CommonContactAttributePicker$ListItemTagData;->setBottomRound(Z)V

    goto :goto_1

    .line 1098
    :cond_8
    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v9

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v10

    if-eq v9, v10, :cond_9

    .line 1100
    invoke-virtual {p1, v12}, Lcom/android/htccontacts/CommonContactAttributePicker$ListItemTagData;->setBottomRound(Z)V

    goto :goto_1

    .line 1102
    :cond_9
    invoke-virtual {p1, v11}, Lcom/android/htccontacts/CommonContactAttributePicker$ListItemTagData;->setBottomRound(Z)V

    goto :goto_1

    .line 1112
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #currSect:I
    .end local v2           #cursorPosition:I
    .end local v3           #nextItemChar:C
    .end local v4           #nextItemName:Ljava/lang/String;
    .end local v5           #nextSect:I
    .end local v6           #o:Ljava/lang/Object;
    .end local v7           #thisItemChar:C
    .end local v8           #thisItemName:Ljava/lang/String;
    :cond_a
    invoke-virtual {p1, v11}, Lcom/android/htccontacts/CommonContactAttributePicker$ListItemTagData;->setBottomRound(Z)V

    goto :goto_0
.end method

.method private checkTop(Lcom/android/htccontacts/CommonContactAttributePicker$ListItemTagData;Landroid/database/Cursor;)V
    .locals 13
    .parameter "cache"
    .parameter "cursor"

    .prologue
    const/4 v10, -0x1

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1117
    invoke-interface {p2}, Landroid/database/Cursor;->isFirst()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1118
    invoke-virtual {p0}, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->checkFirstItemTopRoundShow()Z

    move-result v9

    invoke-virtual {p1, v9}, Lcom/android/htccontacts/CommonContactAttributePicker$ListItemTagData;->setTopRound(Z)V

    .line 1171
    :cond_0
    :goto_0
    return-void

    .line 1120
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 1121
    .local v2, cursorPosition:I
    iget v9, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->mGroupingColumnIndex:I

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1123
    .local v7, thisItemName:Ljava/lang/String;
    add-int/lit8 v9, v2, -0x1

    invoke-super {p0, v9}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    .line 1124
    .local v4, o:Ljava/lang/Object;
    instance-of v9, v4, Landroid/database/Cursor;

    if-eqz v9, :cond_0

    move-object v0, v4

    .line 1127
    check-cast v0, Landroid/database/Cursor;

    .line 1128
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 1129
    iget v9, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->mGroupingColumnIndex:I

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1132
    .local v5, prevItemName:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1134
    invoke-virtual {p1, v11}, Lcom/android/htccontacts/CommonContactAttributePicker$ListItemTagData;->setTopRound(Z)V

    .line 1169
    .end local v5           #prevItemName:Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-super {p0, v2}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->getItem(I)Ljava/lang/Object;

    goto :goto_0

    .line 1137
    .restart local v5       #prevItemName:Ljava/lang/String;
    :cond_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_4
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1141
    :cond_5
    invoke-virtual {p1, v12}, Lcom/android/htccontacts/CommonContactAttributePicker$ListItemTagData;->setTopRound(Z)V

    goto :goto_1

    .line 1145
    :cond_6
    invoke-virtual {v7, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1146
    .local v3, listItemChar:C
    invoke-virtual {v5, v11}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1148
    .local v6, thisChar:C
    add-int/lit8 v9, v2, -0x1

    invoke-virtual {p0, v9}, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->getSectionForPosition(I)I

    move-result v8

    .line 1150
    .local v8, upperSect:I
    invoke-virtual {p0, v2}, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->getSectionForPosition(I)I

    move-result v1

    .line 1153
    .local v1, currSect:I
    if-ne v8, v10, :cond_7

    if-eq v1, v10, :cond_9

    .line 1154
    :cond_7
    if-eq v8, v1, :cond_8

    .line 1155
    invoke-virtual {p1, v12}, Lcom/android/htccontacts/CommonContactAttributePicker$ListItemTagData;->setTopRound(Z)V

    goto :goto_1

    .line 1157
    :cond_8
    invoke-virtual {p1, v11}, Lcom/android/htccontacts/CommonContactAttributePicker$ListItemTagData;->setTopRound(Z)V

    goto :goto_1

    .line 1160
    :cond_9
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v9

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v10

    if-eq v9, v10, :cond_a

    .line 1162
    invoke-virtual {p1, v12}, Lcom/android/htccontacts/CommonContactAttributePicker$ListItemTagData;->setTopRound(Z)V

    goto :goto_1

    .line 1164
    :cond_a
    invoke-virtual {p1, v11}, Lcom/android/htccontacts/CommonContactAttributePicker$ListItemTagData;->setTopRound(Z)V

    goto :goto_1
.end method

.method private final createHtclistItem(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Lcom/android/htccontacts/widget/HtcListItemBuilder;
    .locals 2
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 999
    new-instance v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    const/16 v1, 0xcb

    invoke-direct {v0, p1, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .line 1001
    .local v0, listItem:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    return-object v0
.end method

.method private getGroupingColumnIndex()I
    .locals 3

    .prologue
    .line 616
    invoke-virtual {p0}, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->getKeyNameIndex()I

    move-result v0

    .line 618
    .local v0, index:I
    iget v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->mIdxSortKey:I

    if-gez v2, :cond_0

    iget v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->mIdxSortKeyAlt:I

    if-ltz v2, :cond_1

    .line 619
    :cond_0
    iget-object v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    invoke-virtual {v2}, Lcom/android/htccontacts/CommonContactAttributePicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/htccontacts/util/ContactsUtils;->getContactListOrderByLastFirst(Landroid/content/ContentResolver;)Z

    move-result v1

    .line 622
    .local v1, isLastFirst:Z
    if-nez v1, :cond_2

    iget v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->mIdxSortKey:I

    if-lez v2, :cond_2

    .line 623
    iget v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->mIdxSortKey:I

    .line 629
    .end local v1           #isLastFirst:Z
    :cond_1
    :goto_0
    return v0

    .line 624
    .restart local v1       #isLastFirst:Z
    :cond_2
    if-eqz v1, :cond_1

    iget v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->mIdxSortKeyAlt:I

    if-lez v2, :cond_1

    .line 625
    iget v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->mIdxSortKeyAlt:I

    goto :goto_0
.end method

.method private getIndexerColumnIndex()I
    .locals 3

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->getKeyNameIndex()I

    move-result v0

    .line 602
    .local v0, index:I
    iget v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->mIdxSortKey:I

    if-gez v2, :cond_0

    iget v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->mIdxSortKeyAlt:I

    if-ltz v2, :cond_1

    .line 603
    :cond_0
    iget-object v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    invoke-virtual {v2}, Lcom/android/htccontacts/CommonContactAttributePicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/htccontacts/util/ContactsUtils;->getContactListOrderByLastFirst(Landroid/content/ContentResolver;)Z

    move-result v1

    .line 605
    .local v1, isLastFirst:Z
    if-nez v1, :cond_2

    iget v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->mIdxSortKey:I

    if-lez v2, :cond_2

    .line 606
    iget v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->mIdxSortKey:I

    .line 612
    .end local v1           #isLastFirst:Z
    :cond_1
    :goto_0
    return v0

    .line 607
    .restart local v1       #isLastFirst:Z
    :cond_2
    if-eqz v1, :cond_1

    iget v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->mIdxSortKeyAlt:I

    if-lez v2, :cond_1

    .line 608
    iget v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->mIdxSortKeyAlt:I

    goto :goto_0
.end method

.method private getSubHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 746
    if-nez p2, :cond_0

    .line 747
    iget-object v1, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x2090026

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 758
    const v1, 0x2020010

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 760
    .local v0, label:Landroid/widget/TextView;
    const v1, 0x7f0a0042

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 762
    .end local v0           #label:Landroid/widget/TextView;
    :cond_0
    return-object p2
.end method

.method private initColumnIndex(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 572
    if-eqz p1, :cond_0

    .line 573
    const-string v0, "photo_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mIdxPhotoId:I

    .line 574
    const-string v0, "ext_photo_url"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mIdxPhotoUrl:I

    .line 576
    const-string v0, "sort_key"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->mIdxSortKey:I

    .line 578
    const-string v0, "sort_key_alt"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->mIdxSortKeyAlt:I

    .line 581
    :cond_0
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 2

    .prologue
    .line 670
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->isShowSubHeader()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 671
    const/4 v0, 0x0

    .line 673
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->areAllItemsEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public final bindForData(Landroid/view/View;Landroid/database/Cursor;Lcom/android/htccontacts/util/PhotoUtils;Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;Ljava/util/HashMap;)V
    .locals 29
    .parameter "view"
    .parameter "c"
    .parameter "photoUtility"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/database/Cursor;",
            "Lcom/android/htccontacts/util/PhotoUtils;",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 793
    .local p4, sparseArray:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .local p5, cdsb:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .local p6, groupcontactsMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v22

    .line 795
    .local v22, obj:Ljava/lang/Object;
    const/16 v27, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 796
    .local v21, name:Ljava/lang/String;
    const/16 v27, 0x3

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 797
    .local v5, accountType:Ljava/lang/String;
    const/16 v27, 0x8

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 798
    .local v17, label:Ljava/lang/String;
    const/16 v27, 0x5

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 800
    .local v20, mimetype:Ljava/lang/String;
    const/16 v27, 0x6

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 803
    .local v11, data:Ljava/lang/String;
    const/16 v27, 0xa

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 805
    .local v9, contactId:I
    const/16 v25, -0x1

    .line 806
    .local v25, type:I
    const/4 v14, -0x1

    .line 808
    .local v14, id:I
    const/16 v27, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v27

    if-eqz v27, :cond_1

    .line 809
    const/4 v14, -0x1

    .line 814
    :goto_0
    const/16 v27, 0x7

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v27

    if-eqz v27, :cond_2

    .line 815
    const/16 v25, -0x1

    .line 820
    :goto_1
    if-eqz v22, :cond_0

    move-object/from16 v0, v22

    instance-of v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker$ListItemTagData;

    move/from16 v27, v0

    if-nez v27, :cond_3

    .line 944
    :cond_0
    :goto_2
    return-void

    .line 811
    :cond_1
    const/16 v27, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    goto :goto_0

    .line 817
    :cond_2
    const/16 v27, 0x7

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    goto :goto_1

    :cond_3
    move-object/from16 v24, v22

    .line 824
    check-cast v24, Lcom/android/htccontacts/CommonContactAttributePicker$ListItemTagData;

    .line 831
    .local v24, tag:Lcom/android/htccontacts/CommonContactAttributePicker$ListItemTagData;
    const/4 v10, -0x1

    .line 833
    .local v10, count:I
    const/16 v27, 0xb

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v27

    if-eqz v27, :cond_c

    .line 834
    const/4 v10, -0x1

    .line 839
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->builder:Ljava/lang/StringBuilder;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 841
    const/4 v7, 0x0

    .line 843
    .local v7, charseq:Ljava/lang/CharSequence;
    const/16 v18, 0x0

    .line 844
    .local v18, mainText:Ljava/lang/CharSequence;
    const/16 v23, 0x0

    .line 848
    .local v23, secondText:Ljava/lang/CharSequence;
    if-eqz v20, :cond_d

    const-string v27, "com.android.contacts.Groups"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_d

    const/16 v16, 0x1

    .line 849
    .local v16, isGroup:Z
    :goto_4
    if-nez v16, :cond_f

    .line 850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    move-object/from16 v27, v0

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static/range {v27 .. v27}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$1400(Lcom/android/htccontacts/CommonContactAttributePicker;)Landroid/content/Context;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v20

    invoke-static {v0, v5, v1, v2}, Lcom/android/htccontacts/util/ContactsUtils;->getDefaultKindTitle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 853
    .local v6, baseKindTitleId:I
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_e

    .line 854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    move-object/from16 v27, v0

    const v28, 0x7f0a016e

    invoke-virtual/range {v27 .. v28}, Lcom/android/htccontacts/CommonContactAttributePicker;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    .line 859
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    move-object/from16 v27, v0

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static/range {v27 .. v27}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$1500(Lcom/android/htccontacts/CommonContactAttributePicker;)Landroid/content/Context;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    move/from16 v2, v25

    move-object/from16 v3, v17

    invoke-static {v0, v5, v1, v2, v3}, Lcom/android/htccontacts/util/ContactsUtils;->getDisplayTypeLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 861
    if-nez v7, :cond_4

    if-lez v6, :cond_4

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Lcom/android/htccontacts/CommonContactAttributePicker;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 864
    :cond_4
    if-eqz v7, :cond_5

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->builder:Ljava/lang/StringBuilder;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 867
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->builder:Ljava/lang/StringBuilder;

    move-object/from16 v27, v0

    const-string v28, ": "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 869
    if-eqz v11, :cond_6

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->builder:Ljava/lang/StringBuilder;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->builder:Ljava/lang/StringBuilder;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 873
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    move-object/from16 v27, v0

    if-eqz v27, :cond_7

    .line 874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    move-object/from16 v27, v0

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static/range {v27 .. v27}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$1600(Lcom/android/htccontacts/CommonContactAttributePicker;)Landroid/content/Context;

    move-result-object v27

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, p2

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->bindPhoto(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 897
    .end local v6           #baseKindTitleId:I
    :cond_7
    :goto_6
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-object/from16 v27, v0

    if-eqz v27, :cond_9

    .line 899
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->obtainMarkSearchNameText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v19

    .line 900
    .local v19, markedSeq:Ljava/lang/CharSequence;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_8

    .line 901
    move-object/from16 v18, v19

    .line 903
    :cond_8
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 904
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryText(Ljava/lang/CharSequence;)V

    .line 907
    .end local v19           #markedSeq:Ljava/lang/CharSequence;
    :cond_9
    const/4 v15, 0x0

    .line 909
    .local v15, isChecked:Z
    if-eqz v5, :cond_12

    const-string v27, "eas_accounttype"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_12

    .line 912
    int-to-long v0, v14

    move-wide/from16 v27, v0

    move-object/from16 v0, p5

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Boolean;

    .line 913
    .local v26, value:Ljava/lang/Boolean;
    if-eqz v26, :cond_11

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    .line 931
    .end local v26           #value:Ljava/lang/Boolean;
    :goto_7
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    move-object/from16 v27, v0

    if-eqz v27, :cond_a

    .line 932
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 935
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    move-object/from16 v27, v0

    #getter for: Lcom/android/htccontacts/CommonContactAttributePicker;->groupContactMapping:Ljava/util/HashMap;
    invoke-static/range {v27 .. v27}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$1800(Lcom/android/htccontacts/CommonContactAttributePicker;)Ljava/util/HashMap;

    move-result-object v27

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 937
    .local v12, dataKey:Ljava/lang/String;
    if-eqz v12, :cond_b

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_b

    .line 938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    move-object/from16 v27, v0

    #getter for: Lcom/android/htccontacts/CommonContactAttributePicker;->groupContactMapping:Ljava/util/HashMap;
    invoke-static/range {v27 .. v27}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$1800(Lcom/android/htccontacts/CommonContactAttributePicker;)Ljava/util/HashMap;

    move-result-object v27

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->checkTop(Lcom/android/htccontacts/CommonContactAttributePicker$ListItemTagData;Landroid/database/Cursor;)V

    .line 942
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->checkBottom(Lcom/android/htccontacts/CommonContactAttributePicker$ListItemTagData;Landroid/database/Cursor;)V

    goto/16 :goto_2

    .line 836
    .end local v7           #charseq:Ljava/lang/CharSequence;
    .end local v12           #dataKey:Ljava/lang/String;
    .end local v15           #isChecked:Z
    .end local v16           #isGroup:Z
    .end local v18           #mainText:Ljava/lang/CharSequence;
    .end local v23           #secondText:Ljava/lang/CharSequence;
    :cond_c
    const/16 v27, 0xb

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    goto/16 :goto_3

    .line 848
    .restart local v7       #charseq:Ljava/lang/CharSequence;
    .restart local v18       #mainText:Ljava/lang/CharSequence;
    .restart local v23       #secondText:Ljava/lang/CharSequence;
    :cond_d
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 856
    .restart local v6       #baseKindTitleId:I
    .restart local v16       #isGroup:Z
    :cond_e
    move-object/from16 v18, v21

    goto/16 :goto_5

    .line 876
    .end local v6           #baseKindTitleId:I
    :cond_f
    if-eqz v16, :cond_7

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->getDisplayGroupName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 881
    .local v13, displayName:Ljava/lang/String;
    if-eqz v13, :cond_10

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->builder:Ljava/lang/StringBuilder;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->builder:Ljava/lang/StringBuilder;

    move-object/from16 v27, v0

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->builder:Ljava/lang/StringBuilder;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->builder:Ljava/lang/StringBuilder;

    move-object/from16 v27, v0

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->builder:Ljava/lang/StringBuilder;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 891
    :goto_8
    const/16 v23, 0x0

    .line 892
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    move-object/from16 v27, v0

    if-eqz v27, :cond_7

    .line 893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    move-object/from16 v27, v0

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static/range {v27 .. v27}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$1700(Lcom/android/htccontacts/CommonContactAttributePicker;)Landroid/content/Context;

    move-result-object v27

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, p2

    move-object/from16 v3, v28

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->bindGroupPhoto(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ImageView;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 889
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    move-object/from16 v27, v0

    const v28, 0x7f0a016e

    invoke-virtual/range {v27 .. v28}, Lcom/android/htccontacts/CommonContactAttributePicker;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    goto :goto_8

    .line 913
    .end local v13           #displayName:Ljava/lang/String;
    .restart local v15       #isChecked:Z
    .restart local v26       #value:Ljava/lang/Boolean;
    :cond_11
    const/4 v15, 0x0

    goto/16 :goto_7

    .line 916
    .end local v26           #value:Ljava/lang/Boolean;
    :cond_12
    if-nez v16, :cond_14

    .line 917
    int-to-long v0, v14

    move-wide/from16 v27, v0

    move-object/from16 v0, p4

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Boolean;

    .line 918
    .restart local v26       #value:Ljava/lang/Boolean;
    if-eqz v26, :cond_13

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    .line 919
    :goto_9
    goto/16 :goto_7

    .line 918
    :cond_13
    const/4 v15, 0x0

    goto :goto_9

    .line 920
    .end local v26           #value:Ljava/lang/Boolean;
    :cond_14
    const/4 v8, 0x0

    .line 921
    .local v8, checked:Ljava/lang/Boolean;
    if-eqz v21, :cond_16

    .line 922
    move-object/from16 v0, p6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #checked:Ljava/lang/Boolean;
    check-cast v8, Ljava/lang/Boolean;

    .line 923
    .restart local v8       #checked:Ljava/lang/Boolean;
    if-nez v8, :cond_15

    const/4 v15, 0x0

    .line 924
    :goto_a
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    move-object/from16 v0, p6

    move-object/from16 v1, v21

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 923
    :cond_15
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    goto :goto_a

    .line 926
    :cond_16
    const/4 v15, 0x0

    goto/16 :goto_7
.end method

.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 948
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mPhotoUtility:Lcom/android/htccontacts/util/PhotoUtils;
    invoke-static {v0}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$1900(Lcom/android/htccontacts/CommonContactAttributePicker;)Lcom/android/htccontacts/util/PhotoUtils;

    move-result-object v3

    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    iget-object v4, v0, Lcom/android/htccontacts/CommonContactAttributePicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    #getter for: Lcom/android/htccontacts/CommonContactAttributePicker;->mColleageCacheArray:Landroid/util/LongSparseArray;
    invoke-static {v0}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$2000(Lcom/android/htccontacts/CommonContactAttributePicker;)Landroid/util/LongSparseArray;

    move-result-object v5

    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    #getter for: Lcom/android/htccontacts/CommonContactAttributePicker;->groupcontactsMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$2100(Lcom/android/htccontacts/CommonContactAttributePicker;)Ljava/util/HashMap;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->bindForData(Landroid/view/View;Landroid/database/Cursor;Lcom/android/htccontacts/util/PhotoUtils;Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;Ljava/util/HashMap;)V

    .line 950
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 6
    .parameter "cursor"

    .prologue
    .line 533
    iget-object v3, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    iget-boolean v3, v3, Lcom/android/htccontacts/CommonContactAttributePicker;->mFilterMode:Z

    if-eqz v3, :cond_1

    .line 534
    const/4 v0, 0x0

    .line 535
    .local v0, currentKey:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    #getter for: Lcom/android/htccontacts/CommonContactAttributePicker;->mInputEditor:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$1100(Lcom/android/htccontacts/CommonContactAttributePicker;)Landroid/widget/EditText;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 536
    iget-object v3, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    #getter for: Lcom/android/htccontacts/CommonContactAttributePicker;->mInputEditor:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$1100(Lcom/android/htccontacts/CommonContactAttributePicker;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 537
    .local v2, s:Landroid/text/Editable;
    if-eqz v2, :cond_0

    .line 538
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 541
    .end local v2           #s:Landroid/text/Editable;
    :cond_0
    iget-object v3, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    iget-object v3, v3, Lcom/android/htccontacts/CommonContactAttributePicker;->mCurrentFilterKey:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    iget-object v3, v3, Lcom/android/htccontacts/CommonContactAttributePicker;->mCurrentFilterKey:Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 543
    if-eqz p1, :cond_1

    .line 544
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 561
    .end local v0           #currentKey:Ljava/lang/String;
    :goto_0
    return-void

    .line 550
    :cond_1
    invoke-super {p0, p1}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 551
    invoke-direct {p0, p1}, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->initColumnIndex(Landroid/database/Cursor;)V

    .line 552
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->updateIndexer(Landroid/database/Cursor;)V

    .line 553
    iget-object v3, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    invoke-virtual {v3, p1}, Lcom/android/htccontacts/CommonContactAttributePicker;->ensureFastScrollEnabled(Landroid/database/Cursor;)V

    .line 555
    iget-object v3, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    invoke-virtual {v3}, Lcom/android/htccontacts/CommonContactAttributePicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    .line 556
    .local v1, listView:Lcom/htc/widget/HtcListView;
    if-eqz v1, :cond_2

    .line 557
    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->setFastScrollSectionsDirty()V

    .line 560
    :cond_2
    iget-object v3, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    const-wide/16 v4, 0xc8

    #calls: Lcom/android/htccontacts/CommonContactAttributePicker;->undateHeaderButtonStateDelayed(J)V
    invoke-static {v3, v4, v5}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$1200(Lcom/android/htccontacts/CommonContactAttributePicker;J)V

    goto :goto_0
.end method

.method protected checkFirstItemTopRoundShow()Z
    .locals 1

    .prologue
    .line 782
    invoke-virtual {p0}, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->isShowSubHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 783
    const/4 v0, 0x0

    .line 785
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->enableRoundCornerByProject()Z

    move-result v0

    goto :goto_0
.end method

.method protected getAlphabet(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 766
    const v0, 0x1040419

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->mAlphabet:Ljava/lang/String;

    .line 768
    return-void
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 702
    invoke-super {p0}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->getCount()I

    move-result v0

    .line 703
    .local v0, count:I
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->isShowSubHeader()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 704
    add-int/lit8 v0, v0, 0x1

    .line 706
    .end local v0           #count:I
    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 711
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->isShowSubHeader()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 712
    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 714
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 719
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->isShowSubHeader()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 720
    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->getItemId(I)J

    move-result-wide v0

    .line 722
    :goto_0
    return-wide v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 727
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->isShowSubHeader()Z

    move-result v1

    if-ne v0, v1, :cond_1

    .line 728
    if-nez p1, :cond_0

    .line 729
    const/4 v0, 0x0

    .line 733
    :goto_0
    return v0

    .line 731
    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->getItemViewType(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 733
    :cond_1
    invoke-super {p0, p1}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->getItemViewType(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected getKeyNameIndex()I
    .locals 4

    .prologue
    .line 1019
    const/4 v1, -0x1

    .line 1021
    .local v1, index:I
    :try_start_0
    iget-object v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 1022
    iget-object v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->mCursor:Landroid/database/Cursor;

    const-string v3, "display_name"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1028
    :cond_0
    :goto_0
    return v1

    .line 1025
    :catch_0
    move-exception v0

    .line 1026
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "CommonContactAttributePicker"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 2
    .parameter "sectionIndex"

    .prologue
    .line 633
    iget-object v1, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-nez v1, :cond_1

    .line 634
    iget-object v1, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    #getter for: Lcom/android/htccontacts/CommonContactAttributePicker;->mAdapter:Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;
    invoke-static {v1}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$1300(Lcom/android/htccontacts/CommonContactAttributePicker;)Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 635
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 637
    const/4 v1, 0x0

    .line 644
    .end local v0           #cursor:Landroid/database/Cursor;
    :goto_0
    return v1

    .line 641
    .restart local v0       #cursor:Landroid/database/Cursor;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->updateIndexer(Landroid/database/Cursor;)V

    .line 644
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v1, p1}, Landroid/widget/AlphabetIndexer;->getPositionForSection(I)I

    move-result v1

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-nez v0, :cond_0

    .line 649
    const/4 v0, -0x1

    .line 651
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->getSectionForPosition(I)I

    move-result v0

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0}, Landroid/widget/AlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 567
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 772
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->isShowSubHeader()Z

    move-result v1

    if-ne v0, v1, :cond_1

    .line 773
    if-nez p1, :cond_0

    .line 774
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->getSubHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 778
    :goto_0
    return-object v0

    .line 776
    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0, p2, p3}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 778
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 741
    const/4 v0, 0x2

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 682
    iget-boolean v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->mLoading:Z

    if-eqz v0, :cond_0

    .line 684
    const/4 v0, 0x0

    .line 686
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 691
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->isShowSubHeader()Z

    move-result v1

    if-ne v0, v1, :cond_1

    .line 692
    if-nez p1, :cond_0

    .line 693
    const/4 v0, 0x0

    .line 697
    :goto_0
    return v0

    .line 695
    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0

    .line 697
    :cond_1
    invoke-super {p0, p1}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method protected isHideSubHeaderIfEmpty()Z
    .locals 1

    .prologue
    .line 663
    iget-boolean v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->mIsEnableHideSubHeaderIfEmpty:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 664
    const/4 v0, 0x1

    .line 666
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isShowSubHeader()Z
    .locals 1

    .prologue
    .line 677
    iget-boolean v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->mIsSubHeaderEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->isHideSubHeaderIfEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    .line 987
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->createHtclistItem(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Lcom/android/htccontacts/widget/HtcListItemBuilder;

    move-result-object v1

    .line 988
    .local v1, view:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    new-instance v0, Lcom/android/htccontacts/CommonContactAttributePicker$ListItemTagData;

    invoke-direct {v0, v2, v2}, Lcom/android/htccontacts/CommonContactAttributePicker$ListItemTagData;-><init>(ZZ)V

    .line 989
    .local v0, tag:Lcom/android/htccontacts/CommonContactAttributePicker$ListItemTagData;
    invoke-virtual {v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get2LineText()Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-result-object v2

    iput-object v2, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    .line 990
    invoke-virtual {v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getQuickContactBadge()Lcom/htc/widget/HtcListItemQuickContactBadge;

    move-result-object v2

    iput-object v2, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    .line 991
    invoke-virtual {v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getCheckBox()Lcom/htc/widget/HtcListItemCheckBox;

    move-result-object v2

    iput-object v2, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    .line 993
    invoke-virtual {v1, v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setTag(Ljava/lang/Object;)V

    .line 994
    return-object v1
.end method

.method public obtainMarkSearchNameText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "textViewText"

    .prologue
    const/4 v0, 0x0

    .line 1033
    iget-object v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->searchKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1050
    :cond_0
    :goto_0
    return-object v0

    .line 1037
    :cond_1
    const/4 v1, 0x0

    .line 1038
    .local v1, text:Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 1039
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1041
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1044
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget-object v3, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->searchKey:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 1048
    iget-object v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->searchKey:Ljava/lang/String;

    #calls: Lcom/android/htccontacts/CommonContactAttributePicker;->generateMarkedCharSequence(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    invoke-static {v1, v2}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$2300(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1050
    .local v0, charseq:Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method protected onContentChanged()V
    .locals 5

    .prologue
    .line 516
    iget-object v3, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    const/4 v4, 0x1

    #setter for: Lcom/android/htccontacts/CommonContactAttributePicker;->mIsPeopleDirty:Z
    invoke-static {v3, v4}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$702(Lcom/android/htccontacts/CommonContactAttributePicker;Z)Z

    .line 518
    iget-object v3, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z
    invoke-static {v3}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$800(Lcom/android/htccontacts/CommonContactAttributePicker;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 519
    iget-object v3, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    #getter for: Lcom/android/htccontacts/CommonContactAttributePicker;->mFirstAdapter:Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;
    invoke-static {v3}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$900(Lcom/android/htccontacts/CommonContactAttributePicker;)Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 520
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 521
    iget-object v3, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    #calls: Lcom/android/htccontacts/CommonContactAttributePicker;->getFilterText()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$1000(Lcom/android/htccontacts/CommonContactAttributePicker;)Ljava/lang/String;

    move-result-object v1

    .line 522
    .local v1, filterText:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    invoke-virtual {v3}, Lcom/android/htccontacts/CommonContactAttributePicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    .line 523
    .local v2, listView:Lcom/htc/widget/HtcListView;
    if-eqz v2, :cond_1

    .line 524
    if-nez v1, :cond_0

    const-string v1, ""

    .end local v1           #filterText:Ljava/lang/String;
    :cond_0
    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcListView;->setFilterText(Ljava/lang/String;)V

    .line 525
    iget-object v3, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    const/4 v4, 0x0

    #setter for: Lcom/android/htccontacts/CommonContactAttributePicker;->mIsPeopleDirty:Z
    invoke-static {v3, v4}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$702(Lcom/android/htccontacts/CommonContactAttributePicker;Z)Z

    .line 529
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v2           #listView:Lcom/htc/widget/HtcListView;
    :cond_1
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 3
    .parameter "constraint"

    .prologue
    .line 1009
    iget-object v1, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/htccontacts/CommonContactAttributePicker;->mFilterMode:Z

    .line 1010
    iget-object v1, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    iput-object p1, v1, Lcom/android/htccontacts/CommonContactAttributePicker;->mCurrentFilterKey:Ljava/lang/CharSequence;

    .line 1011
    const/4 v0, 0x0

    .line 1012
    .local v0, c:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/htccontacts/CommonContactAttributePicker;->doFilter(Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v1, v2}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$2200(Lcom/android/htccontacts/CommonContactAttributePicker;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1013
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->searchKey:Ljava/lang/String;

    .line 1014
    return-object v0
.end method

.method public setAutoHideSubHeaderEnabled(Z)V
    .locals 0
    .parameter "isEnabled"

    .prologue
    .line 659
    iput-boolean p1, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->mIsEnableHideSubHeaderIfEmpty:Z

    .line 660
    return-void
.end method

.method public setSubHeaderEnabled(Z)V
    .locals 0
    .parameter "isEnabled"

    .prologue
    .line 655
    iput-boolean p1, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->mIsSubHeaderEnabled:Z

    .line 656
    return-void
.end method

.method updateIndexer(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 584
    invoke-direct {p0}, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->getIndexerColumnIndex()I

    move-result v0

    .line 585
    .local v0, newIndex:I
    iget-object v1, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-nez v1, :cond_0

    .line 586
    new-instance v1, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;

    iget-object v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->mAlphabet:Ljava/lang/String;

    invoke-direct {v1, p1, v0, v2}, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    .line 595
    :goto_0
    iput v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->mSortIndexerColumnIdex:I

    .line 596
    invoke-direct {p0}, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->getGroupingColumnIndex()I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->mGroupingColumnIndex:I

    .line 597
    return-void

    .line 588
    :cond_0
    iget v1, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->mSortIndexerColumnIdex:I

    if-eq v0, v1, :cond_1

    .line 589
    new-instance v1, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;

    iget-object v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->mAlphabet:Ljava/lang/String;

    invoke-direct {v1, p1, v0, v2}, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    goto :goto_0

    .line 592
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/CommonContactAttributePicker$ContactsListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v1, p1}, Landroid/widget/AlphabetIndexer;->setCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method
