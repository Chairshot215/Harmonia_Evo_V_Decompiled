.class public Lcom/android/settings/ISActivity;
.super Landroid/app/Activity;
.source "ISActivity.java"


# static fields
.field public static final DIALOG_CODE_HOTSPOT:I = 0x3

.field public static final DIALOG_CODE_MHS_PROGRESS:I = 0x8

.field public static final DIALOG_CODE_MISC_CONFIG:I = 0x5

.field public static final DIALOG_CODE_MOBILE:I = 0x1

.field public static final DIALOG_CODE_MOBILE_TYPE:I = 0x4

.field public static final DIALOG_CODE_MODEMLINK:I = 0x2

.field public static final DIALOG_CODE_MODEMLINK_NOCDROM:I = 0x6

.field public static final DIALOG_CODE_WARNING_ACG:I = 0x7

.field public static final DIALOG_CODE_WARNING_MOBILE:I = 0x9

.field public static final KEY_IS_DIALOG:Ljava/lang/String; = "is_dialog_code"

.field public static final TAG:Ljava/lang/String; = "NetSharing_ISActivity"

.field protected static isShowing:Z


# instance fields
.field private Type:I

.field private code:I

.field private mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mKeyListener:Landroid/content/DialogInterface$OnKeyListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/ISActivity;->isShowing:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    iput-object v1, p0, Lcom/android/settings/ISActivity;->mContext:Landroid/content/Context;

    .line 63
    iput-object v1, p0, Lcom/android/settings/ISActivity;->mDialog:Landroid/app/Dialog;

    .line 64
    iput v0, p0, Lcom/android/settings/ISActivity;->code:I

    .line 65
    iput v0, p0, Lcom/android/settings/ISActivity;->Type:I

    .line 77
    new-instance v0, Lcom/android/settings/ISActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ISActivity$1;-><init>(Lcom/android/settings/ISActivity;)V

    iput-object v0, p0, Lcom/android/settings/ISActivity;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 456
    new-instance v0, Lcom/android/settings/ISActivity$13;

    invoke-direct {v0, p0}, Lcom/android/settings/ISActivity$13;-><init>(Lcom/android/settings/ISActivity;)V

    iput-object v0, p0, Lcom/android/settings/ISActivity;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ISActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/settings/ISActivity;->code:I

    return v0
.end method

.method private showConfigDialog()V
    .locals 3

    .prologue
    .line 248
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Problem"

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const-string v1, "Radio flag is wrong. need to reboot to the right mode"

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ISActivity;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    new-instance v2, Lcom/android/settings/ISActivity$8;

    invoke-direct {v2, p0}, Lcom/android/settings/ISActivity$8;-><init>(Lcom/android/settings/ISActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ISActivity;->mDialog:Landroid/app/Dialog;

    .line 261
    iget-object v0, p0, Lcom/android/settings/ISActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 263
    return-void
.end method

.method private showMobileDialog()V
    .locals 3

    .prologue
    .line 136
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c031c

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c031d

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ISActivity;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c031e

    new-instance v2, Lcom/android/settings/ISActivity$3;

    invoke-direct {v2, p0}, Lcom/android/settings/ISActivity$3;-><init>(Lcom/android/settings/ISActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0314

    new-instance v2, Lcom/android/settings/ISActivity$2;

    invoke-direct {v2, p0}, Lcom/android/settings/ISActivity$2;-><init>(Lcom/android/settings/ISActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 165
    return-void
.end method

.method private showMobileTypeDialog()V
    .locals 4

    .prologue
    .line 210
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c031f

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ISActivity;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const v3, 0x7f0c0321

    invoke-virtual {p0, v3}, Lcom/android/settings/ISActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f0c0328

    invoke-virtual {p0, v3}, Lcom/android/settings/ISActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/android/settings/ISActivity;->Type:I

    new-instance v3, Lcom/android/settings/ISActivity$7;

    invoke-direct {v3, p0}, Lcom/android/settings/ISActivity$7;-><init>(Lcom/android/settings/ISActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0314

    new-instance v2, Lcom/android/settings/ISActivity$6;

    invoke-direct {v2, p0}, Lcom/android/settings/ISActivity$6;-><init>(Lcom/android/settings/ISActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ISActivity;->mDialog:Landroid/app/Dialog;

    .line 240
    iget-object v0, p0, Lcom/android/settings/ISActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 242
    return-void
.end method

.method private showModemDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 116
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 117
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    iget-object v2, p0, Lcom/android/settings/ISActivity;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/BroadcastReceiver;->setDebugUnregister(Z)V

    .line 119
    iget-object v2, p0, Lcom/android/settings/ISActivity;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/ISActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 121
    const/4 v2, 0x0

    invoke-static {v2, p0}, Lcom/android/settings/ModemLinkEnabler;->setDataConnection(ZLandroid/content/Context;)V

    .line 122
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 123
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    iput-object v0, p0, Lcom/android/settings/ISActivity;->mDialog:Landroid/app/Dialog;

    .line 124
    const v2, 0x7f0c032c

    invoke-virtual {p0, v2}, Lcom/android/settings/ISActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 125
    const v2, 0x7f0c0331

    invoke-virtual {p0, v2}, Lcom/android/settings/ISActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 126
    invoke-virtual {v0, v3}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 127
    invoke-virtual {v0, v3}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 128
    iget-object v2, p0, Lcom/android/settings/ISActivity;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 130
    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 131
    return-void
.end method

.method private showProgressDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 326
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 327
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.net.conn.HTC_PERMITTED_TETHER_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 329
    iget-object v2, p0, Lcom/android/settings/ISActivity;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/ISActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 330
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 331
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    iput-object v0, p0, Lcom/android/settings/ISActivity;->mDialog:Landroid/app/Dialog;

    .line 332
    const v2, 0x7f0c033a

    invoke-virtual {p0, v2}, Lcom/android/settings/ISActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 333
    invoke-virtual {v0, v3}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 334
    invoke-virtual {v0, v3}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 335
    iget-object v2, p0, Lcom/android/settings/ISActivity;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 336
    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 339
    return-void
.end method

.method private showWarningDialog()V
    .locals 5

    .prologue
    .line 268
    const v2, 0x7f040042

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 270
    .local v1, layout:Landroid/view/View;
    const v2, 0x7f080020

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 273
    .local v0, content:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/ISActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0326

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 274
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 277
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0325

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ISActivity;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0313

    new-instance v4, Lcom/android/settings/ISActivity$10;

    invoke-direct {v4, p0}, Lcom/android/settings/ISActivity$10;-><init>(Lcom/android/settings/ISActivity;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0314

    new-instance v4, Lcom/android/settings/ISActivity$9;

    invoke-direct {v4, p0}, Lcom/android/settings/ISActivity$9;-><init>(Lcom/android/settings/ISActivity;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 308
    return-void
.end method

.method private showWarningDialog_ACG()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 345
    const-string v0, "internet_sharing_acg"

    .line 346
    .local v0, SP_FILE_ACG:Ljava/lang/String;
    const-string v1, "once_acg"

    .line 348
    .local v1, SP_KEY_ACG:Ljava/lang/String;
    new-instance v3, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 349
    .local v3, filter:Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/settings/ISActivity;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v3}, Lcom/android/settings/ISActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 353
    const v5, 0x7f040041

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 354
    .local v4, layout:Landroid/view/View;
    const v5, 0x7f0800c2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 356
    .local v2, checkbox:Landroid/widget/CheckBox;
    const-string v5, "NetSharing_ISActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Shared Preferences include:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/ISActivity;->mContext:Landroid/content/Context;

    const-string v8, "internet_sharing_acg"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "once_acg"

    invoke-interface {v7, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const-string v5, "NetSharing_ISActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkbox:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/ISActivity;->mContext:Landroid/content/Context;

    const-string v8, "internet_sharing_acg"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "internet_sharing_acg"

    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v5, p0, Lcom/android/settings/ISActivity;->mContext:Landroid/content/Context;

    const-string v6, "internet_sharing_acg"

    invoke-virtual {v5, v6, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "once_acg"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/ISActivity;->mContext:Landroid/content/Context;

    const-string v6, "internet_sharing_acg"

    invoke-virtual {v5, v6, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "once_acg"

    invoke-interface {v5, v6, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_1

    .line 360
    :cond_0
    iget-object v5, p0, Lcom/android/settings/ISActivity;->mContext:Landroid/content/Context;

    const-string v6, "internet_sharing_acg"

    invoke-virtual {v5, v6, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "once_acg"

    invoke-interface {v5, v6, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 362
    new-instance v5, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v5, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x1080027

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/ISActivity;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0c0313

    new-instance v7, Lcom/android/settings/ISActivity$12;

    invoke-direct {v7, p0, v2}, Lcom/android/settings/ISActivity$12;-><init>(Lcom/android/settings/ISActivity;Landroid/widget/CheckBox;)V

    invoke-virtual {v5, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 385
    :goto_0
    return-void

    .line 380
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ISActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public HotspotWarningDialog()V
    .locals 3

    .prologue
    .line 169
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0336

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0337

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c075c

    new-instance v2, Lcom/android/settings/ISActivity$5;

    invoke-direct {v2, p0}, Lcom/android/settings/ISActivity$5;-><init>(Lcom/android/settings/ISActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c075d

    new-instance v2, Lcom/android/settings/ISActivity$4;

    invoke-direct {v2, p0}, Lcom/android/settings/ISActivity$4;-><init>(Lcom/android/settings/ISActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 205
    return-void
.end method

.method public NoCDRomWarningDialog()V
    .locals 3

    .prologue
    .line 312
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0338

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0339

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c075c

    new-instance v2, Lcom/android/settings/ISActivity$11;

    invoke-direct {v2, p0}, Lcom/android/settings/ISActivity$11;-><init>(Lcom/android/settings/ISActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ISActivity;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 321
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    iput-object p0, p0, Lcom/android/settings/ISActivity;->mContext:Landroid/content/Context;

    .line 75
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 450
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 452
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 435
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 437
    iget-object v0, p0, Lcom/android/settings/ISActivity;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver;->getDebugUnregister()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/android/settings/ISActivity;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/ISActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ISActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 440
    iget-object v0, p0, Lcom/android/settings/ISActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 441
    invoke-virtual {p0}, Lcom/android/settings/ISActivity;->finish()V

    .line 444
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/ISActivity;->isShowing:Z

    .line 446
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 391
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 392
    invoke-virtual {p0}, Lcom/android/settings/ISActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 393
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "is_dialog_code"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ISActivity;->code:I

    .line 396
    iget v1, p0, Lcom/android/settings/ISActivity;->code:I

    packed-switch v1, :pswitch_data_0

    .line 428
    const-string v1, "NetSharing_ISActivity"

    const-string v2, "unknown dialog code"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :goto_0
    return-void

    .line 399
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/ISActivity;->showMobileDialog()V

    goto :goto_0

    .line 402
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/ISActivity;->showModemDialog()V

    goto :goto_0

    .line 405
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/ISActivity;->HotspotWarningDialog()V

    goto :goto_0

    .line 408
    :pswitch_3
    const-string v1, "internet_sharing"

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/ISActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "is_type"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ISActivity;->Type:I

    .line 409
    invoke-direct {p0}, Lcom/android/settings/ISActivity;->showMobileTypeDialog()V

    goto :goto_0

    .line 412
    :pswitch_4
    invoke-direct {p0}, Lcom/android/settings/ISActivity;->showConfigDialog()V

    goto :goto_0

    .line 415
    :pswitch_5
    invoke-direct {p0}, Lcom/android/settings/ISActivity;->showWarningDialog()V

    goto :goto_0

    .line 418
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/settings/ISActivity;->NoCDRomWarningDialog()V

    goto :goto_0

    .line 421
    :pswitch_7
    invoke-direct {p0}, Lcom/android/settings/ISActivity;->showProgressDialog()V

    goto :goto_0

    .line 424
    :pswitch_8
    invoke-direct {p0}, Lcom/android/settings/ISActivity;->showWarningDialog_ACG()V

    goto :goto_0

    .line 396
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method
