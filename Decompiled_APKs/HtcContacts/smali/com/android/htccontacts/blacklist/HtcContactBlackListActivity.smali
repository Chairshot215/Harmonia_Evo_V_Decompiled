.class public Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;
.super Lcom/android/htccontacts/app/BaseListActivity;
.source "HtcContactBlackListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$InsertNumberTask;,
        Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;,
        Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$QueryHandler;
    }
.end annotation


# static fields
.field static final ADD_CALLER_NUMBER:I = 0xf2

.field static final ADD_CALLER_SELECTION:I = 0xf1

.field static final ADD_NUMBER_TO_CONTACT:I = 0xf04

.field static final BLACK_NUMBER_URI:Landroid/net/Uri; = null

.field static final CONTEXT_MENU_ADD_CONTACT:I = 0x8

.field static final CONTEXT_MENU_DELETE_CONTACT:I = 0x9

.field static final CONTEXT_MENU_ITEM_CALL_DEFAULT:I = 0x7

.field static final CONTEXT_MENU_REMOVE_FROM_BLACKLIST:I = 0x5

.field static final CONTEXT_MENU_SHARE_CONTACT:I = 0xa

.field protected static final DEBUG:Z = false

.field static final MENU_ADD_BLACKLIST:I = 0x2

.field static final MENU_DELETE_BLACKLIST:I = 0x3

.field static final MENU_HOME:I = 0x1

.field static final MENU_ITEM_EDIT_BEFORE_CALL:I = 0x4

.field static final MENU_ITEM_SEND_EMAIL:I = 0x3

.field static final MENU_ITEM_SEND_SMS:I = 0x2

.field static final MENU_ITEM_VIEW_CONTACT:I = 0x1

.field static final MENU_SETTING:I = 0x4

.field static final MODIFY_BLACKLIST_PASSWORD:I = 0xf02

.field static final PICK_BLACKLIST_CANDIDATE:I = 0xf01

.field private static final QUERY_TOKEN:I = 0x3e8

.field static final REMOVE_BLACKLIST_CANDIDATE:I = 0xf03

.field static final TAG:Ljava/lang/String; = "HtcContactBlackListActivity"


# instance fields
.field protected mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;

.field protected mInsertListAdapter:Lcom/htc/widget/InsertNewListAdapter;

.field private mIsDirty:Z

.field private mProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private mQueryHandler:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$QueryHandler;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTempNumber:Ljava/lang/String;

.field private mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/htc/provider/HtcContactsContract$BLOCKED_NUMBER;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->BLACK_NUMBER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseListActivity;-><init>()V

    .line 395
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mTempNumber:Ljava/lang/String;

    .line 1095
    return-void
.end method

.method private AddContact(I)V
    .locals 5
    .parameter "position"

    .prologue
    .line 398
    invoke-direct {p0, p1}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->getCursorByposition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 400
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    const-string v3, "display_name"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 405
    .local v2, number:Ljava/lang/String;
    iput-object v2, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mTempNumber:Ljava/lang/String;

    .line 406
    invoke-static {v2}, Lcom/htc/util/contacts/ContactsUtility;->getAddToContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 407
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "send_to_voicemail"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 408
    const/16 v3, 0xf04

    invoke-virtual {p0, v1, v3}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->removeBlackNumber(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;)Lcom/android/htccontacts/BackgroundWorkerHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mIsDirty:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->pickBlockedContacts()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->insertNumberToBlackList(Ljava/lang/String;)V

    return-void
.end method

.method private deleteBlackList()V
    .locals 3

    .prologue
    .line 436
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    const-class v2, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 437
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.contacts.action.DELETE_BLACKLIST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    const-string v1, "DELETE_CONTACT"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 439
    const/16 v1, 0xf03

    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 441
    return-void
.end method

.method private getCursorByposition(I)Landroid/database/Cursor;
    .locals 3
    .parameter "position"

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/htc/widget/HtcListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    .line 371
    .local v1, obj:Ljava/lang/Object;
    if-eqz v1, :cond_1

    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 372
    const/4 v0, 0x0

    .line 381
    :cond_0
    :goto_0
    return-object v0

    .line 375
    :cond_1
    const/4 v0, 0x0

    .line 377
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/database/Cursor;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 378
    check-cast v0, Landroid/database/Cursor;

    goto :goto_0
.end method

.method private getDeleteConfirmDialog(Landroid/database/Cursor;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 5
    .parameter "cursor"

    .prologue
    .line 387
    iget-object v3, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;

    iget v3, v3, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;->mAccountIdx:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, accountType:Ljava/lang/String;
    const-string v3, "com.anddroid.contacts.sim"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 391
    .local v1, isSIM:Z
    iget-object v3, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;

    invoke-virtual {v3, p1}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;->getContactUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v2

    .line 392
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v3, v1, v2, v4}, Lcom/android/htccontacts/util/ContactsUtils;->getDeleteConfirmDialog(Landroid/content/Context;Landroid/content/ContentResolver;ZLandroid/net/Uri;Landroid/app/Activity;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    return-object v3
.end method

.method private goToSetting()V
    .locals 3

    .prologue
    .line 429
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    const-class v2, Lcom/android/htccontacts/blacklist/BlockCallerPreference;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 430
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->startActivity(Landroid/content/Intent;)V

    .line 431
    return-void
.end method

.method private insertNumberToBlackList(Ljava/lang/String;)V
    .locals 3
    .parameter "number"

    .prologue
    .line 1090
    new-instance v0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$InsertNumberTask;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$InsertNumberTask;-><init>(Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;)V

    .line 1091
    .local v0, task:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$InsertNumberTask;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$InsertNumberTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1092
    return-void
.end method

.method private modifyPassword()V
    .locals 3

    .prologue
    .line 423
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    const-class v2, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 424
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "modify_password"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 425
    const/16 v1, 0xf02

    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 426
    return-void
.end method

.method private pickBlockedContacts()V
    .locals 3

    .prologue
    .line 416
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    const-class v2, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 417
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.contacts.action.PICK_BLACKLIST_CANDIDATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    const/16 v1, 0xf01

    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 420
    return-void
.end method

.method private removeBlackNumber(J)Z
    .locals 5
    .parameter "blockId"

    .prologue
    const/4 v4, 0x1

    .line 755
    sget-object v0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->BLACK_NUMBER_URI:Landroid/net/Uri;

    .line 756
    .local v0, uri:Landroid/net/Uri;
    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 757
    .local v1, whereArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "_id = ?"

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 759
    return v4
.end method

.method private removeBlackNumber(Ljava/lang/String;)Z
    .locals 5
    .parameter "number"

    .prologue
    const/4 v4, 0x1

    .line 747
    sget-object v0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->BLACK_NUMBER_URI:Landroid/net/Uri;

    .line 748
    .local v0, uri:Landroid/net/Uri;
    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 749
    .local v1, whereArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "number = ?"

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 751
    return v4
.end method

.method private viewContactCard(I)V
    .locals 9
    .parameter "position"

    .prologue
    .line 978
    invoke-direct {p0, p1}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->getCursorByposition(I)Landroid/database/Cursor;

    move-result-object v1

    .line 980
    .local v1, c:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1007
    :cond_0
    :goto_0
    return-void

    .line 984
    :cond_1
    iget-object v7, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;

    iget v7, v7, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;->mContactIdx:I

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 986
    .local v5, personId:J
    iget-object v7, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;

    iget v7, v7, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;->mAccountIdx:I

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 988
    .local v0, accountType:Ljava/lang/String;
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_3

    const/4 v3, 0x1

    .line 990
    .local v3, isContacts:Z
    :goto_1
    if-eqz v0, :cond_2

    const-string v7, "block_number"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 991
    const/4 v3, 0x0

    .line 994
    :cond_2
    if-eqz v3, :cond_4

    .line 997
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;

    invoke-virtual {v8, v1}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;->isSimContactItem(Landroid/database/Cursor;)Z

    move-result v8

    invoke-static {v7, v5, v6, v8}, Lcom/htc/provider/HtcContactsContract$Contacts;->getViewContactCardIntent(Landroid/content/ContentResolver;JZ)Landroid/content/Intent;

    move-result-object v2

    .line 1001
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 988
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #isContacts:Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 1003
    .restart local v3       #isContacts:Z
    :cond_4
    iget-object v7, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;

    iget v7, v7, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;->mDisplayNameIdx:I

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1004
    .local v4, number:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/util/contacts/PhoneUtils;->getViewUnknownCardIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1005
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method protected addBlackSelectedContacts(Landroid/content/Intent;)V
    .locals 8
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    .line 556
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 558
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 560
    const-string v6, "SELECTED_ID"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 561
    .local v0, PeopleCandidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v6, "SELECT_CONTACT_IS_SIM"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getBooleanArrayExtra(Ljava/lang/String;)[Z

    move-result-object v2

    .line 563
    .local v2, isSimArrays:[Z
    if-nez v0, :cond_1

    move v3, v5

    .line 565
    .local v3, size:I
    :goto_0
    if-lez v3, :cond_0

    .line 567
    new-instance v6, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v6, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 569
    iget-object v6, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v7, 0x7f0a030b

    invoke-virtual {v6, v7}, Lcom/htc/app/HtcProgressDialog;->setTitle(I)V

    .line 571
    iget-object v6, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v7, 0x7f0a0128

    invoke-virtual {p0, v7}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 573
    iget-object v6, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 575
    iget-object v6, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v6, v5}, Lcom/htc/app/HtcProgressDialog;->setProgress(I)V

    .line 577
    iget-object v6, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v6, v3}, Lcom/htc/app/HtcProgressDialog;->setMax(I)V

    .line 579
    iget-object v6, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v6, v5}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 580
    iget-object v6, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v6, v5}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 582
    iget-object v5, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v5}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 584
    iget-object v5, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0, v5}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->manageDialog(Landroid/app/Dialog;)V

    .line 586
    new-instance v4, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$4;

    invoke-direct {v4, p0, v0, v2}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$4;-><init>(Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;Ljava/util/ArrayList;[Z)V

    .line 606
    .local v4, thread:Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 609
    .end local v0           #PeopleCandidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2           #isSimArrays:[Z
    .end local v3           #size:I
    .end local v4           #thread:Ljava/lang/Thread;
    :cond_0
    return-void

    .line 563
    .restart local v0       #PeopleCandidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v2       #isSimArrays:[Z
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_0
.end method

.method protected comfirmRemoveBlackList(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 684
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 686
    .local v0, b:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x7f0a02ff

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 687
    const v1, 0x7f0a0302

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 689
    const v1, 0x7f0a014f

    new-instance v2, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$5;

    invoke-direct {v2, p0, p1}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$5;-><init>(Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;I)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 705
    const v1, 0x7f0a0152

    new-instance v2, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$6;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$6;-><init>(Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 711
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 712
    return-void
.end method

.method public createInputNumbernDialog()Landroid/app/Dialog;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1034
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1035
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f030002

    invoke-virtual {v2, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 1036
    .local v5, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0900f7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v3, v6

    .line 1037
    .local v3, margin:I
    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v5, v8, v6, v8, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 1038
    const v6, 0x7f070018

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 1039
    .local v4, phoneText:Landroid/widget/EditText;
    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 1040
    const/4 v6, 0x1

    invoke-static {v8, v8, v6}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 1042
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1043
    .local v1, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v6, 0x7f0a038b

    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1044
    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1045
    const v6, 0x104000a

    new-instance v7, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$8;

    invoke-direct {v7, p0, v4}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$8;-><init>(Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1056
    const/high16 v6, 0x104

    invoke-virtual {v1, v6, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1057
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 1059
    .local v0, InputNumberDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 1060
    new-instance v6, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$9;

    invoke-direct {v6, p0, v0}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$9;-><init>(Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;Lcom/htc/widget/HtcAlertDialog;)V

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1086
    return-object v0
.end method

.method public createSelectionAdditionDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 1011
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/CharSequence;

    .line 1012
    .local v1, imtes:[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    const v3, 0x7f0a038a

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1013
    const/4 v2, 0x1

    const v3, 0x7f0a038b

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1014
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1015
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v2, 0x7f0a02f9

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1016
    new-instance v2, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$7;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$7;-><init>(Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1027
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    return-object v2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, 0x0

    .line 445
    const/4 v10, -0x1

    if-ne p2, v10, :cond_0

    .line 446
    const/16 v10, 0xf01

    if-ne p1, v10, :cond_1

    .line 448
    invoke-virtual {p0, p3}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->addBlackSelectedContacts(Landroid/content/Intent;)V

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    const/16 v10, 0xf02

    if-eq p1, v10, :cond_0

    .line 453
    const/16 v10, 0xf04

    if-ne p1, v10, :cond_2

    .line 455
    iget-object v10, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mTempNumber:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 456
    iget-object v10, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mTempNumber:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->removeBlackNumber(Ljava/lang/String;)Z

    .line 458
    if-eqz p3, :cond_0

    .line 459
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 460
    .local v7, contactUri:Landroid/net/Uri;
    const-string v10, "is_sim"

    invoke-virtual {p3, v10, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 461
    .local v9, isSim:Z
    if-eqz v7, :cond_0

    .line 462
    new-instance v0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$2;

    invoke-direct {v0, p0, v9, v7}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$2;-><init>(Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;ZLandroid/net/Uri;)V

    .line 471
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 476
    .end local v0           #thread:Ljava/lang/Thread;
    .end local v7           #contactUri:Landroid/net/Uri;
    .end local v9           #isSim:Z
    :cond_2
    const/16 v10, 0xf03

    if-ne p1, v10, :cond_0

    .line 479
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 481
    .local v8, extras:Landroid/os/Bundle;
    if-eqz v8, :cond_0

    .line 484
    const-string v10, "SELECTED_ID"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 485
    .local v3, selectedId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v3, :cond_3

    move v2, v1

    .line 487
    .local v2, size:I
    :goto_1
    const-string v10, "SELECT_CONTACT_IS_SIM"

    invoke-virtual {p3, v10}, Landroid/content/Intent;->getBooleanArrayExtra(Ljava/lang/String;)[Z

    move-result-object v4

    .line 489
    .local v4, isSimArrays:[Z
    const-string v10, "SELECTED_BLOCKED_ID"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 490
    .local v6, blockId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v6, :cond_4

    move v5, v1

    .line 495
    .local v5, blocksize:I
    :goto_2
    add-int v10, v2, v5

    if-lez v10, :cond_0

    .line 497
    new-instance v10, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v10, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 499
    iget-object v10, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v11, 0x7f0a0192

    invoke-virtual {v10, v11}, Lcom/htc/app/HtcProgressDialog;->setTitle(I)V

    .line 501
    iget-object v10, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v11, 0x7f0a0193

    invoke-virtual {p0, v11}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 503
    iget-object v10, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 505
    iget-object v10, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v10, v1}, Lcom/htc/app/HtcProgressDialog;->setProgress(I)V

    .line 507
    iget-object v10, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v10, v2}, Lcom/htc/app/HtcProgressDialog;->setMax(I)V

    .line 509
    iget-object v10, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v10, v1}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 511
    iget-object v10, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v10, v1}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 513
    iget-object v1, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 515
    iget-object v1, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->manageDialog(Landroid/app/Dialog;)V

    .line 517
    new-instance v0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$3;-><init>(Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;ILjava/util/ArrayList;[ZILjava/util/ArrayList;)V

    .line 546
    .restart local v0       #thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 485
    .end local v0           #thread:Ljava/lang/Thread;
    .end local v2           #size:I
    .end local v4           #isSimArrays:[Z
    .end local v5           #blocksize:I
    .end local v6           #blockId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_1

    .line 490
    .restart local v2       #size:I
    .restart local v4       #isSimArrays:[Z
    .restart local v6       #blockId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    goto :goto_2
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    .line 312
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    .local v1, menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    iget v2, v1, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    .line 334
    .local v2, position:I
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 364
    :goto_0
    const/4 v3, 0x1

    .end local v1           #menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .end local v2           #position:I
    :goto_1
    return v3

    .line 314
    :catch_0
    move-exception v0

    .line 316
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v3, "HtcContactBlackListActivity"

    const-string v4, "bad menuInfoIn"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 317
    const/4 v3, 0x0

    goto :goto_1

    .line 338
    .end local v0           #e:Ljava/lang/ClassCastException;
    .restart local v1       #menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .restart local v2       #position:I
    :sswitch_0
    invoke-direct {p0, v2}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->viewContactCard(I)V

    goto :goto_0

    .line 345
    :sswitch_1
    invoke-virtual {p0, v2}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->comfirmRemoveBlackList(I)V

    goto :goto_0

    .line 352
    :sswitch_2
    invoke-direct {p0, v2}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->AddContact(I)V

    goto :goto_0

    .line 334
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 131
    const v1, 0x7f030007

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->setContentView(I)V

    .line 133
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->setTitleBar()V

    .line 136
    const v1, 0x7f07001c

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 137
    .local v0, emptyTextView:Landroid/widget/TextView;
    const v1, 0x7f0a02fa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 140
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 142
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 15
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    .line 239
    :try_start_0
    move-object/from16 v0, p3

    check-cast v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .local v4, info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    iget v11, v4, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/htc/widget/HtcListView;->getHeaderViewsCount()I

    move-result v12

    sub-int v6, v11, v12

    .line 249
    .local v6, itemPos:I
    if-gez v6, :cond_1

    .line 302
    .end local v4           #info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .end local v6           #itemPos:I
    :cond_0
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v3

    .line 243
    .local v3, e:Ljava/lang/ClassCastException;
    const-string v11, "HtcContactBlackListActivity"

    const-string v12, "bad menuInfo"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 253
    .end local v3           #e:Ljava/lang/ClassCastException;
    .restart local v4       #info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .restart local v6       #itemPos:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v11

    invoke-virtual {v11, v6}, Lcom/htc/widget/HtcListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v8

    .line 255
    .local v8, obj:Ljava/lang/Object;
    if-eqz v8, :cond_2

    instance-of v11, v8, Landroid/view/View;

    if-nez v11, :cond_0

    .line 259
    :cond_2
    const/4 v2, 0x0

    .line 261
    .local v2, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_3

    instance-of v11, v8, Landroid/database/Cursor;

    if-eqz v11, :cond_3

    move-object v2, v8

    .line 262
    check-cast v2, Landroid/database/Cursor;

    .line 265
    :cond_3
    if-eqz v2, :cond_0

    .line 267
    iget-object v11, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;

    iget v11, v11, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;->mDisplayNameIdx:I

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 268
    .local v7, name:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;

    iget v11, v11, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;->mContactIdx:I

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 269
    .local v9, person:J
    iget-object v11, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;

    iget v11, v11, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;->mAccountIdx:I

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, accountType:Ljava/lang/String;
    const-wide/16 v11, 0x0

    cmp-long v11, v9, v11

    if-lez v11, :cond_5

    const/4 v5, 0x1

    .line 273
    .local v5, isContacts:Z
    :goto_1
    if-eqz v1, :cond_4

    const-string v11, "block_number"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 274
    const/4 v5, 0x0

    .line 278
    :cond_4
    if-eqz v7, :cond_6

    .line 280
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 290
    :goto_2
    const/4 v11, 0x0

    const/4 v12, 0x5

    const/4 v13, 0x5

    const v14, 0x7f0a02ff

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 292
    if-eqz v5, :cond_7

    .line 294
    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    const v14, 0x7f0a0301

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 271
    .end local v5           #isContacts:Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    .line 284
    .restart local v5       #isContacts:Z
    :cond_6
    const v11, 0x7f0a016e

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    goto :goto_2

    .line 298
    :cond_7
    const/4 v11, 0x0

    const/16 v12, 0x8

    const/16 v13, 0x8

    const v14, 0x7f0a0300

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 216
    const/16 v0, 0xf1

    if-ne v0, p1, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->createSelectionAdditionDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 221
    :goto_0
    return-object v0

    .line 218
    :cond_0
    const/16 v0, 0xf2

    if-ne v0, p1, :cond_1

    .line 219
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->createInputNumbernDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 221
    :cond_1
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 616
    const/4 v0, 0x2

    const v1, 0x7f0a02fb

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x208031d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 619
    const/4 v0, 0x3

    const v1, 0x7f0a02fc

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080323

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 630
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 183
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onDestroy()V

    .line 185
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->unregisterForContextMenu(Landroid/view/View;)V

    .line 186
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 189
    :cond_0
    return-void
.end method

.method public onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/htc/widget/HtcListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    .line 199
    .local v1, obj:Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v3, v1, Landroid/database/Cursor;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 200
    check-cast v0, Landroid/database/Cursor;

    .line 201
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 202
    invoke-direct {p0, p3}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->viewContactCard(I)V

    .line 205
    .end local v0           #c:Landroid/database/Cursor;
    :cond_0
    if-eqz v1, :cond_1

    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_1

    move-object v2, v1

    .line 206
    check-cast v2, Landroid/view/View;

    .line 207
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 208
    invoke-virtual {v2}, Landroid/view/View;->performClick()Z

    .line 211
    .end local v2           #view:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 656
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 678
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 659
    :pswitch_0
    const-string v1, "ANALYTIC_HtcContacts"

    const-string v2, "[HtcContactBlackListActivity]Delete black list"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    invoke-direct {p0}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->deleteBlackList()V

    goto :goto_0

    .line 664
    :pswitch_1
    const-string v1, "ANALYTIC_HtcContacts"

    const-string v2, "[HtcContactBlackListActivity]Add black list"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    const/16 v1, 0xf1

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->showDialog(I)V

    goto :goto_0

    .line 673
    :pswitch_2
    const-string v1, "ANALYTIC_HtcContacts"

    const-string v2, "[HtcContactBlackListActivity]Settings"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    invoke-direct {p0}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->goToSetting()V

    goto :goto_0

    .line 656
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 177
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onPause()V

    .line 178
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 3
    .parameter "id"
    .parameter "dialog"
    .parameter "b"

    .prologue
    .line 226
    const/16 v1, 0xf2

    if-ne v1, p1, :cond_0

    move-object v0, p2

    .line 227
    check-cast v0, Lcom/htc/widget/HtcAlertDialog;

    .line 228
    .local v0, d:Lcom/htc/widget/HtcAlertDialog;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 230
    .end local v0           #d:Lcom/htc/widget/HtcAlertDialog;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/htccontacts/app/BaseListActivity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 231
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x1

    .line 637
    const/4 v0, 0x2

    invoke-interface {p1, v0, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 639
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;

    invoke-virtual {v0}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 640
    :cond_0
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 650
    :goto_0
    return v2

    .line 642
    :cond_1
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 161
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onResume()V

    .line 162
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mQueryHandler:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$QueryHandler;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$QueryHandler;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$QueryHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mQueryHandler:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$QueryHandler;

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;

    if-nez v0, :cond_1

    .line 167
    new-instance v0, Lcom/android/htccontacts/BackgroundWorkerHandler;

    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/htccontacts/BackgroundWorkerHandler;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;

    .line 170
    :cond_1
    invoke-static {p0}, Lcom/android/htccontacts/blacklist/HtcBlackListActivity;->checkNeedProtection(Landroid/content/Context;)V

    .line 171
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->startQuery(Z)V

    .line 172
    return-void
.end method

.method protected removeBlackList(I)V
    .locals 9
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    .line 716
    invoke-direct {p0, p1}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->getCursorByposition(I)Landroid/database/Cursor;

    move-result-object v1

    .line 718
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 744
    :cond_0
    :goto_0
    return-void

    .line 722
    :cond_1
    iget-object v7, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;

    invoke-virtual {v7, v1}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;->isSimContactItem(Landroid/database/Cursor;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 723
    const-string v7, "_id"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    int-to-long v4, v7

    .line 724
    .local v4, person:J
    const-string v7, "display_name"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 726
    .local v3, number:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;

    iget v7, v7, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;->mAccountIdx:I

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 728
    .local v0, accountType:Ljava/lang/String;
    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    if-lez v7, :cond_3

    const/4 v2, 0x1

    .line 730
    .local v2, isContacts:Z
    :goto_1
    if-eqz v0, :cond_2

    const-string v7, "block_number"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 731
    const/4 v2, 0x0

    .line 734
    :cond_2
    if-eqz v2, :cond_4

    .line 735
    iget-object v7, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;

    invoke-virtual {v7, v1}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;->getContactUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {p0, v7, v6}, Lcom/htc/util/contacts/BlacklistUtils;->modifySendToVoiceMail(Landroid/content/Context;Landroid/net/Uri;Z)V

    goto :goto_0

    .end local v2           #isContacts:Z
    :cond_3
    move v2, v6

    .line 728
    goto :goto_1

    .line 738
    .restart local v2       #isContacts:Z
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->removeBlackNumber(Ljava/lang/String;)Z

    goto :goto_0

    .line 742
    .end local v0           #accountType:Ljava/lang/String;
    .end local v2           #isContacts:Z
    .end local v3           #number:Ljava/lang/String;
    .end local v4           #person:J
    :cond_5
    iget-object v7, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;

    invoke-virtual {v7, v1}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;->getContactUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {p0, v7, v6}, Lcom/htc/util/contacts/BlacklistUtils;->modifySendToVoiceMailForSim(Landroid/content/Context;Landroid/net/Uri;Z)V

    goto :goto_0
.end method

.method protected setAdapter(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 804
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 817
    :cond_0
    :goto_0
    return-void

    .line 807
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;

    if-nez v0, :cond_2

    .line 808
    new-instance v0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;-><init>(Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;

    .line 810
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 812
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    goto :goto_0

    .line 814
    :cond_2
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;

    invoke-virtual {v0, p1}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method protected setTitleBar()V
    .locals 3

    .prologue
    .line 146
    const v1, 0x7f070016

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;

    .line 147
    .local v0, mHeaderBar:Lcom/android/htccontacts/widget/title/BrowseHeaderBar;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->buildHeaderBar(I)V

    .line 148
    const v1, 0x7f0a02f8

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->setHeaderText(I)V

    .line 149
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->getHeaderImage()Lcom/htc/widget/HeaderBarImage;

    move-result-object v1

    new-instance v2, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$1;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$1;-><init>(Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    return-void
.end method

.method protected startQuery(Z)V
    .locals 8
    .parameter "preQuery"

    .prologue
    const/16 v1, 0x3e8

    const/4 v2, 0x0

    .line 764
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mQueryHandler:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$QueryHandler;

    if-nez v0, :cond_0

    .line 765
    const-string v0, "HtcContactBlackListActivity"

    const-string v1, "no init value of mQueryHandler."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :goto_0
    return-void

    .line 768
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mQueryHandler:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$QueryHandler;->cancelOperation(I)V

    .line 769
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->mQueryHandler:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$QueryHandler;

    sget-object v3, Lcom/htc/provider/HtcContactsContract$BALCKLIST;->BLACKLIST_CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
