.class public Lcom/android/settings/OperatorPickerSetupWizard;
.super Lcom/android/settings/OperatorPicker;
.source "OperatorPickerSetupWizard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;
    }
.end annotation


# static fields
.field private static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field private static final INTENT_STRING_LAUNCH_BY_ICON:Ljava/lang/String; = "LaunchByIcon"

.field private static final INTENT_STRING_NOT_FINISH_WHEN_BACK_KEY_PRESSED:Ljava/lang/String; = "SelfFinishBackKeyPressed"

.field public static final INTENT_STRING_PROGRESS_BAR_DOT_INTERSPACE:Ljava/lang/String; = "ProgressBarDotInterspace"

.field public static final INTENT_STRING_PROGRESS_BAR_DOT_MAX_NUMBER:Ljava/lang/String; = "ProgressBarDotMaxNumber"

.field public static final INTENT_STRING_PROGRESS_BAR_MAX_NUMBER:Ljava/lang/String; = "ProgressBarMaxNumber"

.field public static final INTENT_STRING_PROGRESS_BAR_NUMBER:Ljava/lang/String; = "ProgressBarNumber"

.field public static final RESULT_BACK_KEY:I = 0x2

.field public static final TAG:Ljava/lang/String; = "OOBE_OperatorPickerSetupWizard"


# instance fields
.field private initialPosition:I

.field private mAdapter:Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLaunchByIcon:Z

.field private mProgressBarDotInterspace:I

.field private mProgressBarDotMaxNumber:I

.field private mProgressBarMaxNumber:I

.field private mProgressBarNumber:I

.field private mRadioButton:I

.field private mbBackFinish:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 31
    invoke-direct {p0}, Lcom/android/settings/OperatorPicker;-><init>()V

    .line 34
    iput-boolean v1, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mbBackFinish:Z

    .line 35
    iput-boolean v1, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mLaunchByIcon:Z

    .line 40
    iput v0, p0, Lcom/android/settings/OperatorPickerSetupWizard;->initialPosition:I

    .line 47
    iput v0, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mProgressBarNumber:I

    .line 48
    iput v0, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mProgressBarMaxNumber:I

    .line 49
    iput v0, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mProgressBarDotMaxNumber:I

    .line 50
    iput v1, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mProgressBarDotInterspace:I

    .line 54
    iput v1, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mRadioButton:I

    .line 222
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/OperatorPickerSetupWizard;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mRadioButton:I

    return v0
.end method

.method private isProgressBarShowable()Z
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mProgressBarNumber:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mProgressBarMaxNumber:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mProgressBarDotMaxNumber:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setProgressBar(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .locals 15
    .parameter "context"
    .parameter "layout"

    .prologue
    .line 131
    iget v11, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mProgressBarNumber:I

    int-to-float v1, v11

    .line 132
    .local v1, ProgressBarNumber:F
    const-string v11, "oobe_progress_radio_on"

    const v12, 0x7f0200e8

    move-object/from16 v0, p1

    invoke-static {v0, v11, v12}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 134
    .local v7, progress_radio_on:I
    const-string v11, "OOBE_OperatorPickerSetupWizard"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setProgressBar  ProgressBarNumber = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ProgressBarMaxNumber = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mProgressBarMaxNumber:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ProgressBarDotMaxNumber = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mProgressBarDotMaxNumber:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    const/high16 v13, 0x3f80

    invoke-direct {v6, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 143
    .local v6, params:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v4, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 144
    .local v4, ivFirst:Landroid/widget/ImageView;
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 146
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 148
    const/high16 v11, 0x3f80

    sub-float v10, v1, v11

    .line 149
    .local v10, tempProgressBarNumber:F
    iget v11, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mProgressBarMaxNumber:I

    add-int/lit8 v9, v11, -0x2

    .line 150
    .local v9, tempProgressBarMaxSize:I
    iget v11, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mProgressBarDotMaxNumber:I

    add-int/lit8 v8, v11, -0x2

    .line 152
    .local v8, tempProgressBarDotMaxNumber:I
    iget v11, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mProgressBarMaxNumber:I

    iget v12, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mProgressBarDotMaxNumber:I

    if-ge v11, v12, :cond_0

    iget v11, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mProgressBarMaxNumber:I

    add-int/lit8 v8, v11, -0x2

    .line 154
    :cond_0
    const/4 v11, 0x0

    cmpl-float v11, v10, v11

    if-ltz v11, :cond_3

    .line 156
    if-le v9, v8, :cond_1

    .line 158
    int-to-float v11, v9

    div-float v11, v10, v11

    int-to-float v12, v8

    mul-float v10, v11, v12

    .line 161
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v8, :cond_4

    .line 163
    new-instance v3, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 164
    .local v3, iv:Landroid/widget/ImageView;
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    int-to-float v11, v2

    cmpg-float v11, v11, v10

    if-gez v11, :cond_2

    .line 167
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 173
    :goto_1
    iget v11, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mProgressBarDotInterspace:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v3, v11, v12, v13, v14}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 174
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 161
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    :cond_2
    const v11, 0x7f0200e7

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 178
    .end local v2           #i:I
    .end local v3           #iv:Landroid/widget/ImageView;
    :cond_3
    const-string v11, "OOBE_OperatorPickerSetupWizard"

    const-string v12, "tempProgressBarNumber out of range."

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_4
    new-instance v5, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 181
    .local v5, ivLast:Landroid/widget/ImageView;
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    iget v11, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mProgressBarMaxNumber:I

    int-to-float v11, v11

    cmpl-float v11, v1, v11

    if-nez v11, :cond_6

    .line 184
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 190
    :cond_5
    :goto_2
    iget v11, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mProgressBarDotInterspace:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v5, v11, v12, v13, v14}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 191
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 192
    return-void

    .line 186
    :cond_6
    iget v11, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mProgressBarMaxNumber:I

    int-to-float v11, v11

    cmpg-float v11, v1, v11

    if-gez v11, :cond_5

    .line 188
    const v11, 0x7f0200e7

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method

.method private setTitleColor(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 4
    .parameter "context"
    .parameter "activity"

    .prologue
    .line 113
    const v2, 0x7f08000b

    invoke-virtual {p2, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 115
    .local v1, title:Landroid/widget/TextView;
    const-string v2, "setting_title_color"

    const v3, 0x7f0a0022

    invoke-static {p1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 117
    .local v0, color_id:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    return-void
.end method

.method private setTitleDivider(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 4
    .parameter "context"
    .parameter "activity"

    .prologue
    .line 122
    const v2, 0x7f0800cd

    invoke-virtual {p2, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 124
    .local v0, divider:Landroid/widget/ImageView;
    const-string v2, "oobe_title_divider"

    const v3, 0x7f020042

    invoke-static {p1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 126
    .local v1, divider_id:I
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 127
    return-void
.end method

.method private showEmergencyDial()V
    .locals 7

    .prologue
    const/high16 v6, 0x1080

    .line 272
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/android/settings/OperatorPickerSetupWizard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 273
    .local v3, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 274
    .local v0, callState:I
    if-nez v0, :cond_0

    .line 275
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 276
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 278
    invoke-virtual {p0, v2}, Lcom/android/settings/OperatorPickerSetupWizard;->startActivity(Landroid/content/Intent;)V

    .line 286
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 280
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 281
    .local v1, inCallIntent:Landroid/content/Intent;
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 283
    const-string v4, "com.android.phone"

    const-string v5, "com.android.phone.InCallScreen"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    invoke-virtual {p0, v1}, Lcom/android/settings/OperatorPickerSetupWizard;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static switchKeyFocus(Landroid/app/Activity;II)V
    .locals 3
    .parameter "activity"
    .parameter "back"
    .parameter "next"

    .prologue
    .line 290
    const/4 v0, 0x0

    .line 291
    .local v0, btnBack:Landroid/widget/Button;
    const/4 v1, 0x0

    .line 292
    .local v1, btnNext:Landroid/widget/Button;
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #btnBack:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 293
    .restart local v0       #btnBack:Landroid/widget/Button;
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #btnNext:Landroid/widget/Button;
    check-cast v1, Landroid/widget/Button;

    .line 295
    .restart local v1       #btnNext:Landroid/widget/Button;
    :cond_1
    if-nez v1, :cond_2

    .line 306
    :goto_0
    return-void

    .line 296
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/Button;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 298
    :cond_3
    invoke-virtual {v1}, Landroid/widget/Button;->requestFocus()Z

    .line 299
    invoke-virtual {v1}, Landroid/widget/Button;->requestFocusFromTouch()Z

    goto :goto_0

    .line 303
    :cond_4
    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 304
    invoke-virtual {v0}, Landroid/widget/Button;->requestFocusFromTouch()Z

    goto :goto_0
.end method


# virtual methods
.method public getItemLayout()I
    .locals 1

    .prologue
    .line 201
    const v0, 0x7f040053

    return v0
.end method

.method public getLayout()I
    .locals 1

    .prologue
    .line 196
    const v0, 0x7f040054

    return v0
.end method

.method protected getOperatorAdapter()Landroid/widget/ListAdapter;
    .locals 6

    .prologue
    .line 215
    invoke-super {p0}, Lcom/android/settings/OperatorPicker;->getOperatorAdapter()Landroid/widget/ListAdapter;

    .line 217
    iget-object v0, p0, Lcom/android/settings/OperatorPicker;->mOperators:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 218
    new-instance v0, Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/OperatorPickerSetupWizard;->getItemLayout()I

    move-result v3

    const v4, 0x7f0800ea

    iget-object v5, p0, Lcom/android/settings/OperatorPicker;->mOperators:[Ljava/lang/String;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;-><init>(Lcom/android/settings/OperatorPickerSetupWizard;Landroid/content/Context;II[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mAdapter:Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mAdapter:Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;

    return-object v0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 2
    .parameter "theme"
    .parameter "resid"
    .parameter "first"

    .prologue
    .line 357
    const-string v0, "OOBE_OperatorPickerSetupWizard"

    const-string v1, "onApplyThemeResource()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-virtual {p0}, Lcom/android/settings/OperatorPickerSetupWizard;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getThemeResId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 359
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 265
    const v0, 0x7f0800cf

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 266
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/OperatorPickerSetupWizard;->setResult(I)V

    .line 267
    invoke-virtual {p0}, Lcom/android/settings/OperatorPickerSetupWizard;->finish()V

    .line 269
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 59
    const-string v5, "OOBE_OperatorPickerSetupWizard"

    const-string v6, "onCreate"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/settings/OperatorPickerSetupWizard;->requestWindowFeature(I)Z

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/OperatorPicker;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/OperatorPickerSetupWizard;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 64
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 65
    const-string v5, "SelfFinishBackKeyPressed"

    invoke-virtual {v2, v5, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mbBackFinish:Z

    .line 66
    const-string v5, "LaunchByIcon"

    invoke-virtual {v2, v5, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mLaunchByIcon:Z

    .line 67
    const-string v5, "OOBE_OperatorPickerSetupWizard"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mLaunchByIcon = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mLaunchByIcon:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mbBackFinish = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mbBackFinish:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const-string v5, "ProgressBarNumber"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mProgressBarNumber:I

    .line 71
    const-string v5, "ProgressBarMaxNumber"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mProgressBarMaxNumber:I

    .line 72
    const-string v5, "ProgressBarDotMaxNumber"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mProgressBarDotMaxNumber:I

    .line 73
    const-string v5, "ProgressBarDotInterspace"

    invoke-virtual {v2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mProgressBarDotInterspace:I

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/OperatorPickerSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mvno_operator"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, operator:Ljava/lang/String;
    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/android/settings/OperatorPicker;->mOperators:[Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 78
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/settings/OperatorPicker;->mOperators:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_2

    .line 79
    iget-object v5, p0, Lcom/android/settings/OperatorPicker;->mOperators:[Ljava/lang/String;

    aget-object v5, v5, v1

    if-eqz v5, :cond_1

    .line 80
    iget-object v5, p0, Lcom/android/settings/OperatorPicker;->mOperators:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 81
    iput v1, p0, Lcom/android/settings/OperatorPickerSetupWizard;->initialPosition:I

    .line 78
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .end local v1           #i:I
    :cond_2
    iget-object v5, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mAdapter:Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/android/settings/OperatorPickerSetupWizard;->initialPosition:I

    if-eq v5, v8, :cond_3

    .line 88
    iget-object v5, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mAdapter:Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;

    iget v6, p0, Lcom/android/settings/OperatorPickerSetupWizard;->initialPosition:I

    invoke-virtual {v5, v6}, Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;->setSelect(I)V

    .line 90
    :cond_3
    const v5, 0x7f0800cf

    invoke-virtual {p0, v5}, Lcom/android/settings/OperatorPickerSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 91
    .local v0, btnNext:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-direct {p0}, Lcom/android/settings/OperatorPickerSetupWizard;->isProgressBarShowable()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 94
    const v5, 0x7f08012c

    invoke-virtual {p0, v5}, Lcom/android/settings/OperatorPickerSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 95
    .local v3, layout:Landroid/widget/LinearLayout;
    invoke-direct {p0, p0, v3}, Lcom/android/settings/OperatorPickerSetupWizard;->setProgressBar(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 101
    .end local v3           #layout:Landroid/widget/LinearLayout;
    :goto_1
    invoke-direct {p0, p0, p0}, Lcom/android/settings/OperatorPickerSetupWizard;->setTitleColor(Landroid/content/Context;Landroid/app/Activity;)V

    .line 102
    invoke-direct {p0, p0, p0}, Lcom/android/settings/OperatorPickerSetupWizard;->setTitleDivider(Landroid/content/Context;Landroid/app/Activity;)V

    .line 104
    const-string v5, "common_radiobutton"

    const v6, 0x20804c5

    invoke-static {p0, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mRadioButton:I

    .line 105
    return-void

    .line 97
    :cond_4
    const v5, 0x7f08012b

    invoke-virtual {p0, v5}, Lcom/android/settings/OperatorPickerSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 98
    .local v3, layout:Landroid/view/View;
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    .line 324
    const-string v2, "OOBE_OperatorPickerSetupWizard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    sparse-switch p1, :sswitch_data_0

    .line 351
    invoke-super {p0, p1, p2}, Lcom/android/settings/OperatorPicker;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_0
    :goto_0
    :sswitch_0
    return v1

    .line 328
    :sswitch_1
    iget-boolean v2, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mbBackFinish:Z

    if-nez v2, :cond_1

    .line 329
    invoke-virtual {p0, v5}, Lcom/android/settings/OperatorPickerSetupWizard;->setResult(I)V

    .line 330
    invoke-super {p0, p1, p2}, Lcom/android/settings/OperatorPicker;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 332
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mLaunchByIcon:Z

    if-ne v2, v1, :cond_0

    .line 333
    invoke-virtual {p0, v5}, Lcom/android/settings/OperatorPickerSetupWizard;->setResult(I)V

    .line 334
    invoke-super {p0, p1, p2}, Lcom/android/settings/OperatorPicker;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 344
    :sswitch_2
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/settings/OperatorPickerSetupWizard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 345
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 346
    invoke-direct {p0}, Lcom/android/settings/OperatorPickerSetupWizard;->showEmergencyDial()V

    goto :goto_0

    .line 349
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/OperatorPicker;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 326
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 311
    const-string v0, "OOBE_OperatorPickerSetupWizard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyUp("

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

    .line 312
    packed-switch p1, :pswitch_data_0

    .line 318
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/OperatorPicker;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 315
    :pswitch_0
    const/4 v0, 0x0

    const v1, 0x7f0800cf

    invoke-static {p0, v0, v1}, Lcom/android/settings/OperatorPickerSetupWizard;->switchKeyFocus(Landroid/app/Activity;II)V

    goto :goto_0

    .line 312
    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/android/settings/OperatorPickerSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mvno_operator"

    iget-object v2, p0, Lcom/android/settings/OperatorPicker;->mOperators:[Ljava/lang/String;

    long-to-int v3, p4

    aget-object v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 207
    const-string v0, "OOBE_OperatorPickerSetupWizard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected operator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/OperatorPicker;->mOperators:[Ljava/lang/String;

    long-to-int v3, p4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mAdapter:Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mAdapter:Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;

    invoke-virtual {v0, p3}, Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;->setSelect(I)V

    .line 210
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ListView;->invalidate()V

    .line 211
    return-void
.end method
