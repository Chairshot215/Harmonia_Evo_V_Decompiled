.class public Lcom/android/phone/WarningAlertActivity;
.super Landroid/app/Activity;
.source "WarningAlertActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WarningAlertActivity"

.field public static final WA_BUTTONNEGATIVETEXT:Ljava/lang/String; = "com.android.phone.wa.buttonNegativeText"

.field public static final WA_BUTTONPOSITIVETEXT:Ljava/lang/String; = "com.android.phone.wa.buttonPositiveText"

.field public static final WA_EV_CHECKBOX:I = 0x238d

.field public static final WA_HASCHECKBOX:Ljava/lang/String; = "com.android.phone.wa.hasCheckBox"

.field public static final WA_TITLETEXT:Ljava/lang/String; = "com.android.phone.wa.titleText"

.field public static final WA_WARNINGTEXT:Ljava/lang/String; = "com.android.phone.wa.warningText"

.field private static mCheckBoxHandler:Landroid/os/Handler;

.field private static mbNoServiceMsg:Z


# instance fields
.field private mCheckBoxView:Landroid/view/View;

.field private mDialog:Lcom/htc/widget/HtcAlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/WarningAlertActivity;->mCheckBoxHandler:Landroid/os/Handler;

    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/WarningAlertActivity;->mbNoServiceMsg:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/WarningAlertActivity;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/phone/WarningAlertActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/phone/WarningAlertActivity;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/phone/WarningAlertActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object p1
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/phone/WarningAlertActivity;->mCheckBoxHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    sput-object p0, Lcom/android/phone/WarningAlertActivity;->mCheckBoxHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static dismiss(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 231
    sget-boolean v1, Lcom/android/phone/WarningAlertActivity;->mbNoServiceMsg:Z

    if-eqz v1, :cond_0

    .line 233
    const-string v1, "WarningAlertActivity"

    const-string v2, "dismiss..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/phone/WarningAlertActivity;->mbNoServiceMsg:Z

    .line 237
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/WarningAlertActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 238
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 239
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    const-string v1, "com.android.phone.WarningAlertActivity.dismiss"

    const-string v2, "dismiss"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 243
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static setHandler(Landroid/os/Handler;)V
    .locals 3
    .parameter "handler"

    .prologue
    .line 247
    const-string v0, "WarningAlertActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handler="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    sput-object p0, Lcom/android/phone/WarningAlertActivity;->mCheckBoxHandler:Landroid/os/Handler;

    .line 249
    return-void
.end method

.method public static showAlert(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "context"
    .parameter "titleText"
    .parameter "warningText"
    .parameter "hasCheckBox"
    .parameter "checkboxStr"
    .parameter "buttonPositiveText"
    .parameter "buttonNegativeText"

    .prologue
    .line 214
    const-string v1, "WarningAlertActivity"

    const-string v2, "showAlert"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/phone/WarningAlertActivity;->mbNoServiceMsg:Z

    .line 217
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/WarningAlertActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 218
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 219
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    if-eqz p1, :cond_0

    const-string v1, "com.android.phone.wa.titleText"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 221
    :cond_0
    const-string v1, "com.android.phone.wa.warningText"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 222
    if-eqz p3, :cond_1

    const-string v1, "com.android.phone.wa.hasCheckBox"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 223
    :cond_1
    if-eqz p5, :cond_2

    const-string v1, "com.android.phone.wa.buttonPositiveText"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 224
    :cond_2
    if-eqz p6, :cond_3

    const-string v1, "com.android.phone.wa.buttonNegativeText"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 225
    :cond_3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 226
    return-void
.end method

.method public static showAlertForNoService(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "context"
    .parameter "titleText"
    .parameter "warningText"
    .parameter "hasCheckBox"
    .parameter "checkboxStr"
    .parameter "buttonPositiveText"
    .parameter "buttonNegativeText"

    .prologue
    .line 192
    sget-boolean v1, Lcom/android/phone/WarningAlertActivity;->mbNoServiceMsg:Z

    if-eqz v1, :cond_0

    .line 209
    :goto_0
    return-void

    .line 197
    :cond_0
    const-string v1, "WarningAlertActivity"

    const-string v2, "showAlertForNoService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/phone/WarningAlertActivity;->mbNoServiceMsg:Z

    .line 200
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/WarningAlertActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 201
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 202
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    if-eqz p1, :cond_1

    const-string v1, "com.android.phone.wa.titleText"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 204
    :cond_1
    const-string v1, "com.android.phone.wa.warningText"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 205
    if-eqz p3, :cond_2

    const-string v1, "com.android.phone.wa.hasCheckBox"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 206
    :cond_2
    if-eqz p5, :cond_3

    const-string v1, "com.android.phone.wa.buttonPositiveText"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 207
    :cond_3
    if-eqz p6, :cond_4

    const-string v1, "com.android.phone.wa.buttonNegativeText"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 208
    :cond_4
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private showAlertMessage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "titleText"
    .parameter "warningText"
    .parameter "hasCheckBox"
    .parameter "checkboxStr"
    .parameter "buttonPositiveText"
    .parameter "buttonNegativeText"

    .prologue
    const/4 v4, 0x0

    .line 108
    const-string v1, "WarningAlertActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showAlertMessage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v1, p0, Lcom/android/phone/WarningAlertActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/android/phone/WarningAlertActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 113
    iput-object v4, p0, Lcom/android/phone/WarningAlertActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 116
    :cond_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 117
    .local v0, dialogB:Lcom/htc/widget/HtcAlertDialog$Builder;
    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 118
    :cond_1
    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 119
    new-instance v1, Lcom/android/phone/WarningAlertActivity$1;

    invoke-direct {v1, p0}, Lcom/android/phone/WarningAlertActivity$1;-><init>(Lcom/android/phone/WarningAlertActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 136
    new-instance v1, Lcom/android/phone/WarningAlertActivity$2;

    invoke-direct {v1, p0}, Lcom/android/phone/WarningAlertActivity$2;-><init>(Lcom/android/phone/WarningAlertActivity;)V

    invoke-virtual {v0, p5, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 158
    if-eqz p6, :cond_2

    new-instance v1, Lcom/android/phone/WarningAlertActivity$3;

    invoke-direct {v1, p0}, Lcom/android/phone/WarningAlertActivity$3;-><init>(Lcom/android/phone/WarningAlertActivity;)V

    invoke-virtual {v0, p6, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 180
    :cond_2
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/WarningAlertActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 181
    if-eqz p3, :cond_3

    .line 183
    invoke-virtual {p0}, Lcom/android/phone/WarningAlertActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030022

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/WarningAlertActivity;->mCheckBoxView:Landroid/view/View;

    .line 184
    iget-object v1, p0, Lcom/android/phone/WarningAlertActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    iget-object v2, p0, Lcom/android/phone/WarningAlertActivity;->mCheckBoxView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog;->setView(Landroid/view/View;)V

    .line 186
    :cond_3
    iget-object v1, p0, Lcom/android/phone/WarningAlertActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 187
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const-string v0, "WarningAlertActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p0}, Lcom/android/phone/WarningAlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 48
    .local v7, intent:Landroid/content/Intent;
    const-string v0, "com.android.phone.WarningAlertActivity.dismiss"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    const-string v0, "WarningAlertActivity"

    const-string v1, "hasExtra"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/android/phone/WarningAlertActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/phone/WarningAlertActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 55
    iput-object v4, p0, Lcom/android/phone/WarningAlertActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/WarningAlertActivity;->finish()V

    .line 68
    :goto_0
    return-void

    .line 61
    :cond_1
    const-string v0, "com.android.phone.wa.titleText"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "com.android.phone.wa.warningText"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "com.android.phone.wa.hasCheckBox"

    const/4 v3, 0x0

    invoke-virtual {v7, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v0, "com.android.phone.wa.buttonPositiveText"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "com.android.phone.wa.buttonNegativeText"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/phone/WarningAlertActivity;->showAlertMessage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 101
    const-string v0, "WarningAlertActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/WarningAlertActivity;->mbNoServiceMsg:Z

    .line 103
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 73
    const-string v0, "WarningAlertActivity"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string v0, "com.android.phone.WarningAlertActivity.dismiss"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    const-string v0, "WarningAlertActivity"

    const-string v1, "hasExtra"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcom/android/phone/WarningAlertActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/phone/WarningAlertActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 82
    iput-object v4, p0, Lcom/android/phone/WarningAlertActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/WarningAlertActivity;->finish()V

    .line 94
    :goto_0
    return-void

    .line 87
    :cond_1
    const-string v0, "com.android.phone.wa.titleText"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "com.android.phone.wa.warningText"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "com.android.phone.wa.hasCheckBox"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v0, "com.android.phone.wa.buttonPositiveText"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "com.android.phone.wa.buttonNegativeText"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/phone/WarningAlertActivity;->showAlertMessage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
