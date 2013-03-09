.class public final Lcom/android/htccontacts/ContactCommonSearchPicker;
.super Lcom/android/htccontacts/ContactListSearchPicker;
.source "ContactCommonSearchPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/ContactCommonSearchPicker$1;,
        Lcom/android/htccontacts/ContactCommonSearchPicker$SelectGroupContactListTask;,
        Lcom/android/htccontacts/ContactCommonSearchPicker$GroupTaskData;,
        Lcom/android/htccontacts/ContactCommonSearchPicker$ContactsGroupItemPickerAdapter;
    }
.end annotation


# static fields
.field public static final CONTACTS_COMMON_PICKER_PROJECTION:[Ljava/lang/String; = null

.field public static final CONTACTS_COMMON_PICKER_WITH_GROUPS_PROJECTION:[Ljava/lang/String; = null

.field protected static final MODE_COMMON_PICKER:I = -0x77efffb5


# instance fields
.field protected final COMMON_PICKER_URI:Landroid/net/Uri;

.field protected mRequestAccountTypeArray:[Ljava/lang/String;

.field protected mRequestMimetypeArray:[Ljava/lang/String;

.field protected mWithGroups:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "starred"

    aput-object v1, v0, v5

    const-string v1, "photo_id"

    aput-object v1, v0, v6

    const-string v1, "has_phone_number"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ext_account_Type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "status_update_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "send_to_voicemail"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "vip"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "sort_key"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "sort_key_alt"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/htccontacts/ContactCommonSearchPicker;->CONTACTS_COMMON_PICKER_PROJECTION:[Ljava/lang/String;

    .line 51
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "starred"

    aput-object v1, v0, v5

    const-string v1, "photo_id"

    aput-object v1, v0, v6

    const-string v1, "has_phone_number"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ext_account_Type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "status_update_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "send_to_voicemail"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "vip"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "sort_key"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "sort_key_alt"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "photo"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/htccontacts/ContactCommonSearchPicker;->CONTACTS_COMMON_PICKER_WITH_GROUPS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/htccontacts/ContactListSearchPicker;-><init>()V

    .line 70
    const-string v0, "content://com.android.contacts/contacts/htcpicker"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ContactCommonSearchPicker;->COMMON_PICKER_URI:Landroid/net/Uri;

    .line 330
    return-void
.end method

.method static synthetic access$100(Lcom/android/htccontacts/ContactCommonSearchPicker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected IsAddItemInSearchLayout()Z
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    return v0
.end method

.method protected checkMode()Z
    .locals 2

    .prologue
    .line 76
    invoke-super {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->checkMode()Z

    move-result v0

    .line 79
    .local v0, result:Z
    const v1, -0x77efffb5

    iput v1, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    .line 80
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactCommonSearchPicker;->parseExtra()V

    .line 81
    return v0
.end method

.method protected doFilter(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "filter"

    .prologue
    .line 152
    iget-object v4, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 154
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ContactCommonSearchPicker;->getDoFilterUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 155
    .local v1, queryUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactCommonSearchPicker;->getProjectionForQuery()[Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, projection:[Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 160
    .local v6, isEmpty:Z
    iget v4, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/ContactCommonSearchPicker;->isEnableSectionIndexer(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 161
    if-eqz v6, :cond_0

    .line 162
    invoke-static {v1}, Lcom/android/htccontacts/ContactCommonSearchPicker;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactCommonSearchPicker;->getContactSelection()Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, selection:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ContactCommonSearchPicker;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    return-object v4
.end method

.method protected generateBasicQueryUriByExtra(Z)Landroid/net/Uri;
    .locals 10
    .parameter "ignoreWithGroup"

    .prologue
    .line 110
    iget-object v6, p0, Lcom/android/htccontacts/ContactCommonSearchPicker;->COMMON_PICKER_URI:Landroid/net/Uri;

    .line 111
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 112
    .local v2, builder:Landroid/net/Uri$Builder;
    if-nez p1, :cond_0

    iget-boolean v7, p0, Lcom/android/htccontacts/ContactCommonSearchPicker;->mWithGroups:Z

    if-eqz v7, :cond_0

    .line 113
    const-string v7, "PARAM_WITH_GROUPS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v9, p0, Lcom/android/htccontacts/ContactCommonSearchPicker;->mWithGroups:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 116
    :cond_0
    iget-object v7, p0, Lcom/android/htccontacts/ContactCommonSearchPicker;->mRequestAccountTypeArray:[Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/htccontacts/ContactCommonSearchPicker;->mRequestAccountTypeArray:[Ljava/lang/String;

    array-length v7, v7

    if-lez v7, :cond_2

    .line 117
    iget-object v1, p0, Lcom/android/htccontacts/ContactCommonSearchPicker;->mRequestAccountTypeArray:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, v1, v3

    .line 118
    .local v0, accountType:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 119
    const-string v7, "PARAM_ACCOUNT_TYPES"

    invoke-virtual {v2, v7, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 117
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 125
    .end local v0           #accountType:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_2
    iget-object v7, p0, Lcom/android/htccontacts/ContactCommonSearchPicker;->mRequestMimetypeArray:[Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/htccontacts/ContactCommonSearchPicker;->mRequestMimetypeArray:[Ljava/lang/String;

    array-length v7, v7

    if-lez v7, :cond_4

    .line 126
    iget-object v1, p0, Lcom/android/htccontacts/ContactCommonSearchPicker;->mRequestMimetypeArray:[Ljava/lang/String;

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v4, v1

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v5, v1, v3

    .line 127
    .local v5, mimetype:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 128
    const-string v7, "PARAM_ATTRIBUTES"

    invoke-virtual {v2, v7, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 126
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 134
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #mimetype:Ljava/lang/String;
    :cond_4
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    return-object v7
.end method

.method protected getContactSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    invoke-super {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->getContactSelection()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getContactUri(I)Landroid/net/Uri;
    .locals 1
    .parameter "position"

    .prologue
    .line 171
    invoke-super {p0, p1}, Lcom/android/htccontacts/ContactListSearchPicker;->getContactUri(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected getProjectionForQuery()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, projection:[Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/htccontacts/ContactCommonSearchPicker;->mWithGroups:Z

    if-eqz v1, :cond_0

    .line 196
    sget-object v0, Lcom/android/htccontacts/ContactCommonSearchPicker;->CONTACTS_COMMON_PICKER_WITH_GROUPS_PROJECTION:[Ljava/lang/String;

    .line 201
    :goto_0
    return-object v0

    .line 199
    :cond_0
    sget-object v0, Lcom/android/htccontacts/ContactCommonSearchPicker;->CONTACTS_COMMON_PICKER_PROJECTION:[Ljava/lang/String;

    goto :goto_0
.end method

.method protected getUriToQuery()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactCommonSearchPicker;->generateBasicQueryUriByExtra(Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected handleOkForMultipleCheckBox()V
    .locals 17

    .prologue
    .line 218
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v8, idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v2, 0x0

    .line 220
    .local v2, cursor:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    if-eqz v15, :cond_0

    .line 221
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v15}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 223
    :cond_0
    const/4 v9, 0x0

    .line 225
    .local v9, isSimArray:[Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    if-eqz v15, :cond_2

    .line 226
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    invoke-virtual {v15}, Landroid/util/LongSparseArray;->size()I

    move-result v12

    .line 228
    .local v12, size:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v12, :cond_2

    .line 229
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    invoke-virtual {v15, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 230
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    invoke-virtual {v15, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    .line 231
    .local v6, id:J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    .end local v6           #id:J
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 236
    .end local v4           #i:I
    .end local v12           #size:I
    :cond_2
    if-nez v2, :cond_3

    .line 270
    :goto_1
    return-void

    .line 240
    :cond_3
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 241
    .local v10, resultIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/htccontacts/ContactCommonSearchPicker;->transferLongListToIntegerList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 242
    .local v1, contactIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v15, "SELECTED_ID"

    invoke-virtual {v10, v15, v1}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 244
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/htccontacts/ContactCommonSearchPicker;->mWithGroups:Z

    if-eqz v15, :cond_7

    .line 245
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v11, selectedGroupTitleList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 247
    .restart local v6       #id:J
    const-wide/16 v15, 0x0

    cmp-long v15, v6, v15

    if-gez v15, :cond_4

    .line 248
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mNegativeIdToTitle:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 249
    .local v14, title:Ljava/lang/String;
    if-eqz v14, :cond_4

    .line 250
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 254
    .end local v6           #id:J
    .end local v14           #title:Ljava/lang/String;
    :cond_5
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_6

    .line 255
    const-string v15, "SELECTED_GROUP_TITLE"

    invoke-virtual {v10, v15, v11}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 258
    :cond_6
    new-instance v13, Lcom/android/htccontacts/ContactCommonSearchPicker$SelectGroupContactListTask;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/htccontacts/ContactCommonSearchPicker$SelectGroupContactListTask;-><init>(Lcom/android/htccontacts/ContactCommonSearchPicker;)V

    .line 260
    .local v13, task:Lcom/android/htccontacts/ContactCommonSearchPicker$SelectGroupContactListTask;
    new-instance v3, Lcom/android/htccontacts/ContactCommonSearchPicker$GroupTaskData;

    const/4 v15, 0x0

    invoke-direct {v3, v15}, Lcom/android/htccontacts/ContactCommonSearchPicker$GroupTaskData;-><init>(Lcom/android/htccontacts/ContactCommonSearchPicker$1;)V

    .line 261
    .local v3, data:Lcom/android/htccontacts/ContactCommonSearchPicker$GroupTaskData;
    iput-object v10, v3, Lcom/android/htccontacts/ContactCommonSearchPicker$GroupTaskData;->intent:Landroid/content/Intent;

    .line 262
    iput-object v11, v3, Lcom/android/htccontacts/ContactCommonSearchPicker$GroupTaskData;->groupTitleList:Ljava/util/ArrayList;

    .line 263
    iput-object v1, v3, Lcom/android/htccontacts/ContactCommonSearchPicker$GroupTaskData;->contactsIdList:Ljava/util/ArrayList;

    .line 264
    const/4 v15, 0x1

    new-array v15, v15, [Lcom/android/htccontacts/ContactCommonSearchPicker$GroupTaskData;

    const/16 v16, 0x0

    aput-object v3, v15, v16

    invoke-virtual {v13, v15}, Lcom/android/htccontacts/ContactCommonSearchPicker$SelectGroupContactListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 267
    .end local v3           #data:Lcom/android/htccontacts/ContactCommonSearchPicker$GroupTaskData;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v11           #selectedGroupTitleList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13           #task:Lcom/android/htccontacts/ContactCommonSearchPicker$SelectGroupContactListTask;
    :cond_7
    const/4 v15, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v10}, Lcom/android/htccontacts/ContactCommonSearchPicker;->setResult(ILandroid/content/Intent;)V

    .line 268
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactCommonSearchPicker;->finish()V

    goto :goto_1
.end method

.method protected isEnableSectionIndexer(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactCommonSearchPicker;->mWithGroups:Z

    if-eqz v0, :cond_0

    .line 187
    const/4 v0, 0x0

    .line 189
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isFastScrollerEnabled()Z
    .locals 1

    .prologue
    .line 181
    invoke-super {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->isFastScrollerEnabled()Z

    move-result v0

    return v0
.end method

.method protected isIndicatorEnabled()Z
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x0

    return v0
.end method

.method protected obtainAdapter(Landroid/database/Cursor;)Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 298
    new-instance v0, Lcom/android/htccontacts/ContactCommonSearchPicker$ContactsGroupItemPickerAdapter;

    const v1, 0x209006c

    invoke-direct {v0, p0, p0, v1, p1}, Lcom/android/htccontacts/ContactCommonSearchPicker$ContactsGroupItemPickerAdapter;-><init>(Lcom/android/htccontacts/ContactCommonSearchPicker;Landroid/content/Context;ILandroid/database/Cursor;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "icicle"

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/android/htccontacts/ContactListSearchPicker;->onCreate(Landroid/os/Bundle;)V

    .line 96
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 100
    invoke-super {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->onResume()V

    .line 101
    return-void
.end method

.method protected parseExtra()V
    .locals 3

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactCommonSearchPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 87
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "EXTRA_PICK_WITH_GROUPS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/htccontacts/ContactCommonSearchPicker;->mWithGroups:Z

    .line 88
    const-string v1, "EXTRA_PICK_WITH_TYPES"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/ContactCommonSearchPicker;->mRequestAccountTypeArray:[Ljava/lang/String;

    .line 89
    const-string v1, "EXTRA_PICK_WITH_MIMETYPE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/ContactCommonSearchPicker;->mRequestMimetypeArray:[Ljava/lang/String;

    .line 90
    return-void
.end method

.method protected shouldEnableCompanyDirectorySearch()Z
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldEnableContextMenu()Z
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method protected startQuery()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 139
    iget-object v3, p0, Lcom/android/htccontacts/ContactCommonSearchPicker;->COMMON_PICKER_URI:Landroid/net/Uri;

    .line 140
    .local v3, queryUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactCommonSearchPicker;->getProjectionForQuery()[Ljava/lang/String;

    move-result-object v4

    .line 141
    .local v4, projection:[Ljava/lang/String;
    iget v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactCommonSearchPicker;->isEnableSectionIndexer(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-static {v3}, Lcom/android/htccontacts/ContactCommonSearchPicker;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactCommonSearchPicker;->getContactSelection()Ljava/lang/String;

    move-result-object v5

    .line 146
    .local v5, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/16 v1, 0x3f2

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/ContactCommonSearchPicker;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method protected transferLongListToIntegerList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, longList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 208
    .local v3, value:J
    long-to-int v1, v3

    .line 209
    .local v1, intValue:I
    if-lez v1, :cond_0

    .line 210
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 213
    .end local v1           #intValue:I
    .end local v3           #value:J
    :cond_1
    return-object v2
.end method
