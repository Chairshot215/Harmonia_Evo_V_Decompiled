.class public Lcom/android/settings/framework/app/DisplayResolutionDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "DisplayResolutionDialog.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mDefItem:I

.field protected mHtcAlert:Lcom/htc/app/HtcAlertController;

.field protected mHtcAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

.field private mItems:[Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "Display_resolution_dialog"

    sput-object v0, Lcom/android/settings/framework/app/DisplayResolutionDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog;->mDefItem:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/app/DisplayResolutionDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog;->mDefItem:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/framework/app/DisplayResolutionDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog;->mDefItem:I

    return p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedState"

    .prologue
    const/4 v3, 0x1

    .line 48
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/app/DisplayResolutionDialog;->requestWindowFeature(I)Z

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/framework/app/DisplayResolutionDialog;->resolveIntent()V

    .line 53
    new-instance v1, Lcom/htc/app/HtcAlertController;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/DisplayResolutionDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v1, p0, p0, v2}, Lcom/htc/app/HtcAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v1, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog;->mHtcAlert:Lcom/htc/app/HtcAlertController;

    .line 54
    new-instance v1, Lcom/htc/app/HtcAlertController$AlertParams;

    invoke-direct {v1, p0}, Lcom/htc/app/HtcAlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog;->mHtcAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/framework/app/DisplayResolutionDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070086

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog;->mItems:[Ljava/lang/CharSequence;

    .line 67
    iget-object v0, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog;->mHtcAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 68
    .local v0, params:Lcom/htc/app/HtcAlertController$AlertParams;
    invoke-virtual {p0}, Lcom/android/settings/framework/app/DisplayResolutionDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0500

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 69
    iput-boolean v3, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    .line 70
    iget-object v1, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog;->mItems:[Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 71
    iget v1, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog;->mDefItem:I

    iput v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mCheckedItem:I

    .line 72
    const v1, 0x7f0c0378

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/app/DisplayResolutionDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 73
    new-instance v1, Lcom/android/settings/framework/app/DisplayResolutionDialog$1;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/app/DisplayResolutionDialog$1;-><init>(Lcom/android/settings/framework/app/DisplayResolutionDialog;)V

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 80
    new-instance v1, Lcom/android/settings/framework/app/DisplayResolutionDialog$2;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/app/DisplayResolutionDialog$2;-><init>(Lcom/android/settings/framework/app/DisplayResolutionDialog;)V

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/app/DisplayResolutionDialog;->setupAlert(Landroid/os/Bundle;)V

    .line 101
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 129
    const-string v0, "com.htc.content.intent.extra.Extra_DEF_TYPE"

    iget v1, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog;->mDefItem:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 130
    return-void
.end method

.method protected resolveIntent()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/framework/app/DisplayResolutionDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 105
    .local v0, data:Landroid/content/Intent;
    const-string v1, "com.htc.content.intent.action.Resolution_dialog"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 106
    const-string v1, "com.htc.content.intent.extra.Extra_DEF_TYPE"

    iget v2, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog;->mDefItem:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog;->mDefItem:I

    .line 108
    :cond_0
    iget v1, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog;->mDefItem:I

    if-ne v4, v1, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/framework/app/DisplayResolutionDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_resolution_type"

    iget v3, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog;->mDefItem:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog;->mDefItem:I

    .line 112
    :cond_1
    iget v1, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog;->mDefItem:I

    if-ne v4, v1, :cond_2

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog;->mDefItem:I

    .line 113
    :cond_2
    return-void
.end method

.method protected setupAlert(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog;->mHtcAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog;->mHtcAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcAlertController$AlertParams;->apply(Lcom/htc/app/HtcAlertController;)V

    .line 117
    iget-object v0, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog;->mHtcAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v0}, Lcom/htc/app/HtcAlertController;->installContent()V

    .line 119
    if-eqz p1, :cond_0

    .line 120
    const-string v0, "com.htc.content.intent.extra.Extra_DEF_TYPE"

    iget v1, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog;->mDefItem:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog;->mDefItem:I

    .line 122
    :cond_0
    const/4 v0, -0x1

    iget v1, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog;->mDefItem:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/framework/app/DisplayResolutionDialog;->mDefItem:I

    .line 123
    :cond_1
    return-void
.end method
