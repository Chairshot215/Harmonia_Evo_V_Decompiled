.class public abstract Lcom/google/android/gm/BaseActivityController;
.super Ljava/lang/Object;
.source "BaseActivityController.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/google/android/gm/ActivityController;
.implements Lcom/google/android/gm/BaseGmailActionBar$Callback;
.implements Lcom/google/android/gm/ConversationSelectionSet$ConversationSetObserver;
.implements Lcom/google/android/gm/ConversationSubjectDisplayer;
.implements Lcom/google/android/gm/MenuHandler$ActivityCallback;
.implements Lcom/google/android/gm/TriStateSplitLayout$LayoutListener;
.implements Lcom/google/android/gm/ViewMode$ModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gm/ActivityController;",
        "Lcom/google/android/gm/MenuHandler$ActivityCallback;",
        "Lcom/google/android/gm/BaseGmailActionBar$Callback;",
        "Lcom/google/android/gm/TriStateSplitLayout$LayoutListener;",
        "Lcom/google/android/gm/ViewMode$ModeChangeListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/google/android/gm/ConversationSelectionSet$ConversationSetObserver;",
        "Lcom/google/android/gm/ConversationSubjectDisplayer;"
    }
.end annotation


# static fields
.field private static sSyncProgressMinShowTimeMs:I


# instance fields
.field protected mAccount:Ljava/lang/String;

.field protected mAccountHelper:Lcom/google/android/gm/AccountHelper;

.field protected mAccountNames:[Ljava/lang/String;

.field protected mActionBarView:Lcom/google/android/gm/ActionBarView;

.field private mActionModeShown:Z

.field protected final mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

.field private final mBatchCommandListener:Lcom/google/android/gm/CommandListener;

.field protected mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

.field protected final mContext:Landroid/content/Context;

.field protected mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

.field protected mConversationCursorLoader:Lcom/google/android/gm/provider/ConversationCursorLoader;

.field protected mConversationListContext:Lcom/google/android/gm/ConversationListContext;

.field protected mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

.field protected mConversationViewable:Lcom/google/android/gm/ConversationViewable;

.field protected mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

.field protected mGmail:Lcom/google/android/gm/provider/Gmail;

.field protected mJumpToFirstConversation:Z

.field protected mLoaderManagerFragment:Lcom/google/android/gm/LoaderManagerFragment;

.field protected mMenuHandler:Lcom/google/android/gm/MenuHandler;

.field private mNewEmailReceiver:Lcom/google/android/gm/SuppressNotificationReceiver;

.field private mPendingSyncInProgressState:Z

.field protected mPrefs:Lcom/google/android/gm/persistence/Persistence;

.field private mProgressBarStartTime:J

.field private mRefreshActionView:Landroid/view/View;

.field private mRefreshItem:Landroid/view/MenuItem;

.field protected final mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

.field private mSelectedConversationsActionMenu:Lcom/google/android/gm/SelectedConversationsActionMenu;

.field private final mStartSyncProgressBar:Ljava/lang/Runnable;

.field private final mStopSyncProgressBar:Ljava/lang/Runnable;

.field protected mSubjectDisplayer:Lcom/google/android/gm/ConversationSubjectDisplayer;

.field protected final mViewMode:Lcom/google/android/gm/ViewMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, -0x1

    sput v0, Lcom/google/android/gm/BaseActivityController;->sSyncProgressMinShowTimeMs:I

    return-void
.end method

.method protected constructor <init>(Lcom/google/android/gm/ActivityController$ControllableActivity;Lcom/google/android/gm/ViewMode;)V
    .locals 2
    .parameter "activity"
    .parameter "viewMode"

    .prologue
    const/4 v1, 0x0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Lcom/google/android/gm/ConversationSelectionSet;

    invoke-direct {v0}, Lcom/google/android/gm/ConversationSelectionSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mNewEmailReceiver:Lcom/google/android/gm/SuppressNotificationReceiver;

    .line 136
    new-instance v0, Lcom/google/android/gm/ConversationPositionTracker;

    invoke-direct {v0}, Lcom/google/android/gm/ConversationPositionTracker;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    .line 152
    iput-boolean v1, p0, Lcom/google/android/gm/BaseActivityController;->mActionModeShown:Z

    .line 154
    iput-boolean v1, p0, Lcom/google/android/gm/BaseActivityController;->mPendingSyncInProgressState:Z

    .line 155
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gm/BaseActivityController;->mProgressBarStartTime:J

    .line 161
    new-instance v0, Lcom/google/android/gm/BaseActivityController$1;

    invoke-direct {v0, p0}, Lcom/google/android/gm/BaseActivityController$1;-><init>(Lcom/google/android/gm/BaseActivityController;)V

    iput-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mStartSyncProgressBar:Ljava/lang/Runnable;

    .line 179
    new-instance v0, Lcom/google/android/gm/BaseActivityController$2;

    invoke-direct {v0, p0}, Lcom/google/android/gm/BaseActivityController$2;-><init>(Lcom/google/android/gm/BaseActivityController;)V

    iput-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mStopSyncProgressBar:Ljava/lang/Runnable;

    .line 903
    new-instance v0, Lcom/google/android/gm/BaseActivityController$5;

    invoke-direct {v0, p0}, Lcom/google/android/gm/BaseActivityController$5;-><init>(Lcom/google/android/gm/BaseActivityController;)V

    iput-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mBatchCommandListener:Lcom/google/android/gm/CommandListener;

    .line 190
    iput-object p1, p0, Lcom/google/android/gm/BaseActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    .line 191
    iput-object p2, p0, Lcom/google/android/gm/BaseActivityController;->mViewMode:Lcom/google/android/gm/ViewMode;

    .line 193
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v0}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mContext:Landroid/content/Context;

    .line 194
    new-instance v0, Lcom/google/android/gm/AccountHelper;

    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-direct {v0, v1}, Lcom/google/android/gm/AccountHelper;-><init>(Lcom/google/android/gm/RestrictedActivity;)V

    iput-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mAccountHelper:Lcom/google/android/gm/AccountHelper;

    .line 195
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/BaseActivityController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/google/android/gm/BaseActivityController;->mPendingSyncInProgressState:Z

    return v0
.end method

.method static synthetic access$102(Lcom/google/android/gm/BaseActivityController;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/google/android/gm/BaseActivityController;->mProgressBarStartTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/google/android/gm/BaseActivityController;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mRefreshItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/gm/BaseActivityController;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mRefreshActionView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/gm/BaseActivityController;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/android/gm/BaseActivityController;->mRefreshActionView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/gm/BaseActivityController;Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/android/gm/BaseActivityController;->onOptionsItemSelectedInternal(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/gm/BaseActivityController;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/android/gm/BaseActivityController;->isDestructiveBatchCommand(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/gm/BaseActivityController;)Lcom/google/android/gm/SelectedConversationsActionMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mSelectedConversationsActionMenu:Lcom/google/android/gm/SelectedConversationsActionMenu;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/gm/BaseActivityController;[Landroid/accounts/Account;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/android/gm/BaseActivityController;->validateAccounts([Landroid/accounts/Account;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/google/android/gm/BaseActivityController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/android/gm/BaseActivityController;->onAccountsUpdated()V

    return-void
.end method

.method private clearLabelAssociatedNotifications(Lcom/google/android/gm/ConversationListContext;)V
    .locals 2
    .parameter

    .prologue
    .line 1379
    const-string v0, "^f"

    invoke-virtual {p1}, Lcom/google/android/gm/ConversationListContext;->getLabelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1380
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mAccount:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gm/Utils;->clearAccountSendErrorNotifications(Landroid/content/Context;Ljava/lang/String;)V

    .line 1382
    :cond_0
    return-void
.end method

.method private disableNotifications()V
    .locals 2

    .prologue
    .line 1563
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mNewEmailReceiver:Lcom/google/android/gm/SuppressNotificationReceiver;

    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gm/SuppressNotificationReceiver;->activate(Landroid/content/Context;Lcom/google/android/gm/BaseActivityController;)V

    .line 1564
    return-void
.end method

.method private enableNotifications()V
    .locals 1

    .prologue
    .line 1567
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mNewEmailReceiver:Lcom/google/android/gm/SuppressNotificationReceiver;

    invoke-virtual {v0}, Lcom/google/android/gm/SuppressNotificationReceiver;->deactivate()V

    .line 1568
    return-void
.end method

.method private getConversation(Z)Lcom/google/android/gm/ConversationInfo;
    .locals 1
    .parameter "newer"

    .prologue
    .line 713
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationPositionTracker;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 714
    const/4 v0, 0x0

    .line 720
    :goto_0
    return-object v0

    .line 717
    :cond_0
    if-eqz p1, :cond_1

    .line 718
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationPositionTracker;->getNewer()Lcom/google/android/gm/ConversationInfo;

    move-result-object v0

    goto :goto_0

    .line 720
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationPositionTracker;->getOlder()Lcom/google/android/gm/ConversationInfo;

    move-result-object v0

    goto :goto_0
.end method

.method private getLong(Landroid/content/ClipData;I)J
    .locals 2
    .parameter "data"
    .parameter "item"

    .prologue
    .line 1073
    invoke-virtual {p1, p2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getString(Landroid/content/ClipData;I)Ljava/lang/String;
    .locals 1
    .parameter "data"
    .parameter "item"

    .prologue
    .line 1069
    invoke-virtual {p1, p2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUnselectedConversation(Z)Lcom/google/android/gm/ConversationInfo;
    .locals 2
    .parameter "newer"

    .prologue
    .line 728
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationPositionTracker;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 729
    const/4 v0, 0x0

    .line 735
    :goto_0
    return-object v0

    .line 732
    :cond_0
    if-eqz p1, :cond_1

    .line 733
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ConversationPositionTracker;->getNewer(Lcom/google/android/gm/ConversationSelectionSet;)Lcom/google/android/gm/ConversationInfo;

    move-result-object v0

    goto :goto_0

    .line 735
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ConversationPositionTracker;->getOlder(Lcom/google/android/gm/ConversationSelectionSet;)Lcom/google/android/gm/ConversationInfo;

    move-result-object v0

    goto :goto_0
.end method

.method private gotoLabel(Ljava/lang/String;)V
    .locals 3
    .parameter "label"

    .prologue
    .line 1495
    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mAccount:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Lcom/google/android/gm/ConversationListContext;->forLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/ConversationListContext;

    move-result-object v0

    .line 1497
    .local v0, context:Lcom/google/android/gm/ConversationListContext;
    invoke-virtual {p0, v0}, Lcom/google/android/gm/BaseActivityController;->showConversationList(Lcom/google/android/gm/ConversationListContext;)V

    .line 1498
    return-void
.end method

.method private initCustomActionBarView()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 1259
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v0}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 1260
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040032

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/ActionBarView;

    iput-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    .line 1263
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    if-eqz v0, :cond_0

    .line 1264
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    check-cast v0, Lcom/google/android/gm/ConversationSubjectDisplayer;

    iput-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mSubjectDisplayer:Lcom/google/android/gm/ConversationSubjectDisplayer;

    .line 1265
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    iget-object v3, p0, Lcom/google/android/gm/BaseActivityController;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-interface {v0, v2, p0, v3, v1}, Lcom/google/android/gm/ActionBarView;->initialize(Lcom/google/android/gm/RestrictedActivity;Lcom/google/android/gm/BaseGmailActionBar$Callback;Lcom/google/android/gm/ViewMode;Landroid/app/ActionBar;)V

    .line 1266
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 1268
    const/16 v0, 0x10

    const/16 v2, 0x18

    invoke-virtual {v1, v0, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 1271
    :cond_0
    return-void
.end method

.method private initializeStatusLoader()V
    .locals 3

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/google/android/gm/BaseActivityController;->resetSyncProgressBar()V

    .line 282
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 283
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "account"

    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mAccount:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/google/android/gm/BaseActivityController;->startStatusCursorLoader(ILandroid/os/Bundle;)V

    .line 285
    return-void
.end method

.method private isDestructiveBatchCommand(I)Z
    .locals 2
    .parameter "commandId"

    .prologue
    .line 972
    const/4 v0, 0x0

    .line 973
    .local v0, isDestructive:Z
    packed-switch p1, :pswitch_data_0

    .line 988
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 978
    :pswitch_1
    const/4 v0, 0x1

    .line 979
    goto :goto_0

    .line 981
    :pswitch_2
    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationListContext;->isMagicInboxView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 984
    const/4 v0, 0x1

    goto :goto_0

    .line 973
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f00ec
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private onAccountsUpdated()V
    .locals 0

    .prologue
    .line 778
    invoke-direct {p0}, Lcom/google/android/gm/BaseActivityController;->updateActionBar()V

    .line 780
    invoke-direct {p0}, Lcom/google/android/gm/BaseActivityController;->updateCachedAccounts()V

    .line 781
    return-void
.end method

.method private onOptionsItemSelectedInternal(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 542
    const/4 v0, 0x0

    .line 545
    .local v0, handled:Z
    iget-boolean v1, p0, Lcom/google/android/gm/BaseActivityController;->mActionModeShown:Z

    if-eqz v1, :cond_2

    .line 548
    const-string v1, "Gmail"

    const-string v2, "onOptionsItemSelected called when there are is an action mode. This should never happen."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 550
    const/4 v0, 0x0

    .line 562
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 565
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, p0}, Lcom/google/android/gm/ApplicationMenuHandler;->handleApplicationMenu(ILandroid/content/Context;Lcom/google/android/gm/MenuHandler$HelpCallback;)Z

    move-result v0

    .line 569
    :cond_1
    return v0

    .line 551
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0f008e

    if-ne v1, v2, :cond_3

    .line 552
    invoke-virtual {p0}, Lcom/google/android/gm/BaseActivityController;->enterSearchMode()V

    .line 553
    const/4 v0, 0x1

    goto :goto_0

    .line 554
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0f00f7

    if-ne v1, v2, :cond_4

    .line 555
    invoke-virtual {p0}, Lcom/google/android/gm/BaseActivityController;->showLabelList()V

    .line 556
    const/4 v0, 0x1

    goto :goto_0

    .line 557
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gm/BaseActivityController;->isConversationMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 558
    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mConversationViewable:Lcom/google/android/gm/ConversationViewable;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gm/BaseActivityController;->getSingleCommandListener()Lcom/google/android/gm/CommandListener;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/gm/ConversationViewable;->onMenuItemSelected(ILcom/google/android/gm/CommandListener;)Z

    move-result v0

    goto :goto_0
.end method

.method private removeContextualActionBar()V
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mSelectedConversationsActionMenu:Lcom/google/android/gm/SelectedConversationsActionMenu;

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mSelectedConversationsActionMenu:Lcom/google/android/gm/SelectedConversationsActionMenu;

    invoke-virtual {v0}, Lcom/google/android/gm/SelectedConversationsActionMenu;->destroy()V

    .line 843
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mSelectedConversationsActionMenu:Lcom/google/android/gm/SelectedConversationsActionMenu;

    .line 845
    :cond_0
    return-void
.end method

.method private resetSyncProgressBar()V
    .locals 2

    .prologue
    .line 237
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gm/BaseActivityController;->mProgressBarStartTime:J

    .line 238
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v0}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getUiHandler()Lcom/google/android/gm/UiHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mStartSyncProgressBar:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/UiHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 239
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v0}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getUiHandler()Lcom/google/android/gm/UiHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mStopSyncProgressBar:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/UiHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 240
    return-void
.end method

.method private startStatusCursorLoader(ILandroid/os/Bundle;)V
    .locals 1
    .parameter "loaderId"
    .parameter "args"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v0}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 403
    return-void
.end method

.method private startSyncProgressBar()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v0}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getUiHandler()Lcom/google/android/gm/UiHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mStopSyncProgressBar:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/UiHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 204
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v0}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getUiHandler()Lcom/google/android/gm/UiHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mStartSyncProgressBar:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/UiHandler;->post(Ljava/lang/Runnable;)V

    .line 205
    return-void
.end method

.method private stopStatusCursorLoader(I)V
    .locals 1
    .parameter "loaderId"

    .prologue
    .line 406
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v0}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 407
    return-void
.end method

.method private stopSyncProgressBar()V
    .locals 8

    .prologue
    .line 215
    iget-object v4, p0, Lcom/google/android/gm/BaseActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v4}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getUiHandler()Lcom/google/android/gm/UiHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gm/BaseActivityController;->mStartSyncProgressBar:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Lcom/google/android/gm/UiHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gm/BaseActivityController;->mProgressBarStartTime:J

    sub-long v0, v4, v6

    .line 220
    .local v0, diff:J
    sget v4, Lcom/google/android/gm/BaseActivityController;->sSyncProgressMinShowTimeMs:I

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    iget-wide v4, p0, Lcom/google/android/gm/BaseActivityController;->mProgressBarStartTime:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 225
    :cond_0
    const-wide/16 v2, 0x0

    .line 230
    .local v2, stopProgressDelay:J
    :goto_0
    iget-object v4, p0, Lcom/google/android/gm/BaseActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v4}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getUiHandler()Lcom/google/android/gm/UiHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gm/BaseActivityController;->mStopSyncProgressBar:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v2, v3}, Lcom/google/android/gm/UiHandler;->postDelayed(Ljava/lang/Runnable;J)V

    .line 231
    return-void

    .line 227
    .end local v2           #stopProgressDelay:J
    :cond_1
    sget v4, Lcom/google/android/gm/BaseActivityController;->sSyncProgressMinShowTimeMs:I

    int-to-long v4, v4

    sub-long v2, v4, v0

    .restart local v2       #stopProgressDelay:J
    goto :goto_0
.end method

.method private updateActionBar()V
    .locals 3

    .prologue
    .line 791
    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    if-nez v1, :cond_0

    .line 793
    invoke-direct {p0}, Lcom/google/android/gm/BaseActivityController;->initCustomActionBarView()V

    .line 795
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    if-eqz v1, :cond_1

    .line 797
    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mPrefs:Lcom/google/android/gm/persistence/Persistence;

    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gm/persistence/Persistence;->getActiveAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 798
    .local v0, currentAccount:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mAccountNames:[Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gm/ActionBarView;->updateActionBar([Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    .end local v0           #currentAccount:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private updateCachedAccounts()V
    .locals 3

    .prologue
    .line 784
    new-instance v0, Lcom/google/android/gm/AccountHelper$CachedSyncedAccountListUpdater;

    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mAccountNames:[Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/AccountHelper$CachedSyncedAccountListUpdater;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gm/AccountHelper$CachedSyncedAccountListUpdater;->execute()V

    .line 785
    return-void
.end method

.method private validateAccounts([Landroid/accounts/Account;)Z
    .locals 4
    .parameter

    .prologue
    .line 1422
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mAccount:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/accounts/Account;

    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mAccount:Ljava/lang/String;

    const-string v2, "com.google"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/google/android/gm/Utils;->containsAccount(Landroid/accounts/Account;[Landroid/accounts/Account;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1425
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v0}, Lcom/google/android/gm/ActivityController$ControllableActivity;->finish()V

    .line 1426
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gm/BaseActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1427
    const/4 v0, 0x0

    .line 1431
    :goto_0
    return v0

    .line 1430
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mPrefs:Lcom/google/android/gm/persistence/Persistence;

    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mAccount:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/persistence/Persistence;->setActiveAccount(Landroid/content/Context;Ljava/lang/String;)V

    .line 1431
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected applyAutoAdvancePolicy(Z)V
    .locals 2
    .parameter "batch"

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Lcom/google/android/gm/BaseActivityController;->getNextConversationOnDestructiveCommand(Z)Lcom/google/android/gm/ConversationInfo;

    move-result-object v0

    .line 615
    .local v0, info:Lcom/google/android/gm/ConversationInfo;
    if-eqz v0, :cond_1

    .line 616
    if-nez p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/BaseActivityController;->showConversationInternal(Lcom/google/android/gm/ConversationInfo;Z)V

    .line 620
    :goto_1
    return-void

    .line 616
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 618
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gm/BaseActivityController;->handleBackPressed()Z

    goto :goto_1
.end method

.method public attachConversationViewable(Lcom/google/android/gm/ConversationViewable;)V
    .locals 0
    .parameter "conversationViewable"

    .prologue
    .line 1650
    iput-object p1, p0, Lcom/google/android/gm/BaseActivityController;->mConversationViewable:Lcom/google/android/gm/ConversationViewable;

    .line 1651
    return-void
.end method

.method public attachFragment(Lcom/google/android/gm/ConversationListFragment;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 1645
    iput-object p1, p0, Lcom/google/android/gm/BaseActivityController;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    .line 1646
    return-void
.end method

.method public attachLoaderManagerFragment(Lcom/google/android/gm/LoaderManagerFragment;)V
    .locals 0
    .parameter "loaderManagerFragment"

    .prologue
    .line 1655
    iput-object p1, p0, Lcom/google/android/gm/BaseActivityController;->mLoaderManagerFragment:Lcom/google/android/gm/LoaderManagerFragment;

    .line 1656
    return-void
.end method

.method protected canMoveToConversation(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 1558
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    .line 1559
    .local v0, cursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->moveTo(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected cleanupConversation()V
    .locals 1

    .prologue
    .line 1246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

    .line 1247
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationPositionTracker;->clearPosition()V

    .line 1248
    return-void
.end method

.method protected clearUndoOperations()V
    .locals 2

    .prologue
    .line 1604
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gm/MenuHandler;->setUndoOperation(Lcom/google/android/gm/UndoOperation;)V

    .line 1605
    return-void
.end method

.method public doneChangingLabels(Lcom/google/android/gm/LabelOperations;)V
    .locals 0
    .parameter "labelOperations"

    .prologue
    .line 865
    return-void
.end method

.method public enterSearchMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1275
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationSelectionSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1284
    :cond_0
    :goto_0
    return-void

    .line 1278
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    invoke-interface {v0}, Lcom/google/android/gm/ActionBarView;->enterSearchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1282
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v0, v2, v1, v2, v1}, Lcom/google/android/gm/ActivityController$ControllableActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_0
.end method

.method public exitSearchMode()V
    .locals 1

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationListContext;->isSearchResult()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1289
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v0}, Lcom/google/android/gm/ActivityController$ControllableActivity;->finish()V

    .line 1291
    :cond_0
    return-void
.end method

.method public getBatchConversations()Lcom/google/android/gm/ConversationSelectionSet;
    .locals 1

    .prologue
    .line 1624
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    return-object v0
.end method

.method public getConversationListContext()Lcom/google/android/gm/ConversationListContext;
    .locals 1

    .prologue
    .line 1609
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    return-object v0
.end method

.method public getConversationPositionTracker()Lcom/google/android/gm/ConversationPositionTracker;
    .locals 1

    .prologue
    .line 1619
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    return-object v0
.end method

.method public getCurrentAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentConversationInfo()Lcom/google/android/gm/ConversationInfo;
    .locals 1

    .prologue
    .line 1614
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

    return-object v0
.end method

.method public getCurrentListContext()Lcom/google/android/gm/ConversationListContext;
    .locals 1

    .prologue
    .line 1323
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    return-object v0
.end method

.method public getHelpContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1252
    const-string v0, "gm_ttl"

    return-object v0
.end method

.method protected getNextConversationOnDestructiveCommand(Z)Lcom/google/android/gm/ConversationInfo;
    .locals 5
    .parameter "batch"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 628
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v1

    .line 632
    .local v1, persistence:Lcom/google/android/gm/persistence/Persistence;
    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gm/persistence/Persistence;->getAutoAdvanceModeOlder(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 633
    if-eqz p1, :cond_0

    .line 634
    invoke-direct {p0, v3}, Lcom/google/android/gm/BaseActivityController;->getUnselectedConversation(Z)Lcom/google/android/gm/ConversationInfo;

    move-result-object v0

    .line 647
    .local v0, info:Lcom/google/android/gm/ConversationInfo;
    :goto_0
    return-object v0

    .line 636
    .end local v0           #info:Lcom/google/android/gm/ConversationInfo;
    :cond_0
    invoke-direct {p0, v3}, Lcom/google/android/gm/BaseActivityController;->getConversation(Z)Lcom/google/android/gm/ConversationInfo;

    move-result-object v0

    .restart local v0       #info:Lcom/google/android/gm/ConversationInfo;
    goto :goto_0

    .line 638
    .end local v0           #info:Lcom/google/android/gm/ConversationInfo;
    :cond_1
    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gm/persistence/Persistence;->getAutoAdvanceModeNewer(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 639
    if-eqz p1, :cond_2

    .line 640
    invoke-direct {p0, v4}, Lcom/google/android/gm/BaseActivityController;->getUnselectedConversation(Z)Lcom/google/android/gm/ConversationInfo;

    move-result-object v0

    .restart local v0       #info:Lcom/google/android/gm/ConversationInfo;
    goto :goto_0

    .line 642
    .end local v0           #info:Lcom/google/android/gm/ConversationInfo;
    :cond_2
    invoke-direct {p0, v4}, Lcom/google/android/gm/BaseActivityController;->getConversation(Z)Lcom/google/android/gm/ConversationInfo;

    move-result-object v0

    .restart local v0       #info:Lcom/google/android/gm/ConversationInfo;
    goto :goto_0

    .line 645
    .end local v0           #info:Lcom/google/android/gm/ConversationInfo;
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #info:Lcom/google/android/gm/ConversationInfo;
    goto :goto_0
.end method

.method protected abstract getSearchResultsPane()I
.end method

.method protected getSelectedConversations()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 433
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationSelectionSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v0

    .line 443
    :goto_0
    return-object v0

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

    sget-object v1, Lcom/google/android/gm/ConversationInfo;->INVALID_CONVERSATION_INFO:Lcom/google/android/gm/ConversationInfo;

    if-eq v0, v1, :cond_1

    .line 440
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gm/ConversationInfo;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 443
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected getSelectedLabels()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;"
        }
    .end annotation

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/google/android/gm/BaseActivityController;->getSelectedConversations()Ljava/util/Collection;

    move-result-object v0

    .line 454
    .local v0, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationInfo;->getLabels()Ljava/util/Map;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method public abstract getSingleCommandListener()Lcom/google/android/gm/CommandListener;
.end method

.method public getSubjectRemainder(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "subject"

    .prologue
    .line 1715
    move-object v0, p1

    .line 1716
    .local v0, remainder:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mSubjectDisplayer:Lcom/google/android/gm/ConversationSubjectDisplayer;

    if-eqz v1, :cond_0

    .line 1717
    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mSubjectDisplayer:Lcom/google/android/gm/ConversationSubjectDisplayer;

    invoke-interface {v1, p1}, Lcom/google/android/gm/ConversationSubjectDisplayer;->getSubjectRemainder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1719
    :cond_0
    return-object v0
.end method

.method public handleActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 1300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/BaseActivityController;->mActionModeShown:Z

    .line 1301
    return-void
.end method

.method public handleActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 1295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/BaseActivityController;->mActionModeShown:Z

    .line 1296
    return-void
.end method

.method public handleConversationLoadError()V
    .locals 2

    .prologue
    .line 766
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v0}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getUiHandler()Lcom/google/android/gm/UiHandler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gm/BaseActivityController$4;

    invoke-direct {v1, p0}, Lcom/google/android/gm/BaseActivityController$4;-><init>(Lcom/google/android/gm/BaseActivityController;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gm/UiHandler;->post(Ljava/lang/Runnable;)V

    .line 772
    return-void
.end method

.method public handleConversationLoaded(Lcom/google/android/gm/ConversationInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 1724
    invoke-virtual {p0, p1}, Lcom/google/android/gm/BaseActivityController;->setConversationContext(Lcom/google/android/gm/ConversationInfo;)V

    .line 1725
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v0}, Lcom/google/android/gm/ActivityController$ControllableActivity;->invalidateOptionsMenu()V

    .line 1726
    return-void
.end method

.method public handleConversationSelected(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 1525
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gm/BaseActivityController;->handleConversationSelected(ILjava/lang/Boolean;)V

    .line 1526
    return-void
.end method

.method protected handleConversationSelected(ILjava/lang/Boolean;)V
    .locals 7
    .parameter "position"
    .parameter "autoCollapseList"

    .prologue
    .line 1529
    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    .line 1530
    .local v2, cursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;
    invoke-virtual {p0, p1}, Lcom/google/android/gm/BaseActivityController;->canMoveToConversation(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1555
    :cond_0
    :goto_0
    return-void

    .line 1535
    :cond_1
    iget-object v3, p0, Lcom/google/android/gm/BaseActivityController;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    invoke-virtual {v3}, Lcom/google/android/gm/ConversationPositionTracker;->isValid()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gm/BaseActivityController;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    invoke-virtual {v3}, Lcom/google/android/gm/ConversationPositionTracker;->getPosition()I

    move-result v3

    if-eq v3, p1, :cond_0

    .line 1541
    :cond_2
    invoke-virtual {p0, v2}, Lcom/google/android/gm/BaseActivityController;->shouldGoStraightToDraft(Lcom/google/android/gm/provider/Gmail$ConversationCursor;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1542
    iget-object v3, p0, Lcom/google/android/gm/BaseActivityController;->mGmail:Lcom/google/android/gm/provider/Gmail;

    iget-object v4, p0, Lcom/google/android/gm/BaseActivityController;->mAccount:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getConversationId()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lcom/google/android/gm/comm/longshadow/LongShadowUtils;->getComposableMessageId(Lcom/google/android/gm/provider/Gmail;Ljava/lang/String;J)J

    move-result-wide v0

    .line 1544
    .local v0, composableMessageId:J
    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-eqz v3, :cond_3

    .line 1545
    iget-object v3, p0, Lcom/google/android/gm/BaseActivityController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gm/BaseActivityController;->mAccount:Ljava/lang/String;

    invoke-static {v3, v4, v0, v1}, Lcom/google/android/gm/ComposeActivity;->draft(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0

    .line 1550
    .end local v0           #composableMessageId:J
    :cond_3
    if-eqz p2, :cond_4

    .line 1551
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/android/gm/BaseActivityController;->showConversationAtCursor(Z)V

    goto :goto_0

    .line 1553
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gm/BaseActivityController;->showConversationAtCursor()V

    goto :goto_0
.end method

.method public handleCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "id"
    .parameter "bundle"

    .prologue
    .line 1194
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1195
    new-instance v0, Lcom/google/android/gm/ApplyRemoveLabelDialog;

    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/ApplyRemoveLabelDialog;-><init>(Landroid/content/Context;Lcom/google/android/gm/MenuHandler;)V

    .line 1197
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/gm/provider/Gmail$ConversationCursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1502
    const-string v0, "query"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1503
    const-string v0, "limit-initial-result"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 1505
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mGmail:Lcom/google/android/gm/provider/Gmail;

    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationListContext;->getAccount()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/google/android/gm/provider/Gmail$BecomeActiveNetworkCursor;->YES:Lcom/google/android/gm/provider/Gmail$BecomeActiveNetworkCursor;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/provider/Gmail;->getConversationCursorLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$BecomeActiveNetworkCursor;Z)Lcom/google/android/gm/provider/ConversationCursorLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mConversationCursorLoader:Lcom/google/android/gm/provider/ConversationCursorLoader;

    .line 1508
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mConversationCursorLoader:Lcom/google/android/gm/provider/ConversationCursorLoader;

    return-object v0
.end method

.method public handleCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 460
    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    invoke-interface {v1}, Lcom/google/android/gm/ActionBarView;->getMode()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 461
    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v1}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 462
    .local v0, inflater:Landroid/view/MenuInflater;
    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    invoke-interface {v1}, Lcom/google/android/gm/ActionBarView;->getOptionsMenuId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 463
    const v1, 0x7f0f00f5

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mRefreshItem:Landroid/view/MenuItem;

    .line 464
    const/4 v1, 0x1

    .line 466
    .end local v0           #inflater:Landroid/view/MenuInflater;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public handleDrop(Landroid/view/DragEvent;Lcom/google/android/gm/provider/Label;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    .line 1006
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/BaseActivityController;->supportsDrag(Landroid/view/DragEvent;Lcom/google/android/gm/provider/Label;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1066
    :goto_0
    return-void

    .line 1009
    :cond_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v7

    .line 1010
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mAccount:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationListContext;->getLabelName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LabelManager;->getLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v8

    .line 1012
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 1013
    const/4 v0, 0x1

    move v6, v0

    :goto_1
    invoke-virtual {v7}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 1014
    invoke-direct {p0, v7, v6}, Lcom/google/android/gm/BaseActivityController;->getLong(Landroid/content/ClipData;I)J

    move-result-wide v1

    .line 1015
    add-int/lit8 v0, v6, 0x1

    invoke-direct {p0, v7, v0}, Lcom/google/android/gm/BaseActivityController;->getLong(Landroid/content/ClipData;I)J

    move-result-wide v3

    .line 1016
    add-int/lit8 v0, v6, 0x2

    invoke-direct {p0, v7, v0}, Lcom/google/android/gm/BaseActivityController;->getString(Landroid/content/ClipData;I)Ljava/lang/String;

    move-result-object v0

    .line 1017
    invoke-static {v0}, Lcom/google/android/gm/provider/LabelManager;->parseLabelQueryResult(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 1018
    new-instance v0, Lcom/google/android/gm/ConversationInfo;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/ConversationInfo;-><init>(JJLjava/util/Map;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1013
    add-int/lit8 v0, v6, 0x3

    move v6, v0

    goto :goto_1

    .line 1021
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 1022
    const-string v1, "^i"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1024
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x0

    const v5, 0x7f0f00ee

    iget-object v6, p0, Lcom/google/android/gm/BaseActivityController;->mBatchCommandListener:Lcom/google/android/gm/CommandListener;

    move-object v1, p2

    move-object v3, v9

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gm/MenuHandler;->addOrRemoveLabel(Lcom/google/android/gm/provider/Label;Ljava/lang/Boolean;Ljava/util/Collection;ZILcom/google/android/gm/CommandListener;)V

    goto :goto_0

    .line 1028
    :cond_2
    const-string v1, "^t"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1030
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v1}, Lcom/google/android/gm/MenuHandler;->applyStar(Ljava/util/Collection;Lcom/google/android/gm/CommandListener;)V

    goto :goto_0

    .line 1032
    :cond_3
    const-string v1, "^iim"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1033
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mBatchCommandListener:Lcom/google/android/gm/CommandListener;

    invoke-virtual {v0, v9, v1}, Lcom/google/android/gm/MenuHandler;->moveToMagicInbox(Ljava/util/Collection;Lcom/google/android/gm/CommandListener;)V

    goto :goto_0

    .line 1035
    :cond_4
    const-string v1, "^io_im"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1037
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mAccount:Ljava/lang/String;

    const-string v2, "^^important"

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LabelManager;->getLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v1

    .line 1039
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x0

    const v5, 0x7f0f00f0

    iget-object v6, p0, Lcom/google/android/gm/BaseActivityController;->mBatchCommandListener:Lcom/google/android/gm/CommandListener;

    move-object v3, v9

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gm/MenuHandler;->addOrRemoveLabel(Lcom/google/android/gm/provider/Label;Ljava/lang/Boolean;Ljava/util/Collection;ZILcom/google/android/gm/CommandListener;)V

    goto/16 :goto_0

    .line 1044
    :cond_5
    const-string v1, "^k"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1046
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mBatchCommandListener:Lcom/google/android/gm/CommandListener;

    invoke-virtual {v0, v9, v1}, Lcom/google/android/gm/MenuHandler;->delete(Ljava/util/Collection;Lcom/google/android/gm/CommandListener;)V

    goto/16 :goto_0

    .line 1048
    :cond_6
    const-string v1, "^s"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1050
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mBatchCommandListener:Lcom/google/android/gm/CommandListener;

    invoke-virtual {v0, v9, v1}, Lcom/google/android/gm/MenuHandler;->reportSpam(Ljava/util/Collection;Lcom/google/android/gm/CommandListener;)Z

    goto/16 :goto_0

    .line 1055
    :cond_7
    invoke-virtual {v8}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/provider/Gmail;->isLabelUserSettable(Ljava/lang/String;)Z

    move-result v0

    .line 1057
    new-instance v1, Lcom/google/android/gm/LabelOperations;

    invoke-direct {v1}, Lcom/google/android/gm/LabelOperations;-><init>()V

    .line 1058
    if-eqz v0, :cond_8

    .line 1059
    const/4 v0, 0x0

    invoke-virtual {v1, v8, v0}, Lcom/google/android/gm/LabelOperations;->add(Lcom/google/android/gm/provider/Label;Z)V

    .line 1061
    :cond_8
    const/4 v0, 0x1

    invoke-virtual {v1, p2, v0}, Lcom/google/android/gm/LabelOperations;->add(Lcom/google/android/gm/provider/Label;Z)V

    .line 1062
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const v5, 0x7f0f00ee

    iget-object v6, p0, Lcom/google/android/gm/BaseActivityController;->mBatchCommandListener:Lcom/google/android/gm/CommandListener;

    move-object v2, v9

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gm/MenuHandler;->addOrRemoveLabel(Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;ZLcom/google/android/gm/LabelOperations;ILcom/google/android/gm/CommandListener;)V

    goto/16 :goto_0
.end method

.method public handleLabelSelected(Ljava/lang/String;)V
    .locals 1
    .parameter "label"

    .prologue
    .line 1485
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0}, Lcom/google/android/gm/ViewMode;->isLabelListMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationListContext;->getLabelName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1492
    :goto_0
    return-void

    .line 1491
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gm/BaseActivityController;->gotoLabel(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleLoadFinished(Landroid/content/Loader;Lcom/google/android/gm/provider/Gmail$ConversationCursor;)V
    .locals 3
    .parameter
    .parameter "conversationCursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/gm/provider/Gmail$ConversationCursor;",
            ">;",
            "Lcom/google/android/gm/provider/Gmail$ConversationCursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1099
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/google/android/gm/provider/Gmail$ConversationCursor;>;"
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationListContext;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 1125
    .end local p1           #loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/google/android/gm/provider/Gmail$ConversationCursor;>;"
    :cond_0
    :goto_0
    return-void

    .line 1103
    .restart local p1       #loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/google/android/gm/provider/Gmail$ConversationCursor;>;"
    :cond_1
    check-cast p1, Lcom/google/android/gm/provider/ConversationCursorLoader;

    .end local p1           #loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/google/android/gm/provider/Gmail$ConversationCursor;>;"
    iput-object p1, p0, Lcom/google/android/gm/BaseActivityController;->mConversationCursorLoader:Lcom/google/android/gm/provider/ConversationCursorLoader;

    .line 1105
    invoke-virtual {p0}, Lcom/google/android/gm/BaseActivityController;->isConversationListAdded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1106
    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    invoke-virtual {v1, p2}, Lcom/google/android/gm/ConversationListFragment;->setCursor(Lcom/google/android/gm/provider/Gmail$ConversationCursor;)V

    .line 1109
    :cond_2
    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    invoke-virtual {p0}, Lcom/google/android/gm/BaseActivityController;->isConversationListAdded()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationListFragment;->getListAdapter()Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1, p2}, Lcom/google/android/gm/ConversationPositionTracker;->onListDataChanged(Lcom/google/android/gm/ConversationHeaderCursorAdapter;Lcom/google/android/gm/provider/Gmail$ConversationCursor;)Z

    .line 1114
    iget-boolean v1, p0, Lcom/google/android/gm/BaseActivityController;->mJumpToFirstConversation:Z

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gm/BaseActivityController;->isConversationMode()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mConversationViewable:Lcom/google/android/gm/ConversationViewable;

    instance-of v1, v1, Lcom/google/android/gm/ConversationPagerFragment;

    if-eqz v1, :cond_3

    .line 1116
    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mConversationViewable:Lcom/google/android/gm/ConversationViewable;

    check-cast v1, Lcom/google/android/gm/ConversationPagerFragment;

    invoke-virtual {v1, p2}, Lcom/google/android/gm/ConversationPagerFragment;->setCursor(Lcom/google/android/gm/provider/Gmail$ConversationCursor;)V

    .line 1118
    :cond_3
    iput-object p2, p0, Lcom/google/android/gm/BaseActivityController;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    .line 1119
    invoke-virtual {p2}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getStatus()Lcom/google/android/gm/provider/Gmail$CursorStatus;

    move-result-object v0

    .line 1121
    .local v0, status:Lcom/google/android/gm/provider/Gmail$CursorStatus;
    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationListContext;->isSearchResult()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gm/provider/Gmail$CursorStatus;->LOADED:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/google/android/gm/provider/Gmail$CursorStatus;->COMPLETE:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    if-ne v0, v1, :cond_0

    .line 1123
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gm/BaseActivityController;->onSearchResultLoaded()V

    goto :goto_0

    .line 1109
    .end local v0           #status:Lcom/google/android/gm/provider/Gmail$CursorStatus;
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public handleLoaderReset(Landroid/content/Loader;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/gm/provider/Gmail$ConversationCursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/google/android/gm/provider/Gmail$ConversationCursor;>;"
    const/4 v2, 0x0

    .line 1514
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationListContext;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1515
    iput-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mConversationCursorLoader:Lcom/google/android/gm/provider/ConversationCursorLoader;

    .line 1516
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    invoke-virtual {v0, v2, v2}, Lcom/google/android/gm/ConversationPositionTracker;->onListDataChanged(Lcom/google/android/gm/ConversationHeaderCursorAdapter;Lcom/google/android/gm/provider/Gmail$ConversationCursor;)Z

    .line 1517
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mLoaderManagerFragment:Lcom/google/android/gm/LoaderManagerFragment;

    if-eqz v0, :cond_0

    .line 1518
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mLoaderManagerFragment:Lcom/google/android/gm/LoaderManagerFragment;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/LoaderManagerFragment;->removeLoader(Landroid/content/Loader;)V

    .line 1521
    :cond_0
    return-void
.end method

.method public handleOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 502
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    .line 503
    invoke-virtual {p0}, Lcom/google/android/gm/BaseActivityController;->handleUpPressed()V

    .line 538
    :goto_0
    return v0

    .line 507
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0f00f6

    if-ne v1, v2, :cond_2

    .line 508
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mContext:Landroid/content/Context;

    const-class v3, Lcom/google/android/gm/LabelsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 509
    const-string v2, "account"

    iget-object v3, p0, Lcom/google/android/gm/BaseActivityController;->mAccount:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 510
    invoke-virtual {p0}, Lcom/google/android/gm/BaseActivityController;->isConversationListMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 511
    const-string v2, "label"

    iget-object v3, p0, Lcom/google/android/gm/BaseActivityController;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v3}, Lcom/google/android/gm/ConversationListContext;->getLabelName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 513
    :cond_1
    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/google/android/gm/ActivityController$ControllableActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 521
    :cond_2
    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/gm/MenuHandler;->shouldDisplayAutoAdvanceDialog(Landroid/content/Context;Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 525
    new-instance v1, Lcom/google/android/gm/BaseActivityController$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gm/BaseActivityController$3;-><init>(Lcom/google/android/gm/BaseActivityController;Landroid/view/MenuItem;)V

    .line 531
    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/google/android/gm/MenuHandler;->displayAutoAdvanceDialogAndPerformAction(Landroid/content/Context;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 536
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/gm/BaseActivityController;->onOptionsItemSelectedInternal(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public handlePause()V
    .locals 1

    .prologue
    .line 411
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gm/BaseActivityController;->stopStatusCursorLoader(I)V

    .line 413
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    invoke-interface {v0}, Lcom/google/android/gm/ActionBarView;->onPause()V

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gm/RecentLabelsCache;->getInstance(Landroid/content/Context;)Lcom/google/android/gm/RecentLabelsCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/RecentLabelsCache;->save()V

    .line 418
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v0, p0}, Lcom/google/android/gm/ConversationSelectionSet;->removeObserver(Lcom/google/android/gm/ConversationSelectionSet$ConversationSetObserver;)V

    .line 419
    invoke-direct {p0}, Lcom/google/android/gm/BaseActivityController;->enableNotifications()V

    .line 420
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    invoke-virtual {v0}, Lcom/google/android/gm/MenuHandler;->detach()V

    .line 421
    return-void
.end method

.method public handlePrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 6
    .parameter "id"
    .parameter "dialog"
    .parameter "bundle"

    .prologue
    const/4 v5, 0x1

    .line 1202
    if-ne p1, v5, :cond_1

    move-object v0, p2

    .line 1203
    check-cast v0, Lcom/google/android/gm/ApplyRemoveLabelDialog;

    .line 1204
    .local v0, applyRemoveLabelDialog:Lcom/google/android/gm/ApplyRemoveLabelDialog;
    const/4 v2, 0x0

    .line 1205
    .local v2, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    const/4 v1, 0x0

    .line 1206
    .local v1, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    iget-boolean v3, p0, Lcom/google/android/gm/BaseActivityController;->mActionModeShown:Z

    if-eqz v3, :cond_2

    .line 1208
    iget-object v3, p0, Lcom/google/android/gm/BaseActivityController;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v3}, Lcom/google/android/gm/ConversationSelectionSet;->getLabels()Ljava/util/Map;

    move-result-object v2

    .line 1209
    iget-object v3, p0, Lcom/google/android/gm/BaseActivityController;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v3}, Lcom/google/android/gm/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v1

    .line 1219
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gm/BaseActivityController;->isConversationMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1220
    invoke-virtual {p0}, Lcom/google/android/gm/BaseActivityController;->getSingleCommandListener()Lcom/google/android/gm/CommandListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gm/ApplyRemoveLabelDialog;->setCommandListener(Lcom/google/android/gm/CommandListener;)V

    .line 1225
    :goto_1
    iget-object v3, p0, Lcom/google/android/gm/BaseActivityController;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    invoke-virtual {v3, v0, v2, v1}, Lcom/google/android/gm/MenuHandler;->prepareLabelDialog(Lcom/google/android/gm/ApplyRemoveLabelDialog;Ljava/util/Map;Ljava/util/Collection;)V

    .line 1227
    .end local v0           #applyRemoveLabelDialog:Lcom/google/android/gm/ApplyRemoveLabelDialog;
    .end local v1           #conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    .end local v2           #labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    :cond_1
    return-void

    .line 1210
    .restart local v0       #applyRemoveLabelDialog:Lcom/google/android/gm/ApplyRemoveLabelDialog;
    .restart local v1       #conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    .restart local v2       #labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gm/BaseActivityController;->isConversationMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1211
    iget-object v3, p0, Lcom/google/android/gm/BaseActivityController;->mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

    sget-object v4, Lcom/google/android/gm/ConversationInfo;->INVALID_CONVERSATION_INFO:Lcom/google/android/gm/ConversationInfo;

    if-eq v3, v4, :cond_1

    .line 1215
    iget-object v3, p0, Lcom/google/android/gm/BaseActivityController;->mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v3}, Lcom/google/android/gm/ConversationInfo;->getLabels()Ljava/util/Map;

    move-result-object v2

    .line 1216
    new-array v3, v5, [Lcom/google/android/gm/ConversationInfo;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gm/BaseActivityController;->mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 1222
    :cond_3
    iget-object v3, p0, Lcom/google/android/gm/BaseActivityController;->mBatchCommandListener:Lcom/google/android/gm/CommandListener;

    invoke-virtual {v0, v3}, Lcom/google/android/gm/ApplyRemoveLabelDialog;->setCommandListener(Lcom/google/android/gm/CommandListener;)V

    goto :goto_1
.end method

.method public handlePrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v5, 0x0

    .line 471
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    invoke-interface {v0}, Lcom/google/android/gm/ActionBarView;->getMode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    move v6, v5

    .line 497
    :goto_0
    return v6

    .line 474
    :cond_1
    const/4 v6, 0x0

    .line 476
    .local v6, handled:Z
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    invoke-interface {v0, p1}, Lcom/google/android/gm/ActionBarView;->setSearch(Landroid/view/Menu;)V

    .line 477
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationSelectionSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 479
    const/4 v6, 0x0

    .line 496
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    invoke-interface {v0}, Lcom/google/android/gm/ActionBarView;->prepareOptionsMenu()V

    goto :goto_0

    .line 480
    :cond_3
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0}, Lcom/google/android/gm/ViewMode;->isConversationMode()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

    if-eqz v0, :cond_5

    .line 484
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

    sget-object v1, Lcom/google/android/gm/ConversationInfo;->INVALID_CONVERSATION_INFO:Lcom/google/android/gm/ConversationInfo;

    if-eq v0, v1, :cond_4

    const/4 v5, 0x1

    .line 486
    .local v5, isDoneLoading:Z
    :cond_4
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationInfo;->getLabels()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/BaseActivityController;->mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationListContext;->getLabelName()Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/MenuHandler;->prepareMenuAndDisableIfLoading(Landroid/view/Menu;Ljava/util/Map;Lcom/google/android/gm/ConversationInfo;Ljava/lang/String;Z)V

    .line 489
    const/4 v6, 0x1

    .line 490
    goto :goto_1

    .end local v5           #isDoneLoading:Z
    :cond_5
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0}, Lcom/google/android/gm/ViewMode;->isConversationListMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 492
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    invoke-virtual {p0}, Lcom/google/android/gm/BaseActivityController;->getSelectedLabels()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/google/android/gm/BaseActivityController;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v3}, Lcom/google/android/gm/ConversationListContext;->getLabelName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/android/gm/MenuHandler;->onPrepareMenu(Landroid/view/Menu;Ljava/util/Map;Ljava/util/Collection;Ljava/lang/String;)V

    .line 494
    const/4 v6, 0x1

    goto :goto_1
.end method

.method public handleResume()V
    .locals 5

    .prologue
    .line 382
    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v1, p0}, Lcom/google/android/gm/ConversationSelectionSet;->addObserver(Lcom/google/android/gm/ConversationSelectionSet$ConversationSetObserver;)V

    .line 383
    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    iget-object v3, p0, Lcom/google/android/gm/BaseActivityController;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v3}, Lcom/google/android/gm/ConversationListContext;->getLabelName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gm/BaseActivityController;->mAccount:Ljava/lang/String;

    invoke-virtual {v1, v2, p0, v3, v4}, Lcom/google/android/gm/MenuHandler;->attach(Lcom/google/android/gm/RestrictedActivity;Lcom/google/android/gm/MenuHandler$ActivityCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-virtual {p0}, Lcom/google/android/gm/BaseActivityController;->updateAccountsInfo()V

    .line 390
    invoke-direct {p0}, Lcom/google/android/gm/BaseActivityController;->disableNotifications()V

    .line 392
    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    if-eqz v1, :cond_0

    .line 393
    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    invoke-interface {v1}, Lcom/google/android/gm/ActionBarView;->onResume()V

    .line 396
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 397
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "account"

    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mAccount:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/google/android/gm/BaseActivityController;->startStatusCursorLoader(ILandroid/os/Bundle;)V

    .line 399
    return-void
.end method

.method public handleSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 741
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    if-eqz v0, :cond_0

    .line 742
    const-string v0, "saved-list-context"

    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationListContext;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 745
    :cond_0
    const-string v0, "saved-conversations"

    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 747
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/MenuHandler;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 749
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

    sget-object v1, Lcom/google/android/gm/ConversationInfo;->INVALID_CONVERSATION_INFO:Lcom/google/android/gm/ConversationInfo;

    if-eq v0, v1, :cond_1

    .line 751
    const-string v0, "saved-conversation"

    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 752
    const-string v0, "saved-conv-pos"

    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationPositionTracker;->getPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 755
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/ViewMode;->handleSaveInstanceState(Landroid/os/Bundle;)V

    .line 756
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    invoke-interface {v0, p1}, Lcom/google/android/gm/ActionBarView;->handleSaveInstanceState(Landroid/os/Bundle;)V

    .line 757
    return-void
.end method

.method public handleStop()V
    .locals 0

    .prologue
    .line 425
    invoke-direct {p0}, Lcom/google/android/gm/BaseActivityController;->resetSyncProgressBar()V

    .line 426
    return-void
.end method

.method public handleToggleStar(ZJJLjava/util/Map;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1343
    iget-object v8, p0, Lcom/google/android/gm/BaseActivityController;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mAccount:Ljava/lang/String;

    const-string v2, "^t"

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LabelManager;->getLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v9

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    new-instance v0, Lcom/google/android/gm/ConversationInfo;

    move-wide v1, p2

    move-wide v3, p4

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/ConversationInfo;-><init>(JJLjava/util/Map;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, v9

    move-object v3, v10

    move-object v4, v0

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gm/MenuHandler;->addOrRemoveLabel(Lcom/google/android/gm/provider/Label;Ljava/lang/Boolean;Lcom/google/android/gm/ConversationInfo;ZILcom/google/android/gm/CommandListener;)V

    .line 1348
    invoke-virtual {p0}, Lcom/google/android/gm/BaseActivityController;->isConversationMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-nez v0, :cond_0

    .line 1350
    if-eqz p1, :cond_1

    .line 1351
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mConversationViewable:Lcom/google/android/gm/ConversationViewable;

    invoke-interface {v0}, Lcom/google/android/gm/ConversationViewable;->toggleStar()V

    .line 1356
    :cond_0
    :goto_0
    return-void

    .line 1353
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mConversationViewable:Lcom/google/android/gm/ConversationViewable;

    invoke-interface {v0}, Lcom/google/android/gm/ConversationViewable;->unstarAllMessages()V

    goto :goto_0
.end method

.method public handleWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasFocus"

    .prologue
    .line 582
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gm/BaseActivityController;->isConversationListVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gm/Utils;->markConversationsVisible(Lcom/google/android/gm/provider/Gmail$ConversationCursor;Z)V

    .line 585
    :cond_0
    return-void
.end method

.method protected abstract hideUndoView(Z)V
.end method

.method public initialize(Landroid/os/Bundle;)Z
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 245
    invoke-direct {p0}, Lcom/google/android/gm/BaseActivityController;->initCustomActionBarView()V

    .line 247
    iget-object v3, p0, Lcom/google/android/gm/BaseActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v3}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 248
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/google/android/gm/BaseActivityController;->mAccountHelper:Lcom/google/android/gm/AccountHelper;

    invoke-virtual {v3, v1}, Lcom/google/android/gm/AccountHelper;->chooseAccount(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gm/BaseActivityController;->mAccount:Ljava/lang/String;

    .line 249
    iget-object v3, p0, Lcom/google/android/gm/BaseActivityController;->mAccount:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 251
    iget-object v3, p0, Lcom/google/android/gm/BaseActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v3}, Lcom/google/android/gm/ActivityController$ControllableActivity;->finish()V

    .line 252
    const/4 v3, 0x0

    .line 277
    :goto_0
    return v3

    .line 256
    :cond_0
    iget-object v3, p0, Lcom/google/android/gm/BaseActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Lcom/google/android/gm/ActivityController$ControllableActivity;->setDefaultKeyMode(I)V

    .line 258
    iget-object v3, p0, Lcom/google/android/gm/BaseActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v3}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 259
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gm/comm/longshadow/LongShadowUtils;->getContentProviderMailAccess(Landroid/content/ContentResolver;)Lcom/google/android/gm/provider/Gmail;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gm/BaseActivityController;->mGmail:Lcom/google/android/gm/provider/Gmail;

    .line 260
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gm/BaseActivityController;->mPrefs:Lcom/google/android/gm/persistence/Persistence;

    .line 261
    iget-object v3, p0, Lcom/google/android/gm/BaseActivityController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gm/MenuHandler;->getInstance(Landroid/content/Context;)Lcom/google/android/gm/MenuHandler;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gm/BaseActivityController;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    .line 262
    new-instance v3, Lcom/google/android/gm/SuppressNotificationReceiver;

    invoke-direct {v3}, Lcom/google/android/gm/SuppressNotificationReceiver;-><init>()V

    iput-object v3, p0, Lcom/google/android/gm/BaseActivityController;->mNewEmailReceiver:Lcom/google/android/gm/SuppressNotificationReceiver;

    .line 264
    iget-object v3, p0, Lcom/google/android/gm/BaseActivityController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gm/Utils;->enableShortcutIntentFilter(Landroid/content/Context;)V

    .line 266
    iget-object v3, p0, Lcom/google/android/gm/BaseActivityController;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v3, p0}, Lcom/google/android/gm/ViewMode;->addListener(Lcom/google/android/gm/ViewMode$ModeChangeListener;)V

    .line 269
    invoke-virtual {p0, p1}, Lcom/google/android/gm/BaseActivityController;->restoreState(Landroid/os/Bundle;)V

    .line 271
    invoke-direct {p0}, Lcom/google/android/gm/BaseActivityController;->initializeStatusLoader()V

    .line 273
    sget v3, Lcom/google/android/gm/BaseActivityController;->sSyncProgressMinShowTimeMs:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 274
    iget-object v3, p0, Lcom/google/android/gm/BaseActivityController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 275
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x7f090029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    sput v3, Lcom/google/android/gm/BaseActivityController;->sSyncProgressMinShowTimeMs:I

    .line 277
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method protected abstract isConversationListAdded()Z
.end method

.method protected isConversationListMode()Z
    .locals 1

    .prologue
    .line 1632
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0}, Lcom/google/android/gm/ViewMode;->isConversationListMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract isConversationListVisible()Z
.end method

.method protected isConversationMode()Z
    .locals 1

    .prologue
    .line 1640
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0}, Lcom/google/android/gm/ViewMode;->isConversationMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mConversationViewable:Lcom/google/android/gm/ConversationViewable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isTesting()Z
    .locals 2

    .prologue
    .line 1388
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v0}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "test-account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public navigateToAccount(Ljava/lang/String;)Z
    .locals 1
    .parameter "newAccount"

    .prologue
    .line 807
    invoke-virtual {p0, p1}, Lcom/google/android/gm/BaseActivityController;->setAccount(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/gm/persistence/Persistence;->getAccountInbox(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gm/BaseActivityController;->gotoLabel(Ljava/lang/String;)V

    .line 810
    const/4 v0, 0x1

    .line 812
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public navigateToLabel(Ljava/lang/String;)V
    .locals 0
    .parameter "labelCanonicalName"

    .prologue
    .line 817
    invoke-virtual {p0, p1}, Lcom/google/android/gm/BaseActivityController;->handleLabelSelected(Ljava/lang/String;)V

    .line 818
    return-void
.end method

.method protected onAccountChanged()V
    .locals 4

    .prologue
    .line 821
    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mAccount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gm/MenuHandler;->setAccount(Ljava/lang/String;)V

    .line 822
    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mPrefs:Lcom/google/android/gm/persistence/Persistence;

    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gm/BaseActivityController;->mAccount:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gm/persistence/Persistence;->setActiveAccount(Landroid/content/Context;Ljava/lang/String;)V

    .line 823
    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mAccount:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gm/utils/CustomFromUtils;->getDefaultCustomFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 824
    .local v0, fromAddress:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/gm/GmailBaseActivity;->getMailtoNdef(Ljava/lang/String;)Landroid/nfc/NdefMessage;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gm/GmailBaseActivity;->setForegroundNdef(Landroid/nfc/NdefMessage;)V

    .line 825
    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mAccountNames:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 829
    invoke-virtual {p0}, Lcom/google/android/gm/BaseActivityController;->updateAccountsInfo()V

    .line 834
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gm/BaseActivityController;->removeContextualActionBar()V

    .line 836
    invoke-direct {p0}, Lcom/google/android/gm/BaseActivityController;->initializeStatusLoader()V

    .line 837
    return-void

    .line 831
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gm/BaseActivityController;->updateActionBar()V

    goto :goto_0
.end method

.method public onConversationListVisibilityChanged(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 1305
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mSelectedConversationsActionMenu:Lcom/google/android/gm/SelectedConversationsActionMenu;

    if-nez v0, :cond_0

    .line 1314
    :goto_0
    return-void

    .line 1309
    :cond_0
    if-eqz p1, :cond_1

    .line 1310
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mSelectedConversationsActionMenu:Lcom/google/android/gm/SelectedConversationsActionMenu;

    invoke-virtual {v0}, Lcom/google/android/gm/SelectedConversationsActionMenu;->activate()V

    goto :goto_0

    .line 1312
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mSelectedConversationsActionMenu:Lcom/google/android/gm/SelectedConversationsActionMenu;

    invoke-virtual {v0}, Lcom/google/android/gm/SelectedConversationsActionMenu;->deactivate()V

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1129
    const-string v0, "account"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1130
    .local v7, account:Ljava/lang/String;
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/google/android/gm/provider/Gmail;->getStatusUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected onDestructiveCommand(ZI)V
    .locals 3
    .parameter "batch"
    .parameter "commandId"

    .prologue
    .line 594
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gm/BaseActivityController;->isConversationListAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 595
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mSelectedConversationsActionMenu:Lcom/google/android/gm/SelectedConversationsActionMenu;

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mSelectedConversationsActionMenu:Lcom/google/android/gm/SelectedConversationsActionMenu;

    invoke-virtual {v0, p2}, Lcom/google/android/gm/SelectedConversationsActionMenu;->disableCommand(I)V

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationSelectionSet;->keySet()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ConversationListFragment;->fadeConversations(Ljava/util/Collection;)V

    .line 602
    invoke-virtual {p0}, Lcom/google/android/gm/BaseActivityController;->isConversationMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ConversationSelectionSet;->containsKey(Ljava/lang/Long;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 605
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gm/BaseActivityController;->applyAutoAdvancePolicy(Z)V

    .line 611
    :cond_1
    :goto_0
    return-void

    .line 607
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gm/BaseActivityController;->isConversationMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 608
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mConversationViewable:Lcom/google/android/gm/ConversationViewable;

    invoke-interface {v0}, Lcom/google/android/gm/ConversationViewable;->onDestructiveCommand()V

    .line 609
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/BaseActivityController;->applyAutoAdvancePolicy(Z)V

    goto :goto_0
.end method

.method public onEndBulkOperation()V
    .locals 1

    .prologue
    .line 1581
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mConversationCursorLoader:Lcom/google/android/gm/provider/ConversationCursorLoader;

    if-eqz v0, :cond_0

    .line 1583
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mConversationCursorLoader:Lcom/google/android/gm/provider/ConversationCursorLoader;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/ConversationCursorLoader;->startLoading()V

    .line 1585
    :cond_0
    return-void
.end method

.method public onLabelChanged(Lcom/google/android/gm/provider/Label;JZ)V
    .locals 2
    .parameter "label"
    .parameter "conversationId"
    .parameter "added"

    .prologue
    .line 869
    invoke-virtual {p0}, Lcom/google/android/gm/BaseActivityController;->isConversationMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mConversationViewable:Lcom/google/android/gm/ConversationViewable;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gm/ConversationViewable;->onLabelChanged(Lcom/google/android/gm/provider/Label;JZ)V

    .line 873
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gm/ConversationSelectionSet;->onLabelChanged(Lcom/google/android/gm/provider/Label;JZ)V

    .line 875
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mSelectedConversationsActionMenu:Lcom/google/android/gm/SelectedConversationsActionMenu;

    if-eqz v0, :cond_1

    .line 876
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mSelectedConversationsActionMenu:Lcom/google/android/gm/SelectedConversationsActionMenu;

    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/SelectedConversationsActionMenu;->onSetChanged(Lcom/google/android/gm/ConversationSelectionSet;)V

    .line 878
    :cond_1
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1135
    if-nez p2, :cond_1

    .line 1165
    :cond_0
    :goto_0
    return-void

    .line 1138
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1140
    const-string v0, "status"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1141
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    if-nez v1, :cond_4

    .line 1142
    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 1147
    :goto_1
    iget-boolean v1, p0, Lcom/google/android/gm/BaseActivityController;->mPendingSyncInProgressState:Z

    if-eq v1, v0, :cond_0

    .line 1150
    iput-boolean v0, p0, Lcom/google/android/gm/BaseActivityController;->mPendingSyncInProgressState:Z

    .line 1151
    if-eqz v0, :cond_3

    .line 1152
    invoke-direct {p0}, Lcom/google/android/gm/BaseActivityController;->startSyncProgressBar()V

    goto :goto_0

    .line 1142
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1154
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gm/BaseActivityController;->stopSyncProgressBar()V

    goto :goto_0

    .line 1159
    :cond_4
    const-string v1, "account"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1161
    if-eqz v1, :cond_0

    .line 1162
    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    invoke-interface {v2, v1, v0}, Lcom/google/android/gm/ActionBarView;->onStatusResult(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/BaseActivityController;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1170
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method protected onSearchResultLoaded()V
    .locals 0

    .prologue
    .line 1704
    return-void
.end method

.method public onSetBecomeUnempty(Lcom/google/android/gm/ConversationSelectionSet;)V
    .locals 7
    .parameter "set"

    .prologue
    .line 1176
    new-instance v0, Lcom/google/android/gm/SelectedConversationsActionMenu;

    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mBatchCommandListener:Lcom/google/android/gm/CommandListener;

    iget-object v3, p0, Lcom/google/android/gm/BaseActivityController;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    iget-object v4, p0, Lcom/google/android/gm/BaseActivityController;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    iget-object v5, p0, Lcom/google/android/gm/BaseActivityController;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    iget-object v6, p0, Lcom/google/android/gm/BaseActivityController;->mAccount:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gm/SelectedConversationsActionMenu;-><init>(Lcom/google/android/gm/RestrictedActivity;Lcom/google/android/gm/CommandListener;Lcom/google/android/gm/ConversationListContext;Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/ConversationSelectionSet;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mSelectedConversationsActionMenu:Lcom/google/android/gm/SelectedConversationsActionMenu;

    .line 1179
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mSelectedConversationsActionMenu:Lcom/google/android/gm/SelectedConversationsActionMenu;

    invoke-virtual {v0}, Lcom/google/android/gm/SelectedConversationsActionMenu;->activate()V

    .line 1180
    return-void
.end method

.method public onSetChanged(Lcom/google/android/gm/ConversationSelectionSet;)V
    .locals 0
    .parameter "set"

    .prologue
    .line 1190
    return-void
.end method

.method public onSetEmpty(Lcom/google/android/gm/ConversationSelectionSet;)V
    .locals 1
    .parameter "set"

    .prologue
    .line 1184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mSelectedConversationsActionMenu:Lcom/google/android/gm/SelectedConversationsActionMenu;

    .line 1185
    return-void
.end method

.method public onStartBulkOperation()V
    .locals 1

    .prologue
    .line 1572
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mConversationCursorLoader:Lcom/google/android/gm/provider/ConversationCursorLoader;

    if-eqz v0, :cond_0

    .line 1575
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mConversationCursorLoader:Lcom/google/android/gm/provider/ConversationCursorLoader;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/ConversationCursorLoader;->stopLoading()V

    .line 1577
    :cond_0
    return-void
.end method

.method public onStartDragMode()V
    .locals 1

    .prologue
    .line 1589
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mConversationCursorLoader:Lcom/google/android/gm/provider/ConversationCursorLoader;

    if-eqz v0, :cond_0

    .line 1591
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mConversationCursorLoader:Lcom/google/android/gm/provider/ConversationCursorLoader;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/ConversationCursorLoader;->stopLoading()V

    .line 1593
    :cond_0
    return-void
.end method

.method public onStopDragMode()V
    .locals 1

    .prologue
    .line 1597
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mConversationCursorLoader:Lcom/google/android/gm/provider/ConversationCursorLoader;

    if-eqz v0, :cond_0

    .line 1599
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mConversationCursorLoader:Lcom/google/android/gm/provider/ConversationCursorLoader;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/ConversationCursorLoader;->startLoading()V

    .line 1601
    :cond_0
    return-void
.end method

.method public onUndoAvailable(Lcom/google/android/gm/UndoOperation;)V
    .locals 0
    .parameter "op"

    .prologue
    .line 1361
    return-void
.end method

.method public onUndoExpired()V
    .locals 1

    .prologue
    .line 1365
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/BaseActivityController;->hideUndoView(Z)V

    .line 1366
    return-void
.end method

.method public onViewModeChanged(Lcom/google/android/gm/ViewMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 1231
    invoke-virtual {p0}, Lcom/google/android/gm/BaseActivityController;->resetActionBarIcon()V

    .line 1232
    invoke-virtual {p1}, Lcom/google/android/gm/ViewMode;->isConversationListMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1233
    invoke-virtual {p0}, Lcom/google/android/gm/BaseActivityController;->cleanupConversation()V

    .line 1235
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gm/ViewMode;->isConversationMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1238
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v0}, Lcom/google/android/gm/ActivityController$ControllableActivity;->invalidateOptionsMenu()V

    .line 1240
    :cond_1
    return-void
.end method

.method public reloadSearch(Ljava/lang/String;)V
    .locals 3
    .parameter "query"

    .prologue
    .line 1730
    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mAccount:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/google/android/gm/ConversationListContext;->forSearchQuery(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/ConversationListContext;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gm/BaseActivityController;->setConversationListContext(Lcom/google/android/gm/ConversationListContext;)V

    .line 1731
    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v2}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1732
    .local v1, fragmentTransaction:Landroid/app/FragmentTransaction;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1733
    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-static {v2}, Lcom/google/android/gm/ConversationListFragment;->newInstance(Lcom/google/android/gm/ConversationListContext;)Lcom/google/android/gm/ConversationListFragment;

    move-result-object v0

    .line 1735
    .local v0, conversationListFragment:Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/google/android/gm/BaseActivityController;->getSearchResultsPane()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1736
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1737
    return-void
.end method

.method protected abstract resetActionBarIcon()V
.end method

.method protected restoreConversationContext(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedState"

    .prologue
    .line 700
    const-string v1, "saved-conversation"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/ConversationInfo;

    .line 701
    .local v0, info:Lcom/google/android/gm/ConversationInfo;
    if-eqz v0, :cond_0

    .line 702
    invoke-virtual {p0, v0}, Lcom/google/android/gm/BaseActivityController;->setConversationContext(Lcom/google/android/gm/ConversationInfo;)V

    .line 704
    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v2

    const-string v4, "saved-conv-pos"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gm/ConversationPositionTracker;->initialize(JI)V

    .line 707
    :cond_0
    return-void
.end method

.method protected restoreListContext(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    .line 1439
    const-string v1, "saved-list-context"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1440
    .local v0, listContextBundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1441
    invoke-static {v0}, Lcom/google/android/gm/ConversationListContext;->forBundle(Landroid/os/Bundle;)Lcom/google/android/gm/ConversationListContext;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gm/BaseActivityController;->setConversationListContext(Lcom/google/android/gm/ConversationListContext;)V

    .line 1443
    :cond_0
    return-void
.end method

.method protected restoreState(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 292
    if-eqz p1, :cond_2

    .line 294
    invoke-virtual {p0, p1}, Lcom/google/android/gm/BaseActivityController;->restoreListContext(Landroid/os/Bundle;)V

    .line 297
    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    invoke-virtual {v2, p1}, Lcom/google/android/gm/MenuHandler;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 300
    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    iget-object v5, p0, Lcom/google/android/gm/BaseActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    iget-object v6, p0, Lcom/google/android/gm/BaseActivityController;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v6}, Lcom/google/android/gm/ConversationListContext;->getLabelName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gm/BaseActivityController;->mAccount:Ljava/lang/String;

    invoke-virtual {v2, v5, p0, v6, v7}, Lcom/google/android/gm/MenuHandler;->attach(Lcom/google/android/gm/RestrictedActivity;Lcom/google/android/gm/MenuHandler$ActivityCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0, p1}, Lcom/google/android/gm/BaseActivityController;->restoreConversationContext(Landroid/os/Bundle;)V

    .line 327
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

    if-eqz v2, :cond_5

    .line 329
    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    iget-object v5, p0, Lcom/google/android/gm/BaseActivityController;->mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v5}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6, v8}, Lcom/google/android/gm/ConversationPositionTracker;->initialize(JI)V

    .line 330
    iget-object v5, p0, Lcom/google/android/gm/BaseActivityController;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationListFragment;->getListAdapter()Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    move-result-object v2

    :goto_1
    iget-object v3, p0, Lcom/google/android/gm/BaseActivityController;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v5, v2, v3}, Lcom/google/android/gm/ConversationPositionTracker;->onListDataChanged(Lcom/google/android/gm/ConversationHeaderCursorAdapter;Lcom/google/android/gm/provider/Gmail$ConversationCursor;)Z

    .line 333
    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v2}, Lcom/google/android/gm/ViewMode;->transitionToConversationMode()Z

    .line 347
    :goto_2
    if-eqz p1, :cond_8

    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationListContext;->isSearchResult()Z

    move-result v2

    if-nez v2, :cond_8

    .line 349
    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v2, p1}, Lcom/google/android/gm/ViewMode;->handleRestore(Landroid/os/Bundle;)V

    .line 351
    const-string v2, "saved-conversations"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gm/ConversationSelectionSet;

    iput-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    .line 352
    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationSelectionSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 353
    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {p0, v2}, Lcom/google/android/gm/BaseActivityController;->onSetBecomeUnempty(Lcom/google/android/gm/ConversationSelectionSet;)V

    .line 354
    invoke-virtual {p0}, Lcom/google/android/gm/BaseActivityController;->isConversationListVisible()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/gm/BaseActivityController;->onConversationListVisibilityChanged(Z)V

    .line 358
    :goto_3
    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    invoke-interface {v2, p1}, Lcom/google/android/gm/ActionBarView;->handleRestore(Landroid/os/Bundle;)V

    .line 359
    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v2}, Lcom/google/android/gm/ActivityController$ControllableActivity;->invalidateOptionsMenu()V

    .line 377
    :cond_1
    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gm/BaseActivityController;->resetActionBarIcon()V

    .line 378
    return-void

    .line 305
    :cond_2
    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v2}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 308
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gm/BaseActivityController;->mAccount:Ljava/lang/String;

    invoke-static {v2, v5, v1}, Lcom/google/android/gm/ConversationListContext;->forIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Lcom/google/android/gm/ConversationListContext;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gm/BaseActivityController;->showConversationList(Lcom/google/android/gm/ConversationListContext;)V

    .line 311
    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    iget-object v5, p0, Lcom/google/android/gm/BaseActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    iget-object v6, p0, Lcom/google/android/gm/BaseActivityController;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v6}, Lcom/google/android/gm/ConversationListContext;->getLabelName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gm/BaseActivityController;->mAccount:Ljava/lang/String;

    invoke-virtual {v2, v5, p0, v6, v7}, Lcom/google/android/gm/MenuHandler;->attach(Lcom/google/android/gm/RestrictedActivity;Lcom/google/android/gm/MenuHandler$ActivityCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationListContext;->isSearchResult()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 315
    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v2}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/google/android/gm/GmailApplication;

    invoke-virtual {v2}, Lcom/google/android/gm/GmailApplication;->getRecentSuggestions()Landroid/provider/SearchRecentSuggestions;

    move-result-object v2

    iget-object v5, p0, Lcom/google/android/gm/BaseActivityController;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v5}, Lcom/google/android/gm/ConversationListContext;->getSearchQuery()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v3}, Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :cond_3
    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/google/android/gm/ConversationInfo;->forIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gm/ConversationInfo;

    move-result-object v0

    .line 321
    .local v0, conversationInfo:Lcom/google/android/gm/ConversationInfo;
    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {p0, v0, v4}, Lcom/google/android/gm/BaseActivityController;->showConversationInternal(Lcom/google/android/gm/ConversationInfo;Z)V

    goto/16 :goto_0

    .end local v0           #conversationInfo:Lcom/google/android/gm/ConversationInfo;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_4
    move-object v2, v3

    .line 330
    goto/16 :goto_1

    .line 334
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gm/BaseActivityController;->shouldShowFirstSearchResult()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 336
    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v2}, Lcom/google/android/gm/ViewMode;->transitionToConversationMode()Z

    .line 337
    invoke-virtual {p0}, Lcom/google/android/gm/BaseActivityController;->uncollapseList()Z

    goto/16 :goto_2

    .line 339
    :cond_6
    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v2}, Lcom/google/android/gm/ViewMode;->transitionToConversationListMode()Z

    goto/16 :goto_2

    .line 356
    :cond_7
    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {p0, v2}, Lcom/google/android/gm/BaseActivityController;->onSetEmpty(Lcom/google/android/gm/ConversationSelectionSet;)V

    goto :goto_3

    .line 361
    :cond_8
    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {p0, v2}, Lcom/google/android/gm/BaseActivityController;->onSetEmpty(Lcom/google/android/gm/ConversationSelectionSet;)V

    .line 362
    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationListContext;->isSearchResult()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 363
    iget-object v3, p0, Lcom/google/android/gm/BaseActivityController;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v2}, Lcom/google/android/gm/ViewMode;->getMode()I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_9

    const/4 v2, 0x2

    :goto_5
    invoke-interface {v3, v2}, Lcom/google/android/gm/ActionBarView;->setMode(I)Z

    .line 367
    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v2}, Lcom/google/android/gm/ActivityController$ControllableActivity;->invalidateOptionsMenu()V

    goto/16 :goto_4

    :cond_9
    move v2, v4

    .line 363
    goto :goto_5

    .line 368
    :cond_a
    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    invoke-interface {v2}, Lcom/google/android/gm/ActionBarView;->getMode()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 371
    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    invoke-interface {v2, v8}, Lcom/google/android/gm/ActionBarView;->setMode(I)Z

    .line 372
    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v2}, Lcom/google/android/gm/ActivityController$ControllableActivity;->invalidateOptionsMenu()V

    goto/16 :goto_4
.end method

.method protected setAccount(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1450
    if-nez p1, :cond_1

    .line 1480
    :cond_0
    :goto_0
    return v0

    .line 1454
    :cond_1
    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mAccount:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1459
    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mAccountHelper:Lcom/google/android/gm/AccountHelper;

    invoke-virtual {v2, p1}, Lcom/google/android/gm/AccountHelper;->validateAccountName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1461
    invoke-virtual {p0}, Lcom/google/android/gm/BaseActivityController;->updateAccountsInfo()V

    .line 1462
    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0139

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1466
    iget-object v3, p0, Lcom/google/android/gm/BaseActivityController;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1467
    const-string v2, "Gmail"

    const-string v3, "Trying to switch to invalid account [%s]"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-static {v2, v3, v1}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 1471
    :cond_2
    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-static {v2, p1, v0}, Lcom/google/android/gm/WaitActivity;->waitForAccountIfNeeded(Lcom/google/android/gm/RestrictedActivity;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1477
    iput-object p1, p0, Lcom/google/android/gm/BaseActivityController;->mAccount:Ljava/lang/String;

    .line 1478
    const-string v2, "Gmail"

    const-string v3, "Switching Gmail account to [%s]"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gm/BaseActivityController;->mAccount:Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1479
    invoke-virtual {p0}, Lcom/google/android/gm/BaseActivityController;->onAccountChanged()V

    move v0, v1

    .line 1480
    goto :goto_0
.end method

.method public setActionBarLabelName(Ljava/lang/String;)V
    .locals 1
    .parameter "label"

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    if-eqz v0, :cond_0

    .line 1374
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    invoke-interface {v0, p1}, Lcom/google/android/gm/ActionBarView;->setLabel(Ljava/lang/String;)V

    .line 1376
    :cond_0
    return-void
.end method

.method protected setConversationContext(Lcom/google/android/gm/ConversationInfo;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 680
    iput-object p1, p0, Lcom/google/android/gm/BaseActivityController;->mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

    .line 681
    return-void
.end method

.method protected setConversationListContext(Lcom/google/android/gm/ConversationListContext;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 848
    iput-object p1, p0, Lcom/google/android/gm/BaseActivityController;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    .line 850
    invoke-virtual {p1}, Lcom/google/android/gm/ConversationListContext;->getAccount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/BaseActivityController;->setAccount(Ljava/lang/String;)Z

    .line 851
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    invoke-virtual {p1}, Lcom/google/android/gm/ConversationListContext;->getLabelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/MenuHandler;->setLabel(Ljava/lang/String;)V

    .line 852
    invoke-direct {p0, p1}, Lcom/google/android/gm/BaseActivityController;->clearLabelAssociatedNotifications(Lcom/google/android/gm/ConversationListContext;)V

    .line 853
    invoke-virtual {p1}, Lcom/google/android/gm/ConversationListContext;->getLabelName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/BaseActivityController;->setActionBarLabelName(Ljava/lang/String;)V

    .line 856
    invoke-direct {p0}, Lcom/google/android/gm/BaseActivityController;->removeContextualActionBar()V

    .line 857
    return-void
.end method

.method public setSubject(Lcom/google/android/gm/ConversationInfo;Ljava/lang/String;)V
    .locals 1
    .parameter "info"
    .parameter "subject"

    .prologue
    .line 1708
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mSubjectDisplayer:Lcom/google/android/gm/ConversationSubjectDisplayer;

    if-eqz v0, :cond_0

    .line 1709
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mSubjectDisplayer:Lcom/google/android/gm/ConversationSubjectDisplayer;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gm/ConversationSubjectDisplayer;->setSubject(Lcom/google/android/gm/ConversationInfo;Ljava/lang/String;)V

    .line 1711
    :cond_0
    return-void
.end method

.method protected shouldGoStraightToDraft(Lcom/google/android/gm/provider/Gmail$ConversationCursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 655
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldShowFirstSearchResult()Z
    .locals 1

    .prologue
    .line 1696
    const/4 v0, 0x0

    return v0
.end method

.method protected showConversationAtCursor()V
    .locals 1

    .prologue
    .line 660
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gm/BaseActivityController;->showConversationAtCursor(Z)V

    .line 661
    return-void
.end method

.method protected showConversationAtCursor(Z)V
    .locals 5
    .parameter "autoCollapseList"

    .prologue
    .line 664
    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-static {v1}, Lcom/google/android/gm/ConversationInfo;->forCursor(Lcom/google/android/gm/provider/Gmail$ConversationCursor;)Lcom/google/android/gm/ConversationInfo;

    move-result-object v0

    .line 666
    .local v0, info:Lcom/google/android/gm/ConversationInfo;
    if-eqz v0, :cond_0

    .line 667
    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/gm/BaseActivityController;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v4}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->position()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gm/ConversationPositionTracker;->initialize(JI)V

    .line 669
    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationListFragment;->getListAdapter()Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/BaseActivityController;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gm/ConversationPositionTracker;->onListDataChanged(Lcom/google/android/gm/ConversationHeaderCursorAdapter;Lcom/google/android/gm/provider/Gmail$ConversationCursor;)Z

    .line 673
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gm/BaseActivityController;->showConversationInternal(Lcom/google/android/gm/ConversationInfo;Z)V

    .line 674
    return-void
.end method

.method protected showConversationInternal(Lcom/google/android/gm/ConversationInfo;Z)V
    .locals 0
    .parameter "info"
    .parameter "autoCollapseList"

    .prologue
    .line 692
    invoke-virtual {p0, p1}, Lcom/google/android/gm/BaseActivityController;->setConversationContext(Lcom/google/android/gm/ConversationInfo;)V

    .line 693
    return-void
.end method

.method protected showConversationList(Lcom/google/android/gm/ConversationListContext;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 860
    invoke-virtual {p0, p1}, Lcom/google/android/gm/BaseActivityController;->setConversationListContext(Lcom/google/android/gm/ConversationListContext;)V

    .line 861
    return-void
.end method

.method public startActionBarStatusCursorLoader(Ljava/lang/String;)V
    .locals 3
    .parameter "account"

    .prologue
    .line 1328
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1329
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "account"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/lit8 v1, v2, 0x1

    .line 1331
    .local v1, loaderId:I
    invoke-direct {p0, v1, v0}, Lcom/google/android/gm/BaseActivityController;->startStatusCursorLoader(ILandroid/os/Bundle;)V

    .line 1332
    return-void
.end method

.method public stopActionBarStatusCursorLoader(Ljava/lang/String;)V
    .locals 2
    .parameter "account"

    .prologue
    .line 1336
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    .line 1337
    .local v0, loaderId:I
    invoke-direct {p0, v0}, Lcom/google/android/gm/BaseActivityController;->stopStatusCursorLoader(I)V

    .line 1338
    return-void
.end method

.method public supportsDrag(Landroid/view/DragEvent;Lcom/google/android/gm/provider/Label;)Z
    .locals 2
    .parameter "event"
    .parameter "label"

    .prologue
    .line 993
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    const-string v1, "com.google.android.gm/conversations"

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/provider/Gmail;->isLabelUserSettable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationListContext;->getLabelName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract uncollapseList()Z
.end method

.method protected updateAccountsInfo()V
    .locals 2

    .prologue
    .line 1393
    invoke-virtual {p0}, Lcom/google/android/gm/BaseActivityController;->isTesting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1413
    :goto_0
    return-void

    .line 1396
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mAccountHelper:Lcom/google/android/gm/AccountHelper;

    new-instance v1, Lcom/google/android/gm/BaseActivityController$6;

    invoke-direct {v1, p0}, Lcom/google/android/gm/BaseActivityController$6;-><init>(Lcom/google/android/gm/BaseActivityController;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gm/AccountHelper;->asyncGetAccountsInfo(Lcom/google/android/gm/AccountHelper$AccountResultsCallback;)V

    goto :goto_0
.end method

.method protected updateConversationState(Lcom/google/android/gm/ConversationInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 889
    if-nez p1, :cond_0

    .line 890
    invoke-virtual {p0}, Lcom/google/android/gm/BaseActivityController;->handleBackPressed()Z

    .line 901
    :goto_0
    return-void

    .line 894
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    invoke-virtual {p1}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gm/ConversationPositionTracker;->initialize(JI)V

    .line 895
    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    invoke-virtual {p0}, Lcom/google/android/gm/BaseActivityController;->isConversationListAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationListFragment;->getListAdapter()Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lcom/google/android/gm/BaseActivityController;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gm/ConversationPositionTracker;->onListDataChanged(Lcom/google/android/gm/ConversationHeaderCursorAdapter;Lcom/google/android/gm/provider/Gmail$ConversationCursor;)Z

    .line 899
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gm/BaseActivityController;->showConversationInternal(Lcom/google/android/gm/ConversationInfo;Z)V

    goto :goto_0

    .line 895
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
