.class public final Lcom/android/settings/framework/preference/display/HtcTVOutPreference;
.super Lcom/htc/preference/HtcDialogPreference;
.source "HtcTVOutPreference.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnPauseListener;


# static fields
.field public static final KEY:Ljava/lang/String; = "TV_OUT"

.field private static final TARGET_CLASS:Ljava/lang/String; = "com.htc.android.tvout.SettingActivity"

.field private static final TARGET_PACKAGE:Ljava/lang/String; = "com.htc.android.tvout"


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mObserver:Landroid/database/ContentObserver;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/display/HtcTVOutPreference;->initialize(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/display/HtcTVOutPreference;->initialize(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/preference/display/HtcTVOutPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/settings/framework/preference/display/HtcTVOutPreference;->updateSummary()V

    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcTVOutPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 61
    const-string v1, "TV_OUT"

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/display/HtcTVOutPreference;->setKey(Ljava/lang/String;)V

    .line 63
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/preference/display/HtcTVOutPreference;->mResolver:Landroid/content/ContentResolver;

    .line 65
    new-instance v1, Lcom/android/settings/framework/preference/display/HtcTVOutPreference$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/settings/framework/preference/display/HtcTVOutPreference$1;-><init>(Lcom/android/settings/framework/preference/display/HtcTVOutPreference;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings/framework/preference/display/HtcTVOutPreference;->mObserver:Landroid/database/ContentObserver;

    .line 75
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/display/HtcTVOutPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 77
    const v1, 0x7f0c03c1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/display/HtcTVOutPreference;->setTitle(I)V

    .line 79
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.htc.android.tvout"

    const-string v3, "com.htc.android.tvout.SettingActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 81
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/display/HtcTVOutPreference;->setIntent(Landroid/content/Intent;)V

    .line 83
    return-void
.end method

.method private updateSummary()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 105
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/HtcTVOutPreference;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/preference/display/HtcTVOutPreference;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/HtcTVOutPreference;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/settings/framework/preference/display/HtcTVOutPreference;->mObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 107
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/HtcTVOutPreference;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/HtcTVOutPreference;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "content://com.htc.android.tvout.setting"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/display/HtcTVOutPreference;->mCursor:Landroid/database/Cursor;

    .line 114
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/HtcTVOutPreference;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/framework/preference/display/HtcTVOutPreference;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/HtcTVOutPreference;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/display/HtcTVOutPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/HtcTVOutPreference;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/settings/framework/preference/display/HtcTVOutPreference;->mObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 125
    :cond_1
    :goto_0
    return-void

    .line 118
    :cond_2
    const v0, 0x7f0c03c0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/display/HtcTVOutPreference;->setSummary(I)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/HtcTVOutPreference;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/HtcTVOutPreference;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 121
    iput-object v2, p0, Lcom/android/settings/framework/preference/display/HtcTVOutPreference;->mCursor:Landroid/database/Cursor;

    goto :goto_0
.end method


# virtual methods
.method protected onClick()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/HtcTVOutPreference;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/preference/display/HtcTVOutPreference;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/HtcTVOutPreference;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/settings/framework/preference/display/HtcTVOutPreference;->mObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 94
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/HtcTVOutPreference;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 96
    :cond_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/settings/framework/preference/display/HtcTVOutPreference;->updateSummary()V

    .line 102
    return-void
.end method
