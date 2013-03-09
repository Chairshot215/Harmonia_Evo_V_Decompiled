.class public Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;
.super Ljava/lang/Object;
.source "ContactListContextMenuAdapter.java"


# static fields
.field public static final CONTEXT_MENU_DELETE_CONTACT:I = 0x4

.field public static final CONTEXT_MENU_EDIT_CONTACT:I = 0x3

.field public static final CONTEXT_MENU_EDIT_MY_CONTACT_CARD:I = 0x6

.field public static final CONTEXT_MENU_ITEM_CALL_DEFAULT:I = 0x1

.field public static final CONTEXT_MENU_ITEM_SEND_SMS:I = 0x2

.field public static final CONTEXT_MENU_SEND_MY_CONTACT_CARD:I = 0x7

.field public static final CONTEXT_MENU_SET_WIDGET_ACTION:I = 0x8

.field public static final CONTEXT_MENU_SHARE_CONTACT_VIA_SMS:I = 0x5

.field public static final CONTEXT_MENU_SIZE:I = 0x8


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mListView:Lcom/htc/widget/HtcListView;

.field private mTempNumber:Ljava/lang/String;

.field private mTempPhoneType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/htc/widget/HtcListView;)V
    .locals 1
    .parameter "listView"

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->mListView:Lcom/htc/widget/HtcListView;

    .line 53
    iget-object v0, p0, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->mContext:Landroid/content/Context;

    .line 54
    const-string v0, "ContactListContextMenuAdapter"

    iput-object v0, p0, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->TAG:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/htc/widget/HtcListView;Ljava/lang/String;)V
    .locals 1
    .parameter "listView"
    .parameter "tag"

    .prologue
    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->mListView:Lcom/htc/widget/HtcListView;

    .line 59
    iget-object v0, p0, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->TAG:Ljava/lang/String;

    .line 61
    return-void
.end method

.method private editMyContactCard(J)V
    .locals 4
    .parameter "lMyContactId"

    .prologue
    .line 362
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 363
    .local v0, rawContactUri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 364
    return-void
.end method

.method private getDeleteConfirmDialog(I)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 13
    .parameter "itemPos"

    .prologue
    const/4 v12, 0x0

    .line 389
    const-string v9, "BriwseCibtactsAllActivity"

    const-string v10, "getDeleteConfirmDialog"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->getItemOfPositionExcludeHerader(I)Landroid/database/Cursor;

    move-result-object v3

    .line 394
    .local v3, cursor:Landroid/database/Cursor;
    const-string v9, "ext_account_Type"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 395
    .local v1, accountTypeIdx:I
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, accountType:Ljava/lang/String;
    const-string v9, "_id"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 397
    .local v7, idIdx:I
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 398
    .local v5, id:J
    sget-object v9, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 399
    .local v2, contactUri:Landroid/net/Uri;
    const-string v9, "com.anddroid.contacts.sim"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 401
    .local v8, isSIM:Z
    iget-object v9, p0, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v9, v10, v8, v2, v11}, Lcom/android/htccontacts/util/ContactsUtils;->getDeleteConfirmDialog(Landroid/content/Context;Landroid/content/ContentResolver;ZLandroid/net/Uri;Landroid/app/Activity;)Lcom/htc/widget/HtcAlertDialog$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 404
    .end local v0           #accountType:Ljava/lang/String;
    .end local v1           #accountTypeIdx:I
    .end local v2           #contactUri:Landroid/net/Uri;
    .end local v3           #cursor:Landroid/database/Cursor;
    .end local v5           #id:J
    .end local v7           #idIdx:I
    .end local v8           #isSIM:Z
    :goto_0
    return-object v9

    .line 402
    :catch_0
    move-exception v4

    .line 403
    .local v4, e:Ljava/lang/Exception;
    iget-object v9, p0, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "get delete confirm dialog exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v9, p0, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v9, v10, v11, v12, v12}, Lcom/android/htccontacts/util/ContactsUtils;->getDeleteConfirmDialog(Landroid/content/Context;Landroid/content/ContentResolver;ZLandroid/net/Uri;Landroid/app/Activity;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    goto :goto_0
.end method

.method private isRestricted(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 435
    const/4 v0, 0x0

    return v0
.end method

.method private queryPrimaryNumberInfo(Landroid/database/Cursor;)V
    .locals 6
    .parameter "cursor"

    .prologue
    const/4 v4, 0x0

    .line 368
    iput-object v4, p0, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->mTempNumber:Ljava/lang/String;

    .line 369
    iput-object v4, p0, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->mTempPhoneType:Ljava/lang/String;

    .line 371
    const-string v4, "_id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 373
    .local v0, contactId:J
    iget-object v4, p0, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/android/htccontacts/util/PhoneUtils;->getPrimaryPhoneCursor(JLandroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v2

    .line 377
    .local v2, primaryPhoneCursor:Landroid/database/Cursor;
    if-eqz v2, :cond_0

    .line 378
    const-string v4, "data1"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->mTempNumber:Ljava/lang/String;

    .line 380
    const-string v4, "data2"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 382
    .local v3, type:I
    iget-object v4, p0, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->mTempPhoneType:Ljava/lang/String;

    .line 383
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 385
    .end local v3           #type:I
    :cond_0
    return-void
.end method

.method private setupContextMenuForHeader(Landroid/view/ContextMenu;I)V
    .locals 4
    .parameter "menu"
    .parameter "itemPos"

    .prologue
    const/4 v3, 0x7

    const/4 v2, 0x6

    const/4 v1, 0x0

    .line 349
    const v0, 0x7f0a0117

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 353
    const v0, 0x7f0a00e5

    invoke-interface {p1, v1, v2, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 358
    const v0, 0x7f0a00e6

    invoke-interface {p1, v1, v3, v3, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 359
    return-void
.end method


# virtual methods
.method protected getEditIntent(I)Landroid/content/Intent;
    .locals 6
    .parameter "itemPos"

    .prologue
    .line 337
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->getItemOfPositionExcludeHerader(I)Landroid/database/Cursor;

    move-result-object v3

    .line 338
    .local v3, cursor:Landroid/database/Cursor;
    if-eqz v3, :cond_0

    .line 339
    const-string v4, "_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 340
    .local v0, contactId:J
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 341
    .local v2, contactUri:Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.EDIT"

    invoke-direct {v4, v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 344
    .end local v0           #contactId:J
    .end local v2           #contactUri:Landroid/net/Uri;
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected getItemOfPositionExcludeHerader(I)Landroid/database/Cursor;
    .locals 5
    .parameter "position"

    .prologue
    .line 410
    const/4 v1, 0x0

    .line 411
    .local v1, result:Landroid/database/Cursor;
    iget-object v2, p0, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getItemOfPositionExcludeHerader, position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    if-ltz p1, :cond_0

    .line 413
    iget-object v2, p0, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 414
    .local v0, listAdapter:Landroid/widget/ListAdapter;
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #result:Landroid/database/Cursor;
    check-cast v1, Landroid/database/Cursor;

    .line 418
    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    .restart local v1       #result:Landroid/database/Cursor;
    :cond_0
    if-nez v1, :cond_1

    .line 419
    iget-object v2, p0, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->TAG:Ljava/lang/String;

    const-string v3, "result = null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_1
    return-object v1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 25
    .parameter "item"

    .prologue
    .line 188
    const/16 v19, 0x0

    .line 191
    .local v19, result:Z
    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v12

    check-cast v12, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .local v12, menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    :try_start_1
    iget v0, v12, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    move/from16 v18, v0

    .line 202
    .local v18, position:I
    const/16 v19, 0x1

    .line 203
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v21

    packed-switch v21, :pswitch_data_0

    .line 319
    const/16 v19, 0x0

    :cond_0
    :goto_0
    move/from16 v21, v19

    .line 331
    .end local v12           #menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .end local v18           #position:I
    :goto_1
    return v21

    .line 193
    :catch_0
    move-exception v5

    .line 195
    .local v5, e:Ljava/lang/ClassCastException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "bad menuInfoIn"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    const/16 v21, 0x0

    goto :goto_1

    .line 207
    .end local v5           #e:Ljava/lang/ClassCastException;
    .restart local v12       #menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .restart local v18       #position:I
    :pswitch_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->mTempNumber:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->mTempNumber:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/android/htccontacts/util/ContactsUtils;->initiateSms(Landroid/content/Context;Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 327
    .end local v18           #position:I
    :catch_1
    move-exception v5

    .line 329
    .local v5, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "onContextItemSelected"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 331
    const/16 v21, 0x0

    goto :goto_1

    .line 216
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v18       #position:I
    :pswitch_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->mTempNumber:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 218
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->getItemOfPositionExcludeHerader(I)Landroid/database/Cursor;

    move-result-object v4

    .line 220
    .local v4, cursor:Landroid/database/Cursor;
    new-instance v9, Landroid/content/Intent;

    const-string v21, "android.intent.action.CALL_PRIVILEGED"

    const-string v22, "tel"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->mTempNumber:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 223
    .local v9, intent:Landroid/content/Intent;
    const-string v21, "photo_id"

    move-object/from16 v0, v21

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 225
    .local v16, photoId:J
    const-wide/16 v21, 0x0

    cmp-long v21, v16, v21

    if-lez v21, :cond_1

    .line 227
    const-string v21, "hasPhoto"

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 230
    :cond_1
    const-string v21, "display_name"

    move-object/from16 v0, v21

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 231
    .local v13, name:Ljava/lang/String;
    const-string v21, "_id"

    move-object/from16 v0, v21

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 232
    .local v14, personId:J
    const-string v21, "personId"

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const-string v21, "name"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const-string v21, "number"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->mTempNumber:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    const-string v21, "numberType"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->mTempPhoneType:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 245
    .end local v4           #cursor:Landroid/database/Cursor;
    .end local v9           #intent:Landroid/content/Intent;
    .end local v13           #name:Ljava/lang/String;
    .end local v14           #personId:J
    .end local v16           #photoId:J
    :pswitch_2
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->getEditIntent(I)Landroid/content/Intent;

    move-result-object v9

    .line 246
    .restart local v9       #intent:Landroid/content/Intent;
    if-eqz v9, :cond_0

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 254
    .end local v9           #intent:Landroid/content/Intent;
    :pswitch_3
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->getDeleteConfirmDialog(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    .line 255
    .local v2, confirm:Lcom/htc/widget/HtcAlertDialog$Builder;
    if-eqz v2, :cond_0

    .line 257
    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .line 264
    .end local v2           #confirm:Lcom/htc/widget/HtcAlertDialog$Builder;
    :pswitch_4
    new-instance v9, Landroid/content/Intent;

    const-string v21, "com.android.htccontacts.ACTION_SEND_CONTACT"

    move-object/from16 v0, v21

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 266
    .restart local v9       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->getItemOfPositionExcludeHerader(I)Landroid/database/Cursor;

    move-result-object v4

    .line 268
    .restart local v4       #cursor:Landroid/database/Cursor;
    const-string v21, "_id"

    move-object/from16 v0, v21

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 269
    .local v8, idIdx:I
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 270
    .local v6, id:J
    sget-object v21, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v21

    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 273
    .local v3, contactUri:Landroid/net/Uri;
    const-string v21, "text/x-vCard"

    move-object/from16 v0, v21

    invoke-virtual {v9, v3, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 281
    .end local v3           #contactUri:Landroid/net/Uri;
    .end local v4           #cursor:Landroid/database/Cursor;
    .end local v6           #id:J
    .end local v8           #idIdx:I
    .end local v9           #intent:Landroid/content/Intent;
    :pswitch_5
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->getItemOfPositionExcludeHerader(I)Landroid/database/Cursor;

    move-result-object v4

    .line 282
    .restart local v4       #cursor:Landroid/database/Cursor;
    const-string v21, "_id"

    move-object/from16 v0, v21

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 283
    .local v10, lMyContactId:J
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->editMyContactCard(J)V

    goto/16 :goto_0

    .line 289
    .end local v4           #cursor:Landroid/database/Cursor;
    .end local v10           #lMyContactId:J
    :pswitch_6
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->getItemOfPositionExcludeHerader(I)Landroid/database/Cursor;

    move-result-object v4

    .line 290
    .restart local v4       #cursor:Landroid/database/Cursor;
    const-string v21, "_id"

    move-object/from16 v0, v21

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 291
    .restart local v10       #lMyContactId:J
    sget-object v21, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v21

    invoke-static {v0, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v20

    .line 292
    .local v20, uri:Landroid/net/Uri;
    new-instance v9, Landroid/content/Intent;

    const-string v21, "com.android.htccontacts.ACTION_SEND_CONTACT"

    move-object/from16 v0, v21

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 293
    .restart local v9       #intent:Landroid/content/Intent;
    const-string v21, "text/x-vCard"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    const-string v21, "isMyContactCard"

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 301
    .end local v4           #cursor:Landroid/database/Cursor;
    .end local v9           #intent:Landroid/content/Intent;
    .end local v10           #lMyContactId:J
    .end local v20           #uri:Landroid/net/Uri;
    :pswitch_7
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->getItemOfPositionExcludeHerader(I)Landroid/database/Cursor;

    move-result-object v4

    .line 302
    .restart local v4       #cursor:Landroid/database/Cursor;
    const-string v21, "_id"

    move-object/from16 v0, v21

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 303
    .restart local v8       #idIdx:I
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 304
    .restart local v6       #id:J
    sget-object v21, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v21

    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 305
    .restart local v3       #contactUri:Landroid/net/Uri;
    const/4 v9, 0x0

    .line 306
    .restart local v9       #intent:Landroid/content/Intent;
    const-wide/16 v21, 0x0

    cmp-long v21, v6, v21

    if-lez v21, :cond_0

    .line 307
    new-instance v9, Landroid/content/Intent;

    .end local v9           #intent:Landroid/content/Intent;
    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 308
    .restart local v9       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-class v22, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 309
    const-string v21, "com.android.htccontacts"

    const-string v22, "com.android.htccontacts.ContactGlanceSelectDefaultActionActivity"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    invoke-virtual {v9, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 21
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    .line 65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->mListView:Lcom/htc/widget/HtcListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v13

    .line 66
    .local v13, listAdapter:Landroid/widget/ListAdapter;
    if-nez v13, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    :try_start_0
    move-object/from16 v0, p3

    check-cast v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    move-object v10, v0

    .line 75
    .local v10, info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    iget-object v0, v10, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/htc/widget/HtcListView;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 77
    iget-object v0, v10, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    move-object/from16 v17, v0

    check-cast v17, Lcom/htc/widget/HtcListView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x2080700

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/htc/widget/HtcListView;->setDivider(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_2
    iget v12, v10, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    .line 88
    .local v12, itemPos:I
    invoke-interface {v13, v12}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v15

    .line 89
    .local v15, obj:Ljava/lang/Object;
    instance-of v0, v15, Landroid/database/Cursor;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    move-object v6, v15

    .line 91
    check-cast v6, Landroid/database/Cursor;

    .line 94
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 96
    const-string v17, "ext_account_Type"

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 98
    .local v5, accountType:Ljava/lang/String;
    const-string v17, "DeviceOnly"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 100
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->setupContextMenuForHeader(Landroid/view/ContextMenu;I)V

    goto :goto_0

    .line 80
    .end local v5           #accountType:Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v10           #info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .end local v12           #itemPos:I
    .end local v15           #obj:Ljava/lang/Object;
    :catch_0
    move-exception v7

    .line 82
    .local v7, e:Ljava/lang/ClassCastException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "bad menuInfo"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 108
    .end local v7           #e:Ljava/lang/ClassCastException;
    .restart local v5       #accountType:Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v10       #info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .restart local v12       #itemPos:I
    .restart local v15       #obj:Ljava/lang/Object;
    :cond_3
    const-string v17, "display_name"

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 111
    .local v14, name:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->queryPrimaryNumberInfo(Landroid/database/Cursor;)V

    .line 113
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_9

    .line 115
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 129
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->mTempNumber:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 131
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .local v16, sb:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0a0140

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->mTempPhoneType:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->mTempPhoneType:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :cond_4
    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 149
    .end local v16           #sb:Ljava/lang/StringBuilder;
    :cond_5
    const-string v17, "_id"

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 151
    .local v8, id:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v5, v1}, Lcom/android/htccontacts/util/ContactsUtils;->isEditableContact(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    .line 153
    .local v11, isEditable:Z
    if-eqz v11, :cond_6

    .line 154
    const/16 v17, 0x0

    const/16 v18, 0x3

    const/16 v19, 0x3

    const v20, 0x7f0a013c

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 160
    :cond_6
    if-eqz v11, :cond_7

    .line 161
    const/16 v17, 0x0

    const/16 v18, 0x4

    const/16 v19, 0x4

    const v20, 0x7f0a013e

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 168
    :cond_7
    const-string v17, "com.htc.socialnetwork.facebook"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->isRestricted(Landroid/database/Cursor;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 169
    const/16 v17, 0x0

    const/16 v18, 0x5

    const/16 v19, 0x5

    const v20, 0x7f0a00e3

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 174
    :cond_8
    const/16 v17, 0x0

    const/16 v18, 0x8

    const/16 v19, 0x8

    const v20, 0x7f0a0138

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 117
    .end local v8           #id:J
    .end local v11           #isEditable:Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->mTempNumber:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_a

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/widget/ContactListContextMenuAdapter;->mTempNumber:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_1

    .line 123
    :cond_a
    const v17, 0x7f0a016e

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    goto/16 :goto_1
.end method
