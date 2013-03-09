.class public Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;
.super Lcom/android/htccontacts/BrowseCallHistoryActivity;
.source "HtcDeleteBlockCallActivity.java"

# interfaces
.implements Lcom/android/htccontacts/widget/HeaderSelectedControlLayout$IHeaderSelectedControlLayout;


# static fields
.field public static final ACTION_DELETE_BLOCK_CALL:Ljava/lang/String; = "com.android.contacts.action.DELETE_BLOCK_CALL"

.field static final ENTER_PASSWORD:I = 0x5

.field private static final MENU_SELECT_ALL:I = 0x1

.field private static final MENU_UN_SELECT_ALL:I = 0x2

.field protected static final QUERY_TOKEN_LIST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HtcDeleteBlacklistActivity"


# instance fields
.field private final DEBUG:Z

.field private isDoOK:Z

.field private mCacheBooleanArray:Landroid/util/SparseBooleanArray;

.field protected mCancelButton:Lcom/htc/widget/HtcFooterButton;

.field protected mExcludeIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

.field protected mIncludeIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mIntentAction:Ljava/lang/String;

.field protected mListView:Lcom/htc/widget/HtcListView;

.field protected mResolver:Landroid/content/ContentResolver;

.field protected mSaveButton:Lcom/htc/widget/HtcFooterButton;

.field private mSaveButtonTextResId:I

.field protected mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;-><init>()V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->DEBUG:Z

    .line 91
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->mCacheBooleanArray:Landroid/util/SparseBooleanArray;

    .line 93
    const v0, 0x7f0a013d

    iput v0, p0, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->mSaveButtonTextResId:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->isDoOK:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->isDoOK:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->doOK()V

    return-void
.end method

.method private confirmDelete()V
    .locals 3

    .prologue
    .line 317
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 319
    .local v0, b:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x7f0a02f8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 320
    const v1, 0x7f0a0385

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 322
    const v1, 0x7f0a014f

    new-instance v2, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity$3;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity$3;-><init>(Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 342
    const v1, 0x7f0a0152

    new-instance v2, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity$4;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity$4;-><init>(Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 348
    new-instance v1, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity$5;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity$5;-><init>(Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 355
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 356
    return-void
.end method

.method private countCheckedItem()I
    .locals 5

    .prologue
    .line 179
    const/4 v0, 0x0

    .line 180
    .local v0, counts:I
    iget-object v2, p0, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->mCacheBooleanArray:Landroid/util/SparseBooleanArray;

    .line 181
    .local v2, items:Landroid/util/SparseBooleanArray;
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 182
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 183
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 184
    add-int/lit8 v0, v0, 0x1

    .line 182
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    :cond_1
    return v0
.end method

.method private doOK()V
    .locals 5

    .prologue
    .line 361
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 363
    .local v2, intent:Landroid/content/Intent;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 365
    .local v1, idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->mCacheBooleanArray:Landroid/util/SparseBooleanArray;

    if-eqz v4, :cond_1

    .line 367
    iget-object v4, p0, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->mCacheBooleanArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 368
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 370
    iget-object v4, p0, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->mCacheBooleanArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 371
    iget-object v4, p0, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->mCacheBooleanArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 375
    .end local v0           #i:I
    .end local v3           #size:I
    :cond_1
    const-string v4, "SELECTED_ID"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 376
    iget-object v4, p0, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->mIntentAction:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v2}, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->setResult(ILandroid/content/Intent;)V

    .line 379
    return-void
.end method

.method private getCurrentCursorCheckedNumber()I
    .locals 5

    .prologue
    .line 247
    const/4 v1, 0x0

    .line 248
    .local v1, count:I
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->mCacheBooleanArray:Landroid/util/SparseBooleanArray;

    .line 249
    .local v0, array:Landroid/util/SparseBooleanArray;
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 250
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 251
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 252
    add-int/lit8 v1, v1, 0x1

    .line 250
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 255
    :cond_1
    return v1
.end method

.method private getCurrentCursorCount()I
    .locals 3

    .prologue
    .line 234
    const/4 v2, 0x0

    .line 235
    .local v2, result:I
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/CursorAdapter;

    .line 236
    .local v0, adapter:Landroid/widget/CursorAdapter;
    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 238
    .local v1, cursorCurrent:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 239
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 243
    .end local v1           #cursorCurrent:Landroid/database/Cursor;
    :cond_0
    return v2
.end method

.method private selectAll()V
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->setSameValue(Z)V

    .line 261
    return-void
.end method

.method private setSameValue(Z)V
    .locals 6
    .parameter "bSelect"

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    if-nez v5, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    check-cast v5, Landroid/widget/CursorAdapter;

    invoke-virtual {v5}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 271
    .local v0, cursorCurrent:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 273
    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    .line 274
    .local v4, nInitPosition:I
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 275
    .local v2, nCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 277
    iget-object v5, p0, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5, v1, p1}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 278
    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 280
    const-string v5, "_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 281
    .local v3, nID:I
    iget-object v5, p0, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->mCacheBooleanArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v3, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 275
    .end local v3           #nID:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 284
    :cond_3
    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 285
    const/4 v0, 0x0

    .line 286
    iget-object v5, p0, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    goto :goto_0
.end method

.method private unSelectAll()V
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->setSameValue(Z)V

    .line 265
    return-void
.end method

.method private updateSaveButtonState()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 168
    iget-object v2, p0, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    if-eqz v2, :cond_0

    .line 169
    invoke-direct {p0}, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->countCheckedItem()I

    move-result v0

    .line 170
    .local v0, counts:I
    iget-object v5, p0, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    if-lez v0, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 171
    iget-object v2, p0, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    if-lez v0, :cond_2

    :goto_1
    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setFocusable(Z)V

    .line 172
    iget v2, p0, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->mSaveButtonTextResId:I

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, text:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 174
    iget-object v2, p0, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 176
    .end local v0           #counts:I
    .end local v1           #text:Ljava/lang/String;
    :cond_0
    return-void

    .restart local v0       #counts:I
    :cond_1
    move v2, v4

    .line 170
    goto :goto_0

    :cond_2
    move v3, v4

    .line 171
    goto :goto_1
.end method


# virtual methods
.method protected doClickCancel()V
    .locals 0

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->finish()V

    .line 386
    return-void
.end method

.method protected doClickOk()V
    .locals 1

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    invoke-direct {p0}, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->confirmDelete()V

    .line 312
    :cond_0
    return-void
.end method

.method protected findViews()V
    .locals 3

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->mListView:Lcom/htc/widget/HtcListView;

    .line 145
    const v2, 0x7f070017

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;

    .line 146
    .local v0, buttonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    if-nez v0, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->setVisibility(I)V

    .line 151
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton1View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    .line 152
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton2View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->mCancelButton:Lcom/htc/widget/HtcFooterButton;

    .line 153
    invoke-direct {p0}, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->updateSaveButtonState()V

    .line 155
    const v2, 0x7f07001e

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/widget/title/SearchHeaderBar;

    .line 156
    .local v1, searchBar:Lcom/android/htccontacts/widget/title/SearchHeaderBar;
    if-eqz v1, :cond_0

    .line 157
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->setVisibility(I)V

    goto :goto_0
.end method

.method protected getCheckArray()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->mCacheBooleanArray:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method protected getQueryUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/htc/provider/HtcContactsContract$BALCKLIST;->BLOCK_CALL_LOG_CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method protected initListHeaderView()V
    .locals 2

    .prologue
    .line 163
    new-instance v0, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;-><init>(Lcom/android/htccontacts/widget/HeaderSelectedControlLayout$IHeaderSelectedControlLayout;Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    .line 164
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;)V

    .line 165
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const v0, 0x7f0a0383

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->setGenericTitleBar(I)V

    .line 101
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->findViews()V

    .line 103
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->setListeners()V

    .line 104
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->mListView:Lcom/htc/widget/HtcListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 105
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->mListView:Lcom/htc/widget/HtcListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    .line 106
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->unregisterForContextMenu(Landroid/view/View;)V

    .line 110
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 196
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 138
    invoke-super {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->onDestroy()V

    .line 140
    return-void
.end method

.method public onHeaderViewClicked(Z)V
    .locals 0
    .parameter "IsChecked"

    .prologue
    .line 413
    if-eqz p1, :cond_0

    .line 414
    invoke-direct {p0}, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->selectAll()V

    .line 418
    :goto_0
    invoke-direct {p0}, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->updateSaveButtonState()V

    .line 419
    return-void

    .line 416
    :cond_0
    invoke-direct {p0}, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->unSelectAll()V

    goto :goto_0
.end method

.method public onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 6
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 391
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcListView;->getHeaderViewsCount()I

    move-result v5

    sub-int v2, p3, v5

    .line 392
    .local v2, cur_pos:I
    if-gez v2, :cond_0

    .line 393
    iget-object v4, p0, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    invoke-virtual {v4, v3}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->onItemClick(Z)V

    .line 403
    :goto_0
    return-void

    .line 397
    :cond_0
    long-to-int v0, p4

    .line 398
    .local v0, _id:I
    iget-object v5, p0, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->mCacheBooleanArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    .line 399
    .local v1, checked:Z
    iget-object v5, p0, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->mCacheBooleanArray:Landroid/util/SparseBooleanArray;

    if-nez v1, :cond_1

    :goto_1
    invoke-virtual {v5, v0, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 401
    invoke-direct {p0}, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->updateSaveButtonState()V

    .line 402
    iget-object v3, p0, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->onItemClick(Z)V

    goto :goto_0

    :cond_1
    move v3, v4

    .line 399
    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 230
    const/4 v0, 0x1

    return v0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 132
    invoke-super {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->onPause()V

    .line 134
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 209
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->onResume()V

    .line 125
    const/4 v0, 0x1

    invoke-super {p0, v0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->isFromBlockCallDelete(Z)V

    .line 126
    invoke-static {p0}, Lcom/android/htccontacts/blacklist/HtcBlackListActivity;->checkNeedProtection(Landroid/content/Context;)V

    .line 128
    return-void
.end method

.method protected setListeners()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    new-instance v1, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity$1;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity$1;-><init>(Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->mCancelButton:Lcom/htc/widget/HtcFooterButton;

    new-instance v1, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity$2;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity$2;-><init>(Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    return-void
.end method

.method protected setupContentView()V
    .locals 1

    .prologue
    .line 114
    const v0, 0x7f030038

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->setContentView(I)V

    .line 115
    return-void
.end method

.method public updateHeaderCheckedBox()V
    .locals 4

    .prologue
    .line 423
    invoke-direct {p0}, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->getCurrentCursorCount()I

    move-result v0

    .line 424
    .local v0, all:I
    invoke-direct {p0}, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->getCurrentCursorCheckedNumber()I

    move-result v1

    .line 425
    .local v1, checked:I
    iget-object v2, p0, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    if-eqz v2, :cond_0

    .line 426
    iget-object v3, p0, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    if-ne v0, v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->setCheckBox(Z)V

    .line 428
    :cond_0
    return-void

    .line 426
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
