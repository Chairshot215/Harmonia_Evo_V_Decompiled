.class public Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;
.super Lcom/android/htccontacts/ContactListSearchPicker;
.source "HtcGroupBlackListPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker$FilterTextWatcher;,
        Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker$BlackContactsItemPickerAdapter;,
        Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker$BlackQueryHandler;
    }
.end annotation


# static fields
.field public static final ACTION_DELETE_BLACKLIST:Ljava/lang/String; = "com.android.contacts.action.DELETE_BLACKLIST"

.field public static final ACTION_PICK_BLACKLIST:Ljava/lang/String; = "com.android.contacts.action.PICK_BLACKLIST_CANDIDATE"

.field protected static final DEBUG:Z = false

.field public static final EXTRA_BLOCK_SELECTED_ID:Ljava/lang/String; = "SELECTED_BLOCKED_ID"

.field public static final EXTRA_DELETE_CONTACT:Ljava/lang/String; = "DELETE_CONTACT"

.field public static final EXTRA_OUT_SELECTED_ID:Ljava/lang/String; = "SELECTED_ID"

.field protected static final MODE_DELETE_BLACKLIST:I = -0x779fffb5

.field protected static final MODE_PICK_BLACKLIST:I = -0x77bfffb4

.field protected static final QUERY_TOKEN_LIST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HtcGroupBlackListPicker"

.field private static time:J


# instance fields
.field private isDoOK:Z

.field private isPickBlockNumberForDelete:Z

.field private mCacheBooleanArrayForblock:Landroid/util/SparseBooleanArray;

.field private mFilterString:Ljava/lang/String;

.field protected mIntentAction:Ljava/lang/String;

.field protected mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

.field protected mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 98
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->time:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/htccontacts/ContactListSearchPicker;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->isPickBlockNumberForDelete:Z

    .line 90
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->mCacheBooleanArrayForblock:Landroid/util/SparseBooleanArray;

    .line 660
    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->isDoOK:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->isDoOK:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->doOK()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->isPickBlockNumberForDelete:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;)Landroid/util/SparseBooleanArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->mCacheBooleanArrayForblock:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;)Landroid/util/LongSparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->mFilterString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->mFilterString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;)Landroid/text/style/BackgroundColorSpan;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->BACKGROUND_SPAN:Landroid/text/style/BackgroundColorSpan;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;)Landroid/text/style/ForegroundColorSpan;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker;->FOREGROUND_SPAN:Landroid/text/style/ForegroundColorSpan;

    return-object v0
.end method

.method private confirmDelete()V
    .locals 3

    .prologue
    .line 298
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 300
    .local v0, b:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x7f0a02f8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 301
    const v1, 0x7f0a0302

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 303
    const v1, 0x7f0a014f

    new-instance v2, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker$3;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker$3;-><init>(Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 323
    const v1, 0x7f0a0152

    new-instance v2, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker$4;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker$4;-><init>(Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 329
    new-instance v1, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker$5;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker$5;-><init>(Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 336
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 337
    return-void
.end method

.method private doOK()V
    .locals 12

    .prologue
    .line 342
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 344
    .local v6, idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v2, 0x0

    .line 346
    .local v2, cursor:Landroid/database/Cursor;
    iget-object v10, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    if-eqz v10, :cond_0

    .line 347
    iget-object v10, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v10}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 349
    :cond_0
    const/4 v7, 0x0

    .line 351
    .local v7, isSimArray:[Z
    iget-object v10, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    if-eqz v10, :cond_2

    .line 352
    iget-object v10, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    invoke-virtual {v10}, Landroid/util/LongSparseArray;->size()I

    move-result v9

    .line 354
    .local v9, size:I
    new-array v7, v9, [Z

    .line 356
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v9, :cond_2

    .line 357
    iget-object v10, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    invoke-virtual {v10, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 358
    iget-object v10, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    invoke-virtual {v10, v3}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    .line 359
    .local v4, id:J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    if-eqz v7, :cond_1

    .line 362
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v1, v10, -0x1

    .line 363
    .local v1, currentIdx:I
    iget-object v10, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsSimMap:Landroid/util/LongSparseArray;

    invoke-virtual {v10, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    aput-boolean v10, v7, v1

    .line 356
    .end local v1           #currentIdx:I
    .end local v4           #id:J
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 370
    .end local v3           #i:I
    .end local v9           #size:I
    :cond_2
    if-nez v2, :cond_3

    .line 402
    :goto_1
    return-void

    .line 374
    :cond_3
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 375
    .local v8, resultIntent:Landroid/content/Intent;
    const-string v10, "SELECTED_ID"

    invoke-virtual {p0, v6}, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->transferLongListToIntegerList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 381
    if-eqz v7, :cond_4

    .line 382
    const-string v10, "SELECT_CONTACT_IS_SIM"

    invoke-virtual {v8, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;

    .line 386
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 387
    .local v0, blockList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v10, p0, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->mCacheBooleanArrayForblock:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10}, Landroid/util/SparseBooleanArray;->size()I

    move-result v9

    .line 388
    .restart local v9       #size:I
    iget-boolean v10, p0, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->isPickBlockNumberForDelete:Z

    if-eqz v10, :cond_7

    if-lez v9, :cond_7

    .line 389
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    if-ge v3, v9, :cond_6

    .line 391
    iget-object v10, p0, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->mCacheBooleanArrayForblock:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 392
    iget-object v10, p0, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->mCacheBooleanArrayForblock:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 394
    :cond_6
    const-string v10, "SELECTED_BLOCKED_ID"

    invoke-virtual {v8, v10, v0}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 397
    .end local v3           #i:I
    :cond_7
    iget-object v10, p0, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->mIntentAction:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    const/4 v10, -0x1

    invoke-virtual {p0, v10, v8}, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->setResult(ILandroid/content/Intent;)V

    goto :goto_1
.end method


# virtual methods
.method protected checkMode()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 410
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 411
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->mIntentAction:Ljava/lang/String;

    .line 413
    const-string v1, "DELETE_CONTACT"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsDeleteContacts:Z

    .line 415
    iget-object v1, p0, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->mIntentAction:Ljava/lang/String;

    const-string v2, "com.android.contacts.action.DELETE_BLACKLIST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsDeleteContacts:Z

    if-eqz v1, :cond_2

    .line 416
    const v1, -0x779fffb5

    iput v1, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    .line 417
    iput-boolean v4, p0, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->isPickBlockNumberForDelete:Z

    .line 425
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const/high16 v2, 0x20

    and-int/2addr v1, v2

    if-lez v1, :cond_1

    .line 426
    iput-boolean v4, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsDeleteContacts:Z

    .line 429
    :cond_1
    return v3

    .line 419
    :cond_2
    iget-object v1, p0, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->mIntentAction:Ljava/lang/String;

    const-string v2, "com.android.contacts.action.PICK_BLACKLIST_CANDIDATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    const v1, -0x77bfffb4

    iput v1, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    .line 421
    iput-boolean v3, p0, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->isPickBlockNumberForDelete:Z

    .line 422
    iput-boolean v4, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mDisplayOnlyPhones:Z

    goto :goto_0
.end method

.method protected countCheckedItem()I
    .locals 6

    .prologue
    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, counts:I
    iget-object v2, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    .line 214
    .local v2, items:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    .line 215
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 216
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 217
    add-int/lit8 v0, v0, 0x1

    .line 215
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 221
    :cond_1
    iget-object v3, p0, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->mCacheBooleanArrayForblock:Landroid/util/SparseBooleanArray;

    .line 222
    .local v3, sItems:Landroid/util/SparseBooleanArray;
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    .line 223
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_3

    .line 224
    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 225
    add-int/lit8 v0, v0, 0x1

    .line 223
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 229
    :cond_3
    return v0
.end method

.method protected doClickCancel()V
    .locals 0

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->finish()V

    .line 406
    return-void
.end method

.method protected doClickOk()V
    .locals 1

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    iget-boolean v0, p0, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->isPickBlockNumberForDelete:Z

    if-eqz v0, :cond_1

    .line 284
    invoke-direct {p0}, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->confirmDelete()V

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    invoke-direct {p0}, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->doOK()V

    .line 289
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->finish()V

    goto :goto_0
.end method

.method protected doFilter(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "filter"

    .prologue
    const/4 v2, 0x0

    .line 447
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    :goto_0
    return-object v2

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->clearChoices()V

    .line 453
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->getContactSelection()Ljava/lang/String;

    move-result-object v3

    .line 455
    .local v3, selection:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->getDoFilterUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 458
    .local v1, queryUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, cursor:Landroid/database/Cursor;
    move-object v2, v6

    .line 460
    goto :goto_0
.end method

.method protected getContactSelection()Ljava/lang/String;
    .locals 3

    .prologue
    .line 465
    sget-object v0, Lcom/htc/provider/HtcContactsContract$Contacts;->EXCLUDE_MY_CONTACT_CARD:Ljava/lang/String;

    .line 466
    .local v0, whereClause:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mDisplayOnlyPhones:Z

    if-eqz v1, :cond_0

    .line 467
    if-nez v0, :cond_1

    .line 468
    const-string v0, "has_phone_number=1"

    .line 473
    :cond_0
    :goto_0
    return-object v0

    .line 470
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

.method protected getCurrentCursorCheckedNumber()I
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 167
    const/4 v2, 0x0

    .line 168
    .local v2, count:I
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v5

    .line 169
    .local v5, listView:Lcom/htc/widget/HtcListView;
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 171
    .local v0, adapter:Landroid/widget/Adapter;
    if-eqz v5, :cond_3

    .line 173
    if-eqz v0, :cond_3

    .line 174
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v7

    .line 175
    .local v7, size:I
    const/4 v6, 0x0

    .local v6, pos:I
    :goto_0
    if-ge v6, v7, :cond_3

    .line 176
    invoke-interface {v0, v6}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v3

    .line 177
    .local v3, id:J
    iget-object v8, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v8, v3, v4, v10}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->mCacheBooleanArrayForblock:Landroid/util/SparseBooleanArray;

    long-to-int v10, v3

    invoke-virtual {v8, v10, v9}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 178
    .local v1, checked:Z
    :goto_1
    if-eqz v1, :cond_1

    .line 179
    add-int/lit8 v2, v2, 0x1

    .line 175
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v1           #checked:Z
    :cond_2
    move v1, v9

    .line 177
    goto :goto_1

    .line 184
    .end local v3           #id:J
    .end local v6           #pos:I
    .end local v7           #size:I
    :cond_3
    return v2
.end method

.method protected getUriToQuery()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 478
    const/4 v0, 0x0

    .line 479
    .local v0, queryUri:Landroid/net/Uri;
    iget v1, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const v2, -0x779fffb5

    if-ne v1, v2, :cond_1

    .line 480
    sget-object v0, Lcom/htc/provider/HtcContactsContract$BALCKLIST;->BLACKLIST_CONTENT_URI:Landroid/net/Uri;

    .line 483
    :cond_0
    :goto_0
    return-object v0

    .line 481
    :cond_1
    iget v1, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const v2, -0x77bfffb4

    if-ne v1, v2, :cond_0

    .line 482
    sget-object v0, Lcom/htc/provider/HtcContactsContract$BALCKLIST;->BLACKLIST_CANDIDATE_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method protected handleButtonFrameView()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 234
    const v3, 0x7f070017

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;

    .line 235
    .local v0, buttonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    if-nez v0, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton1View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v3

    iput-object v3, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    .line 239
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton2View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v1

    .line 241
    .local v1, cancelButton:Lcom/htc/widget/HtcFooterButton;
    invoke-virtual {v0, v7}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->setVisibility(I)V

    .line 243
    iget-object v3, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    if-eqz v3, :cond_3

    .line 251
    iget-object v3, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    new-instance v4, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker$1;

    invoke-direct {v4, p0}, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker$1;-><init>(Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    iget-boolean v3, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsDeleteContacts:Z

    if-eqz v3, :cond_2

    .line 258
    const v3, 0x7f0a013d

    iput v3, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mSaveButtonTextResId:I

    .line 259
    iget-object v3, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    iget v4, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mSaveButtonTextResId:I

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 260
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 261
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "common_icon_delete_on"

    const-string v5, "drawable"

    const-string v6, "com.htc"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 263
    .local v2, mButtonDeleteRes:I
    iget-object v3, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v3, v7, v2, v7, v7}, Lcom/htc/widget/HtcFooterButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 268
    .end local v2           #mButtonDeleteRes:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->updateSaveButtonState()V

    .line 271
    :cond_3
    if-eqz v1, :cond_0

    .line 272
    new-instance v3, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker$2;

    invoke-direct {v3, p0}, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker$2;-><init>(Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;)V

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected handleSearchBox()V
    .locals 6

    .prologue
    .line 189
    const v1, 0x7f0a01a5

    .line 190
    .local v1, resId:I
    iget v4, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const v5, -0x779fffb5

    if-ne v4, v5, :cond_2

    .line 191
    const v1, 0x7f0a027b

    .line 196
    :cond_0
    :goto_0
    const v4, 0x7f07001e

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/widget/title/SearchHeaderBar;

    .line 198
    .local v2, searchBar:Lcom/android/htccontacts/widget/title/SearchHeaderBar;
    if-eqz v2, :cond_1

    .line 199
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->buildHeaderBar(I)V

    .line 200
    invoke-virtual {v2}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->getHeaderInputBox()Lcom/htc/widget/HeaderBarInput;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HeaderBarInput;->getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    .line 201
    .local v0, editText:Landroid/widget/EditText;
    if-eqz v0, :cond_1

    .line 202
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, text:Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 207
    .end local v0           #editText:Landroid/widget/EditText;
    .end local v3           #text:Ljava/lang/String;
    :cond_1
    return-void

    .line 192
    .end local v2           #searchBar:Lcom/android/htccontacts/widget/title/SearchHeaderBar;
    :cond_2
    iget v4, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const v5, -0x77bfffb4

    if-ne v4, v5, :cond_0

    .line 193
    const v1, 0x7f0a0139

    goto :goto_0
.end method

.method protected obtainAdapter(Landroid/database/Cursor;)Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 489
    new-instance v0, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker$BlackContactsItemPickerAdapter;

    const v1, 0x209006c

    invoke-direct {v0, p0, p0, v1, p1}, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker$BlackContactsItemPickerAdapter;-><init>(Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;Landroid/content/Context;ILandroid/database/Cursor;)V

    return-object v0
.end method

.method protected obtainTextWatcher()Landroid/text/TextWatcher;
    .locals 1

    .prologue
    .line 689
    new-instance v0, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker$FilterTextWatcher;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker$FilterTextWatcher;-><init>(Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/android/htccontacts/ContactListSearchPicker;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->mResolver:Landroid/content/ContentResolver;

    .line 105
    new-instance v0, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker$BlackQueryHandler;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker$BlackQueryHandler;-><init>(Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;)V

    iput-object v0, p0, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    .line 107
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 127
    invoke-super {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->onDestroy()V

    .line 128
    return-void
.end method

.method public onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 10
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 695
    long-to-int v0, p4

    .line 697
    .local v0, _id:I
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/widget/HtcListView;->getHeaderViewsCount()I

    move-result v8

    sub-int v3, p3, v8

    .line 698
    .local v3, cur_pos:I
    if-gez v3, :cond_1

    .line 699
    iget-object v8, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->onItemClick(Z)V

    .line 726
    :cond_0
    :goto_0
    return-void

    .line 703
    :cond_1
    invoke-virtual {p1}, Lcom/htc/widget/HtcListView;->getHeaderViewsCount()I

    move-result v8

    sub-int v6, p3, v8

    .line 706
    .local v6, pos:I
    iget-object v8, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v8, v6}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/Cursor;

    .line 707
    .local v4, cursorCurrent:Landroid/database/Cursor;
    if-eqz v4, :cond_0

    .line 710
    invoke-interface {v4, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 711
    iget-object v8, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v8}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getAccountTypeIndex()I

    move-result v7

    .line 712
    .local v7, typeIndex:I
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 713
    .local v1, accountType:Ljava/lang/String;
    iget-boolean v8, p0, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->isPickBlockNumberForDelete:Z

    if-eqz v8, :cond_4

    if-eqz v1, :cond_4

    const-string v8, "block_number"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 714
    iget-object v8, p0, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->mCacheBooleanArrayForblock:Landroid/util/SparseBooleanArray;

    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    .line 715
    .local v2, checked:Z
    iget-object v9, p0, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->mCacheBooleanArrayForblock:Landroid/util/SparseBooleanArray;

    if-nez v2, :cond_3

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v9, v0, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 724
    .end local v1           #accountType:Ljava/lang/String;
    .end local v2           #checked:Z
    .end local v7           #typeIndex:I
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->updateSaveButtonState()V

    .line 725
    iget-object v8, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->onItemClick(Z)V

    goto :goto_0

    .line 715
    .restart local v1       #accountType:Ljava/lang/String;
    .restart local v2       #checked:Z
    .restart local v7       #typeIndex:I
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 717
    .end local v2           #checked:Z
    :cond_4
    iget-object v8, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, p4, p5, v9}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 718
    .restart local v2       #checked:Z
    iget-object v9, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    if-nez v2, :cond_5

    const/4 v8, 0x1

    :goto_3
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v9, p4, p5, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 719
    const-string v8, "com.anddroid.contacts.sim"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 721
    .local v5, isSim:Z
    iget-object v8, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsSimMap:Landroid/util/LongSparseArray;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, p4, p5, v9}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_2

    .line 718
    .end local v5           #isSim:Z
    :cond_5
    const/4 v8, 0x0

    goto :goto_3
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 119
    invoke-super {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->onPause()V

    .line 121
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 111
    invoke-super {p0}, Lcom/android/htccontacts/ContactListSearchPicker;->onResume()V

    .line 112
    invoke-static {p0}, Lcom/android/htccontacts/blacklist/HtcBlackListActivity;->checkNeedProtection(Landroid/content/Context;)V

    .line 114
    return-void
.end method

.method protected setAllItemChecked(Z)V
    .locals 12
    .parameter "check"

    .prologue
    .line 133
    iget-object v8, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    if-nez v8, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-object v8, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v8}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 136
    .local v1, cursorCurrent:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 138
    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    .line 139
    .local v6, nInitPosition:I
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 140
    .local v4, nCount:I
    iget-object v8, p0, Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v8}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getAccountTypeIndex()I

    move-result v7

    .line 141
    .local v7, typeIndex:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_4

    .line 143
    iget-object v8, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v8, v2, p1}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 144
    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 146
    const-string v8, "_id"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 148
    .local v5, nID:I
    const-string v8, "ext_account_Type"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, accountType:Ljava/lang/String;
    iget-boolean v8, p0, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->isPickBlockNumberForDelete:Z

    if-eqz v8, :cond_3

    if-eqz v0, :cond_3

    const-string v8, "block_number"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 150
    iget-object v8, p0, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->mCacheBooleanArrayForblock:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v5, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 141
    .end local v0           #accountType:Ljava/lang/String;
    .end local v5           #nID:I
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 152
    .restart local v0       #accountType:Ljava/lang/String;
    .restart local v5       #nID:I
    :cond_3
    iget-object v8, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;

    int-to-long v9, v5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 154
    const-string v8, "com.anddroid.contacts.sim"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 156
    .local v3, isSim:Z
    iget-object v8, p0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsSimMap:Landroid/util/LongSparseArray;

    int-to-long v9, v5

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_2

    .line 160
    .end local v0           #accountType:Ljava/lang/String;
    .end local v3           #isSim:Z
    .end local v5           #nID:I
    :cond_4
    invoke-interface {v1, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 161
    const/4 v1, 0x0

    .line 162
    iget-object v8, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v8}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    goto :goto_0
.end method

.method protected startQuery()V
    .locals 8

    .prologue
    const/16 v1, 0x3f2

    const/4 v2, 0x0

    .line 436
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->cancelOperation(I)V

    .line 437
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->getUriToQuery()Landroid/net/Uri;

    move-result-object v3

    .line 438
    .local v3, queryUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->getContactSelection()Ljava/lang/String;

    move-result-object v5

    .line 439
    .local v5, selection:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 441
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->mQueryHandler:Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    :cond_0
    return-void
.end method
