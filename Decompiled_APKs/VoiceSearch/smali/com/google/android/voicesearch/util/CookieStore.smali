.class public Lcom/google/android/voicesearch/util/CookieStore;
.super Ljava/lang/Object;
.source "CookieStore.java"


# instance fields
.field private mCookie:J

.field private final mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/util/CookieStore;->mPrefs:Landroid/content/SharedPreferences;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "MASFLite"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/util/CookieStore;->mPrefs:Landroid/content/SharedPreferences;

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/voicesearch/util/CookieStore;->mCookie:J

    .line 44
    return-void
.end method


# virtual methods
.method public declared-synchronized getCookie()J
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 47
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/voicesearch/util/CookieStore;->mCookie:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/google/android/voicesearch/util/CookieStore;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cookie"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/voicesearch/util/CookieStore;->mCookie:J

    .line 51
    :cond_0
    iget-wide v0, p0, Lcom/google/android/voicesearch/util/CookieStore;->mCookie:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCookie(J)V
    .locals 2
    .parameter "cookie"

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/voicesearch/util/CookieStore;->mCookie:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 61
    :goto_0
    monitor-exit p0

    return-void

    .line 59
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/voicesearch/util/CookieStore;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cookie"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/voicesearch/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 60
    iput-wide p1, p0, Lcom/google/android/voicesearch/util/CookieStore;->mCookie:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
