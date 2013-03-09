.class public Lcom/htc/dockmode/DeskDockActivity;
.super Landroid/app/Activity;
.source "DeskDockActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final localLOGV:Z


# instance fields
.field private mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mNoButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private mShowNoDock:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/htc/dockmode/DeskDockActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/dockmode/DeskDockActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dockmode/DeskDockActivity;->mShowNoDock:Z

    .line 66
    new-instance v0, Lcom/htc/dockmode/DeskDockActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/DeskDockActivity$1;-><init>(Lcom/htc/dockmode/DeskDockActivity;)V

    iput-object v0, p0, Lcom/htc/dockmode/DeskDockActivity;->mNoButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 72
    new-instance v0, Lcom/htc/dockmode/DeskDockActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/DeskDockActivity$2;-><init>(Lcom/htc/dockmode/DeskDockActivity;)V

    iput-object v0, p0, Lcom/htc/dockmode/DeskDockActivity;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method private createHomeIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "category"

    .prologue
    .line 50
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 53
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    iget-boolean v2, p0, Lcom/htc/dockmode/DeskDockActivity;->mShowNoDock:Z

    if-eqz v2, :cond_0

    .line 31
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/dockmode/DeskDockActivity;->showDialog(I)V

    .line 47
    :goto_0
    return-void

    .line 33
    :cond_0
    const-string v2, "uimode"

    invoke-virtual {p0, v2}, Lcom/htc/dockmode/DeskDockActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/UiModeManager;

    .line 38
    .local v1, uiMode:Landroid/app/UiModeManager;
    invoke-virtual {v1}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 39
    const-string v2, "android.intent.category.DESK_DOCK"

    invoke-direct {p0, v2}, Lcom/htc/dockmode/DeskDockActivity;->createHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 40
    .local v0, deskModeHomeIntent:Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/htc/dockmode/utils/ActivityUtil;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    .line 45
    .end local v0           #deskModeHomeIntent:Landroid/content/Intent;
    :goto_1
    invoke-virtual {p0}, Lcom/htc/dockmode/DeskDockActivity;->finish()V

    goto :goto_0

    .line 42
    :cond_1
    const-string v2, "uimode"

    invoke-virtual {p0, v2}, Lcom/htc/dockmode/DeskDockActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/UiModeManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/UiModeManager;->enableDeskMode(I)V

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 59
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08000c

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080019

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/dockmode/DeskDockActivity;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08001a

    iget-object v2, p0, Lcom/htc/dockmode/DeskDockActivity;->mNoButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    return-object v0
.end method
