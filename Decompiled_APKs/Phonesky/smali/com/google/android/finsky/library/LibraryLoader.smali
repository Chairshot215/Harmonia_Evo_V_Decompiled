.class public Lcom/google/android/finsky/library/LibraryLoader;
.super Ljava/lang/Object;
.source "LibraryLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/library/LibraryLoader$State;
    }
.end annotation


# instance fields
.field private final mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

.field private final mBackgroundHandler:Landroid/os/Handler;

.field private final mLoadingCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotificationHandler:Landroid/os/Handler;

.field private final mSQLiteLibrary:Lcom/google/android/finsky/library/SQLiteLibrary;

.field private mState:Lcom/google/android/finsky/library/LibraryLoader$State;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/library/SQLiteLibrary;Lcom/google/android/finsky/library/AccountLibrary;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 1
    .parameter "sqLiteLibrary"
    .parameter "accountLibrary"
    .parameter "notificationHandler"
    .parameter "backgroundHandler"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/library/LibraryLoader;->mLoadingCallbacks:Ljava/util/List;

    .line 26
    sget-object v0, Lcom/google/android/finsky/library/LibraryLoader$State;->UNINITIALIZED:Lcom/google/android/finsky/library/LibraryLoader$State;

    iput-object v0, p0, Lcom/google/android/finsky/library/LibraryLoader;->mState:Lcom/google/android/finsky/library/LibraryLoader$State;

    .line 39
    iput-object p1, p0, Lcom/google/android/finsky/library/LibraryLoader;->mSQLiteLibrary:Lcom/google/android/finsky/library/SQLiteLibrary;

    .line 40
    iput-object p2, p0, Lcom/google/android/finsky/library/LibraryLoader;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    .line 41
    iput-object p4, p0, Lcom/google/android/finsky/library/LibraryLoader;->mBackgroundHandler:Landroid/os/Handler;

    .line 42
    iput-object p3, p0, Lcom/google/android/finsky/library/LibraryLoader;->mNotificationHandler:Landroid/os/Handler;

    .line 43
    return-void
.end method


# virtual methods
.method public declared-synchronized load(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryLoader;->mLoadingCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryLoader;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/finsky/library/LibraryLoader$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/library/LibraryLoader$1;-><init>(Lcom/google/android/finsky/library/LibraryLoader;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method loadBlocking()V
    .locals 10

    .prologue
    .line 63
    iget-object v8, p0, Lcom/google/android/finsky/library/LibraryLoader;->mState:Lcom/google/android/finsky/library/LibraryLoader$State;

    sget-object v9, Lcom/google/android/finsky/library/LibraryLoader$State;->UNINITIALIZED:Lcom/google/android/finsky/library/LibraryLoader$State;

    if-ne v8, v9, :cond_4

    .line 64
    iget-object v8, p0, Lcom/google/android/finsky/library/LibraryLoader;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v8}, Lcom/google/android/finsky/library/AccountLibrary;->disableListeners()V

    .line 65
    iget-object v8, p0, Lcom/google/android/finsky/library/LibraryLoader;->mSQLiteLibrary:Lcom/google/android/finsky/library/SQLiteLibrary;

    invoke-virtual {v8}, Lcom/google/android/finsky/library/SQLiteLibrary;->reopen()V

    .line 66
    iget-object v8, p0, Lcom/google/android/finsky/library/LibraryLoader;->mSQLiteLibrary:Lcom/google/android/finsky/library/SQLiteLibrary;

    invoke-virtual {v8}, Lcom/google/android/finsky/library/SQLiteLibrary;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/library/LibraryEntry;

    .line 67
    .local v4, libraryEntry:Lcom/google/android/finsky/library/LibraryEntry;
    iget-object v8, p0, Lcom/google/android/finsky/library/LibraryLoader;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v8}, Lcom/google/android/finsky/library/AccountLibrary;->getAccount()Landroid/accounts/Account;

    move-result-object v8

    iget-object v8, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v9, v4, Lcom/google/android/finsky/library/LibraryEntry;->accountName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 68
    iget-object v8, p0, Lcom/google/android/finsky/library/LibraryLoader;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v8, v4}, Lcom/google/android/finsky/library/AccountLibrary;->add(Lcom/google/android/finsky/library/LibraryEntry;)V

    goto :goto_0

    .line 72
    .end local v4           #libraryEntry:Lcom/google/android/finsky/library/LibraryEntry;
    :cond_1
    sget-object v0, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_IDS:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v5, v0, v2

    .line 73
    .local v5, libraryId:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/finsky/utils/FinskyPreferences;->getLibraryServerToken(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/finsky/library/LibraryLoader;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v9}, Lcom/google/android/finsky/library/AccountLibrary;->getAccount()Landroid/accounts/Account;

    move-result-object v9

    iget-object v9, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 76
    .local v1, encodedToken:Ljava/lang/String;
    if-eqz v1, :cond_2

    const/4 v8, 0x0

    invoke-static {v1, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    .line 78
    .local v7, token:[B
    :goto_2
    iget-object v8, p0, Lcom/google/android/finsky/library/LibraryLoader;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v8, v5, v7}, Lcom/google/android/finsky/library/AccountLibrary;->setServerToken(Ljava/lang/String;[B)V

    .line 72
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 76
    .end local v7           #token:[B
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 80
    .end local v1           #encodedToken:Ljava/lang/String;
    .end local v5           #libraryId:Ljava/lang/String;
    :cond_3
    sget-object v8, Lcom/google/android/finsky/library/LibraryLoader$State;->LOADED:Lcom/google/android/finsky/library/LibraryLoader$State;

    iput-object v8, p0, Lcom/google/android/finsky/library/LibraryLoader;->mState:Lcom/google/android/finsky/library/LibraryLoader$State;

    .line 81
    iget-object v8, p0, Lcom/google/android/finsky/library/LibraryLoader;->mSQLiteLibrary:Lcom/google/android/finsky/library/SQLiteLibrary;

    invoke-virtual {v8}, Lcom/google/android/finsky/library/SQLiteLibrary;->close()V

    .line 82
    iget-object v8, p0, Lcom/google/android/finsky/library/LibraryLoader;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v8}, Lcom/google/android/finsky/library/AccountLibrary;->enableListeners()V

    .line 84
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_4
    monitor-enter p0

    .line 85
    :try_start_0
    iget-object v8, p0, Lcom/google/android/finsky/library/LibraryLoader;->mLoadingCallbacks:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Runnable;

    .line 86
    .local v6, loadingCallback:Ljava/lang/Runnable;
    iget-object v8, p0, Lcom/google/android/finsky/library/LibraryLoader;->mNotificationHandler:Landroid/os/Handler;

    invoke-virtual {v8, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 89
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v6           #loadingCallback:Ljava/lang/Runnable;
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 88
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_5
    :try_start_1
    iget-object v8, p0, Lcom/google/android/finsky/library/LibraryLoader;->mLoadingCallbacks:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 89
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    return-void
.end method
