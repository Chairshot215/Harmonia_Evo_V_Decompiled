.class public Lcom/android/htccontacts/blacklist/HtcVipListActivity;
.super Lcom/android/htccontacts/app/BaseListActivity;
.source "HtcVipListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;,
        Lcom/android/htccontacts/blacklist/HtcVipListActivity$QueryHandler;
    }
.end annotation


# static fields
.field static final CONTEXT_MENU_ADD_CONTACT:I = 0x8

.field static final CONTEXT_MENU_DELETE_CONTACT:I = 0x9

.field static final CONTEXT_MENU_ITEM_CALL_DEFAULT:I = 0x7

.field static final CONTEXT_MENU_REMOVE_FROM_VIP:I = 0x5

.field static final CONTEXT_MENU_SHARE_CONTACT:I = 0xa

.field protected static final DEBUG:Z = false

.field static final MENU_DELETE_ALL:I = 0x3

.field static final MENU_EDIT:I = 0x2

.field static final MENU_ITEM_EDIT_BEFORE_CALL:I = 0x4

.field static final MENU_ITEM_SEND_EMAIL:I = 0x3

.field static final MENU_ITEM_SEND_SMS:I = 0x2

.field static final MENU_ITEM_VIEW_CONTACT:I = 0x1

.field static final PICK_VIP_CANDIDATE:I = 0xf01

.field private static final QUERY_TOKEN:I = 0x3e8

.field static final REMOVE_VIP_CANDIDATE:I = 0xf03

.field static final TAG:Ljava/lang/String; = "HtcVipListActivity"


# instance fields
.field protected mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;

.field protected mInsertListAdapter:Lcom/htc/widget/InsertNewListAdapter;

.field private mProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private mQueryHandler:Lcom/android/htccontacts/blacklist/HtcVipListActivity$QueryHandler;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseListActivity;-><init>()V

    .line 782
    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/blacklist/HtcVipListActivity;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/htccontacts/blacklist/HtcVipListActivity;Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/htccontacts/blacklist/HtcVipListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->removeAllVIP()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/htccontacts/blacklist/HtcVipListActivity;)Lcom/android/htccontacts/BackgroundWorkerHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/htccontacts/blacklist/HtcVipListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->pickVIPContacts()V

    return-void
.end method

.method private deleteBlackList()V
    .locals 3

    .prologue
    .line 384
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    const-class v2, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 385
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.contacts.action.DELETE_VIP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    const-string v1, "DELETE_CONTACT"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 387
    const/16 v1, 0xf03

    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 389
    return-void
.end method

.method private getCursorByposition(I)Landroid/database/Cursor;
    .locals 3
    .parameter "position"

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/htc/widget/HtcListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    .line 321
    .local v1, obj:Ljava/lang/Object;
    if-eqz v1, :cond_1

    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 322
    const/4 v0, 0x0

    .line 331
    :cond_0
    :goto_0
    return-object v0

    .line 325
    :cond_1
    const/4 v0, 0x0

    .line 327
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/database/Cursor;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 328
    check-cast v0, Landroid/database/Cursor;

    goto :goto_0
.end method

.method private pickVIPContacts()V
    .locals 3

    .prologue
    .line 364
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    const-class v2, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 365
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.contacts.action.PICK_VIP_CANDIDATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    const/16 v1, 0xf01

    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 368
    return-void
.end method

.method private removeAllVIP()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 672
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 673
    .local v0, values:Landroid/content/ContentValues;
    const-string v2, "vip"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 674
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 677
    sget-object v1, Lcom/htc/provider/HtcContactsContract$VIP_SIM;->CONTENT_URI:Landroid/net/Uri;

    .line 678
    .local v1, vipSimUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 679
    return-void
.end method

.method private viewContactCard(I)V
    .locals 9
    .parameter "position"

    .prologue
    .line 953
    invoke-direct {p0, p1}, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->getCursorByposition(I)Landroid/database/Cursor;

    move-result-object v1

    .line 955
    .local v1, c:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 982
    :cond_0
    :goto_0
    return-void

    .line 959
    :cond_1
    iget-object v7, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;

    iget v7, v7, Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;->mContactIdx:I

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 961
    .local v5, personId:J
    iget-object v7, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;

    iget v7, v7, Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;->mAccountIdx:I

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 963
    .local v0, accountType:Ljava/lang/String;
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_3

    const/4 v3, 0x1

    .line 965
    .local v3, isContacts:Z
    :goto_1
    if-eqz v0, :cond_2

    const-string v7, "block_number"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 966
    const/4 v3, 0x0

    .line 969
    :cond_2
    if-eqz v3, :cond_4

    .line 972
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;

    invoke-virtual {v8, v1}, Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;->isSimContactItem(Landroid/database/Cursor;)Z

    move-result v8

    invoke-static {v7, v5, v6, v8}, Lcom/htc/provider/HtcContactsContract$Contacts;->getViewContactCardIntent(Landroid/content/ContentResolver;JZ)Landroid/content/Intent;

    move-result-object v2

    .line 976
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 963
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #isContacts:Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 978
    .restart local v3       #isContacts:Z
    :cond_4
    iget-object v7, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;

    iget v7, v7, Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;->mDisplayNameIdx:I

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 979
    .local v4, number:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/util/contacts/PhoneUtils;->getViewUnknownCardIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 980
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method protected addVIPSelectedContacts(Landroid/content/Intent;)V
    .locals 8
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    .line 503
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 505
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 507
    const-string v6, "SELECTED_ID"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 508
    .local v0, PeopleCandidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v6, "SELECT_CONTACT_IS_SIM"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getBooleanArrayExtra(Ljava/lang/String;)[Z

    move-result-object v2

    .line 510
    .local v2, isSimArrays:[Z
    if-nez v0, :cond_1

    move v3, v5

    .line 512
    .local v3, size:I
    :goto_0
    if-lez v3, :cond_0

    .line 514
    new-instance v6, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v6, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 516
    iget-object v6, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v7, 0x7f0a0354

    invoke-virtual {v6, v7}, Lcom/htc/app/HtcProgressDialog;->setTitle(I)V

    .line 518
    iget-object v6, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v7, 0x7f0a0128

    invoke-virtual {p0, v7}, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 520
    iget-object v6, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 522
    iget-object v6, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v6, v5}, Lcom/htc/app/HtcProgressDialog;->setProgress(I)V

    .line 524
    iget-object v6, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v6, v3}, Lcom/htc/app/HtcProgressDialog;->setMax(I)V

    .line 527
    iget-object v6, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v6, v5}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 528
    iget-object v6, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v6, v5}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 530
    iget-object v5, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v5}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 534
    new-instance v4, Lcom/android/htccontacts/blacklist/HtcVipListActivity$2;

    invoke-direct {v4, p0, v0, v2}, Lcom/android/htccontacts/blacklist/HtcVipListActivity$2;-><init>(Lcom/android/htccontacts/blacklist/HtcVipListActivity;Ljava/util/ArrayList;[Z)V

    .line 555
    .local v4, thread:Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 558
    .end local v0           #PeopleCandidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2           #isSimArrays:[Z
    .end local v3           #size:I
    .end local v4           #thread:Ljava/lang/Thread;
    :cond_0
    return-void

    .line 510
    .restart local v0       #PeopleCandidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v2       #isSimArrays:[Z
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_0
.end method

.method protected comfirmRemoveVIPList(IZ)V
    .locals 3
    .parameter "position"
    .parameter "deleteAll"

    .prologue
    .line 622
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 624
    .local v0, b:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x7f0a0354

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 625
    if-eqz p2, :cond_0

    const v1, 0x7f0a0359

    :goto_0
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 627
    const v1, 0x7f0a014f

    new-instance v2, Lcom/android/htccontacts/blacklist/HtcVipListActivity$3;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/htccontacts/blacklist/HtcVipListActivity$3;-><init>(Lcom/android/htccontacts/blacklist/HtcVipListActivity;ZI)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 661
    const v1, 0x7f0a0152

    new-instance v2, Lcom/android/htccontacts/blacklist/HtcVipListActivity$4;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/blacklist/HtcVipListActivity$4;-><init>(Lcom/android/htccontacts/blacklist/HtcVipListActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 667
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 668
    return-void

    .line 625
    :cond_0
    const v1, 0x7f0a035a

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    .line 393
    const/4 v6, -0x1

    if-ne p2, v6, :cond_0

    .line 394
    const/16 v6, 0xf01

    if-ne p1, v6, :cond_1

    .line 396
    invoke-virtual {p0, p3}, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->addVIPSelectedContacts(Landroid/content/Intent;)V

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    const/16 v6, 0xf03

    if-ne p1, v6, :cond_0

    .line 427
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 429
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 432
    const-string v6, "SELECTED_ID"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 433
    .local v2, selectedId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v2, :cond_2

    move v3, v5

    .line 435
    .local v3, size:I
    :goto_1
    const-string v6, "SELECT_CONTACT_IS_SIM"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getBooleanArrayExtra(Ljava/lang/String;)[Z

    move-result-object v1

    .line 443
    .local v1, isSimArrays:[Z
    if-lez v3, :cond_0

    .line 445
    new-instance v6, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v6, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 447
    iget-object v6, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v7, 0x7f0a0192

    invoke-virtual {v6, v7}, Lcom/htc/app/HtcProgressDialog;->setTitle(I)V

    .line 449
    iget-object v6, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v7, 0x7f0a0193

    invoke-virtual {p0, v7}, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 451
    iget-object v6, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 453
    iget-object v6, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v6, v5}, Lcom/htc/app/HtcProgressDialog;->setProgress(I)V

    .line 455
    iget-object v6, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v6, v3}, Lcom/htc/app/HtcProgressDialog;->setMax(I)V

    .line 457
    iget-object v6, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v6, v5}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 458
    iget-object v6, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v6, v5}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 460
    iget-object v5, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v5}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 464
    new-instance v4, Lcom/android/htccontacts/blacklist/HtcVipListActivity$1;

    invoke-direct {v4, p0, v3, v2, v1}, Lcom/android/htccontacts/blacklist/HtcVipListActivity$1;-><init>(Lcom/android/htccontacts/blacklist/HtcVipListActivity;ILjava/util/ArrayList;[Z)V

    .line 493
    .local v4, thread:Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 433
    .end local v1           #isSimArrays:[Z
    .end local v3           #size:I
    .end local v4           #thread:Ljava/lang/Thread;
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    .line 262
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .local v1, menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    iget v2, v1, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    .line 284
    .local v2, position:I
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 314
    :goto_0
    const/4 v3, 0x1

    .end local v1           #menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .end local v2           #position:I
    :goto_1
    return v3

    .line 264
    :catch_0
    move-exception v0

    .line 266
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v4, "HtcVipListActivity"

    const-string v5, "bad menuInfoIn"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 288
    .end local v0           #e:Ljava/lang/ClassCastException;
    .restart local v1       #menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .restart local v2       #position:I
    :sswitch_0
    invoke-direct {p0, v2}, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->viewContactCard(I)V

    goto :goto_0

    .line 295
    :sswitch_1
    invoke-virtual {p0, v2, v3}, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->comfirmRemoveVIPList(IZ)V

    goto :goto_0

    .line 284
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    const v1, 0x7f030006

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->setContentView(I)V

    .line 117
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->setTitleBar()V

    .line 119
    const v1, 0x7f07001c

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 120
    .local v0, emptyTextView:Landroid/widget/TextView;
    const v1, 0x7f0a0225

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 123
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 125
    new-instance v1, Lcom/android/htccontacts/blacklist/HtcVipListActivity$QueryHandler;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/blacklist/HtcVipListActivity$QueryHandler;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->mQueryHandler:Lcom/android/htccontacts/blacklist/HtcVipListActivity$QueryHandler;

    .line 127
    new-instance v1, Lcom/android/htccontacts/BackgroundWorkerHandler;

    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/htccontacts/BackgroundWorkerHandler;-><init>(Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;

    .line 129
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 131
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 15
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    .line 189
    :try_start_0
    move-object/from16 v0, p3

    check-cast v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .local v4, info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    iget v11, v4, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/htc/widget/HtcListView;->getHeaderViewsCount()I

    move-result v12

    sub-int v6, v11, v12

    .line 199
    .local v6, itemPos:I
    if-gez v6, :cond_1

    .line 252
    .end local v4           #info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .end local v6           #itemPos:I
    :cond_0
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v3

    .line 193
    .local v3, e:Ljava/lang/ClassCastException;
    const-string v11, "HtcVipListActivity"

    const-string v12, "bad menuInfo"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 203
    .end local v3           #e:Ljava/lang/ClassCastException;
    .restart local v4       #info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .restart local v6       #itemPos:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v11

    invoke-virtual {v11, v6}, Lcom/htc/widget/HtcListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v8

    .line 205
    .local v8, obj:Ljava/lang/Object;
    if-eqz v8, :cond_2

    instance-of v11, v8, Landroid/view/View;

    if-nez v11, :cond_0

    .line 209
    :cond_2
    const/4 v2, 0x0

    .line 211
    .local v2, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_3

    instance-of v11, v8, Landroid/database/Cursor;

    if-eqz v11, :cond_3

    move-object v2, v8

    .line 212
    check-cast v2, Landroid/database/Cursor;

    .line 215
    :cond_3
    if-eqz v2, :cond_0

    .line 217
    iget-object v11, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;

    iget v11, v11, Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;->mDisplayNameIdx:I

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 218
    .local v7, name:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;

    iget v11, v11, Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;->mContactIdx:I

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 219
    .local v9, person:J
    iget-object v11, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;

    iget v11, v11, Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;->mAccountIdx:I

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, accountType:Ljava/lang/String;
    const-wide/16 v11, 0x0

    cmp-long v11, v9, v11

    if-lez v11, :cond_5

    const/4 v5, 0x1

    .line 223
    .local v5, isContacts:Z
    :goto_1
    if-eqz v1, :cond_4

    const-string v11, "block_number"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 224
    const/4 v5, 0x0

    .line 228
    :cond_4
    if-eqz v7, :cond_6

    .line 230
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 240
    :goto_2
    const/4 v11, 0x0

    const/4 v12, 0x5

    const/4 v13, 0x5

    const v14, 0x7f0a02fc

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 242
    if-eqz v5, :cond_0

    .line 244
    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    const v14, 0x7f0a0301

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 221
    .end local v5           #isContacts:Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    .line 234
    .restart local v5       #isContacts:Z
    :cond_6
    const v11, 0x7f0a016e

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 565
    const/4 v0, 0x2

    const v1, 0x7f0a0358

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080324

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 568
    const/4 v0, 0x3

    const v1, 0x7f0a023f

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080323

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 577
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onDestroy()V

    .line 157
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->unregisterForContextMenu(Landroid/view/View;)V

    .line 158
    return-void
.end method

.method public onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 163
    if-nez p3, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->pickVIPContacts()V

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/htc/widget/HtcListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    .line 168
    .local v1, obj:Ljava/lang/Object;
    if-eqz v1, :cond_1

    instance-of v3, v1, Landroid/database/Cursor;

    if-eqz v3, :cond_1

    move-object v0, v1

    .line 169
    check-cast v0, Landroid/database/Cursor;

    .line 170
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 171
    invoke-direct {p0, p3}, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->viewContactCard(I)V

    .line 174
    .end local v0           #c:Landroid/database/Cursor;
    :cond_1
    if-eqz v1, :cond_2

    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_2

    move-object v2, v1

    .line 175
    check-cast v2, Landroid/view/View;

    .line 176
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 177
    invoke-virtual {v2}, Landroid/view/View;->performClick()Z

    .line 180
    .end local v2           #view:Landroid/view/View;
    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 603
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 616
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 606
    :pswitch_0
    const-string v1, "ANALYTIC_HtcContacts"

    const-string v2, "[HtcVipListActivity]Delete vip"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    invoke-direct {p0}, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->deleteBlackList()V

    goto :goto_0

    .line 611
    :pswitch_1
    const-string v1, "ANALYTIC_HtcContacts"

    const-string v2, "[HtcVipListActivity]Delete all vip list"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->comfirmRemoveVIPList(IZ)V

    goto :goto_0

    .line 603
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 149
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onPause()V

    .line 150
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

    .line 586
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;

    invoke-virtual {v0}, Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 587
    :cond_0
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 588
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 597
    :goto_0
    return v1

    .line 590
    :cond_1
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 591
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onResume()V

    .line 143
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->startQuery(Z)V

    .line 144
    return-void
.end method

.method protected removeVIPList(I)V
    .locals 9
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    .line 682
    invoke-direct {p0, p1}, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->getCursorByposition(I)Landroid/database/Cursor;

    move-result-object v1

    .line 684
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 710
    :cond_0
    :goto_0
    return-void

    .line 688
    :cond_1
    iget-object v7, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;

    invoke-virtual {v7, v1}, Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;->isSimContactItem(Landroid/database/Cursor;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 689
    const-string v7, "_id"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    int-to-long v4, v7

    .line 690
    .local v4, person:J
    const-string v7, "display_name"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 692
    .local v3, number:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;

    iget v7, v7, Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;->mAccountIdx:I

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 694
    .local v0, accountType:Ljava/lang/String;
    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    if-lez v7, :cond_3

    const/4 v2, 0x1

    .line 696
    .local v2, isContacts:Z
    :goto_1
    if-eqz v0, :cond_2

    const-string v7, "block_number"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 697
    const/4 v2, 0x0

    .line 700
    :cond_2
    if-eqz v2, :cond_0

    .line 701
    iget-object v7, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;

    invoke-virtual {v7, v1}, Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;->getContactUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {p0, v7, v6}, Lcom/htc/util/contacts/BlacklistUtils;->modifyVIP(Landroid/content/Context;Landroid/net/Uri;Z)V

    goto :goto_0

    .end local v2           #isContacts:Z
    :cond_3
    move v2, v6

    .line 694
    goto :goto_1

    .line 708
    .end local v0           #accountType:Ljava/lang/String;
    .end local v3           #number:Ljava/lang/String;
    .end local v4           #person:J
    :cond_4
    iget-object v7, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;

    invoke-virtual {v7, v1}, Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;->getContactUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {p0, v7, v6}, Lcom/htc/util/contacts/BlacklistUtils;->modifyVIPForSim(Landroid/content/Context;Landroid/net/Uri;Z)V

    goto :goto_0
.end method

.method protected setAdapter(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 767
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 780
    :cond_0
    :goto_0
    return-void

    .line 770
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;

    if-nez v0, :cond_2

    .line 771
    new-instance v0, Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;-><init>(Lcom/android/htccontacts/blacklist/HtcVipListActivity;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;

    .line 772
    new-instance v0, Lcom/htc/widget/InsertNewListAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/InsertNewListAdapter;-><init>(Lcom/htc/widget/InsertNewListAdapterInterface;Z)V

    iput-object v0, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->mInsertListAdapter:Lcom/htc/widget/InsertNewListAdapter;

    .line 774
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->mInsertListAdapter:Lcom/htc/widget/InsertNewListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 775
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    goto :goto_0

    .line 777
    :cond_2
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->mCursorAdapter:Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;

    invoke-virtual {v0, p1}, Lcom/android/htccontacts/blacklist/HtcVipListActivity$VIPListItemAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method protected setTitleBar()V
    .locals 2

    .prologue
    .line 134
    const v1, 0x7f070016

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/title/GenericHeaderBar;

    .line 135
    .local v0, mHeaderBar:Lcom/android/htccontacts/widget/title/GenericHeaderBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->buildHeaderBar(I)V

    .line 136
    const v1, 0x7f0a0354

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->setHeaderText(I)V

    .line 137
    return-void
.end method

.method protected startQuery(Z)V
    .locals 8
    .parameter "preQuery"

    .prologue
    const/16 v1, 0x3e8

    const/4 v2, 0x0

    .line 731
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->mQueryHandler:Lcom/android/htccontacts/blacklist/HtcVipListActivity$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/blacklist/HtcVipListActivity$QueryHandler;->cancelOperation(I)V

    .line 732
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->mQueryHandler:Lcom/android/htccontacts/blacklist/HtcVipListActivity$QueryHandler;

    sget-object v3, Lcom/htc/provider/HtcContactsContract$VIP;->VIP_CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/blacklist/HtcVipListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    return-void
.end method
