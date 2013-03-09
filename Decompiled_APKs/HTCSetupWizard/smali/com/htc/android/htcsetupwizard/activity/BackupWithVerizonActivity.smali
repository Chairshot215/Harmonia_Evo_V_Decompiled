.class public Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;
.super Landroid/app/Activity;
.source "BackupWithVerizonActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final HANDLER_ON_SETCALL2_RESULT:I = 0x64

.field private static final REQUEST_CODE_WHAT_WOULD_YOU_LIKE_TO_BACKUP:I = 0x64

.field private static final TAG:Ljava/lang/String; = "OOBE_BackupWithVerizon"


# instance fields
.field private btnNext:Landroid/widget/Button;

.field private mCheckAgree:Landroid/widget/CheckBox;

.field private mDesc:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mLink:Ljava/lang/String;

.field private mPrice:Lcom/htc/vmm/api/newbay/bean/Price;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSPGData:Lcom/htc/vmm/api/newbay/bean/SPGData;

.field private mServer:Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;

.field private mSetCall2Thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 76
    new-instance v0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity$1;-><init>(Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;)V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$102(Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->mSetCall2Thread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;)Lcom/htc/vmm/api/newbay/bean/Price;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->mPrice:Lcom/htc/vmm/api/newbay/bean/Price;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;)Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->mServer:Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private initialize()V
    .locals 5

    .prologue
    .line 178
    const v3, 0x7f030004

    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->setContentView(I)V

    .line 180
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleColor(Landroid/content/Context;Landroid/app/Activity;)V

    .line 181
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleDivider(Landroid/content/Context;Landroid/app/Activity;)V

    .line 183
    const v3, 0x7f0d000c

    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 184
    .local v2, textDesc2:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0020

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 188
    .local v1, strTermsSvc:Ljava/lang/CharSequence;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<a href=\"http://support.verizonwireless.com/terms/products/backup_assistant_plus.html\">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</a>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 191
    const v3, 0x7f0d000d

    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->mCheckAgree:Landroid/widget/CheckBox;

    .line 192
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->mCheckAgree:Landroid/widget/CheckBox;

    if-eqz v3, :cond_0

    .line 193
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->mCheckAgree:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->mCheckAgree:Landroid/widget/CheckBox;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 197
    :cond_0
    const v3, 0x7f0d000e

    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 198
    .local v0, btnLearnMore:Landroid/widget/Button;
    if-eqz v0, :cond_1

    .line 199
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    :cond_1
    const v3, 0x7f0d0009

    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->btnNext:Landroid/widget/Button;

    .line 203
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->btnNext:Landroid/widget/Button;

    if-eqz v3, :cond_2

    .line 204
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->btnNext:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    :cond_2
    return-void
.end method

.method private runSetCall2()V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->mSetCall2Thread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 340
    :goto_0
    return-void

    .line 315
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 316
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 317
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0a00e4

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 320
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity$2;

    invoke-direct {v1, p0}, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity$2;-><init>(Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->mSetCall2Thread:Ljava/lang/Thread;

    .line 339
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->mSetCall2Thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private showAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .parameter "title"
    .parameter "message"
    .parameter "dismiss_exit"

    .prologue
    .line 243
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0017

    invoke-virtual {v1, v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 249
    .local v0, dialog:Lcom/htc/widget/HtcAlertDialog;
    if-eqz p3, :cond_0

    .line 250
    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 253
    :cond_0
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 254
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 284
    const-string v0, "OOBE_BackupWithVerizon"

    const-string v1, "finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 286
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "nRequestCode"
    .parameter "nResultCode"
    .parameter "intent"

    .prologue
    .line 291
    const-string v0, "OOBE_BackupWithVerizon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult requestCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resultCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 293
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->setResult(I)V

    .line 294
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->finish()V

    .line 296
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 300
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 239
    .end local p1
    :goto_0
    :pswitch_0
    return-void

    .line 213
    .restart local p1
    :pswitch_1
    check-cast p1, Landroid/widget/CompoundButton;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->btnNext:Landroid/widget/Button;

    const v1, 0x7f0a000e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->btnNext:Landroid/widget/Button;

    const v1, 0x7f0a000d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 224
    .restart local p1
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0146

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 228
    :pswitch_3
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->mCheckAgree:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->runSetCall2()V

    goto :goto_0

    .line 234
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->setResult(I)V

    .line 235
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->finish()V

    goto :goto_0

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0009
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const v8, 0x7f0a00a2

    const/4 v7, 0x1

    .line 111
    const-string v4, "OOBE_BackupWithVerizon"

    const-string v5, "onCreate"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 115
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 117
    const-string v4, "SPGData"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/htc/vmm/api/newbay/bean/SPGData;

    iput-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->mSPGData:Lcom/htc/vmm/api/newbay/bean/SPGData;

    .line 118
    const-string v4, "OOBE_BackupWithVerizon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSPGData: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->mSPGData:Lcom/htc/vmm/api/newbay/bean/SPGData;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    invoke-static {}, Lcom/htc/android/htcsetupwizard/MainActivity;->getVMMInterface()Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->mServer:Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;

    .line 122
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->mSPGData:Lcom/htc/vmm/api/newbay/bean/SPGData;

    if-eqz v4, :cond_1

    .line 124
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->mSPGData:Lcom/htc/vmm/api/newbay/bean/SPGData;

    invoke-virtual {v4}, Lcom/htc/vmm/api/newbay/bean/SPGData;->getErrorMsg()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 126
    const-string v4, "OOBE_BackupWithVerizon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "spgData.getErrorCode() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->mSPGData:Lcom/htc/vmm/api/newbay/bean/SPGData;

    invoke-virtual {v6}, Lcom/htc/vmm/api/newbay/bean/SPGData;->getErrorCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string v4, "OOBE_BackupWithVerizon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "spgData.getErrorMsg() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->mSPGData:Lcom/htc/vmm/api/newbay/bean/SPGData;

    invoke-virtual {v6}, Lcom/htc/vmm/api/newbay/bean/SPGData;->getErrorMsg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->mSPGData:Lcom/htc/vmm/api/newbay/bean/SPGData;

    invoke-virtual {v5}, Lcom/htc/vmm/api/newbay/bean/SPGData;->getErrorMsg()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5, v7}, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 167
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->initialize()V

    .line 168
    return-void

    .line 133
    :cond_2
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->mSPGData:Lcom/htc/vmm/api/newbay/bean/SPGData;

    invoke-virtual {v4}, Lcom/htc/vmm/api/newbay/bean/SPGData;->getDescription()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->mDesc:Ljava/lang/String;

    .line 134
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->mSPGData:Lcom/htc/vmm/api/newbay/bean/SPGData;

    invoke-virtual {v4}, Lcom/htc/vmm/api/newbay/bean/SPGData;->getLink()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->mLink:Ljava/lang/String;

    .line 135
    const-string v4, "OOBE_BackupWithVerizon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mDesc = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->mDesc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string v4, "OOBE_BackupWithVerizon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mLink = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->mLink:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->mSPGData:Lcom/htc/vmm/api/newbay/bean/SPGData;

    invoke-virtual {v4}, Lcom/htc/vmm/api/newbay/bean/SPGData;->getList()Ljava/util/List;

    move-result-object v2

    .line 139
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/vmm/api/newbay/bean/Price;>;"
    if-eqz v2, :cond_5

    .line 141
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 142
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/vmm/api/newbay/bean/Price;

    .line 143
    .local v3, priceObj:Lcom/htc/vmm/api/newbay/bean/Price;
    const-string v4, "0.00"

    invoke-virtual {v3}, Lcom/htc/vmm/api/newbay/bean/Price;->getPrice()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 145
    iput-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->mPrice:Lcom/htc/vmm/api/newbay/bean/Price;

    .line 146
    const-string v4, "OOBE_BackupWithVerizon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPrice Name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->mPrice:Lcom/htc/vmm/api/newbay/bean/Price;

    invoke-virtual {v6}, Lcom/htc/vmm/api/newbay/bean/Price;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Desc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->mPrice:Lcom/htc/vmm/api/newbay/bean/Price;

    invoke-virtual {v6}, Lcom/htc/vmm/api/newbay/bean/Price;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Price="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->mPrice:Lcom/htc/vmm/api/newbay/bean/Price;

    invoke-virtual {v6}, Lcom/htc/vmm/api/newbay/bean/Price;->getPrice()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ServiceId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->mPrice:Lcom/htc/vmm/api/newbay/bean/Price;

    invoke-virtual {v6}, Lcom/htc/vmm/api/newbay/bean/Price;->getServiceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ChannelId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->mPrice:Lcom/htc/vmm/api/newbay/bean/Price;

    invoke-virtual {v6}, Lcom/htc/vmm/api/newbay/bean/Price;->getChannelId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .end local v3           #priceObj:Lcom/htc/vmm/api/newbay/bean/Price;
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_1

    .line 157
    const-string v4, "OOBE_BackupWithVerizon"

    const-string v5, "no default price found!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00a4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5, v7}, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 141
    .restart local v3       #priceObj:Lcom/htc/vmm/api/newbay/bean/Price;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 161
    .end local v0           #i:I
    .end local v3           #priceObj:Lcom/htc/vmm/api/newbay/bean/Price;
    :cond_5
    const-string v4, "OOBE_BackupWithVerizon"

    const-string v5, "empty price list!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 173
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 174
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 304
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->setResult(I)V

    .line 305
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->finish()V

    .line 306
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 267
    const-string v0, "OOBE_BackupWithVerizon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    sparse-switch p1, :sswitch_data_0

    .line 277
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 275
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 269
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 259
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 260
    const-string v0, "OOBE_BackupWithVerizon"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return-void
.end method
