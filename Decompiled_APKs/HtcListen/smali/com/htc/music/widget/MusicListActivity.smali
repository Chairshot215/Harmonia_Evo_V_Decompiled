.class public Lcom/htc/music/widget/MusicListActivity;
.super Lcom/htc/music/widget/MusicMaActivity;
.source "MusicListActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcAbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/widget/MusicListActivity$DeleteCursorRunnable;
    }
.end annotation


# static fields
.field private static final DELETION_TRACK_COMPLETED:I = 0x0

.field public static final DIALOG_NETWORK_SETTING:I = 0x259

.field public static final HTC_CONTEXT_MENU:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "[MusicListActivity]"

.field private static mEnableLandscapeHorizontalSDError:I


# instance fields
.field public BROWSE_TYPE:I

.field protected mActivityPaused:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected mAdapter:Landroid/widget/ListAdapter;

.field private mEditor:Landroid/widget/EditText;

.field private mFinishedStart:Z

.field private mHandler:Landroid/os/Handler;

.field private mHtcContextMenu:Lcom/htc/widget/HtcAlertDialog;

.field private mHtcContextMenuIds:[I

.field private mHtcContextMenuItems:[Ljava/lang/CharSequence;

.field private mHtcContextMenuTitle:Ljava/lang/String;

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field protected mIsEnhancerExist:Z

.field protected mList:Lcom/htc/widget/HtcListView;

.field private mNoMusicViewStub:Landroid/view/ViewStub;

.field private mNoSDCardErrorViewStub:Landroid/view/ViewStub;

.field private mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private mOnLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

.field private mOptionsMenu:Landroid/view/Menu;

.field private mOrientation:I

.field private mParent:Landroid/app/Activity;

.field private mRequestFocus:Ljava/lang/Runnable;

.field private mRes:Landroid/content/res/Resources;

.field private mSearchHint:I

.field private mTitleBar:Landroid/widget/RelativeLayout;

.field private mbufferdialog:Landroid/app/ProgressDialog;

.field private messageHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/htc/music/widget/MusicListActivity;->mEnableLandscapeHorizontalSDError:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/htc/music/widget/MusicMaActivity;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/music/widget/MusicListActivity;->BROWSE_TYPE:I

    const-string v0, "dummy"

    iput-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mHtcContextMenuTitle:Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/CharSequence;

    const-string v1, "dummy"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mHtcContextMenuItems:[Ljava/lang/CharSequence;

    iput-object v3, p0, Lcom/htc/music/widget/MusicListActivity;->mParent:Landroid/app/Activity;

    iput-boolean v2, p0, Lcom/htc/music/widget/MusicListActivity;->mActivityPaused:Z

    iput-object v3, p0, Lcom/htc/music/widget/MusicListActivity;->mbufferdialog:Landroid/app/ProgressDialog;

    iput-boolean v2, p0, Lcom/htc/music/widget/MusicListActivity;->mIsEnhancerExist:Z

    iput-object v3, p0, Lcom/htc/music/widget/MusicListActivity;->mRes:Landroid/content/res/Resources;

    iput v4, p0, Lcom/htc/music/widget/MusicListActivity;->mOrientation:I

    new-instance v0, Lcom/htc/music/widget/MusicListActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicListActivity$1;-><init>(Lcom/htc/music/widget/MusicListActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->messageHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mHandler:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/htc/music/widget/MusicListActivity;->mFinishedStart:Z

    iput-object v3, p0, Lcom/htc/music/widget/MusicListActivity;->mOptionsMenu:Landroid/view/Menu;

    new-instance v0, Lcom/htc/music/widget/MusicListActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicListActivity$2;-><init>(Lcom/htc/music/widget/MusicListActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mRequestFocus:Ljava/lang/Runnable;

    new-instance v0, Lcom/htc/music/widget/MusicListActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicListActivity$3;-><init>(Lcom/htc/music/widget/MusicListActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    new-instance v0, Lcom/htc/music/widget/MusicListActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicListActivity$4;-><init>(Lcom/htc/music/widget/MusicListActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mOnLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    iput v2, p0, Lcom/htc/music/widget/MusicListActivity;->mSearchHint:I

    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/widget/MusicListActivity;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mbufferdialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/widget/MusicListActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->messageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/widget/MusicListActivity;)[I
    .locals 1

    iget-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mHtcContextMenuIds:[I

    return-object v0
.end method

.method private ensureList()V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mList:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const v0, 0x1090014

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicListActivity;->setContentView(I)V

    goto :goto_0
.end method


# virtual methods
.method public deleteTracks(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v7

    if-nez v7, :cond_0

    move-object v7, p1

    check-cast v7, Landroid/app/Activity;

    :cond_0
    const-string v1, ""

    const v2, 0x7f0700a6

    invoke-virtual {p0, v2}, Lcom/htc/music/widget/MusicListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v7, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/widget/MusicListActivity;->mbufferdialog:Landroid/app/ProgressDialog;

    new-instance v0, Lcom/htc/music/widget/MusicListActivity$DeleteCursorRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/music/widget/MusicListActivity$DeleteCursorRunnable;-><init>(Lcom/htc/music/widget/MusicListActivity;Lcom/htc/music/widget/MusicListActivity$1;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/htc/music/widget/MusicListActivity$DeleteCursorRunnable;->Init(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/Thread;

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getListView()Lcom/htc/widget/HtcListView;
    .locals 1

    invoke-direct {p0}, Lcom/htc/music/widget/MusicListActivity;->ensureList()V

    iget-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method protected getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/music/widget/MusicListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/htc/music/util/MusicUtils;->getMarkedString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    iget-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    iget-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public hideEmptyErrorView()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/htc/music/widget/MusicListActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/widget/MusicListActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/htc/music/widget/MusicListActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/widget/MusicListActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_1
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v2, v2}, Landroid/view/View;->setRoundedCornerEnabled(ZZ)V

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/MusicListActivity;->setCategoryRightBtn(Z)V

    return-void
.end method

.method protected hideHtcContextMenu()V
    .locals 1

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicListActivity;->removeDialog(I)V

    return-void
.end method

.method protected hideSearchBar()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicMaActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v2, p0, Lcom/htc/music/widget/MusicListActivity;->mOrientation:I

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicListActivity;->resetSDErrorLayout()V

    const v2, 0x7f0800a2

    invoke-virtual {p0, v2}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/htc/music/widget/MusicListActivity;->mRes:Landroid/content/res/Resources;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/music/widget/MusicListActivity;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0a0014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/htc/music/widget/MusicListActivity;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0a0015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method public onContentChanged()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/htc/music/widget/MusicMaActivity;->onContentChanged()V

    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListView;

    iput-object v1, p0, Lcom/htc/music/widget/MusicListActivity;->mList:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/music/widget/MusicListActivity;->mList:Lcom/htc/widget/HtcListView;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/htc/music/widget/MusicListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcListView;->setEmptyView(Landroid/view/View;)V

    :cond_1
    iget-object v1, p0, Lcom/htc/music/widget/MusicListActivity;->mList:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/htc/music/widget/MusicListActivity;->mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/htc/music/widget/MusicListActivity;->mList:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/htc/music/widget/MusicListActivity;->mOnLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setOnItemLongClickListener(Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;)V

    iget-object v1, p0, Lcom/htc/music/widget/MusicListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v3, v3}, Lcom/htc/widget/HtcListView;->setRoundedCornerEnabled(ZZ)V

    iget-boolean v1, p0, Lcom/htc/music/widget/MusicListActivity;->mFinishedStart:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/widget/MusicListActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/MusicListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    :cond_2
    iget-object v1, p0, Lcom/htc/music/widget/MusicListActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/music/widget/MusicListActivity;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/widget/MusicListActivity;->mFinishedStart:Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicMaActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/htc/music/widget/MusicListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->isMusicEnhancerEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/music/widget/MusicListActivity;->mIsEnhancerExist:Z

    invoke-virtual {p0}, Lcom/htc/music/widget/MusicListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mRes:Landroid/content/res/Resources;

    const/4 v0, -0x1

    sget v1, Lcom/htc/music/widget/MusicListActivity;->mEnableLandscapeHorizontalSDError:I

    if-ne v0, v1, :cond_0

    const v0, 0x7f07021f

    invoke-static {p0, v0}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/htc/music/widget/MusicListActivity;->mEnableLandscapeHorizontalSDError:I

    :cond_0
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    invoke-virtual {p0}, Lcom/htc/music/widget/MusicListActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    :cond_0
    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicMaActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    :sswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/htc/music/widget/MusicListActivity;->mHtcContextMenuTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/widget/MusicListActivity;->mHtcContextMenuItems:[Ljava/lang/CharSequence;

    new-instance v3, Lcom/htc/music/widget/MusicListActivity$5;

    invoke-direct {v3, p0}, Lcom/htc/music/widget/MusicListActivity$5;-><init>(Lcom/htc/music/widget/MusicListActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    :sswitch_1
    invoke-static {p0}, Lcom/htc/music/util/OnlineMusicUtils;->createNoNetworkDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x259 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDeletionCompleted()V
    .locals 2

    const-string v0, "[MusicListActivity]"

    const-string v1, "call parent Empty onDeletionCompleted()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onHtcContextItemSelected(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 0

    return-void
.end method

.method protected onListItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mOptionsMenu:Landroid/view/Menu;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicMaActivity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onPause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/widget/MusicListActivity;->mActivityPaused:Z

    invoke-super {p0}, Lcom/htc/music/widget/MusicMaActivity;->onPause()V

    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/htc/music/widget/MusicMaActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    check-cast p2, Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mHtcContextMenuTitle:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/htc/music/widget/MusicListActivity;->mOptionsMenu:Landroid/view/Menu;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicMaActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

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

    invoke-direct {p0}, Lcom/htc/music/widget/MusicListActivity;->ensureList()V

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicMaActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/widget/MusicListActivity;->mActivityPaused:Z

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicListActivity;->removeDialog(I)V

    invoke-super {p0}, Lcom/htc/music/widget/MusicMaActivity;->onResume()V

    return-void
.end method

.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 0

    return-void
.end method

.method public onSearch(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected resetSDErrorLayout()V
    .locals 6

    const/16 v5, 0x10

    const/4 v4, 0x2

    const/4 v3, 0x1

    sget v2, Lcom/htc/music/widget/MusicListActivity;->mEnableLandscapeHorizontalSDError:I

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/htc/music/widget/MusicListActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_0

    const v2, 0x7f0800a2

    invoke-virtual {p0, v2}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_2

    iget v2, p0, Lcom/htc/music/widget/MusicListActivity;->mOrientation:I

    if-ne v4, v2, :cond_4

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_2
    :goto_1
    const v2, 0x7f0800a3

    invoke-virtual {p0, v2}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_3

    iget v2, p0, Lcom/htc/music/widget/MusicListActivity;->mOrientation:I

    if-ne v4, v2, :cond_5

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_3
    :goto_2
    const v2, 0x7f080070

    invoke-virtual {p0, v2}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/htc/music/widget/MusicListActivity;->mOrientation:I

    if-ne v4, v2, :cond_6

    move-object v2, v1

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :goto_3
    move-object v2, v1

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->requestLayout()V

    const v2, 0x20801c1

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_4
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_1

    :cond_5
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_2

    :cond_6
    move-object v2, v1

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_3
.end method

.method public setEmptyViewText(I)V
    .locals 2

    const v1, 0x7f0800ab

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/widget/MusicListActivity;->ensureList()V

    iput-object p1, p0, Lcom/htc/music/widget/MusicListActivity;->mAdapter:Landroid/widget/ListAdapter;

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mList:Lcom/htc/widget/HtcListView;

    instance-of v0, v0, Lcom/htc/widget/HtcReorderListView;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected setSearchHint(I)V
    .locals 0

    iput p1, p0, Lcom/htc/music/widget/MusicListActivity;->mSearchHint:I

    return-void
.end method

.method public setSelection(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicListActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicListActivity;->setTitle(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicListActivity;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/htc/music/widget/MusicListActivity;->setTitle(Ljava/lang/String;IILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;IILandroid/view/View$OnClickListener;)V
    .locals 11

    const v10, 0x7f08003f

    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/htc/music/widget/MusicListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "ShowActivityTitle"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, v10}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    const v6, 0x7f080040

    invoke-virtual {p0, v6}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    if-gez p2, :cond_2

    invoke-virtual {v0, v9}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    :cond_0
    :goto_0
    const v6, 0x7f080041

    invoke-virtual {p0, v6}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HeaderBarText;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {v0, v7}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    invoke-virtual {v0, p2}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    invoke-virtual {v0, p3}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    invoke-virtual {v0, v7}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    invoke-virtual {v0, v7}, Lcom/htc/widget/HeaderBarImage;->setFocusable(Z)V

    invoke-virtual {v0, v7}, Lcom/htc/widget/HeaderBarImage;->setClickable(Z)V

    invoke-virtual {v0, v8}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    invoke-virtual {v0, p4}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_3
    iget-boolean v6, p0, Lcom/htc/music/widget/MusicListActivity;->mActivityPaused:Z

    if-eqz v6, :cond_4

    const-string v6, "[MusicListActivity]"

    const-string v7, "activity is paused, do not set category title status"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v10}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicListActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_1

    instance-of v6, v4, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v6, :cond_1

    check-cast v4, Lcom/htc/music/widget/IMusicTabActivityInterface;

    invoke-interface {v4, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setSecondaryTitle(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public showDatabaseError()V
    .locals 10

    const v9, 0x208086b

    const/16 v8, 0x8

    const/4 v7, 0x0

    const v6, 0x102000a

    invoke-virtual {p0, v6}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v6, p0, Lcom/htc/music/widget/MusicListActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/htc/music/widget/MusicListActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    invoke-virtual {v6, v8}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_1
    const v6, 0x20201c0

    invoke-virtual {p0, v6}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_2

    const v6, 0x7f0800a6

    invoke-virtual {p0, v6}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v6, p0, Lcom/htc/music/widget/MusicListActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-nez v6, :cond_4

    const v6, 0x7f08006f

    invoke-virtual {p0, v6}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewStub;

    iput-object v6, p0, Lcom/htc/music/widget/MusicListActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    :cond_4
    iget-object v6, p0, Lcom/htc/music/widget/MusicListActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/htc/music/widget/MusicListActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    invoke-virtual {v6, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/htc/music/widget/MusicListActivity;->resetSDErrorLayout()V

    const v6, 0x7f0800e3

    invoke-virtual {p0, v6}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_5

    const v6, 0x7f080070

    invoke-virtual {p0, v6}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    :cond_5
    if-eqz v5, :cond_6

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const v2, 0x20c00a1

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v6

    if-eqz v6, :cond_7

    const v2, 0x7f07003f

    :cond_7
    const v6, 0x7f0800a2

    invoke-virtual {p0, v6}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const-string v6, "shared"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v6

    if-eqz v6, :cond_b

    const v2, 0x7f07003f

    if-eqz v1, :cond_8

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_8
    :goto_0
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    :cond_9
    const v6, 0x7f0800a3

    invoke-virtual {p0, v6}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_a

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_a
    invoke-virtual {p0, v7}, Lcom/htc/music/widget/MusicListActivity;->setCategoryRightBtn(Z)V

    return-void

    :cond_b
    const v2, 0x7f07003e

    if-eqz v1, :cond_8

    const v6, 0x2080864

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_c
    const-string v6, "removed"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    const-string v6, "bad_removal"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    :cond_d
    const v2, 0x20c00a1

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v6

    if-eqz v6, :cond_8

    const v2, 0x7f07003f

    goto :goto_0

    :cond_e
    const-string v6, "unmounted"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    const v2, 0x20c01e2

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v6

    if-eqz v6, :cond_8

    const v2, 0x7f07003f

    if-eqz v1, :cond_8

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_f
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getAllSongs(Landroid/content/Context;)[I

    move-result-object v0

    if-eqz v0, :cond_10

    array-length v6, v0

    if-nez v6, :cond_11

    :cond_10
    const v2, 0x7f070029

    :goto_1
    if-eqz v1, :cond_8

    const v6, 0x2080866

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_11
    const v2, 0x7f070030

    goto :goto_1
.end method

.method public showEmptyView()V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    const v3, 0x102000a

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v3, p0, Lcom/htc/music/widget/MusicListActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/widget/MusicListActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    invoke-virtual {v3, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_1
    iget-object v3, p0, Lcom/htc/music/widget/MusicListActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    if-nez v3, :cond_2

    const v3, 0x7f08006d

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/htc/music/widget/MusicListActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    :cond_2
    iget-object v3, p0, Lcom/htc/music/widget/MusicListActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    invoke-virtual {v3, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    const v3, 0x7f0800ab

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-virtual {p0, v4}, Lcom/htc/music/widget/MusicListActivity;->setCategoryRightBtn(Z)V

    const v3, 0x7f0800ac

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public showEmptyView(I)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/music/widget/MusicListActivity;->showEmptyView(II)V

    return-void
.end method

.method public showEmptyView(II)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    const v3, 0x102000a

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v3, p0, Lcom/htc/music/widget/MusicListActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/widget/MusicListActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    invoke-virtual {v3, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_1
    iget-object v3, p0, Lcom/htc/music/widget/MusicListActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    if-nez v3, :cond_2

    const v3, 0x7f08006d

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/htc/music/widget/MusicListActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    :cond_2
    iget-object v3, p0, Lcom/htc/music/widget/MusicListActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    invoke-virtual {v3, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    const v3, 0x7f0800ab

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    invoke-virtual {p0, v4}, Lcom/htc/music/widget/MusicListActivity;->setCategoryRightBtn(Z)V

    const v3, 0x7f0800ac

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    if-lez p2, :cond_5

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V
    .locals 1

    iput-object p1, p0, Lcom/htc/music/widget/MusicListActivity;->mHtcContextMenuTitle:Ljava/lang/String;

    iput-object p2, p0, Lcom/htc/music/widget/MusicListActivity;->mHtcContextMenuItems:[Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/htc/music/widget/MusicListActivity;->mHtcContextMenuIds:[I

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicListActivity;->showDialog(I)V

    return-void
.end method

.method showInputMethod(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mEditor:Landroid/widget/EditText;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_2

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/htc/music/widget/MusicListActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/htc/music/widget/MusicListActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public showSpinner(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/htc/music/widget/MusicListActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v3, v1, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v3, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/htc/music/widget/IMusicTabActivityInterface;

    invoke-interface {v2, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryProgressVisible(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v3, 0x7f08003f

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBar;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Lcom/htc/widget/HeaderBar;->setProgressVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v3, 0x8

    goto :goto_1
.end method

.method public updateOptionsMenu()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mOptionsMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mOptionsMenu:Landroid/view/Menu;

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
