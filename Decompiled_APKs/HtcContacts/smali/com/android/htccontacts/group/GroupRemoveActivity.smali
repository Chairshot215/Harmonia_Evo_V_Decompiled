.class public Lcom/android/htccontacts/group/GroupRemoveActivity;
.super Lcom/android/htccontacts/app/BaseListActivity;
.source "GroupRemoveActivity.java"

# interfaces
.implements Lcom/android/htccontacts/widget/HeaderSelectedControlLayout$IHeaderSelectedControlLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemAdapter;,
        Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemCache;,
        Lcom/android/htccontacts/group/GroupRemoveActivity$QueryHandler;
    }
.end annotation


# static fields
.field protected static final DELETE_TOKEN_1:I = 0x1

.field protected static final DELETE_TOKEN_2:I = 0x2

.field protected static final DIALOG_PROGRESS:I = 0xa

.field protected static final MSG_FINISH_SELF:I = 0x101

.field protected static final QUERY_TOKEN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GroupRemoveActivity"


# instance fields
.field protected isDeleteToken1Return:Z

.field protected isDeleteToken2Return:Z

.field protected isDirty:Z

.field private mCacheBooleanArray:Landroid/util/SparseBooleanArray;

.field protected mCancelButton:Lcom/htc/widget/HtcFooterButton;

.field protected mCursor:Landroid/database/Cursor;

.field protected mCursorAdapter:Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemAdapter;

.field protected mGroupIDIdx:I

.field protected mGroupMemberCountIdx:I

.field protected mGroupNameIdx:I

.field protected mGroupPhotoIdx:I

.field protected mGroupSyncIDIdx:I

.field private mHandler:Landroid/os/Handler;

.field private mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

.field protected mItemMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mListView:Lcom/htc/widget/HtcListView;

.field protected mQueryHandler:Lcom/android/htccontacts/group/GroupRemoveActivity$QueryHandler;

.field protected mResolver:Landroid/content/ContentResolver;

.field protected mSaveButton:Lcom/htc/widget/HtcFooterButton;

.field private mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseListActivity;-><init>()V

    .line 90
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mCacheBooleanArray:Landroid/util/SparseBooleanArray;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mItemMap:Ljava/util/HashMap;

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->isDirty:Z

    .line 93
    new-instance v0, Lcom/android/htccontacts/group/GroupRemoveActivity$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/group/GroupRemoveActivity$1;-><init>(Lcom/android/htccontacts/group/GroupRemoveActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mHandler:Landroid/os/Handler;

    .line 502
    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/group/GroupRemoveActivity;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/htccontacts/group/GroupRemoveActivity;->setCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/htccontacts/group/GroupRemoveActivity;)Lcom/android/htccontacts/BackgroundWorkerHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/htccontacts/group/GroupRemoveActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/htccontacts/group/GroupRemoveActivity;)Landroid/util/SparseBooleanArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mCacheBooleanArray:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method private getCurrentCursorCount()I
    .locals 3

    .prologue
    .line 585
    const/4 v1, 0x0

    .line 586
    .local v1, result:I
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mCursorAdapter:Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemAdapter;

    if-eqz v2, :cond_0

    .line 587
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mCursorAdapter:Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemAdapter;

    invoke-virtual {v2}, Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 588
    .local v0, cursorCurrent:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 589
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 593
    .end local v0           #cursorCurrent:Landroid/database/Cursor;
    :cond_0
    return v1
.end method

.method private static final getExcludeDefaultGroupSelection()Ljava/lang/String;
    .locals 3

    .prologue
    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ( title  <> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Favorite_8656150684447252476_6727701920173350445"

    invoke-static {v2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  <> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "VIP"

    invoke-static {v2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  <> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Family"

    invoke-static {v2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  <> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Friends"

    invoke-static {v2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  <> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Coworkers"

    invoke-static {v2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  <> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Frequent Contacts"

    invoke-static {v2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, excluding:Ljava/lang/String;
    return-object v0
.end method

.method private initListHeaderView()V
    .locals 2

    .prologue
    .line 210
    new-instance v0, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;-><init>(Lcom/android/htccontacts/widget/HeaderSelectedControlLayout$IHeaderSelectedControlLayout;Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    .line 211
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupRemoveActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;)V

    .line 212
    return-void
.end method

.method private setCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 491
    :cond_0
    iput-object p1, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mCursor:Landroid/database/Cursor;

    .line 492
    return-void
.end method

.method private updateSaveButtonState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 639
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupRemoveActivity;->getCheckedNumber()I

    move-result v0

    .line 640
    .local v0, selectionCount:I
    if-lez v0, :cond_0

    .line 641
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 642
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcFooterButton;->setFocusable(Z)V

    .line 647
    :goto_0
    return-void

    .line 644
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 645
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setFocusable(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected confirmUpdate()V
    .locals 3

    .prologue
    .line 215
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 217
    .local v0, b:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x7f0a0239

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 218
    const v1, 0x7f0a023a

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 220
    const v1, 0x7f0a014f

    new-instance v2, Lcom/android/htccontacts/group/GroupRemoveActivity$4;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/group/GroupRemoveActivity$4;-><init>(Lcom/android/htccontacts/group/GroupRemoveActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 226
    const v1, 0x7f0a0152

    new-instance v2, Lcom/android/htccontacts/group/GroupRemoveActivity$5;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/group/GroupRemoveActivity$5;-><init>(Lcom/android/htccontacts/group/GroupRemoveActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 231
    new-instance v1, Lcom/android/htccontacts/group/GroupRemoveActivity$6;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/group/GroupRemoveActivity$6;-><init>(Lcom/android/htccontacts/group/GroupRemoveActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 236
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 237
    return-void
.end method

.method protected doUpdate()V
    .locals 7

    .prologue
    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .local v0, deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mCacheBooleanArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 262
    iget-object v5, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mCacheBooleanArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 263
    iget-object v5, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mCacheBooleanArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 264
    .local v3, key:I
    iget-object v5, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mItemMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 265
    .local v4, title:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 266
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    .end local v3           #key:I
    .end local v4           #title:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 272
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/group/GroupRemoveActivity;->removeGroup(Ljava/util/ArrayList;)V

    .line 274
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 275
    .restart local v4       #title:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    const-string v6, ""

    invoke-static {v5, v6, v4}, Lcom/android/htccontacts/util/ContactsUtils;->broadcastFavoriteChangeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 277
    .end local v4           #title:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method protected findViews()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 181
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupRemoveActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mListView:Lcom/htc/widget/HtcListView;

    .line 182
    invoke-direct {p0}, Lcom/android/htccontacts/group/GroupRemoveActivity;->initListHeaderView()V

    .line 183
    const v1, 0x7f070017

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/group/GroupRemoveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;

    .line 184
    .local v0, buttonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton1View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    .line 185
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 186
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setFocusable(Z)V

    .line 189
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton2View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mCancelButton:Lcom/htc/widget/HtcFooterButton;

    .line 190
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    const v2, 0x7f0a013d

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 193
    :cond_0
    return-void
.end method

.method protected getCheckedNumber()I
    .locals 5

    .prologue
    .line 387
    const/4 v2, 0x0

    .line 388
    .local v2, result:I
    iget-object v4, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v4}, Lcom/htc/widget/HtcListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 389
    .local v1, items:Landroid/util/SparseBooleanArray;
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 390
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 391
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 392
    add-int/lit8 v2, v2, 0x1

    .line 390
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 395
    :cond_1
    return v2
.end method

.method protected getCurrentCursorCheckedNumber()I
    .locals 8

    .prologue
    .line 597
    const/4 v2, 0x0

    .line 599
    .local v2, count:I
    iget-object v6, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mListView:Lcom/htc/widget/HtcListView;

    if-eqz v6, :cond_1

    .line 600
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mCacheBooleanArray:Landroid/util/SparseBooleanArray;

    .line 602
    .local v0, array:Landroid/util/SparseBooleanArray;
    iget-object v6, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mCursorAdapter:Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemAdapter;

    if-eqz v6, :cond_1

    .line 603
    iget-object v6, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mCursorAdapter:Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemAdapter;

    invoke-virtual {v6}, Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemAdapter;->getCount()I

    move-result v5

    .line 604
    .local v5, size:I
    const/4 v4, 0x0

    .local v4, pos:I
    :goto_0
    if-ge v4, v5, :cond_1

    .line 605
    iget-object v6, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mCursorAdapter:Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemAdapter;

    invoke-virtual {v6, v4}, Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemAdapter;->getItemId(I)J

    move-result-wide v6

    long-to-int v3, v6

    .line 606
    .local v3, id:I
    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    .line 607
    .local v1, checked:Z
    if-eqz v1, :cond_0

    .line 608
    add-int/lit8 v2, v2, 0x1

    .line 604
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 613
    .end local v0           #array:Landroid/util/SparseBooleanArray;
    .end local v1           #checked:Z
    .end local v3           #id:I
    .end local v4           #pos:I
    .end local v5           #size:I
    :cond_1
    return v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 130
    const v0, 0x7f030030

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/group/GroupRemoveActivity;->setContentView(I)V

    .line 132
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupRemoveActivity;->findViews()V

    .line 133
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupRemoveActivity;->setListeners()V

    .line 136
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mListView:Lcom/htc/widget/HtcListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    .line 137
    const v0, 0x7f0a0198

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/group/GroupRemoveActivity;->setGenericTitleBar(I)V

    .line 139
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupRemoveActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mResolver:Landroid/content/ContentResolver;

    .line 140
    new-instance v0, Lcom/android/htccontacts/group/GroupRemoveActivity$QueryHandler;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/group/GroupRemoveActivity$QueryHandler;-><init>(Lcom/android/htccontacts/group/GroupRemoveActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mQueryHandler:Lcom/android/htccontacts/group/GroupRemoveActivity$QueryHandler;

    .line 141
    new-instance v0, Lcom/android/htccontacts/BackgroundWorkerHandler;

    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupRemoveActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/htccontacts/BackgroundWorkerHandler;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;

    .line 143
    const v0, 0x7f0a0225

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/group/GroupRemoveActivity;->setEmptyText(I)V

    .line 144
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 114
    const/16 v1, 0xa

    if-ne p1, v1, :cond_0

    .line 115
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 116
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 117
    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 118
    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 122
    .end local v0           #dialog:Lcom/htc/app/HtcProgressDialog;
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 371
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onDestroy()V

    .line 373
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 375
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mCursor:Landroid/database/Cursor;

    .line 378
    :cond_0
    return-void
.end method

.method public onHeaderViewClicked(Z)V
    .locals 0
    .parameter "IsChecked"

    .prologue
    .line 652
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/group/GroupRemoveActivity;->setAllItemChecked(Z)V

    .line 653
    invoke-direct {p0}, Lcom/android/htccontacts/group/GroupRemoveActivity;->updateSaveButtonState()V

    .line 654
    return-void
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

    .line 166
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupRemoveActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcListView;->getHeaderViewsCount()I

    move-result v5

    sub-int v2, p3, v5

    .line 167
    .local v2, cur_pos:I
    if-gez v2, :cond_0

    .line 168
    iget-object v4, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    invoke-virtual {v4, v3}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->onItemClick(Z)V

    .line 178
    :goto_0
    return-void

    .line 172
    :cond_0
    long-to-int v0, p4

    .line 173
    .local v0, _id:I
    iget-object v5, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mCacheBooleanArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    .line 174
    .local v1, checked:Z
    iget-object v5, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mCacheBooleanArray:Landroid/util/SparseBooleanArray;

    if-nez v1, :cond_1

    :goto_1
    invoke-virtual {v5, v0, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 176
    invoke-direct {p0}, Lcom/android/htccontacts/group/GroupRemoveActivity;->updateSaveButtonState()V

    .line 177
    iget-object v3, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->onItemClick(Z)V

    goto :goto_0

    :cond_1
    move v3, v4

    .line 174
    goto :goto_1
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 157
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onPause()V

    .line 158
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 148
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onResume()V

    .line 149
    iget-boolean v0, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->isDirty:Z

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupRemoveActivity;->startQuery()V

    .line 153
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 383
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onStop()V

    .line 384
    return-void
.end method

.method protected removeGroup(Ljava/lang/String;)V
    .locals 6
    .parameter "title"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 313
    const-string v0, "title"

    invoke-static {v0, p1}, Lcom/android/htccontacts/util/ContactsUtils;->getEqualWhereString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 315
    .local v4, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mQueryHandler:Lcom/android/htccontacts/group/GroupRemoveActivity$QueryHandler;

    const/4 v1, 0x1

    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/htccontacts/group/GroupRemoveActivity$QueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method protected removeGroup(Ljava/util/ArrayList;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 321
    const-string v0, "content://com.android.contacts/group_with_favorite"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 323
    .local v3, removeGroupUri:Landroid/net/Uri;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 324
    .local v6, buffer:Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 325
    .local v9, size:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v9, :cond_1

    .line 326
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 327
    .local v10, title:Ljava/lang/String;
    const-string v0, "title"

    invoke-static {v0, v10}, Lcom/android/htccontacts/util/ContactsUtils;->getEqualWhereString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 329
    .local v8, selection:Ljava/lang/String;
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 330
    add-int/lit8 v0, v9, -0x1

    if-ge v7, v0, :cond_0

    .line 331
    const-string v0, "  OR "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 334
    .end local v8           #selection:Ljava/lang/String;
    .end local v10           #title:Ljava/lang/String;
    :cond_1
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/group/GroupRemoveActivity;->showDialog(I)V

    .line 335
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mQueryHandler:Lcom/android/htccontacts/group/GroupRemoveActivity$QueryHandler;

    const/4 v1, 0x1

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/htccontacts/group/GroupRemoveActivity$QueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 337
    return-void
.end method

.method protected removeGroups(IZ)V
    .locals 6
    .parameter "id"
    .parameter "isSyncGroup"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 341
    const/4 v3, 0x0

    .line 342
    .local v3, deleteUri:Landroid/net/Uri;
    if-eqz p2, :cond_0

    .line 343
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 350
    :goto_0
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mQueryHandler:Lcom/android/htccontacts/group/GroupRemoveActivity$QueryHandler;

    const/4 v1, 0x1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/htccontacts/group/GroupRemoveActivity$QueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 351
    return-void

    .line 346
    :cond_0
    sget-object v0, Lcom/htc/provider/HtcContactsContract$Groups;->DELETE_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0
.end method

.method protected setAdapter()V
    .locals 4

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mCursorAdapter:Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemAdapter;

    if-nez v0, :cond_0

    .line 355
    new-instance v0, Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mCursor:Landroid/database/Cursor;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemAdapter;-><init>(Lcom/android/htccontacts/group/GroupRemoveActivity;Landroid/content/Context;ILandroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mCursorAdapter:Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemAdapter;

    .line 359
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mCursorAdapter:Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemAdapter;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/group/GroupRemoveActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 363
    :goto_0
    return-void

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mCursorAdapter:Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method protected setAllItemChecked(Z)V
    .locals 6
    .parameter "check"

    .prologue
    .line 617
    iget-object v5, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mCursorAdapter:Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemAdapter;

    if-nez v5, :cond_1

    .line 636
    :cond_0
    :goto_0
    return-void

    .line 619
    :cond_1
    iget-object v5, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mCursorAdapter:Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemAdapter;

    invoke-virtual {v5}, Lcom/android/htccontacts/group/GroupRemoveActivity$GroupListItemAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 620
    .local v0, cursorCurrent:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 622
    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    .line 623
    .local v4, nInitPosition:I
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 624
    .local v2, nCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 626
    iget-object v5, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5, v1, p1}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 627
    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 629
    const-string v5, "_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 630
    .local v3, nID:I
    iget-object v5, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mCacheBooleanArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v3, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 624
    .end local v3           #nID:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 633
    :cond_3
    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 634
    const/4 v0, 0x0

    .line 635
    iget-object v5, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    goto :goto_0
.end method

.method protected setListeners()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    new-instance v1, Lcom/android/htccontacts/group/GroupRemoveActivity$2;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/group/GroupRemoveActivity$2;-><init>(Lcom/android/htccontacts/group/GroupRemoveActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mCancelButton:Lcom/htc/widget/HtcFooterButton;

    new-instance v1, Lcom/android/htccontacts/group/GroupRemoveActivity$3;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/group/GroupRemoveActivity$3;-><init>(Lcom/android/htccontacts/group/GroupRemoveActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    return-void
.end method

.method protected startQuery()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 280
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mQueryHandler:Lcom/android/htccontacts/group/GroupRemoveActivity$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/group/GroupRemoveActivity$QueryHandler;->cancelOperation(I)V

    .line 282
    const-string v5, "system_id IS NULL AND deleted = 0 "

    .line 285
    .local v5, whereClause:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/htccontacts/group/GroupRemoveActivity;->getExcludeDefaultGroupSelection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 288
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mQueryHandler:Lcom/android/htccontacts/group/GroupRemoveActivity$QueryHandler;

    sget-object v3, Lcom/htc/provider/HtcContactsContract$Groups;->CONTENT_NAME_SUMMARY_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/group/GroupRemoveActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public updateHeaderCheckedBox()V
    .locals 4

    .prologue
    .line 658
    invoke-direct {p0}, Lcom/android/htccontacts/group/GroupRemoveActivity;->getCurrentCursorCount()I

    move-result v0

    .line 659
    .local v0, all:I
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupRemoveActivity;->getCurrentCursorCheckedNumber()I

    move-result v1

    .line 660
    .local v1, checked:I
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    if-eqz v2, :cond_0

    .line 661
    iget-object v3, p0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    if-ne v0, v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->setCheckBox(Z)V

    .line 663
    :cond_0
    return-void

    .line 661
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
