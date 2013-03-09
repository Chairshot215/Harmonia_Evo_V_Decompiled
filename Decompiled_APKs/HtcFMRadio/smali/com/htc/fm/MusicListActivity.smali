.class public Lcom/htc/fm/MusicListActivity;
.super Landroid/app/Activity;
.source "MusicListActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcAbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fm/MusicListActivity$EditTextWatcher;,
        Lcom/htc/fm/MusicListActivity$DeleteCursorRunnable;
    }
.end annotation


# static fields
.field public static final HTC_CONTEXT_MENU:I = 0x3e8


# instance fields
.field protected mAdapter:Landroid/widget/ListAdapter;

.field public mEditTextWatcher:Landroid/text/TextWatcher;

.field private mEditor:Landroid/widget/EditText;

.field mEnableSearch:Z

.field private mFinishedStart:Z

.field private mHandler:Landroid/os/Handler;

.field private mHtcContextMenu:Lcom/htc/widget/HtcAlertDialog;

.field private mHtcContextMenuIds:[I

.field private mHtcContextMenuItems:[Ljava/lang/CharSequence;

.field private mHtcContextMenuTitle:Ljava/lang/String;

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field protected mList:Lcom/htc/widget/HtcListView;

.field private mLooper:Landroid/os/Looper;

.field private mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private mOnLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

.field private mOptionsMenu:Landroid/view/Menu;

.field private mRequestFocus:Ljava/lang/Runnable;

.field private mSearchBar:Lcom/htc/widget/SearchBoxView;

.field private mSearchHint:I

.field private mTitleBar:Landroid/widget/RelativeLayout;

.field private mbufferdialog:Landroid/app/ProgressDialog;

.field private messageDialogHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 203
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 216
    iput-object v2, p0, Lcom/htc/fm/MusicListActivity;->mbufferdialog:Landroid/app/ProgressDialog;

    .line 227
    new-instance v0, Lcom/htc/fm/MusicListActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/fm/MusicListActivity$1;-><init>(Lcom/htc/fm/MusicListActivity;)V

    iput-object v0, p0, Lcom/htc/fm/MusicListActivity;->messageDialogHandler:Landroid/os/Handler;

    .line 278
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/fm/MusicListActivity;->mHandler:Landroid/os/Handler;

    .line 280
    iput-boolean v1, p0, Lcom/htc/fm/MusicListActivity;->mFinishedStart:Z

    .line 282
    iput-object v2, p0, Lcom/htc/fm/MusicListActivity;->mOptionsMenu:Landroid/view/Menu;

    .line 284
    new-instance v0, Lcom/htc/fm/MusicListActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/fm/MusicListActivity$2;-><init>(Lcom/htc/fm/MusicListActivity;)V

    iput-object v0, p0, Lcom/htc/fm/MusicListActivity;->mRequestFocus:Ljava/lang/Runnable;

    .line 406
    new-instance v0, Lcom/htc/fm/MusicListActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/fm/MusicListActivity$3;-><init>(Lcom/htc/fm/MusicListActivity;)V

    iput-object v0, p0, Lcom/htc/fm/MusicListActivity;->mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 416
    new-instance v0, Lcom/htc/fm/MusicListActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/fm/MusicListActivity$4;-><init>(Lcom/htc/fm/MusicListActivity;)V

    iput-object v0, p0, Lcom/htc/fm/MusicListActivity;->mOnLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    .line 429
    iput-boolean v1, p0, Lcom/htc/fm/MusicListActivity;->mEnableSearch:Z

    .line 433
    iput v1, p0, Lcom/htc/fm/MusicListActivity;->mSearchHint:I

    .line 713
    return-void
.end method

.method static synthetic access$100(Lcom/htc/fm/MusicListActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity;->mbufferdialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/fm/MusicListActivity;)Landroid/os/Looper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/fm/MusicListActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity;->messageDialogHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/fm/MusicListActivity;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity;->mHtcContextMenuIds:[I

    return-object v0
.end method

.method private ensureList()V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity;->mList:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_0

    .line 404
    :goto_0
    return-void

    .line 402
    :cond_0
    const v0, 0x1090014

    invoke-virtual {p0, v0}, Lcom/htc/fm/MusicListActivity;->setContentView(I)V

    goto :goto_0
.end method


# virtual methods
.method public deleteTracksByCursor(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "cursor"
    .parameter "where"

    .prologue
    .line 220
    const-string v2, ""

    const v3, 0x7f09000f

    invoke-virtual {p0, v3}, Lcom/htc/fm/MusicListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {p1, v2, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/fm/MusicListActivity;->mbufferdialog:Landroid/app/ProgressDialog;

    .line 221
    new-instance v1, Lcom/htc/fm/MusicListActivity$DeleteCursorRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/fm/MusicListActivity$DeleteCursorRunnable;-><init>(Lcom/htc/fm/MusicListActivity;Lcom/htc/fm/MusicListActivity$1;)V

    .line 222
    .local v1, mDeleteAlbum:Lcom/htc/fm/MusicListActivity$DeleteCursorRunnable;
    invoke-virtual {v1, p1, p2, p3}, Lcom/htc/fm/MusicListActivity$DeleteCursorRunnable;->Init(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 223
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 224
    .local v0, deletethread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 225
    return-void
.end method

.method disableSearch()V
    .locals 1

    .prologue
    .line 539
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/fm/MusicListActivity;->mEnableSearch:Z

    .line 540
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 548
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/htc/fm/MusicListActivity;->mEnableSearch:Z

    if-eqz v1, :cond_0

    .line 549
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 556
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/fm/MusicListActivity;->mEnableSearch:Z

    if-eqz v1, :cond_1

    .line 557
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 569
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    :sswitch_0
    return v0

    .line 551
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/fm/MusicListActivity;->startSearch()V

    goto :goto_0

    .line 559
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/fm/MusicListActivity;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 560
    invoke-virtual {p0}, Lcom/htc/fm/MusicListActivity;->hideSearchBar()V

    goto :goto_0

    .line 549
    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_0
    .end packed-switch

    .line 557
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method enableSearch()V
    .locals 1

    .prologue
    .line 543
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fm/MusicListActivity;->mEnableSearch:Z

    .line 544
    return-void
.end method

.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getListView()Lcom/htc/widget/HtcListView;
    .locals 1

    .prologue
    .line 387
    invoke-direct {p0}, Lcom/htc/fm/MusicListActivity;->ensureList()V

    .line 388
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity;->mList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7
    .parameter "text"
    .parameter "filter"

    .prologue
    const/16 v6, 0x21

    const/4 v5, -0x1

    .line 593
    if-nez p1, :cond_1

    .line 594
    const/4 v2, 0x0

    .line 607
    :cond_0
    :goto_0
    return-object v2

    .line 595
    :cond_1
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 596
    .local v2, markedString:Landroid/text/SpannableString;
    if-eqz p2, :cond_0

    .line 599
    const/4 v1, -0x1

    .line 600
    .local v1, index:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 601
    .local v0, filterLength:I
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-le v1, v5, :cond_0

    .line 602
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v4, v0, v1

    invoke-virtual {v2, v3, v1, v4, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 604
    new-instance v3, Landroid/text/style/BackgroundColorSpan;

    const v4, -0x804ee8

    invoke-direct {v3, v4}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    add-int v4, v0, v1

    invoke-virtual {v2, v3, v1, v4, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public hideEmptyErrorView()V
    .locals 0

    .prologue
    .line 667
    return-void
.end method

.method hideHtcContextMenu()V
    .locals 1

    .prologue
    .line 811
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/htc/fm/MusicListActivity;->removeDialog(I)V

    .line 812
    return-void
.end method

.method hideSearchBar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 502
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity;->mSearchBar:Lcom/htc/widget/SearchBoxView;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity;->mSearchBar:Lcom/htc/widget/SearchBoxView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/SearchBoxView;->setVisibility(I)V

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity;->mTitleBar:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 506
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity;->mTitleBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 508
    :cond_1
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity;->mEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    .line 509
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity;->mEditor:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 511
    :cond_2
    invoke-virtual {p0, v2}, Lcom/htc/fm/MusicListActivity;->showInputMethod(Z)V

    .line 512
    return-void
.end method

.method isSearchMode()Z
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity;->mSearchBar:Lcom/htc/widget/SearchBoxView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fm/MusicListActivity;->mSearchBar:Lcom/htc/widget/SearchBoxView;

    invoke-virtual {v0}, Lcom/htc/widget/SearchBoxView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onContentChanged()V
    .locals 3

    .prologue
    .line 329
    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    .line 330
    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/htc/fm/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 331
    .local v0, emptyView:Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/htc/fm/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListView;

    iput-object v1, p0, Lcom/htc/fm/MusicListActivity;->mList:Lcom/htc/widget/HtcListView;

    .line 332
    iget-object v1, p0, Lcom/htc/fm/MusicListActivity;->mList:Lcom/htc/widget/HtcListView;

    if-nez v1, :cond_0

    .line 333
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 336
    :cond_0
    if-eqz v0, :cond_1

    .line 337
    iget-object v1, p0, Lcom/htc/fm/MusicListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcListView;->setEmptyView(Landroid/view/View;)V

    .line 339
    :cond_1
    iget-object v1, p0, Lcom/htc/fm/MusicListActivity;->mList:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/htc/fm/MusicListActivity;->mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 340
    iget-object v1, p0, Lcom/htc/fm/MusicListActivity;->mList:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/htc/fm/MusicListActivity;->mOnLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setOnItemLongClickListener(Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;)V

    .line 341
    iget-boolean v1, p0, Lcom/htc/fm/MusicListActivity;->mFinishedStart:Z

    if-eqz v1, :cond_2

    .line 342
    iget-object v1, p0, Lcom/htc/fm/MusicListActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v1}, Lcom/htc/fm/MusicListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 344
    :cond_2
    iget-object v1, p0, Lcom/htc/fm/MusicListActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/fm/MusicListActivity;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 345
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/fm/MusicListActivity;->mFinishedStart:Z

    .line 346
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 772
    packed-switch p1, :pswitch_data_0

    .line 790
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 774
    :pswitch_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/htc/fm/MusicListActivity;->mHtcContextMenuTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fm/MusicListActivity;->mHtcContextMenuItems:[Ljava/lang/CharSequence;

    new-instance v2, Lcom/htc/fm/MusicListActivity$5;

    invoke-direct {v2, p0}, Lcom/htc/fm/MusicListActivity$5;-><init>(Lcom/htc/fm/MusicListActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 772
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public onHtcContextItemSelected(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 815
    const/4 v0, 0x1

    return v0
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 302
    return-void
.end method

.method protected onListItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 306
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 749
    monitor-enter p0

    .line 750
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/htc/fm/MusicListActivity;->mOptionsMenu:Landroid/view/Menu;

    .line 751
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 752
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 753
    return-void

    .line 751
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 734
    invoke-virtual {p0}, Lcom/htc/fm/MusicListActivity;->closeOptionsMenu()V

    .line 735
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 736
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 795
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 796
    packed-switch p1, :pswitch_data_0

    .line 801
    .end local p2
    :goto_0
    return-void

    .line 798
    .restart local p2
    :pswitch_0
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity;->mHtcContextMenuTitle:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/htc/widget/HtcAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 796
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 740
    monitor-enter p0

    .line 741
    :try_start_0
    iput-object p1, p0, Lcom/htc/fm/MusicListActivity;->mOptionsMenu:Landroid/view/Menu;

    .line 742
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 743
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 742
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/htc/fm/MusicListActivity;->ensureList()V

    .line 318
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 319
    return-void
.end method

.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 764
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 768
    return-void
.end method

.method public onSearch(Ljava/lang/String;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 531
    return-void
.end method

.method public setEmptyViewText(I)V
    .locals 0
    .parameter "rid"

    .prologue
    .line 621
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 352
    monitor-enter p0

    .line 353
    :try_start_0
    invoke-direct {p0}, Lcom/htc/fm/MusicListActivity;->ensureList()V

    .line 354
    iput-object p1, p0, Lcom/htc/fm/MusicListActivity;->mAdapter:Landroid/widget/ListAdapter;

    .line 355
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 356
    monitor-exit p0

    .line 357
    return-void

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setSearchHint(I)V
    .locals 0
    .parameter "hint"

    .prologue
    .line 438
    iput p1, p0, Lcom/htc/fm/MusicListActivity;->mSearchHint:I

    .line 439
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    .line 367
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "titleId"

    .prologue
    .line 589
    invoke-virtual {p0, p1}, Lcom/htc/fm/MusicListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/fm/MusicListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 590
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "title"

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/htc/fm/MusicListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/fm/FMUtils;->useCommonAddButon(Landroid/content/res/Resources;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 576
    invoke-static {p0, p1}, Lcom/htc/fm/CommonControlWrapper;->setTitle(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 580
    :cond_1
    const v1, 0x2020053

    invoke-virtual {p0, v1}, Lcom/htc/fm/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 581
    .local v0, tv:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 582
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showDatabaseError()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 671
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/htc/fm/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 672
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 673
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 683
    :cond_0
    const v1, 0x20201ba

    invoke-virtual {p0, v1}, Lcom/htc/fm/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 684
    if-eqz v0, :cond_1

    .line 685
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 711
    :cond_1
    return-void
.end method

.method public showEmptyView(I)V
    .locals 0
    .parameter "rid"

    .prologue
    .line 646
    return-void
.end method

.method showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V
    .locals 1
    .parameter "title"
    .parameter "items"
    .parameter "ids"

    .prologue
    .line 804
    iput-object p1, p0, Lcom/htc/fm/MusicListActivity;->mHtcContextMenuTitle:Ljava/lang/String;

    .line 805
    iput-object p2, p0, Lcom/htc/fm/MusicListActivity;->mHtcContextMenuItems:[Ljava/lang/CharSequence;

    .line 806
    iput-object p3, p0, Lcom/htc/fm/MusicListActivity;->mHtcContextMenuIds:[I

    .line 807
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/htc/fm/MusicListActivity;->showDialog(I)V

    .line 808
    return-void
.end method

.method showInputMethod(Z)V
    .locals 3
    .parameter "show"

    .prologue
    const/4 v2, 0x0

    .line 442
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity;->mEditor:Landroid/widget/EditText;

    if-nez v0, :cond_1

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_2

    .line 445
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/htc/fm/MusicListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/htc/fm/MusicListActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 446
    :cond_2
    if-eqz p1, :cond_3

    .line 449
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 450
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/htc/fm/MusicListActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 457
    :cond_3
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/htc/fm/MusicListActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method showSearchBar()V
    .locals 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity;->mSearchBar:Lcom/htc/widget/SearchBoxView;

    if-nez v0, :cond_1

    .line 468
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity;->mSearchBar:Lcom/htc/widget/SearchBoxView;

    if-eqz v0, :cond_1

    .line 469
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity;->mEditor:Landroid/widget/EditText;

    if-nez v0, :cond_1

    .line 470
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity;->mSearchBar:Lcom/htc/widget/SearchBoxView;

    invoke-virtual {v0}, Lcom/htc/widget/SearchBoxView;->getTextField()Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fm/MusicListActivity;->mEditor:Landroid/widget/EditText;

    .line 471
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity;->mEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 472
    iget v0, p0, Lcom/htc/fm/MusicListActivity;->mSearchHint:I

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity;->mEditor:Landroid/widget/EditText;

    iget v1, p0, Lcom/htc/fm/MusicListActivity;->mSearchHint:I

    invoke-virtual {p0, v1}, Lcom/htc/fm/MusicListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 475
    :cond_0
    new-instance v0, Lcom/htc/fm/MusicListActivity$EditTextWatcher;

    invoke-direct {v0, p0}, Lcom/htc/fm/MusicListActivity$EditTextWatcher;-><init>(Lcom/htc/fm/MusicListActivity;)V

    iput-object v0, p0, Lcom/htc/fm/MusicListActivity;->mEditTextWatcher:Landroid/text/TextWatcher;

    .line 476
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity;->mEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/htc/fm/MusicListActivity;->mEditTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 482
    :cond_1
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity;->mEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/fm/MusicListActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/fm/MusicListActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 483
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity;->mEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/htc/fm/MusicListActivity;->mEditTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 484
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity;->mEditor:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 485
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity;->mEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/htc/fm/MusicListActivity;->mEditTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 488
    :cond_2
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity;->mTitleBar:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_3

    .line 489
    const v0, 0x20201ba

    invoke-virtual {p0, v0}, Lcom/htc/fm/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/htc/fm/MusicListActivity;->mTitleBar:Landroid/widget/RelativeLayout;

    .line 491
    :cond_3
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity;->mSearchBar:Lcom/htc/widget/SearchBoxView;

    if-eqz v0, :cond_4

    .line 492
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity;->mSearchBar:Lcom/htc/widget/SearchBoxView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/SearchBoxView;->setVisibility(I)V

    .line 495
    :cond_4
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity;->mTitleBar:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_5

    .line 496
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity;->mTitleBar:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 498
    :cond_5
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/fm/MusicListActivity;->showInputMethod(Z)V

    .line 499
    return-void
.end method

.method public showSpinner(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 611
    const v1, 0x2020052

    invoke-virtual {p0, v1}, Lcom/htc/fm/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 612
    .local v0, pb:Landroid/widget/ProgressBar;
    if-eqz v0, :cond_0

    .line 613
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 615
    :cond_0
    return-void

    .line 613
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method startSearch()V
    .locals 0

    .prologue
    .line 528
    return-void
.end method

.method public updateOptionsMenu()V
    .locals 1

    .prologue
    .line 756
    monitor-enter p0

    .line 757
    :try_start_0
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity;->mOptionsMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity;->mOptionsMenu:Landroid/view/Menu;

    invoke-virtual {p0, v0}, Lcom/htc/fm/MusicListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 759
    :cond_0
    monitor-exit p0

    .line 760
    return-void

    .line 759
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
