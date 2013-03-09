.class public Lcom/google/android/setupwizard/WelcomeActivity;
.super Lcom/google/android/setupwizard/BaseActivity;
.source "WelcomeActivity.java"

# interfaces
.implements Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupwizard/WelcomeActivity$QueryAccessibilityStateRunnable;
    }
.end annotation


# instance fields
.field private final WAITING_MODE_PERIOD:I

.field private final WAITING_MODE_TIMEOUT_NANOS:J

.field private mAccessibilityModeEnabled:Z

.field protected mChangeLanguageSpinner:Landroid/widget/Spinner;

.field private mClearAccountsDone:Z

.field protected mEmergencyCallButton:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mInitialLocale:Ljava/util/Locale;

.field private mLibrary:Landroid/gesture/GestureLibrary;

.field private mLocaleAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaPlayer:Landroid/media/MediaPlayer;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mStartButton:Landroid/widget/Button;

.field private mWaitMsg:Landroid/widget/TextView;

.field private mWaitStartTime:J

.field private mWaiting:Z

.field private final mWaitingModePoll:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/google/android/setupwizard/BaseActivity;-><init>()V

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mHandler:Landroid/os/Handler;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mClearAccountsDone:Z

    .line 90
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 102
    const-wide v0, 0x4a817c800L

    iput-wide v0, p0, Lcom/google/android/setupwizard/WelcomeActivity;->WAITING_MODE_TIMEOUT_NANOS:J

    .line 106
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/android/setupwizard/WelcomeActivity;->WAITING_MODE_PERIOD:I

    .line 107
    new-instance v0, Lcom/google/android/setupwizard/WelcomeActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/setupwizard/WelcomeActivity$1;-><init>(Lcom/google/android/setupwizard/WelcomeActivity;)V

    iput-object v0, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mWaitingModePoll:Ljava/lang/Runnable;

    .line 384
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/setupwizard/WelcomeActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mWaiting:Z

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/setupwizard/WelcomeActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/google/android/setupwizard/WelcomeActivity;->waitIsRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/setupwizard/WelcomeActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mWaitStartTime:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/google/android/setupwizard/WelcomeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/google/android/setupwizard/WelcomeActivity;->endWaitingMode()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/setupwizard/WelcomeActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mWaitingModePoll:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/setupwizard/WelcomeActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private enableAllAccessibilityServices()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 352
    invoke-virtual {p0}, Lcom/google/android/setupwizard/WelcomeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 355
    .local v5, resolver:Landroid/content/ContentResolver;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    .local v2, builder:Ljava/lang/StringBuilder;
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v1

    .line 358
    .local v1, accessibilityServices:Ljava/util/List;,"Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 359
    .local v0, accessibilityService:Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    iget-object v6, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 360
    .local v6, serviceInfo:Landroid/content/pm/ServiceInfo;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    .local v3, componentName:Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    const/16 v7, 0x3a

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 365
    .end local v0           #accessibilityService:Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v3           #componentName:Landroid/content/ComponentName;
    .end local v6           #serviceInfo:Landroid/content/pm/ServiceInfo;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 366
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 368
    :cond_1
    const-string v7, "enabled_accessibility_services"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 371
    const-string v7, "touch_exploration_enabled"

    invoke-static {v5, v7, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 374
    const-string v7, "accessibility_enabled"

    invoke-static {v5, v7, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 376
    iget-object v7, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/google/android/setupwizard/WelcomeActivity$QueryAccessibilityStateRunnable;

    invoke-direct {v8, p0}, Lcom/google/android/setupwizard/WelcomeActivity$QueryAccessibilityStateRunnable;-><init>(Lcom/google/android/setupwizard/WelcomeActivity;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 377
    return-void
.end method

.method private endWaitingMode()V
    .locals 2

    .prologue
    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mWaiting:Z

    .line 259
    iget-object v0, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mWaitingModePoll:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 260
    invoke-direct {p0}, Lcom/google/android/setupwizard/WelcomeActivity;->finishAndReturnResult()V

    .line 261
    return-void
.end method

.method private finishAndReturnResult()V
    .locals 1

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/google/android/setupwizard/WelcomeActivity;->getOtaspMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/WelcomeActivity;->setResult(I)V

    .line 426
    invoke-virtual {p0}, Lcom/google/android/setupwizard/WelcomeActivity;->finish()V

    .line 427
    return-void
.end method

.method private initViews()V
    .locals 8

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/google/android/setupwizard/WelcomeActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 265
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f03000a

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 266
    .local v0, contentView:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/WelcomeActivity;->setContentView(Landroid/view/View;)V

    .line 268
    const v5, 0x7f0e0027

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mStartButton:Landroid/widget/Button;

    .line 269
    iget-object v5, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mStartButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    const v5, 0x7f0e0002

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 272
    iget-object v5, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 273
    iget-object v5, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 275
    const v5, 0x7f0e0025

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mWaitMsg:Landroid/widget/TextView;

    .line 277
    const v5, 0x7f0e0026

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mChangeLanguageSpinner:Landroid/widget/Spinner;

    .line 279
    iget-object v5, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mChangeLanguageSpinner:Landroid/widget/Spinner;

    if-eqz v5, :cond_1

    .line 280
    const v5, 0x7f030002

    const v6, 0x7f0e0012

    invoke-static {p0, v5, v6}, Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mLocaleAdapter:Landroid/widget/ArrayAdapter;

    .line 282
    iget-object v5, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mChangeLanguageSpinner:Landroid/widget/Spinner;

    iget-object v6, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mLocaleAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 283
    iget-object v5, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mChangeLanguageSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 285
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mInitialLocale:Ljava/util/Locale;

    .line 286
    const/4 v2, 0x0

    .line 287
    .local v2, index:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mLocaleAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 288
    iget-object v5, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mLocaleAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 289
    .local v4, info:Lcom/android/internal/app/LocalePicker$LocaleInfo;
    invoke-virtual {v4}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mInitialLocale:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 290
    const-string v5, "SetupWizard"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initializing locale to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mInitialLocale:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mLocaleAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v7}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    move v2, v1

    .line 297
    .end local v4           #info:Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :cond_0
    iget-object v5, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mChangeLanguageSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 300
    .end local v1           #i:I
    .end local v2           #index:I
    :cond_1
    const v5, 0x7f0e0028

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mEmergencyCallButton:Landroid/view/View;

    .line 301
    iget-object v5, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mEmergencyCallButton:Landroid/view/View;

    if-eqz v5, :cond_2

    .line 302
    invoke-virtual {p0}, Lcom/google/android/setupwizard/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110023

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 303
    iget-object v5, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mEmergencyCallButton:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    :cond_2
    :goto_1
    return-void

    .line 287
    .restart local v1       #i:I
    .restart local v2       #index:I
    .restart local v4       #info:Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 305
    .end local v1           #i:I
    .end local v2           #index:I
    .end local v4           #info:Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :cond_4
    iget-object v5, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mEmergencyCallButton:Landroid/view/View;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private resumeWaitingMode()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x4

    .line 236
    iget-object v0, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mStartButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mEmergencyCallButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mChangeLanguageSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mWaitMsg:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 241
    iput-boolean v2, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mWaiting:Z

    .line 242
    iget-object v0, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mWaitingModePoll:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 243
    return-void
.end method

.method private startWaitingMode()V
    .locals 2

    .prologue
    .line 231
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mWaitStartTime:J

    .line 232
    invoke-direct {p0}, Lcom/google/android/setupwizard/WelcomeActivity;->resumeWaitingMode()V

    .line 233
    return-void
.end method

.method private waitIsRequired()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 246
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/google/android/setupwizard/WelcomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/google/android/setupwizard/WelcomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 254
    :cond_1
    :goto_0
    return v0

    .line 250
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/setupwizard/WelcomeActivity;->isWifiOnlyBuild()Z

    move-result v2

    if-nez v2, :cond_1

    .line 254
    invoke-virtual {p0}, Lcom/google/android/setupwizard/WelcomeActivity;->lteUnknown()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/google/android/setupwizard/WelcomeActivity;->simStateUnknown()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 124
    iget-object v2, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mStartButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_2

    .line 125
    iget-object v2, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mChangeLanguageSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 127
    .local v1, localeInfo:Lcom/android/internal/app/LocalePicker$LocaleInfo;
    invoke-virtual {v1}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v0

    .line 128
    .local v0, locale:Ljava/util/Locale;
    invoke-static {v0}, Lcom/android/internal/app/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 130
    invoke-direct {p0}, Lcom/google/android/setupwizard/WelcomeActivity;->waitIsRequired()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    invoke-direct {p0}, Lcom/google/android/setupwizard/WelcomeActivity;->startWaitingMode()V

    .line 138
    .end local v0           #locale:Ljava/util/Locale;
    .end local v1           #localeInfo:Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :cond_0
    :goto_0
    return-void

    .line 133
    .restart local v0       #locale:Ljava/util/Locale;
    .restart local v1       #localeInfo:Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :cond_1
    invoke-direct {p0}, Lcom/google/android/setupwizard/WelcomeActivity;->finishAndReturnResult()V

    goto :goto_0

    .line 135
    .end local v0           #locale:Ljava/util/Locale;
    .end local v1           #localeInfo:Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :cond_2
    iget-object v2, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mEmergencyCallButton:Landroid/view/View;

    if-ne p1, v2, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/google/android/setupwizard/WelcomeActivity;->placeEmergencyCall()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 170
    invoke-super {p0, p1}, Lcom/google/android/setupwizard/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 172
    invoke-direct {p0}, Lcom/google/android/setupwizard/WelcomeActivity;->initViews()V

    .line 173
    invoke-virtual {p0}, Lcom/google/android/setupwizard/WelcomeActivity;->maybeRegisterOtaspPhoneStateListener()V

    .line 176
    const/high16 v1, 0x7f05

    invoke-static {p0, v1}, Landroid/gesture/GestureLibraries;->fromRawResource(Landroid/content/Context;I)Landroid/gesture/GestureLibrary;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mLibrary:Landroid/gesture/GestureLibrary;

    .line 177
    iget-object v1, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mLibrary:Landroid/gesture/GestureLibrary;

    invoke-virtual {v1}, Landroid/gesture/GestureLibrary;->load()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mLibrary:Landroid/gesture/GestureLibrary;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/gesture/GestureLibrary;->setSequenceType(I)V

    .line 181
    const v1, 0x7f0e0022

    invoke-virtual {p0, v1}, Lcom/google/android/setupwizard/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/gesture/GestureOverlayView;

    .line 182
    .local v0, gestures:Landroid/gesture/GestureOverlayView;
    invoke-virtual {v0, p0}, Landroid/gesture/GestureOverlayView;->addOnGesturePerformedListener(Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;)V

    .line 186
    .end local v0           #gestures:Landroid/gesture/GestureOverlayView;
    :goto_0
    return-void

    .line 184
    :cond_0
    const-string v1, "SetupWizard"

    const-string v2, "Failed to load gesture library."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 223
    const-string v0, "SetupWizard"

    const-string v1, "SetupWizardActivity.onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-super {p0}, Lcom/google/android/setupwizard/BaseActivity;->onDestroy()V

    .line 225
    const v0, 0x7f0e0022

    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/gesture/GestureOverlayView;

    invoke-virtual {v0}, Landroid/gesture/GestureOverlayView;->removeAllOnGestureListeners()V

    .line 226
    invoke-virtual {p0}, Lcom/google/android/setupwizard/WelcomeActivity;->maybeUnregisterOtaspPhoneStateListener()V

    .line 227
    iget-object v0, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 228
    return-void
.end method

.method public onGesturePerformed(Landroid/gesture/GestureOverlayView;Landroid/gesture/Gesture;)V
    .locals 9
    .parameter "overlay"
    .parameter "gesture"

    .prologue
    const/4 v8, 0x0

    .line 312
    iget-object v5, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mLibrary:Landroid/gesture/GestureLibrary;

    invoke-virtual {v5, p2}, Landroid/gesture/GestureLibrary;->recognize(Landroid/gesture/Gesture;)Ljava/util/ArrayList;

    move-result-object v2

    .line 313
    .local v2, predictions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/Prediction;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 314
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/gesture/Prediction;

    iget-wide v3, v5, Landroid/gesture/Prediction;->score:D

    .line 315
    .local v3, score:D
    const-string v5, "SetupWizard"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Gesture detected. score: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const-wide/high16 v5, 0x4014

    cmpl-double v5, v3, v5

    if-lez v5, :cond_0

    .line 318
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/gesture/Prediction;

    iget-object v0, v5, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    .line 319
    .local v0, action:Ljava/lang/String;
    const-string v5, "enable"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 320
    iget-boolean v5, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mAccessibilityModeEnabled:Z

    if-nez v5, :cond_1

    .line 321
    invoke-direct {p0}, Lcom/google/android/setupwizard/WelcomeActivity;->enableAllAccessibilityServices()V

    .line 322
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mAccessibilityModeEnabled:Z

    .line 323
    const-string v5, "SetupWizard"

    const-string v6, "Accessibility mode enabled."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :try_start_0
    iget-object v5, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 327
    iget-object v5, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    sget-object v6, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v5, p0, v6}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 329
    iget-object v5, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    .end local v0           #action:Ljava/lang/String;
    .end local v3           #score:D
    :cond_0
    :goto_0
    return-void

    .line 331
    .restart local v0       #action:Ljava/lang/String;
    .restart local v3       #score:D
    :catch_0
    move-exception v1

    .line 332
    .local v1, e:Ljava/io/IOException;
    const-string v5, "SetupWizard"

    const-string v6, "Exception thrown during preparing sound."

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 335
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    const-string v5, "SetupWizard"

    const-string v6, "Accessibility mode already enabled"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 338
    :cond_2
    const-string v5, "SetupWizard"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onGlsConnected(Lcom/google/android/gsf/IGoogleLoginService;)V
    .locals 3
    .parameter "gls"

    .prologue
    .line 190
    invoke-super {p0, p1}, Lcom/google/android/setupwizard/BaseActivity;->onGlsConnected(Lcom/google/android/gsf/IGoogleLoginService;)V

    .line 192
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mClearAccountsDone:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/setupwizard/WelcomeActivity;->provisioningDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    invoke-interface {p1}, Lcom/google/android/gsf/IGoogleLoginService;->deleteAllAccounts()V

    .line 194
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mClearAccountsDone:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SetupWizard"

    const-string v2, "GLS died.  There might be spurious accounts."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x0

    .line 147
    invoke-virtual {p0}, Lcom/google/android/setupwizard/WelcomeActivity;->accountSetupLaunched()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 148
    const-string v2, "SetupWizard"

    const-string v3, "ignoring spurious onItemSelected()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iput-object v5, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mInitialLocale:Ljava/util/Locale;

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 155
    .local v1, localeInfo:Lcom/android/internal/app/LocalePicker$LocaleInfo;
    invoke-virtual {v1}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v0

    .line 156
    .local v0, locale:Ljava/util/Locale;
    iget-object v2, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mInitialLocale:Ljava/util/Locale;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mInitialLocale:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 157
    const-string v2, "SetupWizard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updating locale to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " != "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mInitialLocale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-static {v0}, Lcom/android/internal/app/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 160
    iput-object v5, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mInitialLocale:Ljava/util/Locale;

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 347
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x0

    .line 211
    invoke-super {p0, p1}, Lcom/google/android/setupwizard/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 212
    const-string v0, "accessibilityEnabled"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mAccessibilityModeEnabled:Z

    .line 213
    const-string v0, "WaitingMode"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mWaiting:Z

    .line 214
    const-string v0, "WaitingModeStartTime"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mWaitStartTime:J

    .line 216
    iget-boolean v0, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mWaiting:Z

    if-eqz v0, :cond_0

    .line 217
    invoke-direct {p0}, Lcom/google/android/setupwizard/WelcomeActivity;->resumeWaitingMode()V

    .line 219
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 203
    invoke-super {p0, p1}, Lcom/google/android/setupwizard/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 204
    const-string v0, "accessibilityEnabled"

    iget-boolean v1, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mAccessibilityModeEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 205
    const-string v0, "WaitingMode"

    iget-boolean v1, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mWaiting:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 206
    const-string v0, "WaitingModeStartTime"

    iget-wide v1, p0, Lcom/google/android/setupwizard/WelcomeActivity;->mWaitStartTime:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 207
    return-void
.end method
