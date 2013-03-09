.class public Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "GuidedToursActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity$ButtonPreference;
    }
.end annotation


# static fields
.field private static final CLS_CIME_TUTORIAL:Ljava/lang/String; = "com.htc.android.cime.tutorial.RegionalCorrection"

.field private static final CLS_HTCIME_TUTORIAL:Ljava/lang/String; = "com.htc.android.htcime.tutorial.RegionalCorrection"

.field private static final KEY_BASIC_SETUP:Ljava/lang/String; = "guided_tours_basic_setup"

.field private static final KEY_KEYPAD_TUTORIAL:Ljava/lang/String; = "guided_tours_keypad_tutorial"

.field private static final KEY_MY_VERIZON:Ljava/lang/String; = "guided_tours_my_verizon"

.field private static final KEY_MY_VERIZON_VIDEO:Ljava/lang/String; = "guided_tours_my_verizon_video"

.field private static final KEY_SHOW_ME:Ljava/lang/String; = "guided_tours_show_me"

.field private static final PKG_CIME:Ljava/lang/String; = "com.htc.android.cime"

.field private static final PKG_HTCIME:Ljava/lang/String; = "com.htc.android.htcime"

.field private static final SRV_CIME:Ljava/lang/String; = "com.htc.android.cime/.HTCIMEService"

.field private static final SRV_HTCIME:Ljava/lang/String; = "com.htc.android.htcime/.HTCIMEService"

.field private static final TAG:Ljava/lang/String; = "OOBE_GuidedToursActivity"

.field private static final VIDEO_BEATS_AUDIO:Ljava/lang/String; = "EllieGoulding.mp4"

.field private static final VIDEO_MY_VERIZON:Ljava/lang/String; = "VZW_My_Verizon_Smartphone.mp4"

.field private static final VIDEO_PATH:Ljava/lang/String; = "/system/media/oobe/video"

.field private static final VIDEO_PATH_1_BEATS_AUDIO:Ljava/lang/String; = null

.field private static final VIDEO_PATH_2_BEATS_AUDIO:Ljava/lang/String; = null

.field private static final VZW_LAUNCH_MYVERIZON:Ljava/lang/String; = "com.vzw.hss.myverizon.LAUNCH_MYVERIZON"


# instance fields
.field private mBasicSetup:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

.field private mBeatsAudio:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

.field private mKeypadTutorial:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

.field private mLaunchBy:Ljava/lang/String;

.field private mMyVerizonVideo:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

.field private mPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

.field private mShowMe:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

.field private mbFinalPage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 96
    invoke-static {}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->hasBeatsAudio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    new-array v0, v4, [Ljava/lang/String;

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "/Video"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->combineString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->VIDEO_PATH_1_BEATS_AUDIO:Ljava/lang/String;

    .line 100
    new-array v0, v4, [Ljava/lang/String;

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "/Video"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->combineString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->VIDEO_PATH_2_BEATS_AUDIO:Ljava/lang/String;

    .line 106
    :goto_0
    return-void

    .line 103
    :cond_0
    const-string v0, ""

    sput-object v0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->VIDEO_PATH_1_BEATS_AUDIO:Ljava/lang/String;

    .line 104
    const-string v0, ""

    sput-object v0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->VIDEO_PATH_2_BEATS_AUDIO:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->mbFinalPage:Z

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->mLaunchBy:Ljava/lang/String;

    .line 348
    return-void
.end method

.method private static varargs combineString([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "args"

    .prologue
    const/4 v3, 0x0

    .line 139
    array-length v2, p0

    if-lez v2, :cond_0

    aget-object v2, p0, v3

    if-nez v2, :cond_1

    .line 141
    :cond_0
    const-string v2, ""

    .line 150
    :goto_0
    return-object v2

    .line 144
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    aget-object v2, p0, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 147
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 150
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private fileExists(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "path"
    .parameter "filename"

    .prologue
    .line 133
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private static hasBeatsAudio()Z
    .locals 1

    .prologue
    .line 128
    sget-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Project;->isVerizon:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Device;->isVigor:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initialize()V
    .locals 8

    .prologue
    const v7, 0x7f0a0013

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 316
    const v3, 0x7f030012

    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->setContentView(I)V

    .line 318
    const v3, 0x7f0d003f

    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 320
    .local v2, layout:Landroid/widget/LinearLayout;
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleColor(Landroid/content/Context;Landroid/app/Activity;)V

    .line 321
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleDivider(Landroid/content/Context;Landroid/app/Activity;)V

    .line 322
    const/16 v3, 0x20

    invoke-static {p0, v2, v3}, Lcom/htc/android/htcsetupwizard/MainActivity;->setProgressBar(Landroid/content/Context;Landroid/widget/LinearLayout;I)Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;

    .line 324
    const v3, 0x7f0d0003

    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 325
    .local v0, btnBack:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    const v3, 0x7f0d0004

    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 328
    .local v1, btnNext:Landroid/widget/Button;
    if-eqz v1, :cond_0

    .line 330
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    iget-boolean v3, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->mbFinalPage:Z

    if-eqz v3, :cond_0

    .line 333
    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(I)V

    .line 334
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 338
    :cond_0
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->mLaunchBy:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->mLaunchBy:Ljava/lang/String;

    const-string v4, "LaunchedByOOBE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 341
    :cond_1
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 342
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 343
    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(I)V

    .line 344
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 346
    :cond_2
    return-void
.end method

.method private launchShowMe()V
    .locals 2

    .prologue
    .line 496
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 497
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.showme.MAINPAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->startActivity(Landroid/content/Intent;)V

    .line 499
    return-void
.end method

.method private onCreatePreferences()V
    .locals 2

    .prologue
    .line 206
    const-string v0, "OOBE_GuidedToursActivity"

    const-string v1, "onCreatePreferences"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->addPreferencesFromResource(I)V

    .line 208
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->mPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    .line 209
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->updatePreferenceCategoryStatus()V

    .line 210
    return-void
.end method

.method private playVideo(Ljava/lang/String;)V
    .locals 1
    .parameter "filename"

    .prologue
    .line 155
    const-string v0, "/system/media/oobe/video"

    invoke-direct {p0, v0, p1}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->playVideo(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method private playVideo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "path"
    .parameter "filename"

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 160
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v5

    const-string v3, "/"

    aput-object v3, v2, v6

    aput-object p2, v2, v4

    invoke-static {v2}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->combineString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, fullPath:Ljava/lang/String;
    const-string v2, "OOBE_GuidedToursActivity"

    new-array v3, v4, [Ljava/lang/String;

    const-string v4, "playVideo: "

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    invoke-static {v3}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->combineString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 164
    .local v1, intent:Landroid/content/Intent;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "video/mp4"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->startActivity(Landroid/content/Intent;)V

    .line 166
    return-void
.end method

.method private showImeTutorial()V
    .locals 5

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_input_method"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 483
    .local v1, preferIME:Ljava/lang/String;
    const-string v2, "OOBE_GuidedToursActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "perferIME = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 485
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.htc.android.htcime/.HTCIMEService"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 486
    const-string v2, "com.htc.android.htcime"

    const-string v3, "com.htc.android.htcime.tutorial.RegionalCorrection"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 487
    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->startActivity(Landroid/content/Intent;)V

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    const-string v2, "com.htc.android.cime/.HTCIMEService"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 489
    const-string v2, "com.htc.android.cime"

    const-string v3, "com.htc.android.cime.tutorial.RegionalCorrection"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private updateBasicSetup()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->mPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v1, "guided_tours_basic_setup"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->mBasicSetup:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    .line 226
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->mBasicSetup:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->mBasicSetup:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    const v1, 0x7f0a0034

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setTitle(I)V

    .line 231
    :goto_0
    return-void

    .line 229
    :cond_0
    const-string v0, "OOBE_GuidedToursActivity"

    const-string v1, "Preference with key guided_tours_basic_setup not found!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateBeatsAudio()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 255
    invoke-static {}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->hasBeatsAudio()Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    :goto_0
    return-void

    .line 259
    :cond_0
    sget-object v0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->VIDEO_PATH_1_BEATS_AUDIO:Ljava/lang/String;

    const-string v1, "EllieGoulding.mp4"

    invoke-direct {p0, v0, v1}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->fileExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->VIDEO_PATH_2_BEATS_AUDIO:Ljava/lang/String;

    const-string v1, "EllieGoulding.mp4"

    invoke-direct {p0, v0, v1}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->fileExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 262
    :cond_1
    new-instance v0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    invoke-direct {v0, p0}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->mBeatsAudio:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    .line 263
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->mBeatsAudio:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    const v1, 0x7f0a0037

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setTitle(I)V

    .line 264
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->mPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->mBeatsAudio:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 265
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->mBeatsAudio:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->mKeypadTutorial:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    invoke-virtual {v1}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->getOrder()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setOrder(I)V

    goto :goto_0

    .line 268
    :cond_2
    const-string v0, "OOBE_GuidedToursActivity"

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "no video file: "

    aput-object v2, v1, v3

    sget-object v2, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->VIDEO_PATH_1_BEATS_AUDIO:Ljava/lang/String;

    aput-object v2, v1, v4

    const-string v2, "/"

    aput-object v2, v1, v5

    const-string v2, "EllieGoulding.mp4"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->combineString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const-string v0, "OOBE_GuidedToursActivity"

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "no video file: "

    aput-object v2, v1, v3

    sget-object v2, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->VIDEO_PATH_2_BEATS_AUDIO:Ljava/lang/String;

    aput-object v2, v1, v4

    const-string v2, "/"

    aput-object v2, v1, v5

    const-string v2, "EllieGoulding.mp4"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->combineString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateKeypadTutorial()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->mPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v1, "guided_tours_keypad_tutorial"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->mKeypadTutorial:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    .line 246
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->mKeypadTutorial:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->mKeypadTutorial:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    const v1, 0x7f0a0036

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setTitle(I)V

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    const-string v0, "OOBE_GuidedToursActivity"

    const-string v1, "Preference with key guided_tours_keypad_tutorial not found!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateMyVerizonDesc()V
    .locals 8

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x0

    .line 286
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->mPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v4, "guided_tours_my_verizon"

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/android/htcsetupwizard/activity/HtcDescPreference;

    .line 287
    .local v2, pref:Lcom/htc/android/htcsetupwizard/activity/HtcDescPreference;
    if-eqz v2, :cond_0

    .line 288
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a003e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a003f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0040

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0041

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, desc:Ljava/lang/String;
    invoke-virtual {v2, v1}, Lcom/htc/android/htcsetupwizard/activity/HtcDescPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 294
    invoke-virtual {v2, v6, v6}, Lcom/htc/android/htcsetupwizard/activity/HtcDescPreference;->setDivide(ZZ)V

    .line 295
    invoke-virtual {v2, v6}, Lcom/htc/android/htcsetupwizard/activity/HtcDescPreference;->setSelectable(Z)V

    .line 296
    invoke-virtual {v2, v6}, Lcom/htc/android/htcsetupwizard/activity/HtcDescPreference;->setPersistent(Z)V

    .line 301
    .end local v1           #desc:Ljava/lang/String;
    :goto_0
    new-instance v0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity$ButtonPreference;

    invoke-direct {v0, p0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity$ButtonPreference;-><init>(Landroid/content/Context;)V

    .line 302
    .local v0, buttonPreference:Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity$ButtonPreference;
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0042

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity$ButtonPreference;->setButtonText(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v0, p0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity$ButtonPreference;->setButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->mPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v3, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 305
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 306
    return-void

    .line 298
    .end local v0           #buttonPreference:Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity$ButtonPreference;
    :cond_0
    const-string v3, "OOBE_GuidedToursActivity"

    const-string v4, "Preference with key guided_tours_my_verizon not found!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateMyVerizonVideo()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->mPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v1, "guided_tours_my_verizon_video"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->mMyVerizonVideo:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    .line 236
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->mMyVerizonVideo:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->mMyVerizonVideo:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    const v1, 0x7f0a0035

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setTitle(I)V

    .line 241
    :goto_0
    return-void

    .line 239
    :cond_0
    const-string v0, "OOBE_GuidedToursActivity"

    const-string v1, "Preference with key guided_tours_my_verizon_video not found!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updatePreferenceCategoryStatus()V
    .locals 2

    .prologue
    .line 214
    const-string v0, "OOBE_GuidedToursActivity"

    const-string v1, "updatePreferenceCategoryStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->updateBasicSetup()V

    .line 216
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->updateMyVerizonVideo()V

    .line 217
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->updateKeypadTutorial()V

    .line 218
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->updateBeatsAudio()V

    .line 219
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->updateShowMe()V

    .line 220
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->updateMyVerizonDesc()V

    .line 221
    return-void
.end method

.method private updateShowMe()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->mPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v1, "guided_tours_show_me"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->mShowMe:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    .line 276
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->mShowMe:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->mShowMe:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    const v1, 0x7f0a003d

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setTitle(I)V

    .line 281
    :goto_0
    return-void

    .line 279
    :cond_0
    const-string v0, "OOBE_GuidedToursActivity"

    const-string v1, "Preference with key guided_tours_show_me not found!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 475
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->finish()V

    .line 476
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "nRequestCode"
    .parameter "nResultCode"
    .parameter "intent"

    .prologue
    .line 504
    const-string v0, "OOBE_GuidedToursActivity"

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

    .line 514
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 2
    .parameter "theme"
    .parameter "resid"
    .parameter "first"

    .prologue
    .line 518
    const-string v0, "OOBE_GuidedToursActivity"

    const-string v1, "onApplyThemeResource()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getThemeResId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 520
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 400
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 420
    :goto_0
    return-void

    .line 404
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 405
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.vzw.hss.myverizon.LAUNCH_MYVERIZON"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 407
    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 411
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_1
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->setResult(I)V

    .line 412
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->finish()V

    goto :goto_0

    .line 416
    :sswitch_2
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->setResult(I)V

    .line 417
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->finish()V

    goto :goto_0

    .line 400
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d0003 -> :sswitch_2
        0x7f0d0004 -> :sswitch_1
        0x7f0d000f -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->initialize()V

    .line 311
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 312
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 111
    const-string v1, "OOBE_GuidedToursActivity"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->requestWindowFeature(I)Z

    .line 113
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 116
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 118
    const-string v1, "FinalPage"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->mbFinalPage:Z

    .line 119
    const-string v1, "LaunchedBy"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->mLaunchBy:Ljava/lang/String;

    .line 122
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->initialize()V

    .line 123
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->onCreatePreferences()V

    .line 124
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 455
    const-string v0, "OOBE_GuidedToursActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    sparse-switch p1, :sswitch_data_0

    .line 469
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 460
    :sswitch_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->setResult(I)V

    .line 461
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 466
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 457
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0x52 -> :sswitch_1
        0x54 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 446
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onPause()V

    .line 447
    const-string v0, "OOBE_GuidedToursActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 171
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    .line 173
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->mBasicSetup:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 176
    .local v0, i:Landroid/content/Intent;
    const-class v1, Lcom/htc/android/htcsetupwizard/activity/GuidedToursBasicSetupActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 177
    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->startActivity(Landroid/content/Intent;)V

    .line 201
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 179
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->mMyVerizonVideo:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 181
    const-string v1, "VZW_My_Verizon_Smartphone.mp4"

    invoke-direct {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->playVideo(Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->mKeypadTutorial:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 185
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->showImeTutorial()V

    goto :goto_0

    .line 187
    :cond_3
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->mBeatsAudio:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 189
    sget-object v1, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->VIDEO_PATH_1_BEATS_AUDIO:Ljava/lang/String;

    const-string v2, "EllieGoulding.mp4"

    invoke-direct {p0, v1, v2}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->fileExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 190
    sget-object v1, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->VIDEO_PATH_1_BEATS_AUDIO:Ljava/lang/String;

    const-string v2, "EllieGoulding.mp4"

    invoke-direct {p0, v1, v2}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->playVideo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :cond_4
    sget-object v1, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->VIDEO_PATH_2_BEATS_AUDIO:Ljava/lang/String;

    const-string v2, "EllieGoulding.mp4"

    invoke-direct {p0, v1, v2}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->fileExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    sget-object v1, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->VIDEO_PATH_2_BEATS_AUDIO:Ljava/lang/String;

    const-string v2, "EllieGoulding.mp4"

    invoke-direct {p0, v1, v2}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->playVideo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :cond_5
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->mShowMe:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;->launchShowMe()V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 431
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 425
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 426
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 436
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 440
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onStop()V

    .line 441
    const-string v0, "OOBE_GuidedToursActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    return-void
.end method
