.class public Lcom/android/settings/LocalePickerSetupWizard;
.super Landroid/app/Activity;
.source "LocalePickerSetupWizard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field private static final INTENT_STRING_LAUNCH_BY_ICON:Ljava/lang/String; = "LaunchByIcon"

.field private static final INTENT_STRING_NOT_FINISH_WHEN_BACK_KEY_PRESSED:Ljava/lang/String; = "SelfFinishBackKeyPressed"

.field private static final INTENT_STRING_PHONE_FUNCTION:Ljava/lang/String; = "PhoneFunction"

.field public static final INTENT_STRING_PROGRESS_BAR_DOT_INTERSPACE:Ljava/lang/String; = "ProgressBarDotInterspace"

.field public static final INTENT_STRING_PROGRESS_BAR_DOT_MAX_NUMBER:Ljava/lang/String; = "ProgressBarDotMaxNumber"

.field public static final INTENT_STRING_PROGRESS_BAR_MAX_NUMBER:Ljava/lang/String; = "ProgressBarMaxNumber"

.field public static final INTENT_STRING_PROGRESS_BAR_NUMBER:Ljava/lang/String; = "ProgressBarNumber"

.field public static final RESULT_BACK_KEY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "OOBE_LocalePickerSetupWizard"


# instance fields
.field private mLaunchByIcon:Z

.field private mLocalePicker:Lcom/android/settings/LocalePickerSetupWizardFragment;

.field private mProgressBarDotInterspace:I

.field private mProgressBarDotMaxNumber:I

.field private mProgressBarMaxNumber:I

.field private mProgressBarNumber:I

.field private mbBackFinish:Z

.field private mbPhoneFunc:Z

.field private mbShowEmergency:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    iput-boolean v1, p0, Lcom/android/settings/LocalePickerSetupWizard;->mbBackFinish:Z

    .line 53
    iput-boolean v1, p0, Lcom/android/settings/LocalePickerSetupWizard;->mLaunchByIcon:Z

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/LocalePickerSetupWizard;->mbPhoneFunc:Z

    .line 63
    iput v2, p0, Lcom/android/settings/LocalePickerSetupWizard;->mProgressBarNumber:I

    .line 64
    iput v2, p0, Lcom/android/settings/LocalePickerSetupWizard;->mProgressBarMaxNumber:I

    .line 65
    iput v2, p0, Lcom/android/settings/LocalePickerSetupWizard;->mProgressBarDotMaxNumber:I

    .line 66
    iput v1, p0, Lcom/android/settings/LocalePickerSetupWizard;->mProgressBarDotInterspace:I

    .line 68
    iput-boolean v1, p0, Lcom/android/settings/LocalePickerSetupWizard;->mbShowEmergency:Z

    return-void
.end method

.method private handleSubtitle()V
    .locals 10

    .prologue
    .line 147
    const/4 v3, 0x1

    .line 148
    .local v3, isSubtitleVisible:Z
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 149
    .local v0, am:Landroid/app/IActivityManager;
    const/4 v1, 0x0

    .line 151
    .local v1, config:Landroid/content/res/Configuration;
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 152
    iget-object v4, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 153
    .local v4, locale:Ljava/util/Locale;
    const-string v7, "OOBE_LocalePickerSetupWizard"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "language = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_0

    .line 155
    const/4 v3, 0x0

    .line 162
    .end local v4           #locale:Ljava/util/Locale;
    :cond_0
    :goto_0
    const v7, 0x7f0800cc

    invoke-virtual {p0, v7}, Lcom/android/settings/LocalePickerSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 163
    .local v5, subtitle:Landroid/widget/TextView;
    if-eqz v5, :cond_2

    .line 164
    if-eqz v3, :cond_1

    .line 165
    const v7, 0x7f08000b

    invoke-virtual {p0, v7}, Lcom/android/settings/LocalePickerSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 167
    .local v6, title:Landroid/widget/TextView;
    if-eqz v6, :cond_1

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 169
    const-string v7, "OOBE_LocalePickerSetupWizard"

    const-string v8, "same titles"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v3, 0x0

    .line 174
    .end local v6           #title:Landroid/widget/TextView;
    :cond_1
    if-nez v3, :cond_2

    .line 175
    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    :cond_2
    return-void

    .line 158
    .end local v5           #subtitle:Landroid/widget/TextView;
    :catch_0
    move-exception v2

    .line 159
    .local v2, e:Landroid/os/RemoteException;
    const-string v7, "OOBE_LocalePickerSetupWizard"

    const-string v8, "am.getConfiguration"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private initialize()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 112
    const-string v3, "OOBE_LocalePickerSetupWizard"

    const-string v4, "initialize"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const v3, 0x7f040046

    invoke-virtual {p0, v3}, Lcom/android/settings/LocalePickerSetupWizard;->setContentView(I)V

    .line 116
    const v3, 0x7f08012c

    invoke-virtual {p0, v3}, Lcom/android/settings/LocalePickerSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 117
    .local v2, layout:Landroid/widget/LinearLayout;
    invoke-direct {p0, p0, v2}, Lcom/android/settings/LocalePickerSetupWizard;->setProgressBar(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/LocalePickerSetupWizard;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const v4, 0x7f0800ce

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/android/settings/LocalePickerSetupWizardFragment;

    iput-object v3, p0, Lcom/android/settings/LocalePickerSetupWizard;->mLocalePicker:Lcom/android/settings/LocalePickerSetupWizardFragment;

    .line 121
    const v3, 0x7f0800cf

    invoke-virtual {p0, v3}, Lcom/android/settings/LocalePickerSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 122
    .local v1, btnNext:Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const v3, 0x7f080031

    invoke-virtual {p0, v3}, Lcom/android/settings/LocalePickerSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 125
    .local v0, btnBack:Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 127
    iget-boolean v3, p0, Lcom/android/settings/LocalePickerSetupWizard;->mbShowEmergency:Z

    if-eqz v3, :cond_1

    .line 128
    const v3, 0x7f0c0834

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 129
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 130
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    :cond_0
    :goto_0
    invoke-direct {p0, p0, p0}, Lcom/android/settings/LocalePickerSetupWizard;->setTitleColor(Landroid/content/Context;Landroid/app/Activity;)V

    .line 139
    invoke-direct {p0, p0, p0}, Lcom/android/settings/LocalePickerSetupWizard;->setSubTitleColor(Landroid/content/Context;Landroid/app/Activity;)V

    .line 140
    invoke-direct {p0, p0, p0}, Lcom/android/settings/LocalePickerSetupWizard;->setTitleDivider(Landroid/content/Context;Landroid/app/Activity;)V

    .line 142
    invoke-direct {p0}, Lcom/android/settings/LocalePickerSetupWizard;->handleSubtitle()V

    .line 143
    return-void

    .line 132
    :cond_1
    iget-boolean v3, p0, Lcom/android/settings/LocalePickerSetupWizard;->mbBackFinish:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 133
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 135
    :cond_2
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private setProgressBar(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .locals 15
    .parameter "context"
    .parameter "layout"

    .prologue
    .line 209
    iget v11, p0, Lcom/android/settings/LocalePickerSetupWizard;->mProgressBarNumber:I

    int-to-float v1, v11

    .line 210
    .local v1, ProgressBarNumber:F
    const-string v11, "oobe_progress_radio_on"

    const v12, 0x7f0200e8

    move-object/from16 v0, p1

    invoke-static {v0, v11, v12}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 212
    .local v7, progress_radio_on:I
    const-string v11, "OOBE_LocalePickerSetupWizard"

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

    iget v13, p0, Lcom/android/settings/LocalePickerSetupWizard;->mProgressBarMaxNumber:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ProgressBarDotMaxNumber = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/settings/LocalePickerSetupWizard;->mProgressBarDotMaxNumber:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    const/high16 v13, 0x3f80

    invoke-direct {v6, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 221
    .local v6, params:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v4, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 222
    .local v4, ivFirst:Landroid/widget/ImageView;
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 224
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 226
    const/high16 v11, 0x3f80

    sub-float v10, v1, v11

    .line 227
    .local v10, tempProgressBarNumber:F
    iget v11, p0, Lcom/android/settings/LocalePickerSetupWizard;->mProgressBarMaxNumber:I

    add-int/lit8 v9, v11, -0x2

    .line 228
    .local v9, tempProgressBarMaxSize:I
    iget v11, p0, Lcom/android/settings/LocalePickerSetupWizard;->mProgressBarDotMaxNumber:I

    add-int/lit8 v8, v11, -0x2

    .line 230
    .local v8, tempProgressBarDotMaxNumber:I
    iget v11, p0, Lcom/android/settings/LocalePickerSetupWizard;->mProgressBarMaxNumber:I

    iget v12, p0, Lcom/android/settings/LocalePickerSetupWizard;->mProgressBarDotMaxNumber:I

    if-ge v11, v12, :cond_0

    iget v11, p0, Lcom/android/settings/LocalePickerSetupWizard;->mProgressBarMaxNumber:I

    add-int/lit8 v8, v11, -0x2

    .line 232
    :cond_0
    const/4 v11, 0x0

    cmpl-float v11, v10, v11

    if-ltz v11, :cond_3

    .line 234
    if-le v9, v8, :cond_1

    .line 236
    int-to-float v11, v9

    div-float v11, v10, v11

    int-to-float v12, v8

    mul-float v10, v11, v12

    .line 239
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v8, :cond_4

    .line 241
    new-instance v3, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 242
    .local v3, iv:Landroid/widget/ImageView;
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    int-to-float v11, v2

    cmpg-float v11, v11, v10

    if-gez v11, :cond_2

    .line 245
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 251
    :goto_1
    iget v11, p0, Lcom/android/settings/LocalePickerSetupWizard;->mProgressBarDotInterspace:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v3, v11, v12, v13, v14}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 252
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 239
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 249
    :cond_2
    const v11, 0x7f0200e7

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 256
    .end local v2           #i:I
    .end local v3           #iv:Landroid/widget/ImageView;
    :cond_3
    const-string v11, "OOBE_LocalePickerSetupWizard"

    const-string v12, "tempProgressBarNumber out of range."

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_4
    new-instance v5, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 259
    .local v5, ivLast:Landroid/widget/ImageView;
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    iget v11, p0, Lcom/android/settings/LocalePickerSetupWizard;->mProgressBarMaxNumber:I

    int-to-float v11, v11

    cmpl-float v11, v1, v11

    if-nez v11, :cond_6

    .line 262
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 268
    :cond_5
    :goto_2
    iget v11, p0, Lcom/android/settings/LocalePickerSetupWizard;->mProgressBarDotInterspace:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v5, v11, v12, v13, v14}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 269
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 271
    return-void

    .line 264
    :cond_6
    iget v11, p0, Lcom/android/settings/LocalePickerSetupWizard;->mProgressBarMaxNumber:I

    int-to-float v11, v11

    cmpg-float v11, v1, v11

    if-gez v11, :cond_5

    .line 266
    const v11, 0x7f0200e7

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method

.method private setSubTitleColor(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 4
    .parameter "context"
    .parameter "activity"

    .prologue
    .line 191
    const v2, 0x7f0800cc

    invoke-virtual {p2, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 193
    .local v1, subtitle:Landroid/widget/TextView;
    const-string v2, "setting_title_color"

    const v3, 0x7f0a0022

    invoke-static {p1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 195
    .local v0, color_id:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 196
    return-void
.end method

.method private setTitleColor(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 4
    .parameter "context"
    .parameter "activity"

    .prologue
    .line 182
    const v2, 0x7f08000b

    invoke-virtual {p2, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 184
    .local v1, title:Landroid/widget/TextView;
    const-string v2, "setting_title_color"

    const v3, 0x7f0a0022

    invoke-static {p1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 186
    .local v0, color_id:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 187
    return-void
.end method

.method private setTitleDivider(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 4
    .parameter "context"
    .parameter "activity"

    .prologue
    .line 200
    const v2, 0x7f0800cd

    invoke-virtual {p2, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 202
    .local v0, divider:Landroid/widget/ImageView;
    const-string v2, "oobe_title_divider"

    const v3, 0x7f020042

    invoke-static {p1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 204
    .local v1, divider_id:I
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 205
    return-void
.end method

.method private showEmergencyDial()V
    .locals 7

    .prologue
    const/high16 v6, 0x1080

    .line 347
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/android/settings/LocalePickerSetupWizard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 348
    .local v3, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 349
    .local v0, callState:I
    if-nez v0, :cond_0

    .line 350
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 351
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 353
    invoke-virtual {p0, v2}, Lcom/android/settings/LocalePickerSetupWizard;->startActivity(Landroid/content/Intent;)V

    .line 361
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 355
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 356
    .local v1, inCallIntent:Landroid/content/Intent;
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 358
    const-string v4, "com.android.phone"

    const-string v5, "com.android.phone.InCallScreen"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    invoke-virtual {p0, v1}, Lcom/android/settings/LocalePickerSetupWizard;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 2
    .parameter "theme"
    .parameter "resid"
    .parameter "first"

    .prologue
    .line 365
    const-string v0, "OOBE_LocalePickerSetupWizard"

    const-string v1, "onApplyThemeResource()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-virtual {p0}, Lcom/android/settings/LocalePickerSetupWizard;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getThemeResId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 367
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 320
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 344
    :goto_0
    return-void

    .line 322
    :sswitch_0
    iget-object v0, p0, Lcom/android/settings/LocalePickerSetupWizard;->mLocalePicker:Lcom/android/settings/LocalePickerSetupWizardFragment;

    if-nez v0, :cond_0

    .line 324
    const-string v0, "OOBE_LocalePickerSetupWizard"

    const-string v1, "mLocalePicker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :goto_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/LocalePickerSetupWizard;->setResult(I)V

    .line 332
    invoke-virtual {p0}, Lcom/android/settings/LocalePickerSetupWizard;->finish()V

    goto :goto_0

    .line 327
    :cond_0
    const-string v0, "OOBE_LocalePickerSetupWizard"

    const-string v1, "mLocalePicker != null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v0, p0, Lcom/android/settings/LocalePickerSetupWizard;->mLocalePicker:Lcom/android/settings/LocalePickerSetupWizardFragment;

    invoke-virtual {v0}, Lcom/android/settings/LocalePickerSetupWizardFragment;->onNextBtnclick()V

    goto :goto_1

    .line 336
    :sswitch_1
    iget-boolean v0, p0, Lcom/android/settings/LocalePickerSetupWizard;->mbShowEmergency:Z

    if-nez v0, :cond_1

    .line 338
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/LocalePickerSetupWizard;->setResult(I)V

    .line 339
    invoke-virtual {p0}, Lcom/android/settings/LocalePickerSetupWizard;->finish()V

    goto :goto_0

    .line 341
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/LocalePickerSetupWizard;->showEmergencyDial()V

    goto :goto_0

    .line 320
    :sswitch_data_0
    .sparse-switch
        0x7f080031 -> :sswitch_1
        0x7f0800cf -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 106
    const-string v0, "OOBE_LocalePickerSetupWizard"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 108
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 76
    const-string v1, "OOBE_LocalePickerSetupWizard"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {p0, v6}, Lcom/android/settings/LocalePickerSetupWizard;->requestWindowFeature(I)Z

    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/LocalePickerSetupWizard;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 81
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 83
    const-string v1, "SelfFinishBackKeyPressed"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/LocalePickerSetupWizard;->mbBackFinish:Z

    .line 84
    const-string v1, "LaunchByIcon"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/LocalePickerSetupWizard;->mLaunchByIcon:Z

    .line 85
    const-string v1, "PhoneFunction"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/LocalePickerSetupWizard;->mbPhoneFunc:Z

    .line 86
    const-string v1, "OOBE_LocalePickerSetupWizard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLaunchByIcon = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/LocalePickerSetupWizard;->mLaunchByIcon:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mbBackFinish = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/LocalePickerSetupWizard;->mbBackFinish:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-string v1, "ProgressBarNumber"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/LocalePickerSetupWizard;->mProgressBarNumber:I

    .line 90
    const-string v1, "ProgressBarMaxNumber"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/LocalePickerSetupWizard;->mProgressBarMaxNumber:I

    .line 91
    const-string v1, "ProgressBarDotMaxNumber"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/LocalePickerSetupWizard;->mProgressBarDotMaxNumber:I

    .line 92
    const-string v1, "ProgressBarDotInterspace"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/LocalePickerSetupWizard;->mProgressBarDotInterspace:I

    .line 96
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/LocalePickerSetupWizard;->mbPhoneFunc:Z

    if-eqz v1, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xa8

    if-ne v1, v2, :cond_1

    .line 98
    iput-boolean v6, p0, Lcom/android/settings/LocalePickerSetupWizard;->mbShowEmergency:Z

    .line 101
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/LocalePickerSetupWizard;->initialize()V

    .line 102
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 281
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 282
    const-string v0, "OOBE_LocalePickerSetupWizard"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    .line 288
    const-string v2, "OOBE_LocalePickerSetupWizard"

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

    .line 290
    sparse-switch p1, :sswitch_data_0

    .line 315
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_0
    :goto_0
    :sswitch_0
    return v1

    .line 292
    :sswitch_1
    iget-boolean v2, p0, Lcom/android/settings/LocalePickerSetupWizard;->mbBackFinish:Z

    if-nez v2, :cond_1

    .line 293
    invoke-virtual {p0, v5}, Lcom/android/settings/LocalePickerSetupWizard;->setResult(I)V

    .line 294
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 296
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/LocalePickerSetupWizard;->mLaunchByIcon:Z

    if-ne v2, v1, :cond_0

    .line 297
    invoke-virtual {p0, v5}, Lcom/android/settings/LocalePickerSetupWizard;->setResult(I)V

    .line 298
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 308
    :sswitch_2
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/settings/LocalePickerSetupWizard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 309
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 310
    invoke-direct {p0}, Lcom/android/settings/LocalePickerSetupWizard;->showEmergencyDial()V

    goto :goto_0

    .line 313
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 290
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

.method public onResume()V
    .locals 2

    .prologue
    .line 275
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 276
    const-string v0, "OOBE_LocalePickerSetupWizard"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return-void
.end method
