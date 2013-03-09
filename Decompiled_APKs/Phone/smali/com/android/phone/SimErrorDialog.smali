.class Lcom/android/phone/SimErrorDialog;
.super Ljava/lang/Object;
.source "SimErrorDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SimErrorDialog"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Z

.field private mDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mKeyguardShowing:Z

.field private mStatusBar:Landroid/app/StatusBarManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-boolean v0, p0, Lcom/android/phone/SimErrorDialog;->mKeyguardShowing:Z

    .line 95
    iput-boolean v0, p0, Lcom/android/phone/SimErrorDialog;->mDeviceProvisioned:Z

    .line 230
    new-instance v0, Lcom/android/phone/SimErrorDialog$1;

    invoke-direct {v0, p0}, Lcom/android/phone/SimErrorDialog$1;-><init>(Lcom/android/phone/SimErrorDialog;)V

    iput-object v0, p0, Lcom/android/phone/SimErrorDialog;->mHandler:Landroid/os/Handler;

    .line 101
    iput-object p1, p0, Lcom/android/phone/SimErrorDialog;->mContext:Landroid/content/Context;

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/SimErrorDialog;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/phone/SimErrorDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method private createDialog()Lcom/htc/widget/HtcAlertDialog;
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 129
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/SimErrorDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 134
    .local v0, ab:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v2, 0x10402ea

    .line 136
    .local v2, idTitle:I
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 138
    .local v1, dialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d8

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 139
    iget-object v3, p0, Lcom/android/phone/SimErrorDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 141
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 145
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog;->setCancelable(Z)V

    .line 146
    invoke-virtual {v1, p0}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 147
    iget-object v3, p0, Lcom/android/phone/SimErrorDialog;->mContext:Landroid/content/Context;

    const v4, 0x7f0e00d4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v3, p0, Lcom/android/phone/SimErrorDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e01ce

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3, p0}, Lcom/htc/widget/HtcAlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 152
    iget-object v3, p0, Lcom/android/phone/SimErrorDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e01cf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3, p0}, Lcom/htc/widget/HtcAlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 155
    return-object v1
.end method

.method private prepareDialog()V
    .locals 3

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/android/phone/SimErrorDialog;->mKeyguardShowing:Z

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/android/phone/SimErrorDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 166
    :goto_0
    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v1, "2.0"

    if-ne v0, v1, :cond_2

    .line 167
    iget-object v0, p0, Lcom/android/phone/SimErrorDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    iget-object v1, p0, Lcom/android/phone/SimErrorDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20c00c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 172
    :goto_1
    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v1, "2.0"

    if-ne v0, v1, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/android/phone/SimErrorDialog;->updateDialogSelector()V

    .line 175
    :cond_0
    return-void

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SimErrorDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    goto :goto_0

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/android/phone/SimErrorDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    iget-object v1, p0, Lcom/android/phone/SimErrorDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104012d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateDialogSelector()V
    .locals 4

    .prologue
    .line 178
    iget-object v1, p0, Lcom/android/phone/SimErrorDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-nez v1, :cond_0

    .line 201
    :goto_0
    return-void

    .line 198
    :cond_0
    const-string v1, "list_selector_background"

    const-string v2, "drawable"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/phone/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 199
    .local v0, resid:I
    iget-object v1, p0, Lcom/android/phone/SimErrorDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelector(I)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 210
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 214
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 216
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    .local v1, shutdown:Landroid/content/Intent;
    const-string v2, "android.intent.extra.KEY_CONFIRM"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 218
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 219
    iget-object v2, p0, Lcom/android/phone/SimErrorDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 226
    .end local v1           #shutdown:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    const/4 v2, -0x2

    if-ne p2, v2, :cond_0

    .line 223
    iget-object v2, p0, Lcom/android/phone/SimErrorDialog;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 224
    .local v0, pm:Landroid/os/PowerManager;
    const-string v2, "restart"

    invoke-virtual {v0, v2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/phone/SimErrorDialog;->mStatusBar:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 206
    return-void
.end method

.method public showDialog()V
    .locals 2

    .prologue
    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/SimErrorDialog;->mKeyguardShowing:Z

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/SimErrorDialog;->mDeviceProvisioned:Z

    .line 113
    iget-object v0, p0, Lcom/android/phone/SimErrorDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/phone/SimErrorDialog;->mContext:Landroid/content/Context;

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/phone/SimErrorDialog;->mStatusBar:Landroid/app/StatusBarManager;

    .line 115
    invoke-direct {p0}, Lcom/android/phone/SimErrorDialog;->createDialog()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SimErrorDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 117
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/SimErrorDialog;->prepareDialog()V

    .line 119
    iget-object v0, p0, Lcom/android/phone/SimErrorDialog;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 120
    iget-object v0, p0, Lcom/android/phone/SimErrorDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 121
    return-void
.end method
