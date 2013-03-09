.class public Lcom/google/android/gm/GmailActivity;
.super Lcom/google/android/gm/GmailBaseActivity;
.source "GmailActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/google/android/gm/ActivityController$ControllableActivity;
.implements Lcom/google/android/gm/CanvasConversationHeaderView$StarHandler;
.implements Lcom/google/android/gm/ConversationListCallbacks;
.implements Lcom/google/android/gm/ConversationSubjectDisplayer;
.implements Lcom/google/android/gm/ConversationViewable$ConversationCallbacks;
.implements Lcom/google/android/gm/LabelItemView$DropHandler;
.implements Lcom/google/android/gm/LabelListFragment$LabelListCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/GmailActivity$SyncWindowUpgradeReceiver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gm/GmailBaseActivity;",
        "Lcom/google/android/gm/ActivityController$ControllableActivity;",
        "Lcom/google/android/gm/LabelListFragment$LabelListCallbacks;",
        "Lcom/google/android/gm/LabelItemView$DropHandler;",
        "Lcom/google/android/gm/ConversationListCallbacks;",
        "Lcom/google/android/gm/CanvasConversationHeaderView$StarHandler;",
        "Lcom/google/android/gm/ConversationViewable$ConversationCallbacks;",
        "Lcom/google/android/gm/ConversationSubjectDisplayer;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/google/android/gm/provider/Gmail$ConversationCursor;",
        ">;",
        "Landroid/content/DialogInterface$OnDismissListener;"
    }
.end annotation


# static fields
.field static final EXTRA_ACCOUNT:Ljava/lang/String; = "account"

.field static final EXTRA_LABEL:Ljava/lang/String; = "label"


# instance fields
.field private mController:Lcom/google/android/gm/ActivityController;

.field private mLaunchedCleanly:Z

.field private mSubjectDisplayer:Lcom/google/android/gm/ConversationSubjectDisplayer;

.field private mSyncWindowUpgradeReceiver:Lcom/google/android/gm/GmailActivity$SyncWindowUpgradeReceiver;

.field private mViewMode:Lcom/google/android/gm/ViewMode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/gm/GmailBaseActivity;-><init>()V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/GmailActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/gm/GmailActivity;->showSyncWindowUpgradeDialog()Z

    move-result v0

    return v0
.end method

.method private handleLegacyShortcutIntent()V
    .locals 4

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/google/android/gm/GmailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 408
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, "label"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "account"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 410
    const-string v3, "label"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 411
    .local v2, intentLabel:Ljava/lang/String;
    const-string v3, "account"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 412
    .local v1, intentAccount:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/google/android/gm/Utils;->createViewConversationIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$ConversationCursor;)Landroid/content/Intent;

    move-result-object v0

    .line 413
    invoke-virtual {p0, v0}, Lcom/google/android/gm/GmailActivity;->setIntent(Landroid/content/Intent;)V

    .line 415
    .end local v1           #intentAccount:Ljava/lang/String;
    .end local v2           #intentLabel:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private showSyncWindowUpgradeDialog()Z
    .locals 2

    .prologue
    .line 389
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/gm/persistence/Persistence;->getUpgradeSyncWindow(Landroid/content/Context;)Z

    move-result v0

    .line 390
    .local v0, show:Z
    if-eqz v0, :cond_0

    .line 391
    const v1, 0x7f040050

    invoke-virtual {p0, v1}, Lcom/google/android/gm/GmailActivity;->showDialog(I)V

    .line 392
    iget-object v1, p0, Lcom/google/android/gm/GmailActivity;->mSyncWindowUpgradeReceiver:Lcom/google/android/gm/GmailActivity$SyncWindowUpgradeReceiver;

    invoke-virtual {v1}, Lcom/google/android/gm/GmailActivity$SyncWindowUpgradeReceiver;->disable()V

    .line 394
    :cond_0
    return v0
.end method

.method private showWhatsNewDialog()Z
    .locals 2

    .prologue
    .line 102
    invoke-static {p0}, Lcom/google/android/gm/Utils;->getVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, version:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/android/gm/persistence/Persistence;->getShouldShowWhatsNew(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    const v1, 0x7f040058

    invoke-virtual {p0, v1}, Lcom/google/android/gm/GmailActivity;->showDialog(I)V

    .line 106
    const/4 v1, 0x1

    .line 108
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public attachConversationViewable(Lcom/google/android/gm/ConversationViewable;)V
    .locals 1
    .parameter "conversationViewable"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/android/gm/GmailActivity;->mController:Lcom/google/android/gm/ActivityController;

    invoke-interface {v0, p1}, Lcom/google/android/gm/ActivityController;->attachConversationViewable(Lcom/google/android/gm/ConversationViewable;)V

    .line 365
    return-void
.end method

.method public attachFragment(Lcom/google/android/gm/ConversationListFragment;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/google/android/gm/GmailActivity;->mController:Lcom/google/android/gm/ActivityController;

    invoke-interface {v0, p1}, Lcom/google/android/gm/ActivityController;->attachFragment(Lcom/google/android/gm/ConversationListFragment;)V

    .line 360
    return-void
.end method

.method public attachLoaderManagerFragment(Lcom/google/android/gm/LoaderManagerFragment;)V
    .locals 1
    .parameter "loaderManagerFragment"

    .prologue
    .line 369
    iget-object v0, p0, Lcom/google/android/gm/GmailActivity;->mController:Lcom/google/android/gm/ActivityController;

    invoke-interface {v0, p1}, Lcom/google/android/gm/ActivityController;->attachLoaderManagerFragment(Lcom/google/android/gm/LoaderManagerFragment;)V

    .line 370
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 399
    iget-object v0, p0, Lcom/google/android/gm/GmailActivity;->mController:Lcom/google/android/gm/ActivityController;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/google/android/gm/GmailActivity;->mController:Lcom/google/android/gm/ActivityController;

    invoke-interface {v0, p1}, Lcom/google/android/gm/ActivityController;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 402
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getBatchConversations()Lcom/google/android/gm/ConversationSelectionSet;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/android/gm/GmailActivity;->mController:Lcom/google/android/gm/ActivityController;

    invoke-interface {v0}, Lcom/google/android/gm/ActivityController;->getBatchConversations()Lcom/google/android/gm/ConversationSelectionSet;

    move-result-object v0

    return-object v0
.end method

.method public getConversationPositionTracker()Lcom/google/android/gm/ConversationPositionTracker;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/android/gm/GmailActivity;->mController:Lcom/google/android/gm/ActivityController;

    invoke-interface {v0}, Lcom/google/android/gm/ActivityController;->getConversationPositionTracker()Lcom/google/android/gm/ConversationPositionTracker;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectRemainder(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "subject"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/android/gm/GmailActivity;->mSubjectDisplayer:Lcom/google/android/gm/ConversationSubjectDisplayer;

    invoke-interface {v0, p1}, Lcom/google/android/gm/ConversationSubjectDisplayer;->getSubjectRemainder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViewMode()Lcom/google/android/gm/ViewMode;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/android/gm/GmailActivity;->mViewMode:Lcom/google/android/gm/ViewMode;

    return-object v0
.end method

.method public handleDrop(Landroid/view/DragEvent;Lcom/google/android/gm/provider/Label;)V
    .locals 1
    .parameter "event"
    .parameter "label"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/google/android/gm/GmailActivity;->mController:Lcom/google/android/gm/ActivityController;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gm/ActivityController;->handleDrop(Landroid/view/DragEvent;Lcom/google/android/gm/provider/Label;)V

    .line 355
    return-void
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 260
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseActivity;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 262
    iget-object v0, p0, Lcom/google/android/gm/GmailActivity;->mController:Lcom/google/android/gm/ActivityController;

    invoke-interface {v0, p1}, Lcom/google/android/gm/ActivityController;->handleActionModeFinished(Landroid/view/ActionMode;)V

    .line 263
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 253
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseActivity;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 255
    iget-object v0, p0, Lcom/google/android/gm/GmailActivity;->mController:Lcom/google/android/gm/ActivityController;

    invoke-interface {v0, p1}, Lcom/google/android/gm/ActivityController;->handleActionModeStarted(Landroid/view/ActionMode;)V

    .line 256
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/android/gm/GmailActivity;->mController:Lcom/google/android/gm/ActivityController;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gm/ActivityController;->handleActivityResult(IILandroid/content/Intent;)V

    .line 268
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/android/gm/GmailActivity;->mController:Lcom/google/android/gm/ActivityController;

    invoke-interface {v0}, Lcom/google/android/gm/ActivityController;->handleBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    invoke-super {p0}, Lcom/google/android/gm/GmailBaseActivity;->onBackPressed()V

    .line 213
    :cond_0
    return-void
.end method

.method public onConversationKeyDown(Lcom/google/android/gm/ConversationInfo;ILandroid/view/KeyEvent;)V
    .locals 0
    .parameter "info"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 294
    return-void
.end method

.method public onConversationLoadError(Lcom/google/android/gm/ConversationInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/android/gm/GmailActivity;->mController:Lcom/google/android/gm/ActivityController;

    invoke-interface {v0}, Lcom/google/android/gm/ActivityController;->handleConversationLoadError()V

    .line 288
    return-void
.end method

.method public onConversationLoaded(Lcom/google/android/gm/ConversationInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/android/gm/GmailActivity;->mController:Lcom/google/android/gm/ActivityController;

    invoke-interface {v0, p1}, Lcom/google/android/gm/ActivityController;->handleConversationLoaded(Lcom/google/android/gm/ConversationInfo;)V

    .line 299
    return-void
.end method

.method public onConversationSelected(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/android/gm/GmailActivity;->mController:Lcom/google/android/gm/ActivityController;

    invoke-interface {v0, p1}, Lcom/google/android/gm/ActivityController;->handleConversationSelected(I)V

    .line 329
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    invoke-direct {p0}, Lcom/google/android/gm/GmailActivity;->handleLegacyShortcutIntent()V

    .line 118
    new-instance v1, Lcom/google/android/gm/ViewMode;

    invoke-direct {v1, p0}, Lcom/google/android/gm/ViewMode;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/gm/GmailActivity;->mViewMode:Lcom/google/android/gm/ViewMode;

    .line 119
    invoke-static {p0}, Lcom/google/android/gm/ControllerFactory;->forActivity(Lcom/google/android/gm/ActivityController$ControllableActivity;)Lcom/google/android/gm/ActivityController;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/GmailActivity;->mController:Lcom/google/android/gm/ActivityController;

    .line 120
    iget-object v1, p0, Lcom/google/android/gm/GmailActivity;->mController:Lcom/google/android/gm/ActivityController;

    invoke-interface {v1, p1}, Lcom/google/android/gm/ActivityController;->initialize(Landroid/os/Bundle;)Z

    .line 121
    iget-object v1, p0, Lcom/google/android/gm/GmailActivity;->mController:Lcom/google/android/gm/ActivityController;

    check-cast v1, Lcom/google/android/gm/ConversationSubjectDisplayer;

    iput-object v1, p0, Lcom/google/android/gm/GmailActivity;->mSubjectDisplayer:Lcom/google/android/gm/ConversationSubjectDisplayer;

    .line 122
    new-instance v1, Lcom/google/android/gm/GmailActivity$SyncWindowUpgradeReceiver;

    invoke-direct {v1, p0}, Lcom/google/android/gm/GmailActivity$SyncWindowUpgradeReceiver;-><init>(Lcom/google/android/gm/GmailActivity;)V

    iput-object v1, p0, Lcom/google/android/gm/GmailActivity;->mSyncWindowUpgradeReceiver:Lcom/google/android/gm/GmailActivity$SyncWindowUpgradeReceiver;

    .line 124
    invoke-virtual {p0}, Lcom/google/android/gm/GmailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 129
    .local v0, intent:Landroid/content/Intent;
    if-nez p1, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 130
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gm/GmailActivity;->mLaunchedCleanly:Z

    .line 132
    :cond_0
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .parameter "id"
    .parameter "bundle"

    .prologue
    .line 229
    iget-object v1, p0, Lcom/google/android/gm/GmailActivity;->mController:Lcom/google/android/gm/ActivityController;

    invoke-interface {v1, p1, p2}, Lcom/google/android/gm/ActivityController;->handleCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 230
    .local v0, dialog:Landroid/app/Dialog;
    if-nez v0, :cond_0

    .line 231
    sparse-switch p1, :sswitch_data_0

    .line 241
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Lcom/google/android/gm/GmailBaseActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .end local v0           #dialog:Landroid/app/Dialog;
    :cond_1
    return-object v0

    .line 233
    .restart local v0       #dialog:Landroid/app/Dialog;
    :sswitch_0
    new-instance v0, Lcom/google/android/gm/WhatsNewDialog;

    .end local v0           #dialog:Landroid/app/Dialog;
    invoke-direct {v0, p0}, Lcom/google/android/gm/WhatsNewDialog;-><init>(Landroid/content/Context;)V

    .line 234
    .restart local v0       #dialog:Landroid/app/Dialog;
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 237
    :sswitch_1
    new-instance v0, Lcom/google/android/gm/SyncWindowUpgradeDialog;

    .end local v0           #dialog:Landroid/app/Dialog;
    invoke-direct {v0, p0}, Lcom/google/android/gm/SyncWindowUpgradeDialog;-><init>(Landroid/content/Context;)V

    .restart local v0       #dialog:Landroid/app/Dialog;
    goto :goto_0

    .line 231
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f040050 -> :sswitch_1
        0x7f040058 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .parameter "id"
    .parameter "args"
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
    .line 313
    iget-object v0, p0, Lcom/google/android/gm/GmailActivity;->mController:Lcom/google/android/gm/ActivityController;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gm/ActivityController;->handleCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/gm/GmailActivity;->mController:Lcom/google/android/gm/ActivityController;

    invoke-interface {v0, p1}, Lcom/google/android/gm/ActivityController;->handleCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/google/android/gm/GmailActivity;->showSyncWindowUpgradeDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/google/android/gm/GmailActivity;->mSyncWindowUpgradeReceiver:Lcom/google/android/gm/GmailActivity$SyncWindowUpgradeReceiver;

    invoke-virtual {v0}, Lcom/google/android/gm/GmailActivity$SyncWindowUpgradeReceiver;->enable()V

    .line 161
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/android/gm/GmailActivity;->mController:Lcom/google/android/gm/ActivityController;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gm/ActivityController;->handleKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/google/android/gm/GmailBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLabelListResumed(Lcom/google/android/gm/LabelListFragment;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 345
    return-void
.end method

.method public onLabelSelected(Ljava/lang/String;)V
    .locals 1
    .parameter "label"

    .prologue
    .line 339
    iget-object v0, p0, Lcom/google/android/gm/GmailActivity;->mController:Lcom/google/android/gm/ActivityController;

    invoke-interface {v0, p1}, Lcom/google/android/gm/ActivityController;->handleLabelSelected(Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/google/android/gm/provider/Gmail$ConversationCursor;)V
    .locals 1
    .parameter
    .parameter "data"
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
    .line 318
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/google/android/gm/provider/Gmail$ConversationCursor;>;"
    iget-object v0, p0, Lcom/google/android/gm/GmailActivity;->mController:Lcom/google/android/gm/ActivityController;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gm/ActivityController;->handleLoadFinished(Landroid/content/Loader;Lcom/google/android/gm/provider/Gmail$ConversationCursor;)V

    .line 319
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    check-cast p2, Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/GmailActivity;->onLoadFinished(Landroid/content/Loader;Lcom/google/android/gm/provider/Gmail$ConversationCursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 1
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
    .line 323
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/google/android/gm/provider/Gmail$ConversationCursor;>;"
    iget-object v0, p0, Lcom/google/android/gm/GmailActivity;->mController:Lcom/google/android/gm/ActivityController;

    invoke-interface {v0, p1}, Lcom/google/android/gm/ActivityController;->handleLoaderReset(Landroid/content/Loader;)V

    .line 324
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/android/gm/GmailActivity;->mController:Lcom/google/android/gm/ActivityController;

    invoke-interface {v0, p1}, Lcom/google/android/gm/ActivityController;->handleOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 172
    invoke-super {p0}, Lcom/google/android/gm/GmailBaseActivity;->onPause()V

    .line 174
    iget-object v0, p0, Lcom/google/android/gm/GmailActivity;->mController:Lcom/google/android/gm/ActivityController;

    invoke-interface {v0}, Lcom/google/android/gm/ActivityController;->handlePause()V

    .line 175
    iget-object v0, p0, Lcom/google/android/gm/GmailActivity;->mSyncWindowUpgradeReceiver:Lcom/google/android/gm/GmailActivity$SyncWindowUpgradeReceiver;

    invoke-virtual {v0}, Lcom/google/android/gm/GmailActivity$SyncWindowUpgradeReceiver;->disable()V

    .line 176
    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"
    .parameter "bundle"

    .prologue
    .line 246
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gm/GmailBaseActivity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 248
    iget-object v0, p0, Lcom/google/android/gm/GmailActivity;->mController:Lcom/google/android/gm/ActivityController;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gm/ActivityController;->handlePrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 249
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/gm/GmailActivity;->mController:Lcom/google/android/gm/ActivityController;

    invoke-interface {v0, p1}, Lcom/google/android/gm/ActivityController;->handlePrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 165
    invoke-super {p0}, Lcom/google/android/gm/GmailBaseActivity;->onResume()V

    .line 167
    iget-object v0, p0, Lcom/google/android/gm/GmailActivity;->mController:Lcom/google/android/gm/ActivityController;

    invoke-interface {v0}, Lcom/google/android/gm/ActivityController;->handleResume()V

    .line 168
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 217
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 219
    iget-object v0, p0, Lcom/google/android/gm/GmailActivity;->mController:Lcom/google/android/gm/ActivityController;

    invoke-interface {v0, p1}, Lcom/google/android/gm/ActivityController;->handleSaveInstanceState(Landroid/os/Bundle;)V

    .line 220
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/gm/GmailActivity;->mController:Lcom/google/android/gm/ActivityController;

    invoke-interface {v0}, Lcom/google/android/gm/ActivityController;->enterSearchMode()V

    .line 137
    const/4 v0, 0x1

    return v0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Lcom/google/android/gm/GmailBaseActivity;->onStart()V

    .line 144
    iget-boolean v0, p0, Lcom/google/android/gm/GmailActivity;->mLaunchedCleanly:Z

    if-eqz v0, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/google/android/gm/GmailActivity;->showWhatsNewDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/google/android/gm/GmailActivity;->showSyncWindowUpgradeDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/google/android/gm/GmailActivity;->mSyncWindowUpgradeReceiver:Lcom/google/android/gm/GmailActivity$SyncWindowUpgradeReceiver;

    invoke-virtual {v0}, Lcom/google/android/gm/GmailActivity$SyncWindowUpgradeReceiver;->enable()V

    .line 151
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 181
    invoke-super {p0}, Lcom/google/android/gm/GmailBaseActivity;->onStop()V

    .line 183
    iget-object v0, p0, Lcom/google/android/gm/GmailActivity;->mController:Lcom/google/android/gm/ActivityController;

    invoke-interface {v0}, Lcom/google/android/gm/ActivityController;->handleStop()V

    .line 184
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 203
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseActivity;->onWindowFocusChanged(Z)V

    .line 205
    iget-object v0, p0, Lcom/google/android/gm/GmailActivity;->mController:Lcom/google/android/gm/ActivityController;

    invoke-interface {v0, p1}, Lcom/google/android/gm/ActivityController;->handleWindowFocusChanged(Z)V

    .line 206
    return-void
.end method

.method public setSubject(Lcom/google/android/gm/ConversationInfo;Ljava/lang/String;)V
    .locals 1
    .parameter "info"
    .parameter "subject"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/android/gm/GmailActivity;->mSubjectDisplayer:Lcom/google/android/gm/ConversationSubjectDisplayer;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gm/ConversationSubjectDisplayer;->setSubject(Lcom/google/android/gm/ConversationInfo;Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method public supportsDrag(Landroid/view/DragEvent;Lcom/google/android/gm/provider/Label;)Z
    .locals 1
    .parameter "event"
    .parameter "label"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/google/android/gm/GmailActivity;->mController:Lcom/google/android/gm/ActivityController;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gm/ActivityController;->supportsDrag(Landroid/view/DragEvent;Lcom/google/android/gm/provider/Label;)Z

    move-result v0

    return v0
.end method

.method public toggleStar(ZJJLjava/util/Map;)V
    .locals 7
    .parameter "toggleOn"
    .parameter "conversationId"
    .parameter "maxMessageId"
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
    .line 334
    .local p6, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    iget-object v0, p0, Lcom/google/android/gm/GmailActivity;->mController:Lcom/google/android/gm/ActivityController;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gm/ActivityController;->handleToggleStar(ZJJLjava/util/Map;)V

    .line 335
    return-void
.end method
