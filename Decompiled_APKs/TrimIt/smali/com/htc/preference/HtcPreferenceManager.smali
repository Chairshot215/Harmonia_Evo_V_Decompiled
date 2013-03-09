.class public Lcom/htc/preference/HtcPreferenceManager;
.super Ljava/lang/Object;
.source "HtcPreferenceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/preference/HtcPreferenceManager$OnActivityDestroyListener;,
        Lcom/htc/preference/HtcPreferenceManager$OnActivityStopListener;,
        Lcom/htc/preference/HtcPreferenceManager$OnActivityResultListener;,
        Lcom/htc/preference/HtcPreferenceManager$OnPreferenceTreeClickListener;
    }
.end annotation


# static fields
.field public static final KEY_HAS_SET_DEFAULT_VALUES:Ljava/lang/String; = "_has_set_default_values"

.field public static final METADATA_KEY_PREFERENCES:Ljava/lang/String; = "android.preference"

.field private static final TAG:Ljava/lang/String; = "PreferenceManager"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mActivityDestroyListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/preference/HtcPreferenceManager$OnActivityDestroyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityResultListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/preference/HtcPreferenceManager$OnActivityResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityStopListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/preference/HtcPreferenceManager$OnActivityStopListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mFragment:Lcom/htc/preference/HtcPreferenceFragment;

.field private mNextId:J

.field private mNextRequestCode:I

.field private mNoCommit:Z

.field private mOnPreferenceTreeClickListener:Lcom/htc/preference/HtcPreferenceManager$OnPreferenceTreeClickListener;

.field private mPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

.field private mPreferencesScreens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/DialogInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSharedPreferencesMode:I

.field private mSharedPreferencesName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;I)V
    .locals 2
    .parameter "activity"
    .parameter "firstRequestCode"

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/preference/HtcPreferenceManager;->mNextId:J

    .line 142
    iput-object p1, p0, Lcom/htc/preference/HtcPreferenceManager;->mActivity:Landroid/app/Activity;

    .line 143
    iput p2, p0, Lcom/htc/preference/HtcPreferenceManager;->mNextRequestCode:I

    .line 145
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreferenceManager;->init(Landroid/content/Context;)V

    .line 146
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/preference/HtcPreferenceManager;->mNextId:J

    .line 157
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreferenceManager;->init(Landroid/content/Context;)V

    .line 158
    return-void
.end method

.method private dismissAllScreens()V
    .locals 3

    .prologue
    .line 730
    monitor-enter p0

    .line 732
    :try_start_0
    iget-object v2, p0, Lcom/htc/preference/HtcPreferenceManager;->mPreferencesScreens:Ljava/util/List;

    if-nez v2, :cond_1

    .line 733
    monitor-exit p0

    .line 743
    :cond_0
    return-void

    .line 736
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/preference/HtcPreferenceManager;->mPreferencesScreens:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 737
    .local v1, screensToDismiss:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/DialogInterface;>;"
    iget-object v2, p0, Lcom/htc/preference/HtcPreferenceManager;->mPreferencesScreens:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 738
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 740
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 741
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/DialogInterface;

    invoke-interface {v2}, Landroid/content/DialogInterface;->dismiss()V

    .line 740
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 738
    .end local v0           #i:I
    .end local v1           #screensToDismiss:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/DialogInterface;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .parameter "context"

    .prologue
    .line 364
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferencesMode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultSharedPreferencesMode()I
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x0

    return v0
.end method

.method private static getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/htc/preference/HtcPreferenceManager;->mContext:Landroid/content/Context;

    .line 163
    invoke-static {p1}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method private queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;
    .locals 2
    .parameter "queryIntent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static setDefaultValues(Landroid/content/Context;IZ)V
    .locals 2
    .parameter "context"
    .parameter "resId"
    .parameter "readAgain"

    .prologue
    .line 438
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferencesMode()I

    move-result v1

    invoke-static {p0, v0, v1, p1, p2}, Lcom/htc/preference/HtcPreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 440
    return-void
.end method

.method public static setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V
    .locals 5
    .parameter "context"
    .parameter "sharedPreferencesName"
    .parameter "sharedPreferencesMode"
    .parameter "resId"
    .parameter "readAgain"

    .prologue
    const/4 v3, 0x0

    .line 453
    const-string v2, "_has_set_default_values"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 456
    .local v0, defaultValueSp:Landroid/content/SharedPreferences;
    if-nez p4, :cond_0

    const-string v2, "_has_set_default_values"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 457
    :cond_0
    new-instance v1, Lcom/htc/preference/HtcPreferenceManager;

    invoke-direct {v1, p0}, Lcom/htc/preference/HtcPreferenceManager;-><init>(Landroid/content/Context;)V

    .line 458
    .local v1, pm:Lcom/htc/preference/HtcPreferenceManager;
    invoke-virtual {v1, p1}, Lcom/htc/preference/HtcPreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 459
    invoke-virtual {v1, p2}, Lcom/htc/preference/HtcPreferenceManager;->setSharedPreferencesMode(I)V

    .line 460
    const/4 v2, 0x0

    invoke-virtual {v1, p0, p3, v2}, Lcom/htc/preference/HtcPreferenceManager;->inflateFromResource(Landroid/content/Context;ILcom/htc/preference/HtcPreferenceScreen;)Lcom/htc/preference/HtcPreferenceScreen;

    .line 462
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "_has_set_default_values"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 464
    .end local v1           #pm:Lcom/htc/preference/HtcPreferenceManager;
    :cond_1
    return-void
.end method

.method private setNoCommit(Z)V
    .locals 1
    .parameter "noCommit"

    .prologue
    .line 499
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 503
    :cond_0
    iput-boolean p1, p0, Lcom/htc/preference/HtcPreferenceManager;->mNoCommit:Z

    .line 504
    return-void
.end method


# virtual methods
.method addPreferencesScreen(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "screen"

    .prologue
    .line 696
    monitor-enter p0

    .line 698
    :try_start_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceManager;->mPreferencesScreens:Ljava/util/List;

    if-nez v0, :cond_0

    .line 699
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceManager;->mPreferencesScreens:Ljava/util/List;

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceManager;->mPreferencesScreens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 703
    monitor-exit p0

    .line 704
    return-void

    .line 703
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;
    .locals 2
    .parameter "context"

    .prologue
    .line 277
    new-instance v0, Lcom/htc/preference/HtcPreferenceScreen;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/htc/preference/HtcPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 278
    .local v0, preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcPreferenceScreen;->onAttachedToHierarchy(Lcom/htc/preference/HtcPreferenceManager;)V

    .line 279
    return-object v0
.end method

.method dispatchActivityDestroy()V
    .locals 5

    .prologue
    .line 663
    const/4 v2, 0x0

    .line 665
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/preference/HtcPreferenceManager$OnActivityDestroyListener;>;"
    monitor-enter p0

    .line 666
    :try_start_0
    iget-object v4, p0, Lcom/htc/preference/HtcPreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 667
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/htc/preference/HtcPreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/preference/HtcPreferenceManager$OnActivityDestroyListener;>;"
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/preference/HtcPreferenceManager$OnActivityDestroyListener;>;"
    move-object v2, v3

    .line 669
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/preference/HtcPreferenceManager$OnActivityDestroyListener;>;"
    .restart local v2       #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/preference/HtcPreferenceManager$OnActivityDestroyListener;>;"
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    if-eqz v2, :cond_1

    .line 672
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 673
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 674
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/preference/HtcPreferenceManager$OnActivityDestroyListener;

    invoke-interface {v4}, Lcom/htc/preference/HtcPreferenceManager$OnActivityDestroyListener;->onActivityDestroy()V

    .line 673
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 669
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 679
    :cond_1
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceManager;->dismissAllScreens()V

    .line 680
    return-void
.end method

.method dispatchActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 567
    monitor-enter p0

    .line 568
    :try_start_0
    iget-object v3, p0, Lcom/htc/preference/HtcPreferenceManager;->mActivityResultListeners:Ljava/util/List;

    if-nez v3, :cond_1

    monitor-exit p0

    .line 578
    :cond_0
    return-void

    .line 569
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/htc/preference/HtcPreferenceManager;->mActivityResultListeners:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 570
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/preference/HtcPreferenceManager$OnActivityResultListener;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 572
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 573
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 574
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcPreferenceManager$OnActivityResultListener;

    invoke-interface {v3, p1, p2, p3}, Lcom/htc/preference/HtcPreferenceManager$OnActivityResultListener;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 573
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 570
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/preference/HtcPreferenceManager$OnActivityResultListener;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method dispatchActivityStop()V
    .locals 4

    .prologue
    .line 617
    monitor-enter p0

    .line 618
    :try_start_0
    iget-object v3, p0, Lcom/htc/preference/HtcPreferenceManager;->mActivityStopListeners:Ljava/util/List;

    if-nez v3, :cond_1

    monitor-exit p0

    .line 626
    :cond_0
    return-void

    .line 619
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/htc/preference/HtcPreferenceManager;->mActivityStopListeners:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 620
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/preference/HtcPreferenceManager$OnActivityStopListener;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 622
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 623
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 624
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcPreferenceManager$OnActivityStopListener;

    invoke-interface {v3}, Lcom/htc/preference/HtcPreferenceManager$OnActivityStopListener;->onActivityStop()V

    .line 623
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 620
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/preference/HtcPreferenceManager$OnActivityStopListener;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method dispatchNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 723
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceManager;->dismissAllScreens()V

    .line 724
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;
    .locals 1
    .parameter "key"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceManager;->mPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    if-nez v0, :cond_0

    .line 409
    const/4 v0, 0x0

    .line 412
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceManager;->mPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v0, p1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    goto :goto_0
.end method

.method getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 476
    iget-boolean v0, p0, Lcom/htc/preference/HtcPreferenceManager;->mNoCommit:Z

    if-eqz v0, :cond_1

    .line 477
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    .line 478
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 483
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    goto :goto_0
.end method

.method getFragment()Lcom/htc/preference/HtcPreferenceFragment;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceManager;->mFragment:Lcom/htc/preference/HtcPreferenceFragment;

    return-object v0
.end method

.method getNextId()J
    .locals 4

    .prologue
    .line 288
    monitor-enter p0

    .line 289
    :try_start_0
    iget-wide v0, p0, Lcom/htc/preference/HtcPreferenceManager;->mNextId:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/htc/preference/HtcPreferenceManager;->mNextId:J

    monitor-exit p0

    return-wide v0

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getNextRequestCode()I
    .locals 2

    .prologue
    .line 690
    monitor-enter p0

    .line 691
    :try_start_0
    iget v0, p0, Lcom/htc/preference/HtcPreferenceManager;->mNextRequestCode:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/preference/HtcPreferenceManager;->mNextRequestCode:I

    monitor-exit p0

    return v0

    .line 692
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getOnPreferenceTreeClickListener()Lcom/htc/preference/HtcPreferenceManager$OnPreferenceTreeClickListener;
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceManager;->mOnPreferenceTreeClickListener:Lcom/htc/preference/HtcPreferenceManager$OnPreferenceTreeClickListener;

    return-object v0
.end method

.method getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceManager;->mPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 347
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/preference/HtcPreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    iget v2, p0, Lcom/htc/preference/HtcPreferenceManager;->mSharedPreferencesMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getSharedPreferencesMode()I
    .locals 1

    .prologue
    .line 324
    iget v0, p0, Lcom/htc/preference/HtcPreferenceManager;->mSharedPreferencesMode:I

    return v0
.end method

.method public getSharedPreferencesName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    return-object v0
.end method

.method inflateFromIntent(Landroid/content/Intent;Lcom/htc/preference/HtcPreferenceScreen;)Lcom/htc/preference/HtcPreferenceScreen;
    .locals 13
    .parameter "queryIntent"
    .parameter "rootPreferences"

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreferenceManager;->queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    .line 209
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 211
    .local v5, inflatedRes:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v4, v10, -0x1

    .local v4, i:I
    :goto_0
    if-ltz v4, :cond_2

    .line 212
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v1, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 213
    .local v1, activityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 215
    .local v7, metaData:Landroid/os/Bundle;
    if-eqz v7, :cond_0

    const-string v10, "android.preference"

    invoke-virtual {v7, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 211
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 221
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v12, "android.preference"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 224
    .local v9, uniqueResId:Ljava/lang/String;
    invoke-virtual {v5, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 225
    invoke-virtual {v5, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 229
    :try_start_0
    iget-object v10, p0, Lcom/htc/preference/HtcPreferenceManager;->mContext:Landroid/content/Context;

    iget-object v11, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 236
    .local v2, context:Landroid/content/Context;
    new-instance v6, Lcom/htc/preference/HtcPreferenceInflater;

    invoke-direct {v6, v2, p0}, Lcom/htc/preference/HtcPreferenceInflater;-><init>(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceManager;)V

    .line 237
    .local v6, inflater:Lcom/htc/preference/HtcPreferenceInflater;
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "android.preference"

    invoke-virtual {v1, v10, v11}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    .line 239
    .local v8, parser:Landroid/content/res/XmlResourceParser;
    const/4 v10, 0x1

    invoke-virtual {v6, v8, p2, v10}, Lcom/htc/preference/HtcPreferenceInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Lcom/htc/preference/HtcGenericInflater$Parent;Z)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Lcom/htc/preference/HtcPreferenceScreen;

    .line 241
    .restart local p2
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .line 230
    .end local v2           #context:Landroid/content/Context;
    .end local v6           #inflater:Lcom/htc/preference/HtcPreferenceInflater;
    .end local v8           #parser:Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v3

    .line 231
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "PreferenceManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not create context for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 245
    .end local v1           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7           #metaData:Landroid/os/Bundle;
    .end local v9           #uniqueResId:Ljava/lang/String;
    :cond_2
    invoke-virtual {p2, p0}, Lcom/htc/preference/HtcPreferenceScreen;->onAttachedToHierarchy(Lcom/htc/preference/HtcPreferenceManager;)V

    .line 247
    return-object p2
.end method

.method public inflateFromResource(Landroid/content/Context;ILcom/htc/preference/HtcPreferenceScreen;)Lcom/htc/preference/HtcPreferenceScreen;
    .locals 2
    .parameter "context"
    .parameter "resId"
    .parameter "rootPreferences"

    .prologue
    const/4 v1, 0x1

    .line 264
    invoke-direct {p0, v1}, Lcom/htc/preference/HtcPreferenceManager;->setNoCommit(Z)V

    .line 266
    new-instance v0, Lcom/htc/preference/HtcPreferenceInflater;

    invoke-direct {v0, p1, p0}, Lcom/htc/preference/HtcPreferenceInflater;-><init>(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceManager;)V

    .line 267
    .local v0, inflater:Lcom/htc/preference/HtcPreferenceInflater;
    invoke-virtual {v0, p2, p3, v1}, Lcom/htc/preference/HtcPreferenceInflater;->inflate(ILcom/htc/preference/HtcGenericInflater$Parent;Z)Ljava/lang/Object;

    move-result-object p3

    .end local p3
    check-cast p3, Lcom/htc/preference/HtcPreferenceScreen;

    .line 268
    .restart local p3
    invoke-virtual {p3, p0}, Lcom/htc/preference/HtcPreferenceScreen;->onAttachedToHierarchy(Lcom/htc/preference/HtcPreferenceManager;)V

    .line 271
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/preference/HtcPreferenceManager;->setNoCommit(Z)V

    .line 273
    return-object p3
.end method

.method public registerOnActivityDestroyListener(Lcom/htc/preference/HtcPreferenceManager$OnActivityDestroyListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 634
    monitor-enter p0

    .line 635
    :try_start_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 636
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 640
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    :cond_1
    monitor-exit p0

    .line 643
    return-void

    .line 642
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method registerOnActivityResultListener(Lcom/htc/preference/HtcPreferenceManager$OnActivityResultListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 537
    monitor-enter p0

    .line 538
    :try_start_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceManager;->mActivityResultListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 539
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceManager;->mActivityResultListeners:Ljava/util/List;

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceManager;->mActivityResultListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 543
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceManager;->mActivityResultListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    :cond_1
    monitor-exit p0

    .line 546
    return-void

    .line 545
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method registerOnActivityStopListener(Lcom/htc/preference/HtcPreferenceManager$OnActivityStopListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 586
    monitor-enter p0

    .line 587
    :try_start_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceManager;->mActivityStopListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 588
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceManager;->mActivityStopListeners:Ljava/util/List;

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceManager;->mActivityStopListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 592
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceManager;->mActivityStopListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 594
    :cond_1
    monitor-exit p0

    .line 595
    return-void

    .line 594
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method removePreferencesScreen(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "screen"

    .prologue
    .line 707
    monitor-enter p0

    .line 709
    :try_start_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceManager;->mPreferencesScreens:Ljava/util/List;

    if-nez v0, :cond_0

    .line 710
    monitor-exit p0

    .line 715
    :goto_0
    return-void

    .line 713
    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceManager;->mPreferencesScreens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 714
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setFragment(Lcom/htc/preference/HtcPreferenceFragment;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/htc/preference/HtcPreferenceManager;->mFragment:Lcom/htc/preference/HtcPreferenceFragment;

    .line 171
    return-void
.end method

.method setOnPreferenceTreeClickListener(Lcom/htc/preference/HtcPreferenceManager$OnPreferenceTreeClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 752
    iput-object p1, p0, Lcom/htc/preference/HtcPreferenceManager;->mOnPreferenceTreeClickListener:Lcom/htc/preference/HtcPreferenceManager$OnPreferenceTreeClickListener;

    .line 753
    return-void
.end method

.method setPreferences(Lcom/htc/preference/HtcPreferenceScreen;)Z
    .locals 1
    .parameter "preferenceScreen"

    .prologue
    .line 392
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceManager;->mPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    if-eq p1, v0, :cond_0

    .line 393
    iput-object p1, p0, Lcom/htc/preference/HtcPreferenceManager;->mPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    .line 394
    const/4 v0, 0x1

    .line 397
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSharedPreferencesMode(I)V
    .locals 1
    .parameter "sharedPreferencesMode"

    .prologue
    .line 335
    iput p1, p0, Lcom/htc/preference/HtcPreferenceManager;->mSharedPreferencesMode:I

    .line 336
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 337
    return-void
.end method

.method public setSharedPreferencesName(Ljava/lang/String;)V
    .locals 1
    .parameter "sharedPreferencesName"

    .prologue
    .line 312
    iput-object p1, p0, Lcom/htc/preference/HtcPreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    .line 313
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 314
    return-void
.end method

.method shouldCommit()Z
    .locals 1

    .prologue
    .line 495
    iget-boolean v0, p0, Lcom/htc/preference/HtcPreferenceManager;->mNoCommit:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method unregisterOnActivityDestroyListener(Lcom/htc/preference/HtcPreferenceManager$OnActivityDestroyListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 651
    monitor-enter p0

    .line 652
    :try_start_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 655
    :cond_0
    monitor-exit p0

    .line 656
    return-void

    .line 655
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method unregisterOnActivityResultListener(Lcom/htc/preference/HtcPreferenceManager$OnActivityResultListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 554
    monitor-enter p0

    .line 555
    :try_start_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceManager;->mActivityResultListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceManager;->mActivityResultListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 558
    :cond_0
    monitor-exit p0

    .line 559
    return-void

    .line 558
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method unregisterOnActivityStopListener(Lcom/htc/preference/HtcPreferenceManager$OnActivityStopListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 603
    monitor-enter p0

    .line 604
    :try_start_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceManager;->mActivityStopListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceManager;->mActivityStopListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 607
    :cond_0
    monitor-exit p0

    .line 608
    return-void

    .line 607
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
