.class public Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;
.super Lcom/android/htccontacts/app/BaseListActivity;
.source "HtcDivertedListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;,
        Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$QueryHandler;
    }
.end annotation


# static fields
.field static final ADD_NUMBER_TO_CONTACT:I = 0xf04

.field static final BLACK_NUMBER_URI:Landroid/net/Uri; = null

.field static final CONTEXT_MENU_ADD_CONTACT:I = 0x8

.field static final CONTEXT_MENU_DELETE_CONTACT:I = 0x9

.field static final CONTEXT_MENU_ITEM_CALL_DEFAULT:I = 0x7

.field static final CONTEXT_MENU_REMOVE_FROM_BLACKLIST:I = 0x5

.field static final CONTEXT_MENU_SHARE_CONTACT:I = 0xa

.field protected static final DEBUG:Z = false

.field static final MENU_DELETE_ALL:I = 0x3

.field static final MENU_EDIT:I = 0x2

.field static final MENU_ITEM_EDIT_BEFORE_CALL:I = 0x4

.field static final MENU_ITEM_SEND_EMAIL:I = 0x3

.field static final MENU_ITEM_SEND_SMS:I = 0x2

.field static final MENU_ITEM_VIEW_CONTACT:I = 0x1

.field static final MODIFY_BLACKLIST_PASSWORD:I = 0xf02

.field static final PICK_BLACKLIST_CANDIDATE:I = 0xf01

.field private static final QUERY_TOKEN:I = 0x3e8

.field static final REMOVE_BLACKLIST_CANDIDATE:I = 0xf03

.field static final TAG:Ljava/lang/String; = "HtcDivertedListActivity"


# instance fields
.field protected mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;

.field protected mInsertListAdapter:Lcom/htc/widget/InsertNewListAdapter;

.field private mProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private mQueryHandler:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$QueryHandler;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTempNumber:Ljava/lang/String;

.field private mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/htc/provider/HtcContactsContract$BLOCKED_NUMBER;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->BLACK_NUMBER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseListActivity;-><init>()V

    .line 337
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mTempNumber:Ljava/lang/String;

    .line 780
    return-void
.end method

.method private AddContact(I)V
    .locals 5
    .parameter "position"

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->getCursorByposition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 342
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    const-string v3, "display_name"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 347
    .local v2, number:Ljava/lang/String;
    iput-object v2, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mTempNumber:Ljava/lang/String;

    .line 348
    invoke-static {v2}, Lcom/htc/util/contacts/ContactsUtility;->getAddToContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 349
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "send_to_voicemail"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 350
    const-string v3, "vip"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 351
    const/16 v3, 0xf04

    invoke-virtual {p0, v1, v3}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->removeBlackNumber(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->removeAllDevirted()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;)Lcom/android/htccontacts/BackgroundWorkerHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->pickBlockedContacts()V

    return-void
.end method

.method private deleteBlackList()V
    .locals 3

    .prologue
    .line 379
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    const-class v2, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 380
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.contacts.action.DELETE_DIVERTED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    const-string v1, "DELETE_CONTACT"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 382
    const/16 v1, 0xf03

    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 384
    return-void
.end method

.method private getCursorByposition(I)Landroid/database/Cursor;
    .locals 3
    .parameter "position"

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/htc/widget/HtcListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    .line 313
    .local v1, obj:Ljava/lang/Object;
    if-eqz v1, :cond_1

    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 314
    const/4 v0, 0x0

    .line 323
    :cond_0
    :goto_0
    return-object v0

    .line 317
    :cond_1
    const/4 v0, 0x0

    .line 319
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/database/Cursor;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 320
    check-cast v0, Landroid/database/Cursor;

    goto :goto_0
.end method

.method private getDeleteConfirmDialog(Landroid/database/Cursor;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 5
    .parameter "cursor"

    .prologue
    .line 329
    iget-object v3, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;

    iget v3, v3, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;->mAccountIdx:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, accountType:Ljava/lang/String;
    const-string v3, "com.anddroid.contacts.sim"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 333
    .local v1, isSIM:Z
    iget-object v3, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;

    invoke-virtual {v3, p1}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;->getContactUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v2

    .line 334
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v3, v1, v2, v4}, Lcom/android/htccontacts/util/ContactsUtils;->getDeleteConfirmDialog(Landroid/content/Context;Landroid/content/ContentResolver;ZLandroid/net/Uri;Landroid/app/Activity;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    return-object v3
.end method

.method private pickBlockedContacts()V
    .locals 3

    .prologue
    .line 359
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    const-class v2, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 360
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.contacts.action.PICK_DIVERTED_CANDIDATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    const/16 v1, 0xf01

    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 363
    return-void
.end method

.method private removeAllDevirted()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 667
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 668
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "send_to_voicemail"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 669
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 672
    sget-object v0, Lcom/htc/provider/HtcContactsContract$BLOCKED_SIM;->CONTENT_URI:Landroid/net/Uri;

    .line 673
    .local v0, blockSimUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 676
    sget-object v1, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->BLACK_NUMBER_URI:Landroid/net/Uri;

    .line 677
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 678
    return-void
.end method

.method private removeBlackNumber(J)Z
    .locals 5
    .parameter "blockId"

    .prologue
    const/4 v4, 0x1

    .line 720
    sget-object v0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->BLACK_NUMBER_URI:Landroid/net/Uri;

    .line 721
    .local v0, uri:Landroid/net/Uri;
    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 722
    .local v1, whereArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "_id = ?"

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 724
    return v4
.end method

.method private removeBlackNumber(Ljava/lang/String;)Z
    .locals 5
    .parameter "number"

    .prologue
    const/4 v4, 0x1

    .line 712
    sget-object v0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->BLACK_NUMBER_URI:Landroid/net/Uri;

    .line 713
    .local v0, uri:Landroid/net/Uri;
    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 714
    .local v1, whereArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "number = ?"

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 716
    return v4
.end method

.method private viewContactCard(I)V
    .locals 9
    .parameter "position"

    .prologue
    .line 915
    invoke-direct {p0, p1}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->getCursorByposition(I)Landroid/database/Cursor;

    move-result-object v1

    .line 917
    .local v1, c:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 944
    :cond_0
    :goto_0
    return-void

    .line 921
    :cond_1
    iget-object v7, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;

    iget v7, v7, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;->mContactIdx:I

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 923
    .local v5, personId:J
    iget-object v7, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;

    iget v7, v7, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;->mAccountIdx:I

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 925
    .local v0, accountType:Ljava/lang/String;
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_3

    const/4 v3, 0x1

    .line 927
    .local v3, isContacts:Z
    :goto_1
    if-eqz v0, :cond_2

    const-string v7, "block_number"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 928
    const/4 v3, 0x0

    .line 931
    :cond_2
    if-eqz v3, :cond_4

    .line 934
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;

    invoke-virtual {v8, v1}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;->isSimContactItem(Landroid/database/Cursor;)Z

    move-result v8

    invoke-static {v7, v5, v6, v8}, Lcom/htc/provider/HtcContactsContract$Contacts;->getViewContactCardIntent(Landroid/content/ContentResolver;JZ)Landroid/content/Intent;

    move-result-object v2

    .line 938
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 925
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #isContacts:Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 940
    .restart local v3       #isContacts:Z
    :cond_4
    iget-object v7, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;

    iget v7, v7, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;->mDisplayNameIdx:I

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 941
    .local v4, number:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/util/contacts/PhoneUtils;->getViewUnknownCardIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 942
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method protected addBlackSelectedContacts(Landroid/content/Intent;)V
    .locals 8
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    .line 498
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 500
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 502
    const-string v6, "SELECTED_ID"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 503
    .local v0, PeopleCandidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v6, "SELECT_CONTACT_IS_SIM"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getBooleanArrayExtra(Ljava/lang/String;)[Z

    move-result-object v2

    .line 505
    .local v2, isSimArrays:[Z
    if-nez v0, :cond_1

    move v3, v5

    .line 507
    .local v3, size:I
    :goto_0
    if-lez v3, :cond_0

    .line 509
    new-instance v6, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v6, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 511
    iget-object v6, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v7, 0x7f0a0355

    invoke-virtual {v6, v7}, Lcom/htc/app/HtcProgressDialog;->setTitle(I)V

    .line 513
    iget-object v6, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v7, 0x7f0a0128

    invoke-virtual {p0, v7}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 515
    iget-object v6, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 517
    iget-object v6, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v6, v5}, Lcom/htc/app/HtcProgressDialog;->setProgress(I)V

    .line 519
    iget-object v6, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v6, v3}, Lcom/htc/app/HtcProgressDialog;->setMax(I)V

    .line 520
    iget-object v6, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v6, v5}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 521
    iget-object v6, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v6, v5}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 523
    iget-object v5, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v5}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 527
    new-instance v4, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$3;

    invoke-direct {v4, p0, v0, v2}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$3;-><init>(Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;Ljava/util/ArrayList;[Z)V

    .line 548
    .local v4, thread:Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 551
    .end local v0           #PeopleCandidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2           #isSimArrays:[Z
    .end local v3           #size:I
    .end local v4           #thread:Ljava/lang/Thread;
    :cond_0
    return-void

    .line 505
    .restart local v0       #PeopleCandidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v2       #isSimArrays:[Z
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_0
.end method

.method protected comfirmRemoveBlackList(IZ)V
    .locals 3
    .parameter "position"
    .parameter "deleteAll"

    .prologue
    .line 615
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 617
    .local v0, b:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x7f0a0355

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 618
    if-eqz p2, :cond_0

    const v1, 0x7f0a035b

    :goto_0
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 620
    const v1, 0x7f0a014f

    new-instance v2, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$4;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$4;-><init>(Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;ZI)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 656
    const v1, 0x7f0a0152

    new-instance v2, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$5;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$5;-><init>(Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 662
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 663
    return-void

    .line 618
    :cond_0
    const v1, 0x7f0a035c

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, 0x0

    .line 388
    const/4 v10, -0x1

    if-ne p2, v10, :cond_0

    .line 389
    const/16 v10, 0xf01

    if-ne p1, v10, :cond_1

    .line 391
    invoke-virtual {p0, p3}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->addBlackSelectedContacts(Landroid/content/Intent;)V

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    const/16 v10, 0xf04

    if-ne p1, v10, :cond_2

    .line 398
    iget-object v10, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mTempNumber:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 399
    iget-object v10, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mTempNumber:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->removeBlackNumber(Ljava/lang/String;)Z

    .line 401
    if-eqz p3, :cond_0

    .line 402
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 403
    .local v7, contactUri:Landroid/net/Uri;
    const-string v10, "is_sim"

    invoke-virtual {p3, v10, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 404
    .local v9, isSim:Z
    if-eqz v7, :cond_0

    .line 405
    new-instance v0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$1;

    invoke-direct {v0, p0, v9, v7}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$1;-><init>(Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;ZLandroid/net/Uri;)V

    .line 414
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 419
    .end local v0           #thread:Ljava/lang/Thread;
    .end local v7           #contactUri:Landroid/net/Uri;
    .end local v9           #isSim:Z
    :cond_2
    const/16 v10, 0xf03

    if-ne p1, v10, :cond_0

    .line 422
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 424
    .local v8, extras:Landroid/os/Bundle;
    if-eqz v8, :cond_0

    .line 427
    const-string v10, "SELECTED_ID"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 428
    .local v3, selectedId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v3, :cond_3

    move v2, v1

    .line 430
    .local v2, size:I
    :goto_1
    const-string v10, "SELECT_CONTACT_IS_SIM"

    invoke-virtual {p3, v10}, Landroid/content/Intent;->getBooleanArrayExtra(Ljava/lang/String;)[Z

    move-result-object v4

    .line 432
    .local v4, isSimArrays:[Z
    const-string v10, "SELECTED_BLOCKED_ID"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 433
    .local v6, blockId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v6, :cond_4

    move v5, v1

    .line 438
    .local v5, blocksize:I
    :goto_2
    add-int v10, v2, v5

    if-lez v10, :cond_0

    .line 440
    new-instance v10, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v10, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 442
    iget-object v10, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v11, 0x7f0a0192

    invoke-virtual {v10, v11}, Lcom/htc/app/HtcProgressDialog;->setTitle(I)V

    .line 444
    iget-object v10, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v11, 0x7f0a0193

    invoke-virtual {p0, v11}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 446
    iget-object v10, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 448
    iget-object v10, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v10, v1}, Lcom/htc/app/HtcProgressDialog;->setProgress(I)V

    .line 450
    iget-object v10, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v10, v2}, Lcom/htc/app/HtcProgressDialog;->setMax(I)V

    .line 452
    iget-object v10, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v10, v1}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 453
    iget-object v10, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v10, v1}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 455
    iget-object v1, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 459
    new-instance v0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$2;-><init>(Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;ILjava/util/ArrayList;[ZILjava/util/ArrayList;)V

    .line 488
    .restart local v0       #thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 428
    .end local v0           #thread:Ljava/lang/Thread;
    .end local v2           #size:I
    .end local v4           #isSimArrays:[Z
    .end local v5           #blocksize:I
    .end local v6           #blockId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_1

    .line 433
    .restart local v2       #size:I
    .restart local v4       #isSimArrays:[Z
    .restart local v6       #blockId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    goto :goto_2
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    .line 254
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .local v1, menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    iget v2, v1, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    .line 276
    .local v2, position:I
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 306
    :goto_0
    const/4 v3, 0x1

    .end local v1           #menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .end local v2           #position:I
    :goto_1
    return v3

    .line 256
    :catch_0
    move-exception v0

    .line 258
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v4, "HtcDivertedListActivity"

    const-string v5, "bad menuInfoIn"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 280
    .end local v0           #e:Ljava/lang/ClassCastException;
    .restart local v1       #menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .restart local v2       #position:I
    :sswitch_0
    invoke-direct {p0, v2}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->viewContactCard(I)V

    goto :goto_0

    .line 287
    :sswitch_1
    invoke-virtual {p0, v2, v3}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->comfirmRemoveBlackList(IZ)V

    goto :goto_0

    .line 294
    :sswitch_2
    invoke-direct {p0, v2}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->AddContact(I)V

    goto :goto_0

    .line 276
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    const v1, 0x7f030006

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->setContentView(I)V

    .line 115
    const v1, 0x7f0a0355

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->setGenericTitleBar(I)V

    .line 117
    const v1, 0x7f07001c

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 118
    .local v0, emptyTextView:Landroid/widget/TextView;
    const v1, 0x7f0a0225

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 121
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 123
    new-instance v1, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$QueryHandler;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$QueryHandler;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mQueryHandler:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$QueryHandler;

    .line 125
    new-instance v1, Lcom/android/htccontacts/BackgroundWorkerHandler;

    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/htccontacts/BackgroundWorkerHandler;-><init>(Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;

    .line 127
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 129
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 15
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    .line 181
    :try_start_0
    move-object/from16 v0, p3

    check-cast v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .local v4, info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    iget v11, v4, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/htc/widget/HtcListView;->getHeaderViewsCount()I

    move-result v12

    sub-int v6, v11, v12

    .line 191
    .local v6, itemPos:I
    if-gez v6, :cond_1

    .line 244
    .end local v4           #info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .end local v6           #itemPos:I
    :cond_0
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v3

    .line 185
    .local v3, e:Ljava/lang/ClassCastException;
    const-string v11, "HtcDivertedListActivity"

    const-string v12, "bad menuInfo"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 195
    .end local v3           #e:Ljava/lang/ClassCastException;
    .restart local v4       #info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .restart local v6       #itemPos:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v11

    invoke-virtual {v11, v6}, Lcom/htc/widget/HtcListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v8

    .line 197
    .local v8, obj:Ljava/lang/Object;
    if-eqz v8, :cond_2

    instance-of v11, v8, Landroid/view/View;

    if-nez v11, :cond_0

    .line 201
    :cond_2
    const/4 v2, 0x0

    .line 203
    .local v2, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_3

    instance-of v11, v8, Landroid/database/Cursor;

    if-eqz v11, :cond_3

    move-object v2, v8

    .line 204
    check-cast v2, Landroid/database/Cursor;

    .line 207
    :cond_3
    if-eqz v2, :cond_0

    .line 209
    iget-object v11, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;

    iget v11, v11, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;->mDisplayNameIdx:I

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 210
    .local v7, name:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;

    iget v11, v11, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;->mContactIdx:I

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 211
    .local v9, person:J
    iget-object v11, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;

    iget v11, v11, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;->mAccountIdx:I

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, accountType:Ljava/lang/String;
    const-wide/16 v11, 0x0

    cmp-long v11, v9, v11

    if-lez v11, :cond_5

    const/4 v5, 0x1

    .line 215
    .local v5, isContacts:Z
    :goto_1
    if-eqz v1, :cond_4

    const-string v11, "block_number"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 216
    const/4 v5, 0x0

    .line 220
    :cond_4
    if-eqz v7, :cond_6

    .line 222
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 232
    :goto_2
    const/4 v11, 0x0

    const/4 v12, 0x5

    const/4 v13, 0x5

    const v14, 0x7f0a02ff

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 234
    if-eqz v5, :cond_7

    .line 236
    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    const v14, 0x7f0a0301

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 213
    .end local v5           #isContacts:Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    .line 226
    .restart local v5       #isContacts:Z
    :cond_6
    const v11, 0x7f0a016e

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    goto :goto_2

    .line 240
    :cond_7
    const/4 v11, 0x0

    const/16 v12, 0x8

    const/16 v13, 0x8

    const v14, 0x7f0a0300

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 558
    const/4 v0, 0x2

    const v1, 0x7f0a0358

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080324

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 561
    const/4 v0, 0x3

    const v1, 0x7f0a023f

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080323

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 570
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onDestroy()V

    .line 149
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->unregisterForContextMenu(Landroid/view/View;)V

    .line 150
    return-void
.end method

.method public onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 155
    if-nez p3, :cond_0

    .line 156
    invoke-direct {p0}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->pickBlockedContacts()V

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/htc/widget/HtcListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    .line 160
    .local v1, obj:Ljava/lang/Object;
    if-eqz v1, :cond_1

    instance-of v3, v1, Landroid/database/Cursor;

    if-eqz v3, :cond_1

    move-object v0, v1

    .line 161
    check-cast v0, Landroid/database/Cursor;

    .line 162
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 163
    invoke-direct {p0, p3}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->viewContactCard(I)V

    .line 166
    .end local v0           #c:Landroid/database/Cursor;
    :cond_1
    if-eqz v1, :cond_2

    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_2

    move-object v2, v1

    .line 167
    check-cast v2, Landroid/view/View;

    .line 168
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 169
    invoke-virtual {v2}, Landroid/view/View;->performClick()Z

    .line 172
    .end local v2           #view:Landroid/view/View;
    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 596
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 609
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 599
    :pswitch_0
    const-string v1, "ANALYTIC_HtcContacts"

    const-string v2, "[HtcDivertedListActivity]Delete black list"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    invoke-direct {p0}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->deleteBlackList()V

    goto :goto_0

    .line 604
    :pswitch_1
    const-string v1, "ANALYTIC_HtcContacts"

    const-string v2, "[HtcDivertedListActivity]Delete all black list"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->comfirmRemoveBlackList(IZ)V

    goto :goto_0

    .line 596
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 141
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onPause()V

    .line 142
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 579
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;

    invoke-virtual {v0}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 580
    :cond_0
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 581
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 590
    :goto_0
    return v1

    .line 583
    :cond_1
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 584
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onResume()V

    .line 135
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->startQuery(Z)V

    .line 136
    return-void
.end method

.method protected removeBlackList(I)V
    .locals 9
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    .line 681
    invoke-direct {p0, p1}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->getCursorByposition(I)Landroid/database/Cursor;

    move-result-object v1

    .line 683
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 687
    :cond_1
    iget-object v7, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;

    invoke-virtual {v7, v1}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;->isSimContactItem(Landroid/database/Cursor;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 688
    const-string v7, "_id"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    int-to-long v4, v7

    .line 689
    .local v4, person:J
    const-string v7, "display_name"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 691
    .local v3, number:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;

    iget v7, v7, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;->mAccountIdx:I

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 693
    .local v0, accountType:Ljava/lang/String;
    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    if-lez v7, :cond_3

    const/4 v2, 0x1

    .line 695
    .local v2, isContacts:Z
    :goto_1
    if-eqz v0, :cond_2

    const-string v7, "block_number"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 696
    const/4 v2, 0x0

    .line 699
    :cond_2
    if-eqz v2, :cond_4

    .line 700
    iget-object v7, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;

    invoke-virtual {v7, v1}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;->getContactUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {p0, v7, v6}, Lcom/htc/util/contacts/BlacklistUtils;->modifySendToVoiceMail(Landroid/content/Context;Landroid/net/Uri;Z)V

    goto :goto_0

    .end local v2           #isContacts:Z
    :cond_3
    move v2, v6

    .line 693
    goto :goto_1

    .line 703
    .restart local v2       #isContacts:Z
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->removeBlackNumber(Ljava/lang/String;)Z

    goto :goto_0

    .line 707
    .end local v0           #accountType:Ljava/lang/String;
    .end local v2           #isContacts:Z
    .end local v3           #number:Ljava/lang/String;
    .end local v4           #person:J
    :cond_5
    iget-object v7, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;

    invoke-virtual {v7, v1}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;->getContactUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {p0, v7, v6}, Lcom/htc/util/contacts/BlacklistUtils;->modifySendToVoiceMailForSim(Landroid/content/Context;Landroid/net/Uri;Z)V

    goto :goto_0
.end method

.method protected setAdapter(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 765
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 778
    :cond_0
    :goto_0
    return-void

    .line 768
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;

    if-nez v0, :cond_2

    .line 769
    new-instance v0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;-><init>(Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;

    .line 770
    new-instance v0, Lcom/htc/widget/InsertNewListAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/InsertNewListAdapter;-><init>(Lcom/htc/widget/InsertNewListAdapterInterface;Z)V

    iput-object v0, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mInsertListAdapter:Lcom/htc/widget/InsertNewListAdapter;

    .line 772
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mInsertListAdapter:Lcom/htc/widget/InsertNewListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 773
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    goto :goto_0

    .line 775
    :cond_2
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;

    invoke-virtual {v0, p1}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$BlackListItemAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method protected startQuery(Z)V
    .locals 8
    .parameter "preQuery"

    .prologue
    const/16 v1, 0x3e8

    const/4 v2, 0x0

    .line 729
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mQueryHandler:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$QueryHandler;->cancelOperation(I)V

    .line 730
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mQueryHandler:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$QueryHandler;

    sget-object v3, Lcom/htc/provider/HtcContactsContract$Diverted;->DIVERTED_CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    return-void
.end method
