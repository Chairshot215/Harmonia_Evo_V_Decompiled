.class public Lcom/android/settings/wifi/WifiSettingsSetupWizard;
.super Landroid/app/Activity;
.source "WifiSettingsSetupWizard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final INTENT_STRING_LAUNCH_BY_ICON:Ljava/lang/String; = "LaunchByIcon"

.field private static final INTENT_STRING_NOT_FINISH_WHEN_BACK_KEY_PRESSED:Ljava/lang/String; = "SelfFinishBackKeyPressed"

.field public static final INTENT_STRING_PROGRESS_BAR_DOT_INTERSPACE:Ljava/lang/String; = "ProgressBarDotInterspace"

.field public static final INTENT_STRING_PROGRESS_BAR_DOT_MAX_NUMBER:Ljava/lang/String; = "ProgressBarDotMaxNumber"

.field public static final INTENT_STRING_PROGRESS_BAR_MAX_NUMBER:Ljava/lang/String; = "ProgressBarMaxNumber"

.field public static final INTENT_STRING_PROGRESS_BAR_NUMBER:Ljava/lang/String; = "ProgressBarNumber"

.field public static final RESULT_BACK_KEY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "OOBE_WifiSettingsSetupWizard"


# instance fields
.field private mLaunchByIcon:Z

.field private mProgressBarDotInterspace:I

.field private mProgressBarDotMaxNumber:I

.field private mProgressBarMaxNumber:I

.field private mProgressBarNumber:I

.field private mbBackFinish:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    iput v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mProgressBarNumber:I

    .line 56
    iput v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mProgressBarMaxNumber:I

    .line 57
    iput v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mProgressBarDotMaxNumber:I

    .line 58
    iput v1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mProgressBarDotInterspace:I

    .line 60
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mbBackFinish:Z

    .line 61
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mLaunchByIcon:Z

    return-void
.end method

.method private setProgressBar(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .locals 15
    .parameter "context"
    .parameter "layout"

    .prologue
    .line 129
    iget v11, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mProgressBarNumber:I

    int-to-float v1, v11

    .line 130
    .local v1, ProgressBarNumber:F
    const-string v11, "oobe_progress_radio_on"

    const v12, 0x7f0200e8

    move-object/from16 v0, p1

    invoke-static {v0, v11, v12}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 132
    .local v7, progress_radio_on:I
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    const/high16 v13, 0x3f80

    invoke-direct {v6, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 136
    .local v6, params:Landroid/widget/LinearLayout$LayoutParams;
    const-string v11, "OOBE_WifiSettingsSetupWizard"

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

    iget v13, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mProgressBarMaxNumber:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ProgressBarDotMaxNumber = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mProgressBarDotMaxNumber:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v4, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 142
    .local v4, ivFirst:Landroid/widget/ImageView;
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 146
    const/high16 v11, 0x3f80

    sub-float v10, v1, v11

    .line 147
    .local v10, tempProgressBarNumber:F
    iget v11, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mProgressBarMaxNumber:I

    add-int/lit8 v9, v11, -0x2

    .line 148
    .local v9, tempProgressBarMaxSize:I
    iget v11, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mProgressBarDotMaxNumber:I

    add-int/lit8 v8, v11, -0x2

    .line 150
    .local v8, tempProgressBarDotMaxNumber:I
    iget v11, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mProgressBarMaxNumber:I

    iget v12, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mProgressBarDotMaxNumber:I

    if-ge v11, v12, :cond_0

    iget v11, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mProgressBarMaxNumber:I

    add-int/lit8 v8, v11, -0x2

    .line 152
    :cond_0
    const/4 v11, 0x0

    cmpl-float v11, v10, v11

    if-ltz v11, :cond_3

    .line 154
    if-le v9, v8, :cond_1

    .line 156
    int-to-float v11, v9

    div-float v11, v10, v11

    int-to-float v12, v8

    mul-float v10, v11, v12

    .line 159
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v8, :cond_4

    .line 161
    new-instance v3, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 162
    .local v3, iv:Landroid/widget/ImageView;
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    int-to-float v11, v2

    cmpg-float v11, v11, v10

    if-gez v11, :cond_2

    .line 165
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 171
    :goto_1
    iget v11, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mProgressBarDotInterspace:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v3, v11, v12, v13, v14}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 172
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 169
    :cond_2
    const v11, 0x7f0200e7

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 176
    .end local v2           #i:I
    .end local v3           #iv:Landroid/widget/ImageView;
    :cond_3
    const-string v11, "OOBE_WifiSettingsSetupWizard"

    const-string v12, "tempProgressBarNumber out of range."

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_4
    new-instance v5, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 179
    .local v5, ivLast:Landroid/widget/ImageView;
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    iget v11, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mProgressBarMaxNumber:I

    int-to-float v11, v11

    cmpl-float v11, v1, v11

    if-nez v11, :cond_6

    .line 182
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 188
    :cond_5
    :goto_2
    iget v11, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mProgressBarDotInterspace:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v5, v11, v12, v13, v14}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 189
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 190
    return-void

    .line 184
    :cond_6
    iget v11, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mProgressBarMaxNumber:I

    int-to-float v11, v11

    cmpg-float v11, v1, v11

    if-gez v11, :cond_5

    .line 186
    const v11, 0x7f0200e7

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method

.method private setTitleColor(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 4
    .parameter "context"
    .parameter "activity"

    .prologue
    .line 111
    const v2, 0x7f08000b

    invoke-virtual {p2, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 113
    .local v1, title:Landroid/widget/TextView;
    const-string v2, "setting_title_color"

    const v3, 0x7f0a0022

    invoke-static {p1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 115
    .local v0, color_id:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    return-void
.end method

.method private setTitleDivider(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 4
    .parameter "context"
    .parameter "activity"

    .prologue
    .line 120
    const v2, 0x7f0800cd

    invoke-virtual {p2, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 122
    .local v0, divider:Landroid/widget/ImageView;
    const-string v2, "oobe_title_divider"

    const v3, 0x7f020042

    invoke-static {p1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 124
    .local v1, divider_id:I
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 125
    return-void
.end method


# virtual methods
.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 2
    .parameter "theme"
    .parameter "resid"
    .parameter "first"

    .prologue
    .line 232
    const-string v0, "OOBE_WifiSettingsSetupWizard"

    const-string v1, "onApplyThemeResource()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getThemeResId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 234
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 193
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 204
    :goto_0
    return-void

    .line 195
    :sswitch_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->setResult(I)V

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->finish()V

    goto :goto_0

    .line 200
    :sswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->setResult(I)V

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->finish()V

    goto :goto_0

    .line 193
    :sswitch_data_0
    .sparse-switch
        0x7f080031 -> :sswitch_1
        0x7f0800cf -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 66
    const-string v1, "OOBE_WifiSettingsSetupWizard"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->requestWindowFeature(I)Z

    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v1, 0x7f0400a7

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->setContentView(I)V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 73
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 75
    const-string v1, "SelfFinishBackKeyPressed"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mbBackFinish:Z

    .line 76
    const-string v1, "LaunchByIcon"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mLaunchByIcon:Z

    .line 77
    const-string v1, "OOBE_WifiSettingsSetupWizard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLaunchByIcon = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mLaunchByIcon:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mbBackFinish = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mbBackFinish:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v1, "ProgressBarNumber"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mProgressBarNumber:I

    .line 81
    const-string v1, "ProgressBarMaxNumber"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mProgressBarMaxNumber:I

    .line 82
    const-string v1, "ProgressBarDotMaxNumber"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mProgressBarDotMaxNumber:I

    .line 83
    const-string v1, "ProgressBarDotInterspace"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mProgressBarDotInterspace:I

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->setup()V

    .line 87
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 210
    const-string v1, "OOBE_WifiSettingsSetupWizard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    sparse-switch p1, :sswitch_data_0

    .line 226
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 215
    :sswitch_1
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mbBackFinish:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mLaunchByIcon:Z

    if-eqz v1, :cond_0

    .line 217
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->setResult(I)V

    .line 218
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 212
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method public setup()V
    .locals 5

    .prologue
    .line 91
    const v3, 0x7f08012c

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 92
    .local v2, layout:Landroid/widget/LinearLayout;
    invoke-direct {p0, p0, v2}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->setProgressBar(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 93
    invoke-direct {p0, p0, p0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->setTitleColor(Landroid/content/Context;Landroid/app/Activity;)V

    .line 94
    invoke-direct {p0, p0, p0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->setTitleDivider(Landroid/content/Context;Landroid/app/Activity;)V

    .line 96
    const v3, 0x7f0800cf

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 97
    .local v1, btnNext:Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v3, 0x7f080031

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 100
    .local v0, btnBack:Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 102
    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mbBackFinish:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 103
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
