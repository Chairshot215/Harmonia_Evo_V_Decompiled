.class public Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;
.super Lcom/android/htccontacts/ContactListSearchPicker;
.source "HtcManageCallsListPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$FilterTextWatcher;,
        Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$ContactsItemPickerAdapter;,
        Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$QueryHandler;
    }
.end annotation


# static fields
.field public static final ACTION_DELETE_DIVERTED:Ljava/lang/String; = "com.android.contacts.action.DELETE_DIVERTED"

.field public static final ACTION_DELETE_VIP:Ljava/lang/String; = "com.android.contacts.action.DELETE_VIP"

.field public static final ACTION_PICK_DIVERTED:Ljava/lang/String; = "com.android.contacts.action.PICK_DIVERTED_CANDIDATE"

.field public static final ACTION_PICK_VIP:Ljava/lang/String; = "com.android.contacts.action.PICK_VIP_CANDIDATE"

.field protected static final DEBUG:Z = false

.field public static final EXTRA_BLOCK_SELECTED_ID:Ljava/lang/String; = "SELECTED_BLOCKED_ID"

.field public static final EXTRA_DELETE_CONTACT:Ljava/lang/String; = "DELETE_CONTACT"

.field public static final EXTRA_OUT_SELECTED_ID:Ljava/lang/String; = "SELECTED_ID"

.field protected static final MODE_DELETE_DIVERTED:I = -0x779fffb3

.field protected static final MODE_DELETE_VIP:I = -0x779fffb2

.field protected static final MODE_PICK_CONTACT:I = -0x77bfffb1

.field protected static final QUERY_TOKEN_LIST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HtcManageCallsListPicker"

.field private static time:J


# instance fields
.field private isDoOK:Z

.field private isPickBlockNumberForDelete:Z

.field private mCacheBooleanArrayForblock:Landroid/util/SparseBooleanArray;

.field private mFilterString:Ljava/lang/String;

.field protected mIntentAction:Ljava/lang/String;

.field protected mQueryHandler:Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$QueryHandler;

.field protected mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 106
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->time:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/htccontacts/ContactListSearchPicker;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->isPickBlockNumberForDelete:Z

    .line 98
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->mCacheBooleanArrayForblock:Landroid/util/SparseBooleanArray;

    .line 660
    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->isDoOK:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->isDoOK:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->doOK()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->misEmptyList:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->isPickBlockNumberForDelete:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;)Landroid/util/SparseBooleanArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->mCacheBooleanArrayForblock:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;)Landroid/util/LongSparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->mFilterString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->mFilterString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;)Landroid/text/style/BackgroundColorSpan;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->BACKGROUND_SPAN:Landroid/text/style/BackgroundColorSpan;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;)Landroid/text/style/ForegroundColorSpan;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->FOREGROUND_SPAN:Landroid/text/style/ForegroundColorSpan;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mIsDirty:Z

    return p1
.end method

.method static synthetic access$300()J
    .locals 2

    .prologue
    .line 66
    sget-wide v0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->time:J

    return-wide v0
.end method

.method static synthetic access$302(J)J
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    sput-wide p0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->time:J

    return-wide p0
.end method

.method static synthetic access$400(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->onQueryAndAdapterFinish(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/htccontacts/ContactListSearchPicker;->misEmptyList:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;)Landroid/os/Parcelable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mListState:Landroid/os/Parcelable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;)Landroid/os/Parcelable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mListState:Landroid/os/Parcelable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mListState:Landroid/os/Parcelable;

    return-object p1
.end method

.method private confirmDelete()V
    .locals 5

    .prologue
    const v3, 0x7f0a0355

    .line 281
    iget v2, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const v4, -0x779fffb2

    if-ne v2, v4, :cond_1

    const/4 v1, 0x1

    .line 282
    .local v1, isVIP:Z
    :goto_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 284
    .local v0, b:Lcom/htc/widget/HtcAlertDialog$Builder;
    if-eqz v1, :cond_2

    const v2, 0x7f0a0354

    :goto_1
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 285
    if-eqz v1, :cond_0

    const v3, 0x7f0a0359

    :cond_0
    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 287
    const v2, 0x7f0a014f

    new-instance v3, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$3;

    invoke-direct {v3, p0}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$3;-><init>(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 307
    const v2, 0x7f0a0152

    new-instance v3, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$4;

    invoke-direct {v3, p0}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$4;-><init>(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 313
    new-instance v2, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$5;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$5;-><init>(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;)V

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 320
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 321
    return-void

    .line 281
    .end local v0           #b:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v1           #isVIP:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .restart local v0       #b:Lcom/htc/widget/HtcAlertDialog$Builder;
    .restart local v1       #isVIP:Z
    :cond_2
    move v2, v3

    .line 284
    goto :goto_1
.end method

.method private doOK()V
    .locals 12

    .prologue
    .line 326
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .local v6, idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v2, 0x0

    .line 330
    .local v2, cursor:Landroid/database/Cursor;
    iget-object v10, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    if-eqz v10, :cond_0

    .line 331
    iget-object v10, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v10}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 333
    :cond_0
    const/4 v7, 0x0

    .line 335
    .local v7, isSimArray:[Z
    iget-object v10, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    if-eqz v10, :cond_2

    .line 336
    iget-object v10, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    invoke-virtual {v10}, Landroid/util/LongSparseArray;->size()I

    move-result v9

    .line 338
    .local v9, size:I
    new-array v7, v9, [Z

    .line 340
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v9, :cond_2

    .line 341
    iget-object v10, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    invoke-virtual {v10, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 342
    iget-object v10, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    invoke-virtual {v10, v3}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    .line 343
    .local v4, id:J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    if-eqz v7, :cond_1

    .line 346
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v1, v10, -0x1

    .line 347
    .local v1, currentIdx:I
    iget-object v10, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsSimMap:Landroid/util/LongSparseArray;

    invoke-virtual {v10, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    aput-boolean v10, v7, v1

    .line 340
    .end local v1           #currentIdx:I
    .end local v4           #id:J
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 354
    .end local v3           #i:I
    .end local v9           #size:I
    :cond_2
    if-nez v2, :cond_3

    .line 386
    :goto_1
    return-void

    .line 358
    :cond_3
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 359
    .local v8, resultIntent:Landroid/content/Intent;
    const-string v10, "SELECTED_ID"

    invoke-virtual {p0, v6}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->transferLongListToIntegerList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 365
    if-eqz v7, :cond_4

    .line 366
    const-string v10, "SELECT_CONTACT_IS_SIM"

    invoke-virtual {v8, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;

    .line 370
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .local v0, blockList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v10, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->mCacheBooleanArrayForblock:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10}, Landroid/util/SparseBooleanArray;->size()I

    move-result v9

    .line 372
    .restart local v9       #size:I
    iget-boolean v10, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->isPickBlockNumberForDelete:Z

    if-eqz v10, :cond_7

    if-lez v9, :cond_7

    .line 373
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    if-ge v3, v9, :cond_6

    .line 375
    iget-object v10, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->mCacheBooleanArrayForblock:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 376
    iget-object v10, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->mCacheBooleanArrayForblock:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 378
    :cond_6
    const-string v10, "SELECTED_BLOCKED_ID"

    invoke-virtual {v8, v10, v0}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 381
    .end local v3           #i:I
    :cond_7
    iget-object v10, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->mIntentAction:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    const/4 v10, -0x1

    invoke-virtual {p0, v10, v8}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->setResult(ILandroid/content/Intent;)V

    goto :goto_1
.end method

.method private prepareQueryUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 472
    const/4 v0, 0x0

    .line 473
    .local v0, queryUri:Landroid/net/Uri;
    iget v1, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const v2, -0x779fffb3

    if-ne v1, v2, :cond_1

    .line 474
    sget-object v0, Lcom/htc/provider/HtcContactsContract$Diverted;->DIVERTED_CONTENT_URI:Landroid/net/Uri;

    .line 479
    :cond_0
    :goto_0
    return-object v0

    .line 475
    :cond_1
    iget v1, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const v2, -0x779fffb2

    if-ne v1, v2, :cond_2

    .line 476
    sget-object v0, Lcom/htc/provider/HtcContactsContract$VIP;->VIP_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 477
    :cond_2
    iget v1, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const v2, -0x77bfffb1

    if-ne v1, v2, :cond_0

    .line 478
    sget-object v0, Lcom/htc/provider/HtcContactsContract$VIP;->VIP_CANDIDATE_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method


# virtual methods
.method protected checkMode()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 394
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 395
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->mIntentAction:Ljava/lang/String;

    .line 397
    const-string v1, "DELETE_CONTACT"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsDeleteContacts:Z

    .line 399
    iget-object v1, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->mIntentAction:Ljava/lang/String;

    const-string v2, "com.android.contacts.action.DELETE_DIVERTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsDeleteContacts:Z

    if-eqz v1, :cond_2

    .line 400
    const v1, -0x779fffb3

    iput v1, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    .line 401
    iput-boolean v4, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->isPickBlockNumberForDelete:Z

    .line 413
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const/high16 v2, 0x20

    and-int/2addr v1, v2

    if-lez v1, :cond_1

    .line 414
    iput-boolean v4, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsDeleteContacts:Z

    .line 417
    :cond_1
    return v3

    .line 403
    :cond_2
    iget-object v1, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->mIntentAction:Ljava/lang/String;

    const-string v2, "com.android.contacts.action.DELETE_VIP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsDeleteContacts:Z

    if-eqz v1, :cond_3

    .line 404
    const v1, -0x779fffb2

    iput v1, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    .line 405
    iput-boolean v3, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->isPickBlockNumberForDelete:Z

    goto :goto_0

    .line 407
    :cond_3
    iget-object v1, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->mIntentAction:Ljava/lang/String;

    const-string v2, "com.android.contacts.action.PICK_DIVERTED_CANDIDATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->mIntentAction:Ljava/lang/String;

    const-string v2, "com.android.contacts.action.PICK_VIP_CANDIDATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 408
    :cond_4
    const v1, -0x77bfffb1

    iput v1, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    .line 409
    iput-boolean v3, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->isPickBlockNumberForDelete:Z

    .line 410
    iput-boolean v4, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mDisplayOnlyPhones:Z

    goto :goto_0
.end method

.method protected countCheckedItem()I
    .locals 6

    .prologue
    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, counts:I
    iget-object v2, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    .line 203
    .local v2, items:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    .line 204
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 205
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 206
    add-int/lit8 v0, v0, 0x1

    .line 204
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    :cond_1
    iget-object v3, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->mCacheBooleanArrayForblock:Landroid/util/SparseBooleanArray;

    .line 211
    .local v3, sItems:Landroid/util/SparseBooleanArray;
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    .line 212
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_3

    .line 213
    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 214
    add-int/lit8 v0, v0, 0x1

    .line 212
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 218
    :cond_3
    return v0
.end method

.method protected doClickCancel()V
    .locals 0

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->finish()V

    .line 390
    return-void
.end method

.method protected doClickOk()V
    .locals 1

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 266
    iget-boolean v0, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->isPickBlockNumberForDelete:Z

    if-eqz v0, :cond_1

    .line 267
    invoke-direct {p0}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->confirmDelete()V

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    invoke-direct {p0}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->doOK()V

    .line 272
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->finish()V

    goto :goto_0
.end method

.method protected doFilter(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "filter"

    .prologue
    const/4 v2, 0x0

    .line 435
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    :goto_0
    return-object v2

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->clearChoices()V

    .line 441
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    .line 443
    .local v8, isEmpty:Z
    const/4 v7, 0x0

    .line 444
    .local v7, filterSelection:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->getContactSelection()Ljava/lang/String;

    move-result-object v3

    .line 445
    .local v3, selection:Ljava/lang/String;
    if-nez v8, :cond_1

    .line 446
    const-string v0, "display_name"

    invoke-static {v0, p1}, Lcom/android/htccontacts/util/ContactsUtils;->getFilterWhereStirng(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 450
    :cond_1
    invoke-virtual {p0, v7, v3}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->getFilterAndCommonWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 451
    invoke-direct {p0}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->prepareQueryUri()Landroid/net/Uri;

    move-result-object v1

    .line 453
    .local v1, queryUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, cursor:Landroid/database/Cursor;
    move-object v2, v6

    .line 455
    goto :goto_0
.end method

.method protected getContactSelection()Ljava/lang/String;
    .locals 3

    .prologue
    .line 460
    sget-object v0, Lcom/htc/provider/HtcContactsContract$Contacts;->EXCLUDE_MY_CONTACT_CARD:Ljava/lang/String;

    .line 461
    .local v0, whereClause:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mDisplayOnlyPhones:Z

    if-eqz v1, :cond_0

    .line 462
    if-nez v0, :cond_1

    .line 463
    const-string v0, "has_phone_number=1"

    .line 468
    :cond_0
    :goto_0
    return-object v0

    .line 465
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "has_phone_number=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected handleButtonFrameView()V
    .locals 4

    .prologue
    .line 223
    const v2, 0x7f070017

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;

    .line 224
    .local v0, buttonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    if-nez v0, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton1View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    .line 228
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton2View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v1

    .line 230
    .local v1, cancelButton:Lcom/htc/widget/HtcFooterButton;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->setVisibility(I)V

    .line 232
    iget-object v2, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    if-eqz v2, :cond_3

    .line 240
    iget-object v2, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    new-instance v3, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$1;

    invoke-direct {v3, p0}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$1;-><init>(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-boolean v2, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsDeleteContacts:Z

    if-eqz v2, :cond_2

    .line 247
    const v2, 0x7f0a013d

    iput v2, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mSaveButtonTextResId:I

    .line 248
    iget-object v2, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    iget v3, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mSaveButtonTextResId:I

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 251
    :cond_2
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->updateSaveButtonState()V

    .line 254
    :cond_3
    if-eqz v1, :cond_0

    .line 255
    new-instance v2, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$2;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$2;-><init>(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected handleSearchBox()V
    .locals 6

    .prologue
    .line 177
    const v1, 0x7f0a01a5

    .line 178
    .local v1, resId:I
    iget v4, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const v5, -0x779fffb3

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const v5, -0x779fffb2

    if-ne v4, v5, :cond_3

    .line 179
    :cond_0
    const v1, 0x7f0a027b

    .line 185
    :cond_1
    :goto_0
    const v4, 0x7f07001e

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/widget/title/SearchHeaderBar;

    .line 187
    .local v2, searchBar:Lcom/android/htccontacts/widget/title/SearchHeaderBar;
    if-eqz v2, :cond_2

    .line 188
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->buildHeaderBar(I)V

    .line 189
    invoke-virtual {v2}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->getHeaderInputBox()Lcom/htc/widget/HeaderBarInput;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HeaderBarInput;->getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    .line 190
    .local v0, editText:Landroid/widget/EditText;
    if-eqz v0, :cond_2

    .line 191
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, text:Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 196
    .end local v0           #editText:Landroid/widget/EditText;
    .end local v3           #text:Ljava/lang/String;
    :cond_2
    return-void

    .line 180
    .end local v2           #searchBar:Lcom/android/htccontacts/widget/title/SearchHeaderBar;
    :cond_3
    iget v4, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const v5, -0x77bfffb1

    if-ne v4, v5, :cond_1

    .line 181
    const v1, 0x7f0a0139

    goto :goto_0
.end method

.method protected obtainAdapter(Landroid/database/Cursor;)Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 485
    new-instance v0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$ContactsItemPickerAdapter;

    const v1, 0x209006c

    invoke-direct {v0, p0, p0, v1, p1}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$ContactsItemPickerAdapter;-><init>(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;Landroid/content/Context;ILandroid/database/Cursor;)V

    return-object v0
.end method

.method protected obtainTextWatcher()Landroid/text/TextWatcher;
    .locals 1

    .prologue
    .line 689
    new-instance v0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$FilterTextWatcher;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$FilterTextWatcher;-><init>(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/android/htccontacts/ContactListSearchPicker;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->mResolver:Landroid/content/ContentResolver;

    .line 114
    new-instance v0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$QueryHandler;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$QueryHandler;-><init>(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;)V

    iput-object v0, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->mQueryHandler:Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$QueryHandler;

    .line 116
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 136
    invoke-super {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->onDestroy()V

    .line 137
    return-void
.end method

.method public onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 10
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 695
    long-to-int v0, p4

    .line 697
    .local v0, _id:I
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    check-cast v6, Landroid/widget/CursorAdapter;

    invoke-virtual {v6}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    .line 698
    .local v3, cursorCurrent:Landroid/database/Cursor;
    if-nez v3, :cond_0

    .line 717
    :goto_0
    return-void

    .line 701
    :cond_0
    invoke-interface {v3, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 702
    iget-object v6, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v6}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getAccountTypeIndex()I

    move-result v5

    .line 703
    .local v5, typeIndex:I
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 704
    .local v1, accountType:Ljava/lang/String;
    iget-boolean v6, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->isPickBlockNumberForDelete:Z

    if-eqz v6, :cond_3

    if-eqz v1, :cond_3

    const-string v6, "block_number"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 705
    iget-object v6, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->mCacheBooleanArrayForblock:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v0, v8}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    .line 706
    .local v2, checked:Z
    iget-object v9, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->mCacheBooleanArrayForblock:Landroid/util/SparseBooleanArray;

    if-nez v2, :cond_2

    move v6, v7

    :goto_1
    invoke-virtual {v9, v0, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 715
    .end local v1           #accountType:Ljava/lang/String;
    .end local v2           #checked:Z
    .end local v5           #typeIndex:I
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->updateSaveButtonState()V

    goto :goto_0

    .restart local v1       #accountType:Ljava/lang/String;
    .restart local v2       #checked:Z
    .restart local v5       #typeIndex:I
    :cond_2
    move v6, v8

    .line 706
    goto :goto_1

    .line 708
    .end local v2           #checked:Z
    :cond_3
    iget-object v6, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v6, p4, p5, v9}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 709
    .restart local v2       #checked:Z
    iget-object v6, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    if-nez v2, :cond_4

    :goto_3
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, p4, p5, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 710
    const-string v6, "com.anddroid.contacts.sim"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 712
    .local v4, isSim:Z
    iget-object v6, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsSimMap:Landroid/util/LongSparseArray;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, p4, p5, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_2

    .end local v4           #isSim:Z
    :cond_4
    move v7, v8

    .line 709
    goto :goto_3
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 128
    invoke-super {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->onPause()V

    .line 130
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 120
    invoke-super {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->onResume()V

    .line 123
    return-void
.end method

.method protected setAllItemChecked(Z)V
    .locals 12
    .parameter "check"

    .prologue
    .line 142
    iget-object v8, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    if-nez v8, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v8, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v8}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 145
    .local v1, cursorCurrent:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 147
    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    .line 148
    .local v6, nInitPosition:I
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 149
    .local v4, nCount:I
    iget-object v8, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v8}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getAccountTypeIndex()I

    move-result v7

    .line 150
    .local v7, typeIndex:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_4

    .line 152
    iget-object v8, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v8, v2, p1}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 153
    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 155
    const-string v8, "_id"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 157
    .local v5, nID:I
    const-string v8, "ext_account_Type"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, accountType:Ljava/lang/String;
    iget-boolean v8, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->isPickBlockNumberForDelete:Z

    if-eqz v8, :cond_3

    if-eqz v0, :cond_3

    const-string v8, "block_number"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 159
    iget-object v8, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->mCacheBooleanArrayForblock:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v5, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 150
    .end local v0           #accountType:Ljava/lang/String;
    .end local v5           #nID:I
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 161
    .restart local v0       #accountType:Ljava/lang/String;
    .restart local v5       #nID:I
    :cond_3
    iget-object v8, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    int-to-long v9, v5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 163
    const-string v8, "com.anddroid.contacts.sim"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 165
    .local v3, isSim:Z
    iget-object v8, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsSimMap:Landroid/util/LongSparseArray;

    int-to-long v9, v5

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_2

    .line 169
    .end local v0           #accountType:Ljava/lang/String;
    .end local v3           #isSim:Z
    .end local v5           #nID:I
    :cond_4
    invoke-interface {v1, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 170
    const/4 v1, 0x0

    .line 171
    iget-object v8, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v8}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    goto :goto_0
.end method

.method protected startQuery()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 424
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->mQueryHandler:Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$QueryHandler;->cancelOperation(I)V

    .line 425
    invoke-direct {p0}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->prepareQueryUri()Landroid/net/Uri;

    move-result-object v3

    .line 426
    .local v3, queryUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->getContactSelection()Ljava/lang/String;

    move-result-object v5

    .line 427
    .local v5, selection:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->mQueryHandler:Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$QueryHandler;

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :cond_0
    return-void
.end method
