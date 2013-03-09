.class public Lcom/android/phone/HtcCdmaBgOtasp;
.super Landroid/app/Activity;
.source "HtcCdmaBgOtasp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field public static final DIALOG_TYPE_FAIL:I = 0x2

.field public static final DIALOG_TYPE_NONE:I = 0x0

.field public static final DIALOG_TYPE_PROGRESSING:I = 0x1

.field public static final DIALOG_TYPE_SUCCESS:I = 0x3

.field private static final DIALOG_TYPE_UI_OTA_CALL_FAIL__BASE:I = 0x4

.field public static final DIALOG_TYPE_UI_OTA_CALL_FAIL__NO_SIM:I = 0x5

.field public static final DIALOG_TYPE_UI_OTA_CALL_FAIL__SIM_PROVISIONED:I = 0x6

.field public static final DIALOG_TYPE_UI_OTA_CALL_FAIL__SIM_UNPROVISIONED:I = 0x7

.field private static final EVENT_SIMPLE_DIALOG_TIMEOUT:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final FEATURE_ENABLED:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "HtcCdmaBgOtasp"

.field public static hasShowOTADialog:Z


# instance fields
.field private mDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mDialogDiaplyed:Z

.field private mDialogIndex:I

.field private mDialogTimeout:I

.field private mDialogType:I

.field private mDisplayingDialog:Landroid/content/DialogInterface;

.field private mHandler:Landroid/os/Handler;

.field private mProgressingView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_BACKGROUND_OTA:Z

    sput-boolean v0, Lcom/android/phone/HtcCdmaBgOtasp;->FEATURE_ENABLED:Z

    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/HtcCdmaBgOtasp;->hasShowOTADialog:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/HtcCdmaBgOtasp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialogIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/HtcCdmaBgOtasp;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/HtcCdmaBgOtasp;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object p1
.end method

.method private createHandler()V
    .locals 1

    .prologue
    .line 92
    sget-boolean v0, Lcom/android/phone/HtcCdmaBgOtasp;->FEATURE_ENABLED:Z

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Lcom/android/phone/HtcCdmaBgOtasp$1;

    invoke-direct {v0, p0}, Lcom/android/phone/HtcCdmaBgOtasp$1;-><init>(Lcom/android/phone/HtcCdmaBgOtasp;)V

    iput-object v0, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mHandler:Landroid/os/Handler;

    .line 110
    :cond_0
    return-void
.end method

.method private updateDialog(II)V
    .locals 13
    .parameter "prevDialogType"
    .parameter "dialogType"

    .prologue
    const/4 v8, 0x1

    const/4 v12, 0x0

    .line 115
    sget-boolean v9, Lcom/android/phone/HtcCdmaBgOtasp;->FEATURE_ENABLED:Z

    if-eqz v9, :cond_0

    .line 116
    const/4 v5, 0x0

    .line 117
    .local v5, mPreviousDialog:Lcom/htc/widget/HtcAlertDialog;
    const-string v9, "HtcCdmaBgOtasp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "prev="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", curr="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    if-lez p1, :cond_2

    if-eq p1, p2, :cond_2

    .line 119
    const/4 v9, 0x4

    if-lt p2, v9, :cond_1

    if-ne p1, v8, :cond_1

    .line 222
    .end local v5           #mPreviousDialog:Lcom/htc/widget/HtcAlertDialog;
    :cond_0
    :goto_0
    return-void

    .line 123
    .restart local v5       #mPreviousDialog:Lcom/htc/widget/HtcAlertDialog;
    :cond_1
    iget-object v9, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v9, :cond_2

    .line 124
    iput-object v12, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDisplayingDialog:Landroid/content/DialogInterface;

    .line 125
    iget-object v9, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v9}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 126
    iget-object v5, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 127
    iput-object v12, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 130
    :cond_2
    const/4 v4, -0x1

    .line 131
    .local v4, idTitle:I
    const/4 v2, -0x1

    .line 132
    .local v2, idDialogString:I
    const/4 v1, -0x1

    .line 133
    .local v1, idButton:I
    const/4 v3, -0x1

    .line 134
    .local v3, idIcon:I
    iput-object v12, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mProgressingView:Landroid/view/View;

    .line 135
    packed-switch p2, :pswitch_data_0

    .line 175
    :pswitch_0
    iget-object v8, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v8, :cond_6

    .line 176
    iget-object v8, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 177
    iput-object v12, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 137
    :pswitch_1
    const v4, 0x7f0e01a4

    .line 138
    const v3, 0x108009b

    .line 139
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaBgOtasp;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f030021

    invoke-virtual {v9, v10, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mProgressingView:Landroid/view/View;

    .line 184
    :goto_1
    iget v9, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialogIndex:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialogIndex:I

    .line 186
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaBgOtasp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 187
    .local v0, context:Landroid/content/Context;
    iget-object v9, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-nez v9, :cond_3

    .line 188
    new-instance v9, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v9, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    iget v10, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialogTimeout:I

    if-eqz v10, :cond_7

    :goto_2
    invoke-virtual {v9, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 193
    iget-object v8, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d8

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    .line 195
    iget-object v8, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    .line 198
    iget-object v8, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v8, p0}, Lcom/htc/widget/HtcAlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 199
    iget-object v8, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v8, p0}, Lcom/htc/widget/HtcAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 200
    iget-object v8, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v8, p0}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 202
    :cond_3
    if-gez v2, :cond_8

    .line 203
    iget-object v8, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v8, v12}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 208
    :goto_3
    iget-object v8, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    iget-object v9, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mProgressingView:Landroid/view/View;

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog;->setView(Landroid/view/View;)V

    .line 210
    const/4 v7, 0x0

    .line 211
    .local v7, positiveText:Ljava/lang/CharSequence;
    const/4 v6, 0x0

    .line 212
    .local v6, negativeText:Ljava/lang/CharSequence;
    if-ltz v1, :cond_4

    .line 213
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 215
    :cond_4
    iget-object v8, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    const/4 v9, -0x1

    invoke-virtual {v8, v9, v7, p0}, Lcom/htc/widget/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 216
    iget-object v8, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    const/4 v9, -0x2

    invoke-virtual {v8, v9, v6, p0}, Lcom/htc/widget/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 217
    if-ltz v3, :cond_5

    .line 218
    iget-object v8, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v8, v3}, Lcom/htc/widget/HtcAlertDialog;->setIcon(I)V

    .line 220
    :cond_5
    iget-object v8, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto/16 :goto_0

    .line 143
    .end local v0           #context:Landroid/content/Context;
    .end local v6           #negativeText:Ljava/lang/CharSequence;
    .end local v7           #positiveText:Ljava/lang/CharSequence;
    :pswitch_2
    const v4, 0x7f0e01a4

    .line 144
    const v2, 0x7f0e01a6

    .line 145
    const v1, 0x104000a

    .line 146
    const v3, 0x1080027

    .line 147
    const/16 v9, 0x2710

    iput v9, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialogTimeout:I

    goto/16 :goto_1

    .line 150
    :pswitch_3
    const v4, 0x7f0e01a4

    .line 151
    const v2, 0x7f0e01a7

    .line 152
    const v1, 0x104000a

    .line 153
    const v3, 0x108009b

    .line 154
    const/16 v9, 0x1388

    iput v9, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialogTimeout:I

    goto/16 :goto_1

    .line 157
    :pswitch_4
    const v4, 0x7f0e01a4

    .line 158
    const v2, 0x7f0e01a8

    .line 159
    const v1, 0x104000a

    .line 160
    const v3, 0x1080027

    .line 161
    goto/16 :goto_1

    .line 163
    :pswitch_5
    const v4, 0x7f0e01a4

    .line 164
    const v2, 0x7f0e01a9

    .line 165
    const v1, 0x104000a

    .line 166
    const v3, 0x108009b

    .line 167
    goto/16 :goto_1

    .line 169
    :pswitch_6
    const v4, 0x7f0e01a4

    .line 170
    const v2, 0x7f0e01aa

    .line 171
    const v1, 0x104000a

    .line 172
    const v3, 0x1080027

    .line 173
    goto/16 :goto_1

    .line 180
    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaBgOtasp;->finish()V

    goto/16 :goto_0

    .line 188
    .restart local v0       #context:Landroid/content/Context;
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 206
    :cond_8
    iget-object v8, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 135
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 85
    sget-boolean v0, Lcom/android/phone/HtcCdmaBgOtasp;->FEATURE_ENABLED:Z

    if-eqz v0, :cond_0

    .line 87
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 249
    sget-boolean v0, Lcom/android/phone/HtcCdmaBgOtasp;->FEATURE_ENABLED:Z

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 255
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 240
    sget-boolean v0, Lcom/android/phone/HtcCdmaBgOtasp;->FEATURE_ENABLED:Z

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 246
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    sget-boolean v1, Lcom/android/phone/HtcCdmaBgOtasp;->FEATURE_ENABLED:Z

    if-eqz v1, :cond_0

    .line 53
    if-eqz p1, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaBgOtasp;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 57
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialogType:I

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 258
    sget-boolean v0, Lcom/android/phone/HtcCdmaBgOtasp;->FEATURE_ENABLED:Z

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDisplayingDialog:Landroid/content/DialogInterface;

    if-ne v0, p1, :cond_1

    .line 260
    const-string v0, "HtcCdmaBgOtasp"

    const-string v1, "dismiss and finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaBgOtasp;->finish()V

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    const-string v0, "HtcCdmaBgOtasp"

    const-string v1, "dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 63
    sget-boolean v1, Lcom/android/phone/HtcCdmaBgOtasp;->FEATURE_ENABLED:Z

    if-eqz v1, :cond_0

    .line 64
    iget v1, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialogType:I

    add-int/lit8 v0, v1, -0x1

    .line 65
    .local v0, prevDialogType:I
    const-string v1, "type"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialogType:I

    .line 66
    iget v1, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialogType:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/HtcCdmaBgOtasp;->updateDialog(II)V

    .line 68
    .end local v0           #prevDialogType:I
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 73
    sget-boolean v0, Lcom/android/phone/HtcCdmaBgOtasp;->FEATURE_ENABLED:Z

    if-eqz v0, :cond_0

    .line 74
    iget-boolean v0, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialogDiaplyed:Z

    if-nez v0, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/android/phone/HtcCdmaBgOtasp;->createHandler()V

    .line 76
    const/4 v0, -0x1

    iget v1, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialogType:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/HtcCdmaBgOtasp;->updateDialog(II)V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialogDiaplyed:Z

    .line 80
    :cond_0
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 5
    .parameter "dialog"

    .prologue
    const/4 v4, 0x0

    .line 226
    sget-boolean v0, Lcom/android/phone/HtcCdmaBgOtasp;->FEATURE_ENABLED:Z

    if-eqz v0, :cond_2

    .line 227
    iget v0, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialogTimeout:I

    if-lez v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialogIndex:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialogTimeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 233
    :cond_0
    iput v4, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialogTimeout:I

    .line 235
    :cond_1
    iput-object p1, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDisplayingDialog:Landroid/content/DialogInterface;

    .line 237
    :cond_2
    return-void
.end method
