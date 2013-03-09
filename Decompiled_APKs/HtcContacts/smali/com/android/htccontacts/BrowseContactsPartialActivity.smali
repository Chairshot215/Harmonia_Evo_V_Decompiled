.class public Lcom/android/htccontacts/BrowseContactsPartialActivity;
.super Lcom/android/htccontacts/app/ContactsListActivity;
.source "BrowseContactsPartialActivity.java"

# interfaces
.implements Lcom/android/htccontacts/widget/TabObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/BrowseContactsPartialActivity$FREGQUENTQueryHandler;,
        Lcom/android/htccontacts/BrowseContactsPartialActivity$FrequencyConfigObserver;
    }
.end annotation


# static fields
.field private static final CONTEXT_MENU_DELETE_CONTACT:I = 0x4

.field private static final CONTEXT_MENU_EDIT_CONTACT:I = 0x3

.field private static final CONTEXT_MENU_ITEM_CALL_DEFAULT:I = 0x1

.field private static final CONTEXT_MENU_ITEM_SEND_SMS:I = 0x2

.field private static final CONTEXT_MENU_REMOVE_FAVE:I = 0x0

.field private static final CONTEXT_MENU_SHARE_CONTACT_VIA_SMS:I = 0x5

.field private static final MENU_ADD_FAVES:I = 0x2

.field private static final MENU_EDIT_SMART_GROUP:I = 0x1

.field protected static final QUERY_TOKEN_FREQUENT:I = 0x7da

.field protected static final RESULT_EDIT_SMART_GROUP:I = 0x270f

.field private static final TAG:Ljava/lang/String; = "BrowseContactsPartialActivity"


# instance fields
.field private mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

.field private mAdapterForFrequentContact:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

.field private mFrequencyConfigObserver:Lcom/android/htccontacts/BrowseContactsPartialActivity$FrequencyConfigObserver;

.field private mHandler:Landroid/os/Handler;

.field protected mIndexAdapter:Lcom/android/htccontacts/widget/IndexListAdapter;

.field protected mListAdapter:Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;

.field protected mQueryHandlerForFrequentContact:Lcom/android/htccontacts/BrowseContactsPartialActivity$FREGQUENTQueryHandler;

.field private mTempNumber:Ljava/lang/String;

.field private mTempPhoneNumberType:I

.field private mTempPhoneTypeString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/htccontacts/app/ContactsListActivity;-><init>()V

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mHandler:Landroid/os/Handler;

    .line 598
    return-void
.end method

.method static synthetic access$002(Lcom/android/htccontacts/BrowseContactsPartialActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mIsDirty:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/htccontacts/BrowseContactsPartialActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mIsDirty:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/htccontacts/BrowseContactsPartialActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mHasFirstQueryCompleted:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/htccontacts/BrowseContactsPartialActivity;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/BrowseContactsPartialActivity;->onQueryAndAdapterFinish(Landroid/database/Cursor;)V

    return-void
.end method

.method private getDeleteConfirmDialog(I)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 6
    .parameter "itemPos"

    .prologue
    .line 380
    const-string v4, "BriwseCibtactsAllActivity"

    const-string v5, "getDeleteConfirmDialog"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/BrowseContactsPartialActivity;->getItemOfPositionExcludeHeader(I)Landroid/database/Cursor;

    move-result-object v1

    .line 384
    .local v1, cursor:Landroid/database/Cursor;
    iget-object v4, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v4}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getAccountTypeIndex()I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, accountType:Ljava/lang/String;
    const-string v4, "com.anddroid.contacts.sim"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 388
    .local v2, isSIM:Z
    iget-object v4, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v4, v1}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getContactUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v3

    .line 389
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsPartialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p0, v4, v2, v3, v5}, Lcom/android/htccontacts/util/ContactsUtils;->getDeleteConfirmDialog(Landroid/content/Context;Landroid/content/ContentResolver;ZLandroid/net/Uri;Landroid/app/Activity;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    return-object v4
.end method

.method private launchSmartGroup()V
    .locals 2

    .prologue
    .line 452
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 453
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 454
    const/16 v1, 0x270f

    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/BrowseContactsPartialActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 455
    return-void
.end method

.method private queryPrimaryNumberInfo(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    const/4 v1, 0x0

    .line 231
    iput-object v1, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mTempNumber:Ljava/lang/String;

    .line 232
    iput-object v1, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mTempPhoneTypeString:Ljava/lang/String;

    .line 233
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mTempPhoneNumberType:I

    .line 235
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsPartialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/htccontacts/util/PhoneUtils;->getPrimaryPhoneCursor(JLandroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v0

    .line 237
    .local v0, phonesCursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 238
    const-string v1, "data1"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mTempNumber:Ljava/lang/String;

    .line 240
    const-string v1, "data2"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mTempPhoneNumberType:I

    .line 242
    iget v1, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mTempPhoneNumberType:I

    invoke-static {v1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/BrowseContactsPartialActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mTempPhoneTypeString:Ljava/lang/String;

    .line 243
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 245
    :cond_0
    return-void
.end method

.method private registerFrequencyObserver()V
    .locals 4

    .prologue
    .line 563
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsPartialActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 564
    .local v0, app:Landroid/app/Application;
    instance-of v3, v0, Lcom/android/htccontacts/PeopleApp;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 565
    check-cast v2, Lcom/android/htccontacts/PeopleApp;

    .line 566
    .local v2, peopleApp:Lcom/android/htccontacts/PeopleApp;
    invoke-virtual {v2}, Lcom/android/htccontacts/PeopleApp;->getFrequencyObservable()Lcom/android/htccontacts/group/FrequencyObservable;

    move-result-object v1

    .line 567
    .local v1, observable:Lcom/android/htccontacts/group/FrequencyObservable;
    iget-object v3, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mFrequencyConfigObserver:Lcom/android/htccontacts/BrowseContactsPartialActivity$FrequencyConfigObserver;

    if-nez v3, :cond_0

    .line 568
    new-instance v3, Lcom/android/htccontacts/BrowseContactsPartialActivity$FrequencyConfigObserver;

    invoke-direct {v3, p0}, Lcom/android/htccontacts/BrowseContactsPartialActivity$FrequencyConfigObserver;-><init>(Lcom/android/htccontacts/BrowseContactsPartialActivity;)V

    iput-object v3, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mFrequencyConfigObserver:Lcom/android/htccontacts/BrowseContactsPartialActivity$FrequencyConfigObserver;

    .line 569
    iget-object v3, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mFrequencyConfigObserver:Lcom/android/htccontacts/BrowseContactsPartialActivity$FrequencyConfigObserver;

    invoke-virtual {v1, v3}, Lcom/android/htccontacts/group/FrequencyObservable;->registerObserver(Ljava/lang/Object;)V

    .line 572
    .end local v1           #observable:Lcom/android/htccontacts/group/FrequencyObservable;
    .end local v2           #peopleApp:Lcom/android/htccontacts/PeopleApp;
    :cond_0
    return-void
.end method

.method private removeFaves(I)V
    .locals 8
    .parameter "itemPos"

    .prologue
    .line 364
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/BrowseContactsPartialActivity;->getItemOfPositionExcludeHeader(I)Landroid/database/Cursor;

    move-result-object v0

    .line 365
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v5, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    if-eqz v5, :cond_0

    .line 366
    iget-object v5, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v5, v0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getContactId(Landroid/database/Cursor;)J

    move-result-wide v1

    .line 367
    .local v1, id:J
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-lez v5, :cond_0

    .line 368
    new-instance v3, Landroid/content/ContentValues;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 369
    .local v3, values:Landroid/content/ContentValues;
    const-string v5, "data1"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 370
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id IN (SELECT data._id FROM data JOIN mimetypes ON data.mimetype_id=mimetypes._id AND mimetypes.mimetype=\'vnd.android.cursor.item/vnd.tmobile.faves\' JOIN raw_contacts ON data.raw_contact_id=raw_contacts._id AND raw_contacts.contact_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 371
    .local v4, where:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsPartialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v7, "data"

    invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v3, v4, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 376
    .end local v1           #id:J
    .end local v3           #values:Landroid/content/ContentValues;
    .end local v4           #where:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private unregisterFrequencyObserver()V
    .locals 4

    .prologue
    .line 575
    iget-object v3, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mFrequencyConfigObserver:Lcom/android/htccontacts/BrowseContactsPartialActivity$FrequencyConfigObserver;

    if-eqz v3, :cond_0

    .line 576
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsPartialActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 577
    .local v0, app:Landroid/app/Application;
    instance-of v3, v0, Lcom/android/htccontacts/PeopleApp;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 578
    check-cast v2, Lcom/android/htccontacts/PeopleApp;

    .line 579
    .local v2, peopleApp:Lcom/android/htccontacts/PeopleApp;
    invoke-virtual {v2}, Lcom/android/htccontacts/PeopleApp;->getFrequencyObservable()Lcom/android/htccontacts/group/FrequencyObservable;

    move-result-object v1

    .line 581
    .local v1, observable:Lcom/android/htccontacts/group/FrequencyObservable;
    iget-object v3, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mFrequencyConfigObserver:Lcom/android/htccontacts/BrowseContactsPartialActivity$FrequencyConfigObserver;

    invoke-virtual {v1, v3}, Lcom/android/htccontacts/group/FrequencyObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 582
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mFrequencyConfigObserver:Lcom/android/htccontacts/BrowseContactsPartialActivity$FrequencyConfigObserver;

    .line 585
    .end local v0           #app:Landroid/app/Application;
    .end local v1           #observable:Lcom/android/htccontacts/group/FrequencyObservable;
    .end local v2           #peopleApp:Lcom/android/htccontacts/PeopleApp;
    :cond_0
    return-void
.end method


# virtual methods
.method protected getContentViewLayoutId()I
    .locals 1

    .prologue
    .line 394
    const v0, 0x7f030006

    return v0
.end method

.method protected getEditIntent(I)Landroid/content/Intent;
    .locals 6
    .parameter "itemPos"

    .prologue
    .line 352
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/BrowseContactsPartialActivity;->getItemOfPositionExcludeHeader(I)Landroid/database/Cursor;

    move-result-object v2

    .line 354
    .local v2, cursor:Landroid/database/Cursor;
    if-eqz v2, :cond_0

    .line 355
    const-string v4, "_id"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 356
    .local v0, contactId:J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/contacts/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 357
    .local v3, rawContactUri:Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.EDIT"

    invoke-direct {v4, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 360
    .end local v0           #contactId:J
    .end local v3           #rawContactUri:Landroid/net/Uri;
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected isFastScrollerEnabled()Z
    .locals 1

    .prologue
    .line 404
    const/4 v0, 0x1

    return v0
.end method

.method protected isIndicatorEnabled()Z
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x1

    return v0
.end method

.method public launchAddFaves()V
    .locals 2

    .prologue
    .line 522
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tmobile.intent.action.ADD_FAVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 523
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/BrowseContactsPartialActivity;->startActivity(Landroid/content/Intent;)V

    .line 524
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 14
    .parameter "item"

    .prologue
    const/4 v11, 0x1

    .line 254
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .local v4, menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    iget v10, v4, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    .line 264
    .local v10, position:I
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v12

    packed-switch v12, :pswitch_data_0

    .line 346
    .end local v4           #menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .end local v10           #position:I
    :cond_0
    :goto_0
    return v11

    .line 256
    :catch_0
    move-exception v2

    .line 258
    .local v2, e:Ljava/lang/ClassCastException;
    const-string v11, "BrowseContactsPartialActivity"

    const-string v12, "bad menuInfoIn"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 259
    const/4 v11, 0x0

    goto :goto_0

    .line 268
    .end local v2           #e:Ljava/lang/ClassCastException;
    .restart local v4       #menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .restart local v10       #position:I
    :pswitch_0
    iget-object v12, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mTempNumber:Ljava/lang/String;

    if-eqz v12, :cond_0

    .line 270
    iget-object v12, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mTempNumber:Ljava/lang/String;

    invoke-static {p0, v12}, Lcom/android/htccontacts/util/ContactsUtils;->initiateSms(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 277
    :pswitch_1
    iget-object v12, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mTempNumber:Ljava/lang/String;

    if-eqz v12, :cond_0

    .line 279
    invoke-virtual {p0, v10}, Lcom/android/htccontacts/BrowseContactsPartialActivity;->getItemOfPositionExcludeHeader(I)Landroid/database/Cursor;

    move-result-object v1

    .line 281
    .local v1, cursor:Landroid/database/Cursor;
    new-instance v3, Landroid/content/Intent;

    const-string v12, "android.intent.action.CALL_PRIVILEGED"

    iget-object v13, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mTempNumber:Ljava/lang/String;

    invoke-static {v13}, Lcom/htc/util/phone/DialUtils;->makeDialUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-direct {v3, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 284
    .local v3, intent:Landroid/content/Intent;
    const-string v12, "photo_id"

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 286
    .local v8, photoId:J
    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-lez v12, :cond_1

    .line 288
    const-string v12, "hasPhoto"

    invoke-virtual {v3, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 291
    :cond_1
    const-string v12, "display_name"

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 293
    .local v5, name:Ljava/lang/String;
    const-string v12, "_id"

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 295
    .local v6, personId:J
    const-string v12, "personId"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    const-string v12, "name"

    invoke-virtual {v3, v12, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    const-string v12, "number"

    iget-object v13, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mTempNumber:Ljava/lang/String;

    invoke-virtual {v3, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    const-string v12, "numberType"

    iget v13, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mTempPhoneNumberType:I

    invoke-virtual {v3, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 301
    invoke-virtual {p0, v3}, Lcom/android/htccontacts/BrowseContactsPartialActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 309
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #personId:J
    .end local v8           #photoId:J
    :pswitch_2
    invoke-virtual {p0, v10}, Lcom/android/htccontacts/BrowseContactsPartialActivity;->getEditIntent(I)Landroid/content/Intent;

    move-result-object v3

    .line 310
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/android/htccontacts/BrowseContactsPartialActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 315
    .end local v3           #intent:Landroid/content/Intent;
    :pswitch_3
    invoke-direct {p0, v10}, Lcom/android/htccontacts/BrowseContactsPartialActivity;->removeFaves(I)V

    goto :goto_0

    .line 320
    :pswitch_4
    invoke-direct {p0, v10}, Lcom/android/htccontacts/BrowseContactsPartialActivity;->getDeleteConfirmDialog(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 321
    .local v0, confirm:Lcom/htc/widget/HtcAlertDialog$Builder;
    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .line 330
    .end local v0           #confirm:Lcom/htc/widget/HtcAlertDialog$Builder;
    :pswitch_5
    new-instance v3, Landroid/content/Intent;

    const-string v12, "com.android.htccontacts.ACTION_SEND_CONTACT"

    invoke-direct {v3, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 332
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v10}, Lcom/android/htccontacts/BrowseContactsPartialActivity;->getItemOfPositionExcludeHeader(I)Landroid/database/Cursor;

    move-result-object v1

    .line 334
    .restart local v1       #cursor:Landroid/database/Cursor;
    iget-object v12, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v12, v1}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getContactUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v12

    const-string v13, "text/x-vCard"

    invoke-virtual {v3, v12, v13}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    invoke-virtual {p0, v3}, Lcom/android/htccontacts/BrowseContactsPartialActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 264
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/ContactsListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    const v0, 0x7f0a001d

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/BrowseContactsPartialActivity;->setGenericTitleBar(I)V

    .line 99
    new-instance v0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mListAdapter:Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;

    .line 100
    new-instance v0, Lcom/android/htccontacts/widget/IndexListAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mListAdapter:Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;

    invoke-direct {v0, v1, v2}, Lcom/android/htccontacts/widget/IndexListAdapter;-><init>(Landroid/content/Context;Lcom/android/htccontacts/widget/IIndexableListAdapter;)V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mIndexAdapter:Lcom/android/htccontacts/widget/IndexListAdapter;

    .line 102
    new-instance v0, Lcom/android/htccontacts/BrowseContactsPartialActivity$FREGQUENTQueryHandler;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/BrowseContactsPartialActivity$FREGQUENTQueryHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mQueryHandlerForFrequentContact:Lcom/android/htccontacts/BrowseContactsPartialActivity$FREGQUENTQueryHandler;

    .line 104
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsPartialActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/BrowseContactsPartialActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 105
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 21
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    .line 127
    const-string v17, "blah"

    const-string v18, "onCreateContextMenu"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :try_start_0
    move-object/from16 v0, p3

    check-cast v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    move-object v10, v0

    .line 131
    .local v10, info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    iget-object v0, v10, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/htc/widget/HtcListView;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 132
    iget-object v0, v10, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    move-object/from16 v17, v0

    check-cast v17, Lcom/htc/widget/HtcListView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/BrowseContactsPartialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x2080700

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/htc/widget/HtcListView;->setDivider(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :cond_0
    iget v13, v10, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    .line 143
    .local v13, itemPos:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/BrowseContactsPartialActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v15

    .line 144
    .local v15, obj:Ljava/lang/Object;
    instance-of v0, v15, Landroid/database/Cursor;

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 145
    const/4 v5, 0x0

    .local v5, accountType:Ljava/lang/String;
    move-object v6, v15

    .line 147
    check-cast v6, Landroid/database/Cursor;

    .line 150
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_5

    .line 151
    const-string v17, "ext_account_Type"

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 157
    const-string v17, "display_name"

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 161
    .local v14, name:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/htccontacts/BrowseContactsPartialActivity;->queryPrimaryNumberInfo(Landroid/database/Cursor;)V

    .line 163
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 164
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 174
    :goto_0
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const v20, 0x7f0a0041

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mTempNumber:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 181
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .local v16, sb:Ljava/lang/StringBuilder;
    const v17, 0x7f0a0140

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/BrowseContactsPartialActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->isSimContactItem(Landroid/database/Cursor;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 184
    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mTempPhoneTypeString:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mTempPhoneTypeString:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :cond_1
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

    .line 199
    .end local v16           #sb:Ljava/lang/StringBuilder;
    :cond_2
    const-string v17, "_id"

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 201
    .local v8, id:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v5, v1}, Lcom/android/htccontacts/util/ContactsUtils;->isEditableContact(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    .line 203
    .local v11, isEditable:Z
    if-eqz v11, :cond_3

    .line 204
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

    .line 211
    :cond_3
    const-string v17, "DeviceOnly"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 212
    .local v12, isMyContactCard:Z
    if-eqz v11, :cond_4

    if-nez v12, :cond_4

    .line 213
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

    .line 221
    :cond_4
    const-string v17, "com.htc.socialnetwork.facebook"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 222
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

    .line 228
    .end local v5           #accountType:Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v8           #id:J
    .end local v10           #info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .end local v11           #isEditable:Z
    .end local v12           #isMyContactCard:Z
    .end local v13           #itemPos:I
    .end local v14           #name:Ljava/lang/String;
    .end local v15           #obj:Ljava/lang/Object;
    :cond_5
    :goto_1
    return-void

    .line 136
    :catch_0
    move-exception v7

    .line 137
    .local v7, e:Ljava/lang/ClassCastException;
    const-string v17, "BrowseContactsPartialActivity"

    const-string v18, "bad menuInfo"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 165
    .end local v7           #e:Ljava/lang/ClassCastException;
    .restart local v5       #accountType:Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v10       #info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .restart local v13       #itemPos:I
    .restart local v14       #name:Ljava/lang/String;
    .restart local v15       #obj:Ljava/lang/Object;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mTempNumber:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_7

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mTempNumber:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_0

    .line 168
    :cond_7
    const v17, 0x7f0a016e

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 421
    const v0, 0x7f0a0322

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080324

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 423
    const/4 v0, 0x2

    const v1, 0x7f0a002d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x208031d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 426
    return v3
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-super {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->onDestroy()V

    .line 111
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mIndexAdapter:Lcom/android/htccontacts/widget/IndexListAdapter;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mIndexAdapter:Lcom/android/htccontacts/widget/IndexListAdapter;

    invoke-virtual {v0}, Lcom/android/htccontacts/widget/IndexListAdapter;->clear()V

    .line 114
    iput-object v1, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mIndexAdapter:Lcom/android/htccontacts/widget/IndexListAdapter;

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mListAdapter:Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mListAdapter:Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;

    invoke-virtual {v0}, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->clear()V

    .line 120
    iput-object v1, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mListAdapter:Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;

    .line 122
    :cond_1
    return-void
.end method

.method public onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 9
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    .line 461
    invoke-virtual {p2}, Landroid/view/View;->isClickable()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 462
    invoke-virtual {p2}, Landroid/view/View;->performClick()Z

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 469
    :cond_1
    iget-object v6, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mListAdapter:Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;

    invoke-virtual {v6}, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->getCount()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    .line 470
    const/4 v0, 0x0

    .line 472
    .local v0, c:Landroid/database/Cursor;
    iget-object v6, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mListAdapter:Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;

    invoke-virtual {v6, v8}, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->getIndexItemCountAt(I)I

    move-result v6

    if-le p3, v6, :cond_2

    .line 473
    add-int/lit8 v6, p3, -0x2

    iget-object v7, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mListAdapter:Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;

    invoke-virtual {v7, v8}, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->getIndexItemCountAt(I)I

    move-result v7

    sub-int p3, v6, v7

    .line 474
    iget-object v6, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mAdapterForFrequentContact:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v6, p3}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #c:Landroid/database/Cursor;
    check-cast v0, Landroid/database/Cursor;

    .line 480
    .restart local v0       #c:Landroid/database/Cursor;
    :goto_1
    const-string v6, "_id"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 481
    .local v1, contactId:J
    const-string v6, "lookup"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 482
    .local v5, lookup:Ljava/lang/String;
    invoke-static {v1, v2, v5}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 483
    .local v3, fixedUri:Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v4, v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 484
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/android/htccontacts/BrowseContactsPartialActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 476
    .end local v1           #contactId:J
    .end local v3           #fixedUri:Landroid/net/Uri;
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #lookup:Ljava/lang/String;
    :cond_2
    add-int/lit8 p3, p3, -0x2

    .line 477
    iget-object v6, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v6, p3}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #c:Landroid/database/Cursor;
    check-cast v0, Landroid/database/Cursor;

    .restart local v0       #c:Landroid/database/Cursor;
    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 431
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 446
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/ContactsListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 434
    :pswitch_0
    const-string v1, "ANALYTIC_HtcContacts"

    const-string v2, "[BrowseContactsPartialActivity]Edit smart group"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseContactsPartialActivity;->launchSmartGroup()V

    goto :goto_0

    .line 440
    :pswitch_1
    const-string v1, "ANALYTIC_HtcContacts"

    const-string v2, "[BrowseContactsPartialActivity]Add faves"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsPartialActivity;->launchAddFaves()V

    goto :goto_0

    .line 431
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTabControlPressed(ILjava/lang/String;)V
    .locals 1
    .parameter "tabIndex"
    .parameter "tabTag"

    .prologue
    .line 503
    const v0, 0x7f0a0015

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/BrowseContactsPartialActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsPartialActivity;->pauseIndicator()V

    .line 507
    :cond_0
    return-void
.end method

.method public onTabControlReleased(ILjava/lang/String;)V
    .locals 0
    .parameter "tabIndex"
    .parameter "tabTag"

    .prologue
    .line 510
    return-void
.end method

.method public onTabSwitched(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "fromTab"
    .parameter "toTab"
    .parameter "fromTabTag"
    .parameter "toTabTag"

    .prologue
    .line 513
    if-ne p1, p2, :cond_0

    .line 514
    const v0, 0x7f0a0015

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/BrowseContactsPartialActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsPartialActivity;->pauseIndicator()V

    .line 519
    :cond_0
    return-void
.end method

.method public setContactsItemListAdapterCursor(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 528
    const-string v0, "BrowseContactsPartialActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setContactsItemListAdapterCursor - cursor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    if-nez v0, :cond_0

    .line 530
    new-instance v0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    const v1, 0x2090020

    invoke-direct {v0, p0, p0, v1, p1}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;-><init>(Lcom/android/htccontacts/app/ContactsListActivity;Landroid/content/Context;ILandroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    .line 534
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mListAdapter:Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    const v2, 0x7f0a001e

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->add(Landroid/widget/BaseAdapter;I)Z

    .line 536
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mIndexAdapter:Lcom/android/htccontacts/widget/IndexListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/BrowseContactsPartialActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 537
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsPartialActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 542
    :goto_0
    return-void

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public setContactsItemListAdapterCursorForFrequentContact(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 545
    const-string v0, "BrowseContactsPartialActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setContactsItemListAdapterCursorForFrequentContact - cursor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mAdapterForFrequentContact:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    if-nez v0, :cond_0

    .line 548
    new-instance v0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    const v1, 0x2090020

    invoke-direct {v0, p0, p0, v1, p1}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;-><init>(Lcom/android/htccontacts/app/ContactsListActivity;Landroid/content/Context;ILandroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mAdapterForFrequentContact:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    .line 550
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mListAdapter:Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mAdapterForFrequentContact:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    const v2, 0x7f0a0020

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->add(Landroid/widget/BaseAdapter;I)Z

    .line 552
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mIndexAdapter:Lcom/android/htccontacts/widget/IndexListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/BrowseContactsPartialActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 553
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsPartialActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mAdapterForFrequentContact:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 557
    :goto_0
    return-void

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mAdapterForFrequentContact:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method protected startQuery()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 409
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    const/16 v1, 0x3e8

    sget-object v3, Lcom/htc/provider/HtcContactsContract$Contacts;->SIMPLE_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/htccontacts/BrowseContactsPartialActivity;->CONTACTS_SUMMARY_PROJECTION_WITH_PRESENCE:[Ljava/lang/String;

    const-string v5, " contacts._id IN (SELECT contact_id FROM raw_contacts WHERE account_type=\'com.tmobile.nab\' AND raw_contacts._id IN (SELECT raw_contact_id FROM data INNER JOIN mimetypes WHERE data.mimetype_id=mimetypes._id AND mimetype=\'vnd.android.cursor.item/vnd.tmobile.faves\' AND data1=1))"

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    sget-object v3, Lcom/htc/provider/HtcContactsContract$Contacts;->GROUP_CONTACT_URI:Landroid/net/Uri;

    .line 414
    .local v3, queryUri:Landroid/net/Uri;
    const-string v0, "Frequent Contacts"

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 415
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity;->mQueryHandlerForFrequentContact:Lcom/android/htccontacts/BrowseContactsPartialActivity$FREGQUENTQueryHandler;

    const/16 v1, 0x7da

    sget-object v4, Lcom/android/htccontacts/BrowseContactsPartialActivity;->CONTACTS_SUMMARY_PROJECTION_WITH_PRESENCE:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/BrowseContactsPartialActivity$FREGQUENTQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    return-void
.end method
