.class public Lcom/android/settings/PSActivity;
.super Landroid/app/Activity;
.source "PSActivity.java"


# static fields
.field public static final DIALOG_HandShakeOK:I = 0x2

.field public static final DIALOG_Notice:I = 0x3

.field public static final DIALOG_Trigger:I = 0x1

.field public static final IPTConnPass:Ljava/lang/String; = "ipt_connectpass"

.field public static final KEY_PS_DIALOG:Ljava/lang/String; = "ps_dialog_code"

.field public static final NotShowNotice:Ljava/lang/String; = "notshow_notice"

.field public static final PSEnabled:Ljava/lang/String; = "ps_enabled"

.field public static final SP_FILE:Ljava/lang/String; = "internet_ps"

.field public static final Tag:Ljava/lang/String; = "PSReceiver"

.field public static final Trigger_NO:Ljava/lang/String; = "com.htc.InternetPS.TriggerNO"

.field public static final Trigger_OK:Ljava/lang/String; = "com.htc.InternetPS.TriggerOK"


# instance fields
.field private DBG:Z

.field ed:Landroid/content/SharedPreferences$Editor;

.field mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field sp:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 19
    iput-object v1, p0, Lcom/android/settings/PSActivity;->mContext:Landroid/content/Context;

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/PSActivity;->DBG:Z

    .line 32
    iput-object v1, p0, Lcom/android/settings/PSActivity;->mDialog:Landroid/app/Dialog;

    .line 66
    new-instance v0, Lcom/android/settings/PSActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/PSActivity$1;-><init>(Lcom/android/settings/PSActivity;)V

    iput-object v0, p0, Lcom/android/settings/PSActivity;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/PSActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/android/settings/PSActivity;->DBG:Z

    return v0
.end method


# virtual methods
.method public ShowNoticeDlg()V
    .locals 5

    .prologue
    .line 117
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 118
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v3, 0x7f040040

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 119
    .local v2, contents:Landroid/view/View;
    const v3, 0x7f0800c1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 120
    .local v1, checkbox:Landroid/widget/CheckBox;
    sget-boolean v3, Lcom/android/settings/PSReceiver;->Notshow_notice:Z

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 123
    new-instance v3, Lcom/android/settings/PSActivity$3;

    invoke-direct {v3, p0}, Lcom/android/settings/PSActivity$3;-><init>(Lcom/android/settings/PSActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 128
    const v3, 0x7f0c04fa

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 129
    const v3, 0x1080027

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 130
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 131
    const v3, 0x20c013c

    new-instance v4, Lcom/android/settings/PSActivity$4;

    invoke-direct {v4, p0, v1}, Lcom/android/settings/PSActivity$4;-><init>(Lcom/android/settings/PSActivity;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 141
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/PSActivity;->mDialog:Landroid/app/Dialog;

    .line 142
    iget-object v3, p0, Lcom/android/settings/PSActivity;->mDialog:Landroid/app/Dialog;

    iget-object v4, p0, Lcom/android/settings/PSActivity;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 143
    iget-object v3, p0, Lcom/android/settings/PSActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 144
    return-void
.end method

.method public ShowPSTriggerDlg()V
    .locals 3

    .prologue
    .line 80
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/PSActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 81
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 82
    const v1, 0x7f0c04f6

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 83
    const v1, 0x7f0c04f7

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 84
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setInverseBackgroundForced(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 85
    const v1, 0x20c013c

    new-instance v2, Lcom/android/settings/PSActivity$2;

    invoke-direct {v2, p0}, Lcom/android/settings/PSActivity$2;-><init>(Lcom/android/settings/PSActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 92
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PSActivity;->mDialog:Landroid/app/Dialog;

    .line 93
    iget-object v1, p0, Lcom/android/settings/PSActivity;->mDialog:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/android/settings/PSActivity;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 94
    iget-object v1, p0, Lcom/android/settings/PSActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 96
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    iput-object p0, p0, Lcom/android/settings/PSActivity;->mContext:Landroid/content/Context;

    .line 39
    iget-object v0, p0, Lcom/android/settings/PSActivity;->mContext:Landroid/content/Context;

    const-string v1, "internet_ps"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PSActivity;->sp:Landroid/content/SharedPreferences;

    .line 40
    iget-object v0, p0, Lcom/android/settings/PSActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PSActivity;->ed:Landroid/content/SharedPreferences$Editor;

    .line 41
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 148
    iget-object v0, p0, Lcom/android/settings/PSActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/PSActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 149
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 45
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/PSActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 47
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "ps_dialog_code"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 48
    .local v0, code:I
    iget-boolean v2, p0, Lcom/android/settings/PSActivity;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "PSReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dialog code= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 61
    iget-boolean v2, p0, Lcom/android/settings/PSActivity;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "PSReceiver"

    const-string v3, "Unknown dialog code"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 52
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/PSActivity;->ShowPSTriggerDlg()V

    goto :goto_0

    .line 58
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/PSActivity;->ShowNoticeDlg()V

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
