.class public Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;
.super Lcom/android/htccontacts/BrowseCallHistoryActivity;
.source "HtcDeleteCallHistoryActivity.java"

# interfaces
.implements Lcom/android/htccontacts/widget/HeaderSelectedControlLayout$IHeaderSelectedControlLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/HtcDeleteCallHistoryActivity$DeleteTask;
    }
.end annotation


# static fields
.field public static final ACTION_DELETE_CALL_HISTORY:Ljava/lang/String; = "com.android.contacts.action.DELETE_CALL_HISTORY"

.field static final DIALOG_PROGRESS:I = 0x457

.field static final ENTER_PASSWORD:I = 0x5

.field private static final MENU_SELECT_ALL:I = 0x1

.field private static final MENU_UN_SELECT_ALL:I = 0x2

.field protected static final MSG_DELETE_CALL_LOG:I = 0x0

.field protected static final MSG_SHOW_DIALOG:I = 0x1

.field protected static final QUERY_TOKEN_LIST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HtcDeleteCallHistoryActivity"


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

.field mUIHandler:Landroid/os/Handler;

.field protected resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;-><init>()V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->DEBUG:Z

    .line 93
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->mCacheBooleanArray:Landroid/util/SparseBooleanArray;

    .line 95
    const v0, 0x7f0a013d

    iput v0, p0, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->mSaveButtonTextResId:I

    .line 379
    new-instance v0, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity$6;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity$6;-><init>(Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->mUIHandler:Landroid/os/Handler;

    .line 406
    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->isDoOK:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->isDoOK:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->doOK()V

    return-void
.end method

.method private confirmDelete()V
    .locals 3

    .prologue
    .line 314
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 316
    .local v0, b:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x7f0a037c

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 317
    const v1, 0x7f0a03c4

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 319
    const v1, 0x7f0a014f

    new-instance v2, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity$3;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity$3;-><init>(Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 337
    const v1, 0x7f0a0152

    new-instance v2, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity$4;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity$4;-><init>(Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 343
    new-instance v1, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity$5;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity$5;-><init>(Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 350
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 351
    return-void
.end method

.method private countCheckedItem()I
    .locals 5

    .prologue
    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, counts:I
    iget-object v2, p0, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->mCacheBooleanArray:Landroid/util/SparseBooleanArray;

    .line 184
    .local v2, items:Landroid/util/SparseBooleanArray;
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 185
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 186
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 187
    add-int/lit8 v0, v0, 0x1

    .line 185
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 190
    :cond_1
    return v0
.end method

.method private doOK()V
    .locals 8

    .prologue
    .line 356
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 359
    .local v1, mOperations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 360
    .local v4, where:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->mCacheBooleanArray:Landroid/util/SparseBooleanArray;

    if-eqz v5, :cond_1

    .line 362
    iget-object v5, p0, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->mCacheBooleanArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 363
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 366
    iget-object v5, p0, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->mCacheBooleanArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 367
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "_id"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 368
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v5, "="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    iget-object v5, p0, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->mCacheBooleanArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 371
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 376
    .end local v0           #i:I
    .end local v3           #size:I
    :cond_1
    new-instance v5, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity$DeleteTask;

    invoke-direct {v5, p0}, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity$DeleteTask;-><init>(Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;)V

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/util/ArrayList;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {v5, v6}, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity$DeleteTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 377
    return-void
.end method

.method private getCurrentCursorCheckedNumber()I
    .locals 5

    .prologue
    .line 245
    const/4 v1, 0x0

    .line 246
    .local v1, count:I
    iget-object v0, p0, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->mCacheBooleanArray:Landroid/util/SparseBooleanArray;

    .line 247
    .local v0, array:Landroid/util/SparseBooleanArray;
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 248
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 249
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 250
    add-int/lit8 v1, v1, 0x1

    .line 248
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 253
    :cond_1
    return v1
.end method

.method private getCurrentCursorCount()I
    .locals 3

    .prologue
    .line 232
    const/4 v2, 0x0

    .line 233
    .local v2, result:I
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/CursorAdapter;

    .line 234
    .local v0, adapter:Landroid/widget/CursorAdapter;
    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 236
    .local v1, cursorCurrent:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 237
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 241
    .end local v1           #cursorCurrent:Landroid/database/Cursor;
    :cond_0
    return v2
.end method

.method private selectAll()V
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->setSameValue(Z)V

    .line 259
    return-void
.end method

.method private setSameValue(Z)V
    .locals 6
    .parameter "bSelect"

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    if-nez v5, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    check-cast v5, Landroid/widget/CursorAdapter;

    invoke-virtual {v5}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 269
    .local v0, cursorCurrent:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 271
    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    .line 272
    .local v4, nInitPosition:I
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 273
    .local v2, nCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 275
    iget-object v5, p0, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5, v1, p1}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 276
    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 278
    const-string v5, "_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 279
    .local v3, nID:I
    iget-object v5, p0, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->mCacheBooleanArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v3, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 273
    .end local v3           #nID:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 282
    :cond_3
    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 283
    const/4 v0, 0x0

    .line 284
    iget-object v5, p0, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    goto :goto_0
.end method

.method private unSelectAll()V
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->setSameValue(Z)V

    .line 263
    return-void
.end method

.method private updateSaveButtonState()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 171
    iget-object v2, p0, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    if-eqz v2, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->countCheckedItem()I

    move-result v0

    .line 173
    .local v0, counts:I
    iget-object v5, p0, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    if-lez v0, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 174
    iget-object v2, p0, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    if-lez v0, :cond_2

    :goto_1
    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setFocusable(Z)V

    .line 175
    iget v2, p0, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->mSaveButtonTextResId:I

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 176
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

    .line 177
    iget-object v2, p0, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 179
    .end local v0           #counts:I
    .end local v1           #text:Ljava/lang/String;
    :cond_0
    return-void

    .restart local v0       #counts:I
    :cond_1
    move v2, v4

    .line 173
    goto :goto_0

    :cond_2
    move v3, v4

    .line 174
    goto :goto_1
.end method


# virtual methods
.method protected doClickCancel()V
    .locals 0

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->finish()V

    .line 446
    return-void
.end method

.method protected doClickOk()V
    .locals 1

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 308
    invoke-direct {p0}, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->confirmDelete()V

    .line 310
    :cond_0
    return-void
.end method

.method protected findViews()V
    .locals 3

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->mListView:Lcom/htc/widget/HtcListView;

    .line 148
    const v2, 0x7f070017

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;

    .line 149
    .local v0, buttonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    if-nez v0, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->setVisibility(I)V

    .line 154
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton1View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    .line 155
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton2View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->mCancelButton:Lcom/htc/widget/HtcFooterButton;

    .line 156
    invoke-direct {p0}, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->updateSaveButtonState()V

    .line 158
    const v2, 0x7f07001e

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/widget/title/SearchHeaderBar;

    .line 159
    .local v1, searchBar:Lcom/android/htccontacts/widget/title/SearchHeaderBar;
    if-eqz v1, :cond_0

    .line 160
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->setVisibility(I)V

    goto :goto_0
.end method

.method protected getCheckArray()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->mCacheBooleanArray:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method protected getQueryUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_PHOTO:Landroid/net/Uri;

    return-object v0
.end method

.method protected initListHeaderView()V
    .locals 2

    .prologue
    .line 166
    new-instance v0, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;-><init>(Lcom/android/htccontacts/widget/HeaderSelectedControlLayout$IHeaderSelectedControlLayout;Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    .line 167
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;)V

    .line 168
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    const v0, 0x7f0a037c

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->setGenericTitleBar(I)V

    .line 107
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->findViews()V

    .line 109
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->setListeners()V

    .line 110
    iget-object v0, p0, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->mListView:Lcom/htc/widget/HtcListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 111
    iget-object v0, p0, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->mListView:Lcom/htc/widget/HtcListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    .line 112
    iget-object v0, p0, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->unregisterForContextMenu(Landroid/view/View;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->resolver:Landroid/content/ContentResolver;

    .line 115
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "id"
    .parameter "args"

    .prologue
    const/4 v3, 0x0

    .line 394
    packed-switch p1, :pswitch_data_0

    .line 403
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 396
    :pswitch_0
    const v2, 0x7f0a0128

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 397
    .local v1, displayStr:Ljava/lang/String;
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 398
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 399
    invoke-virtual {v0, v3}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 400
    invoke-virtual {v0, v3}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0

    .line 394
    :pswitch_data_0
    .packed-switch 0x457
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 141
    invoke-super {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->onDestroy()V

    .line 143
    return-void
.end method

.method public onHeaderViewClicked(Z)V
    .locals 0
    .parameter "IsChecked"

    .prologue
    .line 474
    if-eqz p1, :cond_0

    .line 475
    invoke-direct {p0}, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->selectAll()V

    .line 479
    :goto_0
    invoke-direct {p0}, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->updateSaveButtonState()V

    .line 480
    return-void

    .line 477
    :cond_0
    invoke-direct {p0}, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->unSelectAll()V

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

    .line 452
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcListView;->getHeaderViewsCount()I

    move-result v5

    sub-int v2, p3, v5

    .line 453
    .local v2, cur_pos:I
    if-gez v2, :cond_0

    .line 454
    iget-object v4, p0, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    invoke-virtual {v4, v3}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->onItemClick(Z)V

    .line 464
    :goto_0
    return-void

    .line 458
    :cond_0
    long-to-int v0, p4

    .line 459
    .local v0, _id:I
    iget-object v5, p0, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->mCacheBooleanArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    .line 460
    .local v1, checked:Z
    iget-object v5, p0, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->mCacheBooleanArray:Landroid/util/SparseBooleanArray;

    if-nez v1, :cond_1

    :goto_1
    invoke-virtual {v5, v0, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 461
    invoke-direct {p0}, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->updateSaveButtonState()V

    .line 462
    iget-object v3, p0, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->onItemClick(Z)V

    goto :goto_0

    :cond_1
    move v3, v4

    .line 460
    goto :goto_1
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 135
    invoke-super {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->onPause()V

    .line 137
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->onResume()V

    .line 130
    const/4 v0, 0x1

    invoke-super {p0, v0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->isFromBlockCallDelete(Z)V

    .line 131
    return-void
.end method

.method protected setListeners()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    new-instance v1, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity$1;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity$1;-><init>(Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    iget-object v0, p0, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->mCancelButton:Lcom/htc/widget/HtcFooterButton;

    new-instance v1, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity$2;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity$2;-><init>(Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    return-void
.end method

.method protected setupContentView()V
    .locals 1

    .prologue
    .line 119
    const v0, 0x7f030038

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->setContentView(I)V

    .line 120
    return-void
.end method

.method public updateHeaderCheckedBox()V
    .locals 4

    .prologue
    .line 484
    invoke-direct {p0}, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->getCurrentCursorCount()I

    move-result v0

    .line 485
    .local v0, all:I
    invoke-direct {p0}, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->getCurrentCursorCheckedNumber()I

    move-result v1

    .line 486
    .local v1, checked:I
    iget-object v2, p0, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    if-eqz v2, :cond_0

    .line 487
    iget-object v3, p0, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    if-ne v0, v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->setCheckBox(Z)V

    .line 489
    :cond_0
    return-void

    .line 487
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
