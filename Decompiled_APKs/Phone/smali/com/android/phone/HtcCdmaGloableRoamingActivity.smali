.class public Lcom/android/phone/HtcCdmaGloableRoamingActivity;
.super Landroid/app/Activity;
.source "HtcCdmaGloableRoamingActivity.java"


# static fields
.field public static final BACK_KEY_CODE:I = 0x4

.field public static final CLOSE_DIALOG_ALLOW_CHARGE:I = 0x4

.field public static final CLOSE_DIALOG_ROAMING_OPTION:I = 0x3

.field private static LOG_TAG:Ljava/lang/String; = null

.field public static final TYPE_DIALOG_ALLOW_CHARGE:I = 0x2

.field public static final TYPE_DIALOG_EXTRA_NAME:Ljava/lang/String; = "global_dialog"

.field public static final TYPE_DIALOG_FULL_OPTION:I = 0x0

.field public static final TYPE_DIALOG_NONE:I = -0x1

.field public static final TYPE_DIALOG_ROAMING_OPTION:I = 0x1

.field public static hasShowAllowDialog:Z

.field public static hasShowRoamingDialog:Z

.field public static mDialogType:I


# instance fields
.field private DBG:Z

.field protected FULL_OPTION_IDX:[I

.field protected ROAMING_OPTION_IDX:[I

.field protected mContext:Landroid/content/Context;

.field protected mCurrentOption:I

.field private mDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    const-string v0, "HtcCdmaGloableRoamingActivity"

    sput-object v0, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->LOG_TAG:Ljava/lang/String;

    .line 69
    const/4 v0, -0x1

    sput v0, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mDialogType:I

    .line 73
    sput-boolean v1, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->hasShowRoamingDialog:Z

    .line 74
    sput-boolean v1, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->hasShowAllowDialog:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->DBG:Z

    .line 55
    iput-object v1, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 56
    iput-object v1, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mContext:Landroid/content/Context;

    .line 57
    iput-object v1, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mCurrentOption:I

    .line 70
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->FULL_OPTION_IDX:[I

    .line 71
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->ROAMING_OPTION_IDX:[I

    .line 192
    new-instance v0, Lcom/android/phone/HtcCdmaGloableRoamingActivity$7;

    invoke-direct {v0, p0}, Lcom/android/phone/HtcCdmaGloableRoamingActivity$7;-><init>(Lcom/android/phone/HtcCdmaGloableRoamingActivity;)V

    iput-object v0, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mHandler:Landroid/os/Handler;

    return-void

    .line 70
    nop

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 71
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/phone/HtcCdmaGloableRoamingActivity;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/HtcCdmaGloableRoamingActivity;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method


# virtual methods
.method protected initFullOptionClickListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 264
    new-instance v0, Lcom/android/phone/HtcCdmaGloableRoamingActivity$8;

    invoke-direct {v0, p0}, Lcom/android/phone/HtcCdmaGloableRoamingActivity$8;-><init>(Lcom/android/phone/HtcCdmaGloableRoamingActivity;)V

    return-object v0
.end method

.method protected initRoamingOptionClickListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 307
    new-instance v0, Lcom/android/phone/HtcCdmaGloableRoamingActivity$9;

    invoke-direct {v0, p0}, Lcom/android/phone/HtcCdmaGloableRoamingActivity$9;-><init>(Lcom/android/phone/HtcCdmaGloableRoamingActivity;)V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->requestWindowFeature(I)Z

    .line 80
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 81
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mContext:Landroid/content/Context;

    .line 82
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "global_dialog"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 83
    .local v1, tmp:I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 84
    sput v1, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mDialogType:I

    .line 85
    :cond_0
    sget-object v2, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate:dialogType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v2, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 87
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 88
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .parameter "id"

    .prologue
    const v9, 0x20800a0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const v6, 0x7f0e02db

    const/4 v5, 0x0

    .line 100
    sget-object v2, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateDialog:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    packed-switch p1, :pswitch_data_0

    .line 190
    :goto_0
    iget-object v2, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v2

    .line 105
    :pswitch_0
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f0e01bb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    iget-object v2, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f0e01bc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v7

    iget-object v2, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f0e01bd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v8

    .line 108
    .local v0, items:[Ljava/lang/String;
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0e013f

    new-instance v4, Lcom/android/phone/HtcCdmaGloableRoamingActivity$1;

    invoke-direct {v4, p0}, Lcom/android/phone/HtcCdmaGloableRoamingActivity$1;-><init>(Lcom/android/phone/HtcCdmaGloableRoamingActivity;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->FULL_OPTION_IDX:[I

    iget v4, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mCurrentOption:I

    aget v3, v3, v4

    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->initFullOptionClickListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 119
    iget-object v2, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2, v9}, Lcom/htc/widget/HtcAlertDialog;->setIcon(I)V

    .line 120
    iget-object v2, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcAlertDialog;->setTitle(I)V

    .line 121
    iget-object v2, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    new-instance v3, Lcom/android/phone/HtcCdmaGloableRoamingActivity$2;

    invoke-direct {v3, p0}, Lcom/android/phone/HtcCdmaGloableRoamingActivity$2;-><init>(Lcom/android/phone/HtcCdmaGloableRoamingActivity;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_0

    .line 135
    .end local v0           #items:[Ljava/lang/String;
    :pswitch_1
    new-array v1, v8, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f0e01c0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f0e01bf

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 137
    .local v1, items2:[Ljava/lang/String;
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0e013f

    new-instance v4, Lcom/android/phone/HtcCdmaGloableRoamingActivity$3;

    invoke-direct {v4, p0}, Lcom/android/phone/HtcCdmaGloableRoamingActivity$3;-><init>(Lcom/android/phone/HtcCdmaGloableRoamingActivity;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->ROAMING_OPTION_IDX:[I

    iget v4, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mCurrentOption:I

    aget v3, v3, v4

    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->initRoamingOptionClickListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 147
    iget-object v2, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2, v9}, Lcom/htc/widget/HtcAlertDialog;->setIcon(I)V

    .line 148
    iget-object v2, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcAlertDialog;->setTitle(I)V

    .line 149
    iget-object v2, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    new-instance v3, Lcom/android/phone/HtcCdmaGloableRoamingActivity$4;

    invoke-direct {v3, p0}, Lcom/android/phone/HtcCdmaGloableRoamingActivity$4;-><init>(Lcom/android/phone/HtcCdmaGloableRoamingActivity;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto/16 :goto_0

    .line 163
    .end local v1           #items2:[Ljava/lang/String;
    :pswitch_2
    iget-object v2, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v2, :cond_0

    .line 164
    iget-object v2, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 165
    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->removeDialog(I)V

    .line 166
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0e0140

    new-instance v4, Lcom/android/phone/HtcCdmaGloableRoamingActivity$5;

    invoke-direct {v4, p0}, Lcom/android/phone/HtcCdmaGloableRoamingActivity$5;-><init>(Lcom/android/phone/HtcCdmaGloableRoamingActivity;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 173
    iget-object v2, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog;->setIcon(I)V

    .line 174
    iget-object v2, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcAlertDialog;->setTitle(I)V

    .line 175
    iget-object v2, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    const v3, 0x7f0e01c1

    invoke-virtual {p0, v3}, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v2, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    new-instance v3, Lcom/android/phone/HtcCdmaGloableRoamingActivity$6;

    invoke-direct {v3, p0}, Lcom/android/phone/HtcCdmaGloableRoamingActivity$6;-><init>(Lcom/android/phone/HtcCdmaGloableRoamingActivity;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto/16 :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 91
    const-string v2, "global_dialog"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 92
    .local v1, tmp:I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 93
    sput v1, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mDialogType:I

    .line 94
    :cond_0
    sget-object v2, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNewIntent:dialogType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v2, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 96
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 97
    return-void
.end method
