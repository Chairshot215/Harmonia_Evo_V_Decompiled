.class public Lcom/google/android/marvin/talkback/TalkBackService;
.super Landroid/accessibilityservice/AccessibilityService;
.source "TalkBackService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/marvin/talkback/TalkBackService$EventListener;,
        Lcom/google/android/marvin/talkback/TalkBackService$RingerPreference;
    }
.end annotation


# static fields
.field private static final FEEDBACK_GESTURE_FAILED:I = 0x7f050002

.field static final KICKBACK_PACKAGE:Ljava/lang/String; = "com.google.android.marvin.kickback"

.field static final KICKBACK_REQUIRED_VERSION:I = 0x5

.field private static final PREF_APP_VERSION:Ljava/lang/String; = "app_version"

.field private static final PREF_FIRST_TIME_USER:Ljava/lang/String; = "first_time_user"

.field private static final SETTINGS_MANAGER_PACKAGE:Ljava/lang/String; = "com.marvin.preferences"

.field private static final SETTINGS_NOTIFICATION_ID:I = 0x1

.field private static final SHORTCUT_BACK:Ljava/lang/String; = "BACK"

.field private static final SHORTCUT_HOME:Ljava/lang/String; = "HOME"

.field private static final SHORTCUT_NOTIFICATIONS:Ljava/lang/String; = "NOTIFICATIONS"

.field private static final SHORTCUT_RECENTS:Ljava/lang/String; = "RECENTS"

.field private static final SHORTCUT_UNASSIGNED:Ljava/lang/String; = "UNASSIGNED"

.field static final SOUNDBACK_PACKAGE:Ljava/lang/String; = "com.google.android.marvin.soundback"

.field static final SOUNDBACK_REQUIRED_VERSION:I = 0x7

.field static final SUPPORTS_TOUCH_PREF:Z

.field private static sInfrastructureInitialized:Z


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallStateMonitor:Lcom/google/android/marvin/talkback/CallStateMonitor;

.field private mCursorController:Lcom/google/android/marvin/talkback/CursorController;

.field private final mCursorControllerListener:Lcom/google/android/marvin/talkback/CursorController$CursorControllerListener;

.field private mDeveloperOverlay:Lcom/google/android/marvin/talkback/DeveloperOverlay;

.field private mEventListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/marvin/talkback/TalkBackService$EventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mFeedbackController:Lcom/google/android/marvin/talkback/PreferenceFeedbackController;

.field private final mHandler:Landroid/os/Handler;

.field private final mInfrastructureStateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/googlecode/eyesfree/utils/InfrastructureStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIsUserTouchExploring:Z

.field private mLastSpokenEvent:Landroid/view/accessibility/AccessibilityEvent;

.field private mNotificationCache:Lcom/google/android/marvin/talkback/NotificationCache;

.field private mOrientationMonitor:Lcom/google/android/marvin/talkback/OrientationMonitor;

.field private mProcessorFollowFocus:Lcom/google/android/marvin/talkback/ProcessorFollowFocus;

.field private mRingerModeAndScreenMonitor:Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;

.field private mRingerPref:Lcom/google/android/marvin/talkback/TalkBackService$RingerPreference;

.field private final mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mSpeakWhenScreenOff:Z

.field private mSpeechController:Lcom/google/android/marvin/talkback/SpeechController;

.field private final mTouchExploreObserver:Landroid/database/ContentObserver;

.field private mTtsOverlay:Lcom/google/android/marvin/talkback/TextToSpeechOverlay;

.field private mVolumeMonitor:Lcom/google/android/marvin/talkback/VolumeMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/marvin/talkback/TalkBackService;->SUPPORTS_TOUCH_PREF:Z

    .line 114
    sput-boolean v1, Lcom/google/android/marvin/talkback/TalkBackService;->sInfrastructureInitialized:Z

    .line 71
    return-void

    :cond_0
    move v0, v1

    .line 86
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mInfrastructureStateListeners:Ljava/util/ArrayList;

    .line 828
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mHandler:Landroid/os/Handler;

    .line 834
    new-instance v0, Lcom/google/android/marvin/talkback/TalkBackService$1;

    invoke-direct {v0, p0}, Lcom/google/android/marvin/talkback/TalkBackService$1;-><init>(Lcom/google/android/marvin/talkback/TalkBackService;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mCursorControllerListener:Lcom/google/android/marvin/talkback/CursorController$CursorControllerListener;

    .line 861
    new-instance v0, Lcom/google/android/marvin/talkback/TalkBackService$2;

    invoke-direct {v0, p0}, Lcom/google/android/marvin/talkback/TalkBackService$2;-><init>(Lcom/google/android/marvin/talkback/TalkBackService;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 872
    new-instance v0, Lcom/google/android/marvin/talkback/TalkBackService$3;

    iget-object v1, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/google/android/marvin/talkback/TalkBackService$3;-><init>(Lcom/google/android/marvin/talkback/TalkBackService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mTouchExploreObserver:Landroid/database/ContentObserver;

    .line 71
    return-void
.end method

.method static synthetic access$0(Lcom/google/android/marvin/talkback/TalkBackService;)Lcom/google/android/marvin/talkback/SpeechController;
    .locals 1
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mSpeechController:Lcom/google/android/marvin/talkback/SpeechController;

    return-object v0
.end method

.method static synthetic access$1(Lcom/google/android/marvin/talkback/TalkBackService;)Lcom/google/android/marvin/talkback/ProcessorFollowFocus;
    .locals 1
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mProcessorFollowFocus:Lcom/google/android/marvin/talkback/ProcessorFollowFocus;

    return-object v0
.end method

.method static synthetic access$2(Lcom/google/android/marvin/talkback/TalkBackService;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 739
    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/TalkBackService;->reloadPreferences(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method static synthetic access$3(Lcom/google/android/marvin/talkback/TalkBackService;)Landroid/database/ContentObserver;
    .locals 1
    .parameter

    .prologue
    .line 872
    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mTouchExploreObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$4(Lcom/google/android/marvin/talkback/TalkBackService;)V
    .locals 0
    .parameter

    .prologue
    .line 806
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/TalkBackService;->onTouchExplorationEnabled()V

    return-void
.end method

.method static synthetic access$5(Lcom/google/android/marvin/talkback/TalkBackService;)V
    .locals 0
    .parameter

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/TalkBackService;->checkUpdate()V

    return-void
.end method

.method static synthetic access$6(Lcom/google/android/marvin/talkback/TalkBackService;)V
    .locals 0
    .parameter

    .prologue
    .line 525
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/TalkBackService;->shutdownInfrastructure()V

    return-void
.end method

.method static synthetic access$7(Lcom/google/android/marvin/talkback/TalkBackService;)V
    .locals 0
    .parameter

    .prologue
    .line 424
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/TalkBackService;->initializeInfrastructure()V

    return-void
.end method

.method private addInfrastructureStateListener(Lcom/googlecode/eyesfree/utils/InfrastructureStateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 593
    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mInfrastructureStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    return-void
.end method

.method private cacheEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 715
    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mLastSpokenEvent:Landroid/view/accessibility/AccessibilityEvent;

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mLastSpokenEvent:Landroid/view/accessibility/AccessibilityEvent;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 719
    :cond_0
    invoke-static {p1}, Lcom/googlecode/eyesfree/compat/view/accessibility/AccessibilityEventCompatUtils;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mLastSpokenEvent:Landroid/view/accessibility/AccessibilityEvent;

    .line 720
    return-void
.end method

.method private cacheNotificationEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 672
    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mNotificationCache:Lcom/google/android/marvin/talkback/NotificationCache;

    invoke-virtual {v0, p1}, Lcom/google/android/marvin/talkback/NotificationCache;->add(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 673
    return-void
.end method

.method private checkUpdate()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 345
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 346
    .local v7, prefs:Landroid/content/SharedPreferences;
    const-string v9, "app_version"

    const/4 v10, -0x1

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 348
    .local v8, previousVersion:I
    invoke-virtual {p0}, Lcom/google/android/marvin/talkback/TalkBackService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 352
    .local v4, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/marvin/talkback/TalkBackService;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 353
    .local v3, packageInfo:Landroid/content/pm/PackageInfo;
    iget v0, v3, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    .local v0, currentVersion:I
    if-ne v8, v0, :cond_0

    .line 391
    .end local v0           #currentVersion:I
    .end local v3           #packageInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 354
    :catch_0
    move-exception v1

    .line 355
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 363
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #currentVersion:I
    .restart local v3       #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 364
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v9, "app_version"

    invoke-interface {v2, v9, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 367
    const/16 v9, 0xc

    if-ge v8, v9, :cond_1

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0xe

    if-ge v9, v10, :cond_1

    .line 370
    const-string v9, "com.marvin.preferences"

    invoke-static {p0, v9}, Lcom/googlecode/eyesfree/utils/PackageManagerUtils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 371
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/TalkBackService;->displaySettingsAvailableNotification()V

    .line 376
    :cond_1
    const/16 v9, 0x2a

    if-ge v8, v9, :cond_3

    .line 378
    const-string v9, "com.google.android.marvin.kickback"

    invoke-static {p0, v9}, Lcom/googlecode/eyesfree/utils/PackageManagerUtils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 379
    const v9, 0x7f090006

    invoke-virtual {p0, v9}, Lcom/google/android/marvin/talkback/TalkBackService;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 380
    .local v6, prefVibration:Ljava/lang/String;
    invoke-interface {v2, v6, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 384
    .end local v6           #prefVibration:Ljava/lang/String;
    :cond_2
    const-string v9, "com.google.android.marvin.soundback"

    invoke-static {p0, v9}, Lcom/googlecode/eyesfree/utils/PackageManagerUtils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 385
    const v9, 0x7f090007

    invoke-virtual {p0, v9}, Lcom/google/android/marvin/talkback/TalkBackService;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 386
    .local v5, prefSoundback:Ljava/lang/String;
    invoke-interface {v2, v5, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 390
    .end local v5           #prefSoundback:Ljava/lang/String;
    :cond_3
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private displaySettingsAvailableNotification()V
    .locals 8

    .prologue
    const v6, 0x7f0900a0

    const/4 v7, 0x1

    .line 398
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 399
    .local v0, launchMarketIntent:Landroid/content/Intent;
    const v4, 0x7f090025

    invoke-virtual {p0, v4}, Lcom/google/android/marvin/talkback/TalkBackService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 402
    const/4 v4, 0x0

    const/high16 v5, 0x800

    .line 401
    invoke-static {p0, v4, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 404
    .local v3, pendingIntent:Landroid/app/PendingIntent;
    new-instance v4, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v4, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 405
    const v5, 0x1080079

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 406
    invoke-virtual {p0, v6}, Lcom/google/android/marvin/talkback/TalkBackService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 407
    invoke-virtual {p0, v6}, Lcom/google/android/marvin/talkback/TalkBackService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 408
    const v5, 0x7f0900a1

    invoke-virtual {p0, v5}, Lcom/google/android/marvin/talkback/TalkBackService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 409
    invoke-virtual {v4, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 410
    invoke-virtual {v4, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 411
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 412
    invoke-virtual {v4}, Landroid/support/v4/app/NotificationCompat$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 414
    .local v2, notification:Landroid/app/Notification;
    iget v4, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v2, Landroid/app/Notification;->defaults:I

    .line 415
    iget v4, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x12

    iput v4, v2, Landroid/app/Notification;->flags:I

    .line 417
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Lcom/google/android/marvin/talkback/TalkBackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 418
    .local v1, nm:Landroid/app/NotificationManager;
    invoke-virtual {v1, v7, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 419
    return-void
.end method

.method private initializeInfrastructure()V
    .locals 15

    .prologue
    const/16 v14, 0x10

    const/16 v13, 0xe

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 425
    new-instance v6, Lcom/google/android/marvin/talkback/NotificationCache;

    invoke-direct {v6, p0}, Lcom/google/android/marvin/talkback/NotificationCache;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mNotificationCache:Lcom/google/android/marvin/talkback/NotificationCache;

    .line 426
    new-instance v6, Lcom/google/android/marvin/talkback/SpeechController;

    invoke-direct {v6, p0}, Lcom/google/android/marvin/talkback/SpeechController;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mSpeechController:Lcom/google/android/marvin/talkback/SpeechController;

    .line 427
    new-instance v6, Lcom/google/android/marvin/talkback/PreferenceFeedbackController;

    invoke-direct {v6, p0}, Lcom/google/android/marvin/talkback/PreferenceFeedbackController;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mFeedbackController:Lcom/google/android/marvin/talkback/PreferenceFeedbackController;

    .line 433
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mEventListeners:Ljava/util/LinkedList;

    .line 434
    iget-object v6, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mEventListeners:Ljava/util/LinkedList;

    new-instance v7, Lcom/google/android/marvin/talkback/ProcessorEventQueue;

    iget-object v8, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mFeedbackController:Lcom/google/android/marvin/talkback/PreferenceFeedbackController;

    iget-object v9, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mSpeechController:Lcom/google/android/marvin/talkback/SpeechController;

    invoke-direct {v7, p0, v8, v9}, Lcom/google/android/marvin/talkback/ProcessorEventQueue;-><init>(Landroid/content/Context;Lcom/google/android/marvin/talkback/PreferenceFeedbackController;Lcom/google/android/marvin/talkback/SpeechController;)V

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 435
    iget-object v6, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mEventListeners:Ljava/util/LinkedList;

    new-instance v7, Lcom/google/android/marvin/talkback/ProcessorScrollPosition;

    iget-object v8, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mSpeechController:Lcom/google/android/marvin/talkback/SpeechController;

    invoke-direct {v7, p0, v8}, Lcom/google/android/marvin/talkback/ProcessorScrollPosition;-><init>(Landroid/content/Context;Lcom/google/android/marvin/talkback/SpeechController;)V

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 437
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v13, :cond_0

    .line 438
    iget-object v6, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mEventListeners:Ljava/util/LinkedList;

    new-instance v7, Lcom/google/android/marvin/talkback/ProcessorLongHover;

    iget-object v8, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mSpeechController:Lcom/google/android/marvin/talkback/SpeechController;

    invoke-direct {v7, p0, v8}, Lcom/google/android/marvin/talkback/ProcessorLongHover;-><init>(Landroid/content/Context;Lcom/google/android/marvin/talkback/SpeechController;)V

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 441
    :cond_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v14, :cond_2

    .line 442
    new-instance v6, Lcom/google/android/marvin/talkback/ProcessorFollowFocus;

    invoke-direct {v6, p0}, Lcom/google/android/marvin/talkback/ProcessorFollowFocus;-><init>(Landroid/accessibilityservice/AccessibilityService;)V

    iput-object v6, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mProcessorFollowFocus:Lcom/google/android/marvin/talkback/ProcessorFollowFocus;

    .line 443
    iget-object v6, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mEventListeners:Ljava/util/LinkedList;

    iget-object v7, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mProcessorFollowFocus:Lcom/google/android/marvin/talkback/ProcessorFollowFocus;

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 448
    :goto_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v14, :cond_3

    .line 449
    new-instance v6, Lcom/google/android/marvin/talkback/CursorController;

    invoke-direct {v6, p0}, Lcom/google/android/marvin/talkback/CursorController;-><init>(Landroid/accessibilityservice/AccessibilityService;)V

    iput-object v6, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mCursorController:Lcom/google/android/marvin/talkback/CursorController;

    .line 450
    iget-object v6, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mCursorController:Lcom/google/android/marvin/talkback/CursorController;

    iget-object v7, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mCursorControllerListener:Lcom/google/android/marvin/talkback/CursorController$CursorControllerListener;

    invoke-virtual {v6, v7}, Lcom/google/android/marvin/talkback/CursorController;->setListener(Lcom/google/android/marvin/talkback/CursorController$CursorControllerListener;)V

    .line 455
    :goto_1
    const-string v6, "audio"

    invoke-virtual {p0, v6}, Lcom/google/android/marvin/talkback/TalkBackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    iput-object v6, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mAudioManager:Landroid/media/AudioManager;

    .line 457
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v13, :cond_4

    .line 461
    new-instance v6, Lcom/google/android/marvin/talkback/VolumeMonitor;

    iget-object v7, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mSpeechController:Lcom/google/android/marvin/talkback/SpeechController;

    invoke-direct {v6, p0, v7}, Lcom/google/android/marvin/talkback/VolumeMonitor;-><init>(Landroid/content/Context;Lcom/google/android/marvin/talkback/SpeechController;)V

    iput-object v6, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mVolumeMonitor:Lcom/google/android/marvin/talkback/VolumeMonitor;

    .line 462
    iget-object v6, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mSpeechController:Lcom/google/android/marvin/talkback/SpeechController;

    iget-object v7, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mVolumeMonitor:Lcom/google/android/marvin/talkback/VolumeMonitor;

    invoke-virtual {v6, v7}, Lcom/google/android/marvin/talkback/SpeechController;->setVolumeMonitor(Lcom/google/android/marvin/talkback/VolumeMonitor;)V

    .line 467
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/marvin/talkback/TalkBackService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 470
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    sget-object v6, Lcom/googlecode/eyesfree/compat/content/pm/PackageManagerCompatUtils;->FEATURE_TELEPHONY:Ljava/lang/String;

    .line 469
    invoke-static {v2, v6, v11}, Lcom/googlecode/eyesfree/compat/content/pm/PackageManagerCompatUtils;->hasSystemFeature(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)Z

    move-result v1

    .line 473
    .local v1, deviceIsPhone:Z
    if-eqz v1, :cond_5

    .line 474
    new-instance v6, Lcom/google/android/marvin/talkback/CallStateMonitor;

    iget-object v7, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mSpeechController:Lcom/google/android/marvin/talkback/SpeechController;

    iget-object v8, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mFeedbackController:Lcom/google/android/marvin/talkback/PreferenceFeedbackController;

    invoke-direct {v6, v7, v8}, Lcom/google/android/marvin/talkback/CallStateMonitor;-><init>(Lcom/google/android/marvin/talkback/SpeechController;Lcom/google/android/marvin/talkback/PreferenceFeedbackController;)V

    iput-object v6, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mCallStateMonitor:Lcom/google/android/marvin/talkback/CallStateMonitor;

    .line 476
    iget-object v6, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mCallStateMonitor:Lcom/google/android/marvin/talkback/CallStateMonitor;

    iget-object v7, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mCallStateMonitor:Lcom/google/android/marvin/talkback/CallStateMonitor;

    invoke-virtual {v7}, Lcom/google/android/marvin/talkback/CallStateMonitor;->getFilter()Landroid/content/IntentFilter;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/google/android/marvin/talkback/TalkBackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 477
    iget-object v6, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mCallStateMonitor:Lcom/google/android/marvin/talkback/CallStateMonitor;

    invoke-direct {p0, v6}, Lcom/google/android/marvin/talkback/TalkBackService;->addInfrastructureStateListener(Lcom/googlecode/eyesfree/utils/InfrastructureStateListener;)V

    .line 483
    :goto_3
    sget-object v6, Lcom/googlecode/eyesfree/compat/content/pm/PackageManagerCompatUtils;->FEATURE_TOUCHSCREEN:Ljava/lang/String;

    .line 482
    invoke-static {v2, v6, v11}, Lcom/googlecode/eyesfree/compat/content/pm/PackageManagerCompatUtils;->hasSystemFeature(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)Z

    move-result v0

    .line 485
    .local v0, deviceHasTouchscreen:Z
    if-nez v1, :cond_1

    if-eqz v0, :cond_6

    .line 489
    :cond_1
    new-instance v6, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;

    .line 490
    iget-object v7, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mSpeechController:Lcom/google/android/marvin/talkback/SpeechController;

    iget-object v8, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mNotificationCache:Lcom/google/android/marvin/talkback/NotificationCache;

    invoke-direct {v6, p0, v7, v8}, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;-><init>(Landroid/content/Context;Lcom/google/android/marvin/talkback/SpeechController;Lcom/google/android/marvin/talkback/NotificationCache;)V

    .line 489
    iput-object v6, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mRingerModeAndScreenMonitor:Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;

    .line 492
    iget-object v6, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mRingerModeAndScreenMonitor:Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;

    iget-object v7, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mRingerModeAndScreenMonitor:Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;

    invoke-virtual {v7}, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->getFilter()Landroid/content/IntentFilter;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/google/android/marvin/talkback/TalkBackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 493
    iget-object v6, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mRingerModeAndScreenMonitor:Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;

    invoke-direct {p0, v6}, Lcom/google/android/marvin/talkback/TalkBackService;->addInfrastructureStateListener(Lcom/googlecode/eyesfree/utils/InfrastructureStateListener;)V

    .line 498
    :goto_4
    new-instance v6, Lcom/google/android/marvin/talkback/OrientationMonitor;

    iget-object v7, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mSpeechController:Lcom/google/android/marvin/talkback/SpeechController;

    invoke-direct {v6, p0, v7}, Lcom/google/android/marvin/talkback/OrientationMonitor;-><init>(Landroid/content/Context;Lcom/google/android/marvin/talkback/SpeechController;)V

    iput-object v6, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mOrientationMonitor:Lcom/google/android/marvin/talkback/OrientationMonitor;

    .line 501
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 502
    .local v3, prefs:Landroid/content/SharedPreferences;
    iget-object v6, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v3, v6}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 504
    invoke-direct {p0, v3}, Lcom/google/android/marvin/talkback/TalkBackService;->reloadPreferences(Landroid/content/SharedPreferences;)V

    .line 507
    invoke-static {}, Lcom/googlecode/eyesfree/utils/ClassLoadingManager;->getInstance()Lcom/googlecode/eyesfree/utils/ClassLoadingManager;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/google/android/marvin/talkback/TalkBackService;->addInfrastructureStateListener(Lcom/googlecode/eyesfree/utils/InfrastructureStateListener;)V

    .line 509
    sput-boolean v11, Lcom/google/android/marvin/talkback/TalkBackService;->sInfrastructureInitialized:Z

    .line 510
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/TalkBackService;->notifyInfrastructureStateListeners()V

    .line 513
    invoke-virtual {p0}, Lcom/google/android/marvin/talkback/TalkBackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 514
    .local v4, resolver:Landroid/content/ContentResolver;
    const-string v6, "touch_exploration_enabled"

    invoke-static {v4, v6, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v11, :cond_7

    .line 515
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/TalkBackService;->onTouchExplorationEnabled()V

    .line 520
    :goto_5
    return-void

    .line 445
    .end local v0           #deviceHasTouchscreen:Z
    .end local v1           #deviceIsPhone:Z
    .end local v2           #packageManager:Landroid/content/pm/PackageManager;
    .end local v3           #prefs:Landroid/content/SharedPreferences;
    .end local v4           #resolver:Landroid/content/ContentResolver;
    :cond_2
    iput-object v10, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mProcessorFollowFocus:Lcom/google/android/marvin/talkback/ProcessorFollowFocus;

    goto/16 :goto_0

    .line 452
    :cond_3
    iput-object v10, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mCursorController:Lcom/google/android/marvin/talkback/CursorController;

    goto/16 :goto_1

    .line 464
    :cond_4
    iput-object v10, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mVolumeMonitor:Lcom/google/android/marvin/talkback/VolumeMonitor;

    goto/16 :goto_2

    .line 479
    .restart local v1       #deviceIsPhone:Z
    .restart local v2       #packageManager:Landroid/content/pm/PackageManager;
    :cond_5
    iput-object v10, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mCallStateMonitor:Lcom/google/android/marvin/talkback/CallStateMonitor;

    goto :goto_3

    .line 495
    .restart local v0       #deviceHasTouchscreen:Z
    :cond_6
    iput-object v10, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mRingerModeAndScreenMonitor:Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;

    goto :goto_4

    .line 517
    .restart local v3       #prefs:Landroid/content/SharedPreferences;
    .restart local v4       #resolver:Landroid/content/ContentResolver;
    :cond_7
    const-string v6, "touch_exploration_enabled"

    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 518
    .local v5, touchExploreUri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mTouchExploreObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v12, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_5
.end method

.method public static isServiceInitialized()Z
    .locals 1

    .prologue
    .line 341
    sget-boolean v0, Lcom/google/android/marvin/talkback/TalkBackService;->sInfrastructureInitialized:Z

    return v0
.end method

.method private maintainExplorationState(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 682
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 684
    .local v0, eventType:I
    const/16 v1, 0x200

    if-ne v0, v1, :cond_1

    .line 685
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mIsUserTouchExploring:Z

    .line 690
    :cond_0
    :goto_0
    return-void

    .line 686
    :cond_1
    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    .line 687
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mIsUserTouchExploring:Z

    .line 688
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/TalkBackService;->speakCachedNotificationEvents()V

    goto :goto_0
.end method

.method private notifyInfrastructureStateListeners()V
    .locals 3

    .prologue
    .line 600
    iget-object v1, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mInfrastructureStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 603
    return-void

    .line 600
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/eyesfree/utils/InfrastructureStateListener;

    .line 601
    .local v0, listener:Lcom/googlecode/eyesfree/utils/InfrastructureStateListener;
    sget-boolean v2, Lcom/google/android/marvin/talkback/TalkBackService;->sInfrastructureInitialized:Z

    invoke-interface {v0, p0, v2}, Lcom/googlecode/eyesfree/utils/InfrastructureStateListener;->onInfrastructureStateChange(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method private onTouchExplorationEnabled()V
    .locals 5

    .prologue
    .line 808
    .line 807
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 810
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v3, "first_time_user"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 823
    :cond_0
    :goto_0
    return-void

    .line 814
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 815
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "first_time_user"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 816
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 818
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    .line 819
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 820
    .local v2, tutorial:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 821
    invoke-virtual {p0, v2}, Lcom/google/android/marvin/talkback/TalkBackService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private performCustomGesture(II)V
    .locals 5
    .parameter "keyResId"
    .parameter "defaultResId"

    .prologue
    .line 289
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 290
    .local v2, prefs:Landroid/content/SharedPreferences;
    invoke-virtual {p0, p1}, Lcom/google/android/marvin/talkback/TalkBackService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p0, p2}, Lcom/google/android/marvin/talkback/TalkBackService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, defaultValue:Ljava/lang/String;
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 294
    .local v3, value:Ljava/lang/String;
    const-string v4, "UNASSIGNED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    const-string v4, "BACK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 299
    const/4 v4, 0x1

    invoke-static {p0, v4}, Lcom/googlecode/eyesfree/compat/accessibilityservice/AccessibilityServiceCompatUtils;->performGlobalAction(Landroid/accessibilityservice/AccessibilityService;I)Z

    goto :goto_0

    .line 300
    :cond_2
    const-string v4, "HOME"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 301
    const/4 v4, 0x2

    invoke-static {p0, v4}, Lcom/googlecode/eyesfree/compat/accessibilityservice/AccessibilityServiceCompatUtils;->performGlobalAction(Landroid/accessibilityservice/AccessibilityService;I)Z

    goto :goto_0

    .line 302
    :cond_3
    const-string v4, "RECENTS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 303
    const/4 v4, 0x3

    invoke-static {p0, v4}, Lcom/googlecode/eyesfree/compat/accessibilityservice/AccessibilityServiceCompatUtils;->performGlobalAction(Landroid/accessibilityservice/AccessibilityService;I)Z

    goto :goto_0

    .line 304
    :cond_4
    const-string v4, "NOTIFICATIONS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 305
    const/4 v4, 0x4

    invoke-static {p0, v4}, Lcom/googlecode/eyesfree/compat/accessibilityservice/AccessibilityServiceCompatUtils;->performGlobalAction(Landroid/accessibilityservice/AccessibilityService;I)Z

    goto :goto_0
.end method

.method private processEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 729
    iget-object v1, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mEventListeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 732
    return-void

    .line 729
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/marvin/talkback/TalkBackService$EventListener;

    .line 730
    .local v0, eventProcessor:Lcom/google/android/marvin/talkback/TalkBackService$EventListener;
    invoke-interface {v0, p1}, Lcom/google/android/marvin/talkback/TalkBackService$EventListener;->process(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method private reloadPreferences(Landroid/content/SharedPreferences;)V
    .locals 9
    .parameter "prefs"

    .prologue
    .line 740
    invoke-virtual {p0}, Lcom/google/android/marvin/talkback/TalkBackService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 743
    .local v3, res:Landroid/content/res/Resources;
    const v7, 0x7f090001

    const v8, 0x7f090019

    .line 742
    invoke-static {p1, v3, v7, v8}, Lcom/googlecode/eyesfree/utils/SharedPreferencesUtils;->getIntFromStringPref(Landroid/content/SharedPreferences;Landroid/content/res/Resources;II)I

    move-result v4

    .line 744
    .local v4, ringerPref:I
    invoke-static {v4}, Lcom/google/android/marvin/talkback/TalkBackService$RingerPreference;->valueOf(I)Lcom/google/android/marvin/talkback/TalkBackService$RingerPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mRingerPref:Lcom/google/android/marvin/talkback/TalkBackService$RingerPreference;

    .line 747
    const v7, 0x7f090002

    const/high16 v8, 0x7f0b

    .line 746
    invoke-static {p1, v3, v7, v8}, Lcom/googlecode/eyesfree/utils/SharedPreferencesUtils;->getBooleanPref(Landroid/content/SharedPreferences;Landroid/content/res/Resources;II)Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mSpeakWhenScreenOff:Z

    .line 750
    const v7, 0x7f090003

    const v8, 0x7f0b0001

    .line 749
    invoke-static {p1, v3, v7, v8}, Lcom/googlecode/eyesfree/utils/SharedPreferencesUtils;->getBooleanPref(Landroid/content/SharedPreferences;Landroid/content/res/Resources;II)Z

    move-result v5

    .line 752
    .local v5, silenceOnProximity:Z
    iget-object v7, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mSpeechController:Lcom/google/android/marvin/talkback/SpeechController;

    invoke-virtual {v7, v5}, Lcom/google/android/marvin/talkback/SpeechController;->setSilenceOnProximity(Z)V

    .line 756
    const v7, 0x7f090009

    const v8, 0x7f09001b

    .line 755
    invoke-static {p1, v3, v7, v8}, Lcom/googlecode/eyesfree/utils/SharedPreferencesUtils;->getIntFromStringPref(Landroid/content/SharedPreferences;Landroid/content/res/Resources;II)I

    move-result v0

    .line 758
    .local v0, logLevel:I
    invoke-static {v0}, Lcom/googlecode/eyesfree/utils/LogUtils;->setLogLevel(I)V

    .line 760
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xe

    if-lt v7, v8, :cond_2

    const/4 v2, 0x1

    .line 762
    .local v2, overlaySupported:Z
    :goto_0
    const v7, 0x7f09000c

    .line 763
    const v8, 0x7f0b0005

    .line 761
    invoke-static {p1, v3, v7, v8}, Lcom/googlecode/eyesfree/utils/SharedPreferencesUtils;->getBooleanPref(Landroid/content/SharedPreferences;Landroid/content/res/Resources;II)Z

    move-result v1

    .line 765
    .local v1, overlayPref:Z
    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    iget-object v7, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mDeveloperOverlay:Lcom/google/android/marvin/talkback/DeveloperOverlay;

    if-nez v7, :cond_3

    .line 766
    new-instance v7, Lcom/google/android/marvin/talkback/DeveloperOverlay;

    invoke-direct {v7, p0}, Lcom/google/android/marvin/talkback/DeveloperOverlay;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mDeveloperOverlay:Lcom/google/android/marvin/talkback/DeveloperOverlay;

    .line 767
    iget-object v7, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mDeveloperOverlay:Lcom/google/android/marvin/talkback/DeveloperOverlay;

    invoke-virtual {v7}, Lcom/google/android/marvin/talkback/DeveloperOverlay;->show()V

    .line 773
    :cond_0
    :goto_1
    sget-boolean v7, Lcom/google/android/marvin/talkback/TalkBackService;->SUPPORTS_TOUCH_PREF:Z

    if-eqz v7, :cond_1

    .line 775
    const v7, 0x7f09000f

    const v8, 0x7f0b0008

    .line 774
    invoke-static {p1, v3, v7, v8}, Lcom/googlecode/eyesfree/utils/SharedPreferencesUtils;->getBooleanPref(Landroid/content/SharedPreferences;Landroid/content/res/Resources;II)Z

    move-result v6

    .line 776
    .local v6, touchExploration:Z
    invoke-direct {p0, v6}, Lcom/google/android/marvin/talkback/TalkBackService;->requestTouchExploration(Z)V

    .line 778
    .end local v6           #touchExploration:Z
    :cond_1
    return-void

    .line 760
    .end local v1           #overlayPref:Z
    .end local v2           #overlaySupported:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 768
    .restart local v1       #overlayPref:Z
    .restart local v2       #overlaySupported:Z
    :cond_3
    if-nez v1, :cond_0

    iget-object v7, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mDeveloperOverlay:Lcom/google/android/marvin/talkback/DeveloperOverlay;

    if-eqz v7, :cond_0

    .line 769
    iget-object v7, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mDeveloperOverlay:Lcom/google/android/marvin/talkback/DeveloperOverlay;

    invoke-virtual {v7}, Lcom/google/android/marvin/talkback/DeveloperOverlay;->hide()V

    .line 770
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mDeveloperOverlay:Lcom/google/android/marvin/talkback/DeveloperOverlay;

    goto :goto_1
.end method

.method private requestTouchExploration(Z)V
    .locals 3
    .parameter "requestedState"

    .prologue
    .line 786
    invoke-static {p0}, Lcom/googlecode/eyesfree/compat/accessibilityservice/AccessibilityServiceCompatUtils;->getServiceInfo(Landroid/accessibilityservice/AccessibilityService;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v1

    .line 788
    .local v1, info:Landroid/accessibilityservice/AccessibilityServiceInfo;
    iget v2, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    .line 787
    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 790
    .local v0, currentState:Z
    :goto_0
    if-ne v0, p1, :cond_1

    .line 801
    :goto_1
    return-void

    .line 787
    .end local v0           #currentState:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 794
    .restart local v0       #currentState:Z
    :cond_1
    if-eqz p1, :cond_2

    .line 795
    iget v2, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 800
    :goto_2
    invoke-virtual {p0, v1}, Lcom/google/android/marvin/talkback/TalkBackService;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    goto :goto_1

    .line 797
    :cond_2
    iget v2, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v2, v2, -0x5

    iput v2, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    goto :goto_2
.end method

.method private shouldDropEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 614
    if-nez p1, :cond_1

    .line 660
    :cond_0
    :goto_0
    return v5

    .line 619
    :cond_1
    sget-boolean v7, Lcom/google/android/marvin/talkback/TalkBackService;->sInfrastructureInitialized:Z

    if-eqz v7, :cond_0

    .line 624
    iget-object v7, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mLastSpokenEvent:Landroid/view/accessibility/AccessibilityEvent;

    invoke-static {v7, p1}, Lcom/google/android/marvin/talkback/AccessibilityEventUtils;->eventEquals(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 628
    iget-object v2, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mRingerPref:Lcom/google/android/marvin/talkback/TalkBackService$RingerPreference;

    .line 629
    .local v2, ringerPref:Lcom/google/android/marvin/talkback/TalkBackService$RingerPreference;
    iget-object v7, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 632
    .local v1, ringerMode:I
    sget-object v7, Lcom/google/android/marvin/talkback/TalkBackService$RingerPreference;->NOT_SILENT_OR_VIBRATE:Lcom/google/android/marvin/talkback/TalkBackService$RingerPreference;

    if-ne v2, v7, :cond_2

    .line 633
    if-eq v1, v5, :cond_0

    .line 634
    if-eqz v1, :cond_0

    .line 639
    :cond_2
    sget-object v7, Lcom/google/android/marvin/talkback/TalkBackService$RingerPreference;->NOT_SILENT:Lcom/google/android/marvin/talkback/TalkBackService$RingerPreference;

    if-ne v2, v7, :cond_3

    .line 640
    if-eqz v1, :cond_0

    .line 645
    :cond_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v7

    const/16 v8, 0x40

    if-ne v7, v8, :cond_5

    move v0, v5

    .line 646
    .local v0, isNotification:Z
    :goto_1
    iget-object v7, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mRingerModeAndScreenMonitor:Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;

    if-eqz v7, :cond_6

    .line 647
    iget-boolean v7, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mSpeakWhenScreenOff:Z

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mRingerModeAndScreenMonitor:Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;

    invoke-virtual {v7}, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->isScreenOff()Z

    move-result v7

    if-eqz v7, :cond_6

    move v3, v5

    .line 648
    .local v3, silencedByScreen:Z
    :goto_2
    iget-boolean v7, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mIsUserTouchExploring:Z

    if-eqz v7, :cond_7

    if-eqz v0, :cond_7

    move v4, v5

    .line 652
    .local v4, silencedByTouch:Z
    :goto_3
    if-nez v3, :cond_4

    if-eqz v4, :cond_8

    .line 653
    :cond_4
    if-eqz v0, :cond_0

    .line 654
    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/TalkBackService;->cacheNotificationEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    .end local v0           #isNotification:Z
    .end local v3           #silencedByScreen:Z
    .end local v4           #silencedByTouch:Z
    :cond_5
    move v0, v6

    .line 645
    goto :goto_1

    .restart local v0       #isNotification:Z
    :cond_6
    move v3, v6

    .line 647
    goto :goto_2

    .restart local v3       #silencedByScreen:Z
    :cond_7
    move v4, v6

    .line 648
    goto :goto_3

    .restart local v4       #silencedByTouch:Z
    :cond_8
    move v5, v6

    .line 660
    goto :goto_0
.end method

.method private shutdownInfrastructure()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 526
    sget-boolean v2, Lcom/google/android/marvin/talkback/TalkBackService;->sInfrastructureInitialized:Z

    if-nez v2, :cond_1

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 530
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/marvin/talkback/TalkBackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 531
    .local v1, resolver:Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mTouchExploreObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 534
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 535
    .local v0, prefs:Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 537
    iget-object v2, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mDeveloperOverlay:Lcom/google/android/marvin/talkback/DeveloperOverlay;

    if-eqz v2, :cond_2

    .line 538
    iget-object v2, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mDeveloperOverlay:Lcom/google/android/marvin/talkback/DeveloperOverlay;

    invoke-virtual {v2}, Lcom/google/android/marvin/talkback/DeveloperOverlay;->hide()V

    .line 539
    iput-object v3, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mDeveloperOverlay:Lcom/google/android/marvin/talkback/DeveloperOverlay;

    .line 542
    :cond_2
    iget-object v2, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mTtsOverlay:Lcom/google/android/marvin/talkback/TextToSpeechOverlay;

    if-eqz v2, :cond_3

    .line 543
    iget-object v2, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mTtsOverlay:Lcom/google/android/marvin/talkback/TextToSpeechOverlay;

    invoke-virtual {v2}, Lcom/google/android/marvin/talkback/TextToSpeechOverlay;->hide()V

    .line 544
    iput-object v3, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mTtsOverlay:Lcom/google/android/marvin/talkback/TextToSpeechOverlay;

    .line 547
    :cond_3
    iget-object v2, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mVolumeMonitor:Lcom/google/android/marvin/talkback/VolumeMonitor;

    if-eqz v2, :cond_4

    .line 548
    iget-object v2, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mVolumeMonitor:Lcom/google/android/marvin/talkback/VolumeMonitor;

    invoke-virtual {v2}, Lcom/google/android/marvin/talkback/VolumeMonitor;->shutdown()V

    .line 549
    iput-object v3, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mVolumeMonitor:Lcom/google/android/marvin/talkback/VolumeMonitor;

    .line 552
    :cond_4
    iget-object v2, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mCallStateMonitor:Lcom/google/android/marvin/talkback/CallStateMonitor;

    if-eqz v2, :cond_5

    .line 553
    iget-object v2, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mCallStateMonitor:Lcom/google/android/marvin/talkback/CallStateMonitor;

    invoke-virtual {p0, v2}, Lcom/google/android/marvin/talkback/TalkBackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 554
    iput-object v3, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mCallStateMonitor:Lcom/google/android/marvin/talkback/CallStateMonitor;

    .line 557
    :cond_5
    iget-object v2, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mRingerModeAndScreenMonitor:Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;

    if-eqz v2, :cond_6

    .line 558
    iget-object v2, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mRingerModeAndScreenMonitor:Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;

    invoke-virtual {p0, v2}, Lcom/google/android/marvin/talkback/TalkBackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 559
    iput-object v3, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mRingerModeAndScreenMonitor:Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;

    .line 562
    :cond_6
    iget-object v2, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mOrientationMonitor:Lcom/google/android/marvin/talkback/OrientationMonitor;

    invoke-virtual {v2}, Lcom/google/android/marvin/talkback/OrientationMonitor;->shutdown()V

    .line 563
    iput-object v3, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mOrientationMonitor:Lcom/google/android/marvin/talkback/OrientationMonitor;

    .line 566
    const/4 v2, 0x0

    sput-boolean v2, Lcom/google/android/marvin/talkback/TalkBackService;->sInfrastructureInitialized:Z

    .line 567
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/TalkBackService;->notifyInfrastructureStateListeners()V

    .line 568
    iget-object v2, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mInfrastructureStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 571
    iget-object v2, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mEventListeners:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 572
    iput-object v3, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mProcessorFollowFocus:Lcom/google/android/marvin/talkback/ProcessorFollowFocus;

    .line 574
    iget-object v2, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mFeedbackController:Lcom/google/android/marvin/talkback/PreferenceFeedbackController;

    invoke-virtual {v2}, Lcom/google/android/marvin/talkback/PreferenceFeedbackController;->shutdown()V

    .line 575
    iput-object v3, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mFeedbackController:Lcom/google/android/marvin/talkback/PreferenceFeedbackController;

    .line 577
    iget-object v2, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mSpeechController:Lcom/google/android/marvin/talkback/SpeechController;

    invoke-virtual {v2}, Lcom/google/android/marvin/talkback/SpeechController;->shutdown()V

    .line 578
    iput-object v3, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mSpeechController:Lcom/google/android/marvin/talkback/SpeechController;

    .line 580
    iget-object v2, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mNotificationCache:Lcom/google/android/marvin/talkback/NotificationCache;

    invoke-virtual {v2}, Lcom/google/android/marvin/talkback/NotificationCache;->clear()V

    .line 581
    iput-object v3, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mNotificationCache:Lcom/google/android/marvin/talkback/NotificationCache;

    .line 583
    iget-object v2, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mCursorController:Lcom/google/android/marvin/talkback/CursorController;

    if-eqz v2, :cond_0

    .line 584
    iget-object v2, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mCursorController:Lcom/google/android/marvin/talkback/CursorController;

    invoke-virtual {v2}, Lcom/google/android/marvin/talkback/CursorController;->shutdown()V

    .line 585
    iput-object v3, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mCursorController:Lcom/google/android/marvin/talkback/CursorController;

    goto/16 :goto_0
.end method

.method private speakCachedNotificationEvents()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 696
    iget-object v2, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mNotificationCache:Lcom/google/android/marvin/talkback/NotificationCache;

    invoke-virtual {v2}, Lcom/google/android/marvin/talkback/NotificationCache;->getFormattedSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .line 698
    .local v0, notificationSummary:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 700
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0x7f090055

    invoke-virtual {p0, v4}, Lcom/google/android/marvin/talkback/TalkBackService;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    .line 699
    invoke-static {v5, v2}, Lcom/google/android/marvin/utils/StringBuilderUtils;->appendWithSeparator(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 702
    .local v1, text:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mSpeechController:Lcom/google/android/marvin/talkback/SpeechController;

    sget-object v3, Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;->INTERRUPT:Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;

    invoke-virtual {v2, v1, v3, v5}, Lcom/google/android/marvin/talkback/SpeechController;->cleanUpAndSpeak(Ljava/lang/CharSequence;Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;Landroid/os/Bundle;)V

    .line 705
    .end local v1           #text:Ljava/lang/StringBuilder;
    :cond_0
    iget-object v2, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mNotificationCache:Lcom/google/android/marvin/talkback/NotificationCache;

    invoke-virtual {v2}, Lcom/google/android/marvin/talkback/NotificationCache;->clear()V

    .line 706
    return-void
.end method


# virtual methods
.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/TalkBackService;->shouldDropEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 208
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/TalkBackService;->maintainExplorationState(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 209
    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/TalkBackService;->cacheEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 210
    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/TalkBackService;->processEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mOrientationMonitor:Lcom/google/android/marvin/talkback/OrientationMonitor;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mOrientationMonitor:Lcom/google/android/marvin/talkback/OrientationMonitor;

    invoke-virtual {v0, p1}, Lcom/google/android/marvin/talkback/OrientationMonitor;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 193
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 182
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onCreate()V

    .line 186
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 197
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onDestroy()V

    .line 199
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/TalkBackService;->shutdownInfrastructure()V

    .line 200
    return-void
.end method

.method public onGesture(I)Z
    .locals 7
    .parameter "gestureId"

    .prologue
    const v6, 0x7f050002

    const/4 v5, 0x1

    .line 215
    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mCursorController:Lcom/google/android/marvin/talkback/CursorController;

    if-nez v0, :cond_1

    .line 279
    :cond_0
    :goto_0
    return v5

    .line 220
    :cond_1
    const/4 v0, 0x2

    const-string v1, "Recognized gesture %s"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v0, v1, v2}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 224
    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mSpeechController:Lcom/google/android/marvin/talkback/SpeechController;

    invoke-virtual {v0}, Lcom/google/android/marvin/talkback/SpeechController;->stopAll()V

    .line 227
    packed-switch p1, :pswitch_data_0

    .line 259
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 269
    :pswitch_0
    const v0, 0x7f090015

    .line 270
    const v1, 0x7f09001d

    .line 269
    invoke-direct {p0, v0, v1}, Lcom/google/android/marvin/talkback/TalkBackService;->performCustomGesture(II)V

    goto :goto_0

    .line 230
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mCursorController:Lcom/google/android/marvin/talkback/CursorController;

    invoke-virtual {v0}, Lcom/google/android/marvin/talkback/CursorController;->previous()Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mFeedbackController:Lcom/google/android/marvin/talkback/PreferenceFeedbackController;

    invoke-virtual {v0, v6}, Lcom/google/android/marvin/talkback/PreferenceFeedbackController;->playSound(I)Z

    goto :goto_0

    .line 236
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mCursorController:Lcom/google/android/marvin/talkback/CursorController;

    invoke-virtual {v0}, Lcom/google/android/marvin/talkback/CursorController;->next()Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mFeedbackController:Lcom/google/android/marvin/talkback/PreferenceFeedbackController;

    invoke-virtual {v0, v6}, Lcom/google/android/marvin/talkback/PreferenceFeedbackController;->playSound(I)Z

    goto :goto_0

    .line 241
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mCursorController:Lcom/google/android/marvin/talkback/CursorController;

    invoke-virtual {v0}, Lcom/google/android/marvin/talkback/CursorController;->previousGranularity()Z

    goto :goto_0

    .line 244
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mCursorController:Lcom/google/android/marvin/talkback/CursorController;

    invoke-virtual {v0}, Lcom/google/android/marvin/talkback/CursorController;->nextGranularity()Z

    goto :goto_0

    .line 247
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mCursorController:Lcom/google/android/marvin/talkback/CursorController;

    invoke-virtual {v0}, Lcom/google/android/marvin/talkback/CursorController;->less()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mFeedbackController:Lcom/google/android/marvin/talkback/PreferenceFeedbackController;

    invoke-virtual {v0, v6}, Lcom/google/android/marvin/talkback/PreferenceFeedbackController;->playSound(I)Z

    goto :goto_0

    .line 252
    :pswitch_6
    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mCursorController:Lcom/google/android/marvin/talkback/CursorController;

    invoke-virtual {v0}, Lcom/google/android/marvin/talkback/CursorController;->more()Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mFeedbackController:Lcom/google/android/marvin/talkback/PreferenceFeedbackController;

    invoke-virtual {v0, v6}, Lcom/google/android/marvin/talkback/PreferenceFeedbackController;->playSound(I)Z

    goto :goto_0

    .line 261
    :pswitch_7
    const v0, 0x7f090017

    .line 262
    const v1, 0x7f09001f

    .line 261
    invoke-direct {p0, v0, v1}, Lcom/google/android/marvin/talkback/TalkBackService;->performCustomGesture(II)V

    goto :goto_0

    .line 265
    :pswitch_8
    const v0, 0x7f090018

    .line 266
    const v1, 0x7f090020

    .line 265
    invoke-direct {p0, v0, v1}, Lcom/google/android/marvin/talkback/TalkBackService;->performCustomGesture(II)V

    goto :goto_0

    .line 273
    :pswitch_9
    const v0, 0x7f090016

    .line 274
    const v1, 0x7f09001e

    .line 273
    invoke-direct {p0, v0, v1}, Lcom/google/android/marvin/talkback/TalkBackService;->performCustomGesture(II)V

    goto/16 :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 259
    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_0
        :pswitch_9
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onInterrupt()V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mSpeechController:Lcom/google/android/marvin/talkback/SpeechController;

    invoke-virtual {v0}, Lcom/google/android/marvin/talkback/SpeechController;->interrupt()V

    .line 312
    return-void
.end method

.method protected onServiceConnected()V
    .locals 3

    .prologue
    .line 316
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_0

    .line 317
    new-instance v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-direct {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>()V

    .line 318
    .local v0, info:Landroid/accessibilityservice/AccessibilityServiceInfo;
    const/4 v1, -0x1

    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    .line 319
    iget v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    .line 320
    iget v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    .line 321
    iget v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    .line 322
    iget v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 323
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    .line 324
    invoke-virtual {p0, v0}, Lcom/google/android/marvin/talkback/TalkBackService;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 327
    .end local v0           #info:Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_0
    iget-object v1, p0, Lcom/google/android/marvin/talkback/TalkBackService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/marvin/talkback/TalkBackService$4;

    invoke-direct {v2, p0}, Lcom/google/android/marvin/talkback/TalkBackService$4;-><init>(Lcom/google/android/marvin/talkback/TalkBackService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 335
    return-void
.end method
