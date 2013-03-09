.class public Lcom/android/phone/HtcCdmaDataRoamGuard;
.super Landroid/app/Activity;
.source "HtcCdmaDataRoamGuard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_SIMPLE_DIALOG_TIMEOUT:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final FEATURE_ENABLED:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "HtcCdmaDataRoamGuard"


# instance fields
.field private mDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mDialogDiaplyed:Z

.field private mDialogIndex:I

.field private mDialogTimeout:I

.field private mDialogType:I

.field private mHandler:Landroid/os/Handler;

.field private mNeverAskView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_DATA_ROAM_GUARD:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_DATA_ROAM_GUARD2:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/phone/HtcCdmaDataRoamGuard;->FEATURE_ENABLED:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/HtcCdmaDataRoamGuard;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/android/phone/HtcCdmaDataRoamGuard;->mDialogIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/HtcCdmaDataRoamGuard;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/phone/HtcCdmaDataRoamGuard;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method private createHandler()V
    .locals 1

    .prologue
    .line 83
    sget-boolean v0, Lcom/android/phone/HtcCdmaDataRoamGuard;->FEATURE_ENABLED:Z

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Lcom/android/phone/HtcCdmaDataRoamGuard$1;

    invoke-direct {v0, p0}, Lcom/android/phone/HtcCdmaDataRoamGuard$1;-><init>(Lcom/android/phone/HtcCdmaDataRoamGuard;)V

    iput-object v0, p0, Lcom/android/phone/HtcCdmaDataRoamGuard;->mHandler:Landroid/os/Handler;

    .line 100
    :cond_0
    return-void
.end method

.method private reportGuardDialogResult(ZZ)V
    .locals 1
    .parameter "roam"
    .parameter "neverAsk"

    .prologue
    .line 238
    sget-boolean v0, Lcom/android/phone/HtcCdmaDataRoamGuard;->FEATURE_ENABLED:Z

    if-eqz v0, :cond_0

    .line 239
    invoke-static {p1, p2}, Lcom/android/phone/HtcCdmaPhoneApp;->userResponseRoamGuardDialog(ZZ)V

    .line 241
    :cond_0
    return-void
.end method

.method private updateDialog(II)V
    .locals 12
    .parameter "prevDialogType"
    .parameter "dialogType"

    .prologue
    .line 103
    sget-boolean v9, Lcom/android/phone/HtcCdmaDataRoamGuard;->FEATURE_ENABLED:Z

    if-eqz v9, :cond_1

    .line 104
    if-eq p1, p2, :cond_0

    const/4 v9, 0x3

    if-ne p1, v9, :cond_0

    .line 108
    :cond_0
    const/4 v2, -0x1

    .line 109
    .local v2, idDialogString:I
    packed-switch p2, :pswitch_data_0

    .line 164
    iget-object v9, p0, Lcom/android/phone/HtcCdmaDataRoamGuard;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v9, :cond_5

    .line 165
    iget-object v9, p0, Lcom/android/phone/HtcCdmaDataRoamGuard;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v9}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 235
    .end local v2           #idDialogString:I
    :cond_1
    :goto_0
    return-void

    .line 111
    .restart local v2       #idDialogString:I
    :pswitch_0
    sget-boolean v9, Lcom/android/phone/HtcFeatureList;->FEATURE_DATA_ROAM_GUARD:Z

    if-eqz v9, :cond_1

    .line 112
    const v2, 0x7f0e0157

    .line 113
    const/16 v9, 0xbb8

    iput v9, p0, Lcom/android/phone/HtcCdmaDataRoamGuard;->mDialogTimeout:I

    .line 172
    :cond_2
    :goto_1
    iget v9, p0, Lcom/android/phone/HtcCdmaDataRoamGuard;->mDialogIndex:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/phone/HtcCdmaDataRoamGuard;->mDialogIndex:I

    .line 174
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaDataRoamGuard;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 175
    .local v0, context:Landroid/content/Context;
    iget-object v9, p0, Lcom/android/phone/HtcCdmaDataRoamGuard;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-nez v9, :cond_3

    .line 176
    new-instance v9, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v9, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0e0156

    invoke-virtual {v0, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/android/phone/HtcCdmaDataRoamGuard;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 181
    iget-object v9, p0, Lcom/android/phone/HtcCdmaDataRoamGuard;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v9}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x7d8

    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    .line 183
    iget-object v9, p0, Lcom/android/phone/HtcCdmaDataRoamGuard;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v9}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/view/Window;->addFlags(I)V

    .line 186
    iget-object v9, p0, Lcom/android/phone/HtcCdmaDataRoamGuard;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v9, p0}, Lcom/htc/widget/HtcAlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 187
    iget-object v9, p0, Lcom/android/phone/HtcCdmaDataRoamGuard;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v9, p0}, Lcom/htc/widget/HtcAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 188
    iget-object v9, p0, Lcom/android/phone/HtcCdmaDataRoamGuard;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v9, p0}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 190
    :cond_3
    iget-object v9, p0, Lcom/android/phone/HtcCdmaDataRoamGuard;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 192
    const/4 v6, 0x0

    .line 193
    .local v6, positiveText:Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 194
    .local v3, negativeText:Ljava/lang/CharSequence;
    const v9, 0x7f0e015a

    if-eq v2, v9, :cond_6

    const v9, 0x7f0e015b

    if-eq v2, v9, :cond_6

    .line 196
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/phone/HtcCdmaDataRoamGuard;->mNeverAskView:Landroid/view/View;

    .line 230
    :goto_2
    iget-object v9, p0, Lcom/android/phone/HtcCdmaDataRoamGuard;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    iget-object v10, p0, Lcom/android/phone/HtcCdmaDataRoamGuard;->mNeverAskView:Landroid/view/View;

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog;->setView(Landroid/view/View;)V

    .line 231
    iget-object v9, p0, Lcom/android/phone/HtcCdmaDataRoamGuard;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    const/4 v10, -0x1

    invoke-virtual {v9, v10, v6, p0}, Lcom/htc/widget/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 232
    iget-object v9, p0, Lcom/android/phone/HtcCdmaDataRoamGuard;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    const/4 v10, -0x2

    invoke-virtual {v9, v10, v3, p0}, Lcom/htc/widget/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 233
    iget-object v9, p0, Lcom/android/phone/HtcCdmaDataRoamGuard;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v9}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto/16 :goto_0

    .line 120
    .end local v0           #context:Landroid/content/Context;
    .end local v3           #negativeText:Ljava/lang/CharSequence;
    .end local v6           #positiveText:Ljava/lang/CharSequence;
    :pswitch_1
    sget-boolean v9, Lcom/android/phone/HtcFeatureList;->FEATURE_DATA_ROAM_GUARD:Z

    if-eqz v9, :cond_1

    .line 121
    const v2, 0x7f0e0158

    .line 122
    const/16 v9, 0xbb8

    iput v9, p0, Lcom/android/phone/HtcCdmaDataRoamGuard;->mDialogTimeout:I

    goto/16 :goto_1

    .line 129
    :pswitch_2
    sget-boolean v9, Lcom/android/phone/HtcFeatureList;->FEATURE_DATA_ROAM_GUARD:Z

    if-eqz v9, :cond_1

    .line 130
    const v2, 0x7f0e0159

    .line 131
    const/16 v9, 0xbb8

    iput v9, p0, Lcom/android/phone/HtcCdmaDataRoamGuard;->mDialogTimeout:I

    goto/16 :goto_1

    .line 138
    :pswitch_3
    sget-boolean v9, Lcom/android/phone/HtcFeatureList;->FEATURE_DATA_ROAM_GUARD:Z

    if-eqz v9, :cond_4

    .line 139
    const v2, 0x7f0e015a

    goto/16 :goto_1

    .line 141
    :cond_4
    sget-boolean v9, Lcom/android/phone/HtcFeatureList;->FEATURE_DATA_ROAM_GUARD2:Z

    if-eqz v9, :cond_2

    .line 142
    const v2, 0x7f0e015b

    goto/16 :goto_1

    .line 146
    :pswitch_4
    sget-boolean v9, Lcom/android/phone/HtcFeatureList;->FEATURE_DATA_ROAM_GUARD:Z

    if-eqz v9, :cond_1

    .line 147
    const v2, 0x7f0e015f

    .line 148
    const/16 v9, 0xbb8

    iput v9, p0, Lcom/android/phone/HtcCdmaDataRoamGuard;->mDialogTimeout:I

    goto/16 :goto_1

    .line 155
    :pswitch_5
    sget-boolean v9, Lcom/android/phone/HtcFeatureList;->FEATURE_DATA_ROAM_GUARD:Z

    if-eqz v9, :cond_1

    .line 156
    const v2, 0x7f0e0160

    .line 157
    const/16 v9, 0xbb8

    iput v9, p0, Lcom/android/phone/HtcCdmaDataRoamGuard;->mDialogTimeout:I

    goto/16 :goto_1

    .line 168
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaDataRoamGuard;->finish()V

    goto/16 :goto_0

    .line 199
    .restart local v0       #context:Landroid/content/Context;
    .restart local v3       #negativeText:Ljava/lang/CharSequence;
    .restart local v6       #positiveText:Ljava/lang/CharSequence;
    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaDataRoamGuard;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f030022

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/phone/HtcCdmaDataRoamGuard;->mNeverAskView:Landroid/view/View;

    .line 201
    const v9, 0x7f0e015b

    if-ne v2, v9, :cond_7

    .line 202
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaDataRoamGuard;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070018

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, dataRoamStrings:[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/phone/HtcCdmaDataRoamGuard;->mNeverAskView:Landroid/view/View;

    const v10, 0x7f0800c6

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 204
    .local v5, optionTextbox:Landroid/widget/TextView;
    const/4 v9, 0x2

    aget-object v9, v1, v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    .end local v1           #dataRoamStrings:[Ljava/lang/String;
    .end local v5           #optionTextbox:Landroid/widget/TextView;
    :cond_7
    const v9, 0x7f0e015e

    invoke-virtual {v0, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 207
    const v9, 0x7f0e0256

    invoke-virtual {v0, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 210
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    .line 211
    .local v4, notification:Landroid/app/Notification;
    const/4 v9, 0x1

    iput v9, v4, Landroid/app/Notification;->flags:I

    .line 212
    const v9, -0xff0100

    iput v9, v4, Landroid/app/Notification;->ledARGB:I

    .line 213
    const/16 v9, 0x1f4

    iput v9, v4, Landroid/app/Notification;->ledOnMS:I

    .line 214
    const/16 v9, 0x1194

    iput v9, v4, Landroid/app/Notification;->ledOffMS:I

    .line 218
    const/4 v7, 0x0

    .line 220
    .local v7, tGenerator:Landroid/media/ToneGenerator;
    :try_start_0
    new-instance v8, Landroid/media/ToneGenerator;

    const/4 v9, 0x5

    const/16 v10, 0x64

    invoke-direct {v8, v9, v10}, Landroid/media/ToneGenerator;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v7           #tGenerator:Landroid/media/ToneGenerator;
    .local v8, tGenerator:Landroid/media/ToneGenerator;
    move-object v7, v8

    .line 223
    .end local v8           #tGenerator:Landroid/media/ToneGenerator;
    .restart local v7       #tGenerator:Landroid/media/ToneGenerator;
    :goto_3
    if-eqz v7, :cond_8

    .line 224
    const/16 v9, 0x14

    invoke-virtual {v7, v9}, Landroid/media/ToneGenerator;->startTone(I)Z

    goto/16 :goto_2

    .line 227
    :cond_8
    const-string v9, "HtcCdmaDataRoamGuard"

    const-string v10, "not able to play tone"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 221
    :catch_0
    move-exception v9

    goto :goto_3

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 74
    sget-boolean v0, Lcom/android/phone/HtcCdmaDataRoamGuard;->FEATURE_ENABLED:Z

    if-eqz v0, :cond_0

    .line 76
    invoke-static {}, Lcom/android/phone/HtcCdmaPhoneApp;->dataRoamGuardDialogClosed()V

    .line 78
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    const/4 v2, 0x0

    .line 272
    sget-boolean v0, Lcom/android/phone/HtcCdmaDataRoamGuard;->FEATURE_ENABLED:Z

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/phone/HtcCdmaDataRoamGuard;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/phone/HtcCdmaDataRoamGuard;->mDialogType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 274
    invoke-direct {p0, v2, v2}, Lcom/android/phone/HtcCdmaDataRoamGuard;->reportGuardDialogResult(ZZ)V

    .line 275
    iget-object v0, p0, Lcom/android/phone/HtcCdmaDataRoamGuard;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 278
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 258
    sget-boolean v2, Lcom/android/phone/HtcCdmaDataRoamGuard;->FEATURE_ENABLED:Z

    if-eqz v2, :cond_1

    .line 259
    iget-object v2, p0, Lcom/android/phone/HtcCdmaDataRoamGuard;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/phone/HtcCdmaDataRoamGuard;->mDialogType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 260
    const/4 v1, 0x0

    .line 261
    .local v1, remember:Z
    iget-object v2, p0, Lcom/android/phone/HtcCdmaDataRoamGuard;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    const v3, 0x7f0800c5

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 262
    .local v0, cbox:Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 265
    :cond_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-direct {p0, v2, v1}, Lcom/android/phone/HtcCdmaDataRoamGuard;->reportGuardDialogResult(ZZ)V

    .line 266
    iget-object v2, p0, Lcom/android/phone/HtcCdmaDataRoamGuard;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 269
    .end local v0           #cbox:Landroid/widget/CheckBox;
    .end local v1           #remember:Z
    :cond_1
    return-void

    .line 265
    .restart local v0       #cbox:Landroid/widget/CheckBox;
    .restart local v1       #remember:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    sget-boolean v1, Lcom/android/phone/HtcCdmaDataRoamGuard;->FEATURE_ENABLED:Z

    if-eqz v1, :cond_0

    .line 42
    if-eqz p1, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaDataRoamGuard;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 46
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/phone/HtcCdmaDataRoamGuard;->mDialogType:I

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 281
    sget-boolean v0, Lcom/android/phone/HtcCdmaDataRoamGuard;->FEATURE_ENABLED:Z

    if-eqz v0, :cond_0

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/HtcCdmaDataRoamGuard;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 283
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaDataRoamGuard;->finish()V

    .line 285
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 52
    sget-boolean v1, Lcom/android/phone/HtcCdmaDataRoamGuard;->FEATURE_ENABLED:Z

    if-eqz v1, :cond_0

    .line 53
    iget v0, p0, Lcom/android/phone/HtcCdmaDataRoamGuard;->mDialogType:I

    .line 54
    .local v0, prevDialogType:I
    const-string v1, "type"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/phone/HtcCdmaDataRoamGuard;->mDialogType:I

    .line 55
    iget v1, p0, Lcom/android/phone/HtcCdmaDataRoamGuard;->mDialogType:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/HtcCdmaDataRoamGuard;->updateDialog(II)V

    .line 57
    .end local v0           #prevDialogType:I
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 62
    sget-boolean v0, Lcom/android/phone/HtcCdmaDataRoamGuard;->FEATURE_ENABLED:Z

    if-eqz v0, :cond_0

    .line 63
    iget-boolean v0, p0, Lcom/android/phone/HtcCdmaDataRoamGuard;->mDialogDiaplyed:Z

    if-nez v0, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/android/phone/HtcCdmaDataRoamGuard;->createHandler()V

    .line 65
    const/4 v0, -0x1

    iget v1, p0, Lcom/android/phone/HtcCdmaDataRoamGuard;->mDialogType:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/HtcCdmaDataRoamGuard;->updateDialog(II)V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/HtcCdmaDataRoamGuard;->mDialogDiaplyed:Z

    .line 69
    :cond_0
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 5
    .parameter "dialog"

    .prologue
    const/4 v4, 0x0

    .line 245
    sget-boolean v0, Lcom/android/phone/HtcCdmaDataRoamGuard;->FEATURE_ENABLED:Z

    if-eqz v0, :cond_1

    .line 246
    iget v0, p0, Lcom/android/phone/HtcCdmaDataRoamGuard;->mDialogTimeout:I

    if-lez v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/android/phone/HtcCdmaDataRoamGuard;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/phone/HtcCdmaDataRoamGuard;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/HtcCdmaDataRoamGuard;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/phone/HtcCdmaDataRoamGuard;->mDialogIndex:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/HtcCdmaDataRoamGuard;->mDialogTimeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 252
    :cond_0
    iput v4, p0, Lcom/android/phone/HtcCdmaDataRoamGuard;->mDialogTimeout:I

    .line 255
    :cond_1
    return-void
.end method
