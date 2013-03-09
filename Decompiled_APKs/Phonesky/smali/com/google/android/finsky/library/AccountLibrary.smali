.class public Lcom/google/android/finsky/library/AccountLibrary;
.super Ljava/lang/Object;
.source "AccountLibrary.java"

# interfaces
.implements Lcom/google/android/finsky/library/Library;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/library/AccountLibrary$Listener;
    }
.end annotation


# static fields
.field public static final LIBRARY_IDS:[Ljava/lang/String;

.field public static final LIBRARY_ID_APPS:Ljava/lang/String;

.field public static final LIBRARY_ID_MAGAZINE:Ljava/lang/String;

.field public static final LIBRARY_ID_MUSIC:Ljava/lang/String;

.field public static final LIBRARY_ID_OCEAN:Ljava/lang/String;

.field public static final LIBRARY_ID_YOUTUBE:Ljava/lang/String;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private final mLibraries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/library/HashingLibrary;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/library/AccountLibrary$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mListenersEnabled:Z

.field private final mNotificationHandler:Landroid/os/Handler;

.field private final mTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v1, 0x6

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 28
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    .line 29
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_OCEAN:Ljava/lang/String;

    .line 30
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_YOUTUBE:Ljava/lang/String;

    .line 31
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_MUSIC:Ljava/lang/String;

    .line 32
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_MAGAZINE:Ljava/lang/String;

    .line 78
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_OCEAN:Ljava/lang/String;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_YOUTUBE:Ljava/lang/String;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_MUSIC:Ljava/lang/String;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_MAGAZINE:Ljava/lang/String;

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "u-wl"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_IDS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;Landroid/os/Handler;)V
    .locals 4
    .parameter "account"
    .parameter "notificationHandler"

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mTokens:Ljava/util/Map;

    .line 83
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mListeners:Ljava/util/List;

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mListenersEnabled:Z

    .line 104
    iput-object p1, p0, Lcom/google/android/finsky/library/AccountLibrary;->mAccount:Landroid/accounts/Account;

    .line 105
    iput-object p2, p0, Lcom/google/android/finsky/library/AccountLibrary;->mNotificationHandler:Landroid/os/Handler;

    .line 106
    iget-object v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    sget-object v1, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    new-instance v2, Lcom/google/android/finsky/library/AppLibrary;

    new-instance v3, Lcom/google/android/finsky/library/SumHasher;

    invoke-direct {v3}, Lcom/google/android/finsky/library/SumHasher;-><init>()V

    invoke-direct {v2, v3}, Lcom/google/android/finsky/library/AppLibrary;-><init>(Lcom/google/android/finsky/library/LibraryHasher;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    sget-object v1, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_MUSIC:Ljava/lang/String;

    new-instance v2, Lcom/google/android/finsky/library/HashMapLibrary;

    new-instance v3, Lcom/google/android/finsky/library/SumHasher;

    invoke-direct {v3}, Lcom/google/android/finsky/library/SumHasher;-><init>()V

    invoke-direct {v2, v3}, Lcom/google/android/finsky/library/HashMapLibrary;-><init>(Lcom/google/android/finsky/library/LibraryHasher;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    sget-object v1, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_OCEAN:Ljava/lang/String;

    new-instance v2, Lcom/google/android/finsky/library/HashMapLibrary;

    new-instance v3, Lcom/google/android/finsky/library/SumHasher;

    invoke-direct {v3}, Lcom/google/android/finsky/library/SumHasher;-><init>()V

    invoke-direct {v2, v3}, Lcom/google/android/finsky/library/HashMapLibrary;-><init>(Lcom/google/android/finsky/library/LibraryHasher;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    sget-object v1, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_YOUTUBE:Ljava/lang/String;

    new-instance v2, Lcom/google/android/finsky/library/HashMapLibrary;

    new-instance v3, Lcom/google/android/finsky/library/SumHasher;

    invoke-direct {v3}, Lcom/google/android/finsky/library/SumHasher;-><init>()V

    invoke-direct {v2, v3}, Lcom/google/android/finsky/library/HashMapLibrary;-><init>(Lcom/google/android/finsky/library/LibraryHasher;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    sget-object v1, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_MAGAZINE:Ljava/lang/String;

    new-instance v2, Lcom/google/android/finsky/library/MagazinesLibrary;

    new-instance v3, Lcom/google/android/finsky/library/SumHasher;

    invoke-direct {v3}, Lcom/google/android/finsky/library/SumHasher;-><init>()V

    invoke-direct {v2, v3}, Lcom/google/android/finsky/library/MagazinesLibrary;-><init>(Lcom/google/android/finsky/library/LibraryHasher;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    const-string v1, "u-wl"

    new-instance v2, Lcom/google/android/finsky/library/HashMapLibrary;

    new-instance v3, Lcom/google/android/finsky/library/SumHasher;

    invoke-direct {v3}, Lcom/google/android/finsky/library/SumHasher;-><init>()V

    invoke-direct {v2, v3}, Lcom/google/android/finsky/library/HashMapLibrary;-><init>(Lcom/google/android/finsky/library/LibraryHasher;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    return-void
.end method

.method public static getBackendFromLibraryId(Ljava/lang/String;)I
    .locals 1
    .parameter "libraryId"

    .prologue
    .line 60
    sget-object v0, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x3

    .line 71
    :goto_0
    return v0

    .line 62
    :cond_0
    sget-object v0, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_OCEAN:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    const/4 v0, 0x1

    goto :goto_0

    .line 64
    :cond_1
    sget-object v0, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_YOUTUBE:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    const/4 v0, 0x4

    goto :goto_0

    .line 66
    :cond_2
    sget-object v0, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_MUSIC:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 67
    const/4 v0, 0x2

    goto :goto_0

    .line 68
    :cond_3
    sget-object v0, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_MAGAZINE:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 69
    const/4 v0, 0x6

    goto :goto_0

    .line 71
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLibraryIdFromBackend(I)Ljava/lang/String;
    .locals 1
    .parameter "backend"

    .prologue
    .line 39
    packed-switch p0, :pswitch_data_0

    .line 51
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 41
    :pswitch_1
    sget-object v0, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    goto :goto_0

    .line 43
    :pswitch_2
    sget-object v0, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_OCEAN:Ljava/lang/String;

    goto :goto_0

    .line 45
    :pswitch_3
    sget-object v0, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_YOUTUBE:Ljava/lang/String;

    goto :goto_0

    .line 47
    :pswitch_4
    sget-object v0, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_MUSIC:Ljava/lang/String;

    goto :goto_0

    .line 49
    :pswitch_5
    sget-object v0, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_MAGAZINE:Ljava/lang/String;

    goto :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private notifyListeners()V
    .locals 3

    .prologue
    .line 147
    iget-boolean v1, p0, Lcom/google/android/finsky/library/AccountLibrary;->mListenersEnabled:Z

    if-nez v1, :cond_0

    .line 159
    :goto_0
    return-void

    .line 150
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/finsky/library/AccountLibrary;->mListeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 151
    .local v0, listeners:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/library/AccountLibrary$Listener;>;"
    iget-object v1, p0, Lcom/google/android/finsky/library/AccountLibrary;->mNotificationHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/finsky/library/AccountLibrary$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/finsky/library/AccountLibrary$1;-><init>(Lcom/google/android/finsky/library/AccountLibrary;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized add(Lcom/google/android/finsky/library/LibraryEntry;)V
    .locals 3
    .parameter "entry"

    .prologue
    .line 229
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/finsky/library/AccountLibrary;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/finsky/library/LibraryEntry;->accountName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 230
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid account."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 232
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    iget-object v2, p1, Lcom/google/android/finsky/library/LibraryEntry;->libraryId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/HashingLibrary;

    .line 233
    .local v0, library:Lcom/google/android/finsky/library/HashingLibrary;
    if-eqz v0, :cond_1

    .line 234
    invoke-virtual {v0, p1}, Lcom/google/android/finsky/library/HashingLibrary;->add(Lcom/google/android/finsky/library/LibraryEntry;)V

    .line 235
    invoke-direct {p0}, Lcom/google/android/finsky/library/AccountLibrary;->notifyListeners()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized addAll(Ljava/util/Collection;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/google/android/finsky/library/LibraryEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p1, entries:Ljava/util/Collection;,"Ljava/util/Collection<+Lcom/google/android/finsky/library/LibraryEntry;>;"
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/LibraryEntry;

    .line 242
    .local v0, entry:Lcom/google/android/finsky/library/LibraryEntry;
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/library/AccountLibrary;->add(Lcom/google/android/finsky/library/LibraryEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 241
    .end local v0           #entry:Lcom/google/android/finsky/library/LibraryEntry;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 244
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized addListener(Lcom/google/android/finsky/library/AccountLibrary$Listener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    monitor-exit p0

    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized contains(Lcom/google/android/finsky/library/LibraryEntry;)Z
    .locals 3
    .parameter "entry"

    .prologue
    .line 223
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    iget-object v2, p1, Lcom/google/android/finsky/library/LibraryEntry;->libraryId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/Library;

    .line 224
    .local v0, library:Lcom/google/android/finsky/library/Library;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/finsky/library/Library;->contains(Lcom/google/android/finsky/library/LibraryEntry;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 223
    .end local v0           #library:Lcom/google/android/finsky/library/Library;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized disableListeners()V
    .locals 1

    .prologue
    .line 125
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mListenersEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dumpState(Ljava/lang/String;)V
    .locals 7
    .parameter "indent"

    .prologue
    .line 326
    iget-object v3, p0, Lcom/google/android/finsky/library/AccountLibrary;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 327
    .local v2, scrubbedAccount:Ljava/lang/String;
    const-string v3, "FinskyLibrary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "AccountLibrary (account="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") {"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v3, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 330
    .local v1, library:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/library/HashingLibrary;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "library="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/finsky/library/HashingLibrary;->dumpState(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 333
    .end local v1           #library:Ljava/lang/String;
    :cond_0
    const-string v3, "FinskyLibrary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "} (account="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return-void
.end method

.method public declared-synchronized enableListeners()V
    .locals 1

    .prologue
    .line 134
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mListenersEnabled:Z

    .line 135
    invoke-direct {p0}, Lcom/google/android/finsky/library/AccountLibrary;->notifyListeners()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit p0

    return-void

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public declared-synchronized getAppEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibraryAppEntry;
    .locals 3
    .parameter "docId"

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    sget-object v2, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/AppLibrary;

    .line 174
    .local v0, appLibrary:Lcom/google/android/finsky/library/AppLibrary;
    invoke-virtual {v0, p1}, Lcom/google/android/finsky/library/AppLibrary;->getAppEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibraryAppEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 173
    .end local v0           #appLibrary:Lcom/google/android/finsky/library/AppLibrary;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getAppSubscriptionEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibrarySubscriptionEntry;
    .locals 3
    .parameter "docId"

    .prologue
    .line 182
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    sget-object v2, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/AppLibrary;

    .line 183
    .local v0, appLibrary:Lcom/google/android/finsky/library/AppLibrary;
    invoke-virtual {v0, p1}, Lcom/google/android/finsky/library/AppLibrary;->getSubscriptionEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibrarySubscriptionEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 182
    .end local v0           #appLibrary:Lcom/google/android/finsky/library/AppLibrary;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getAppSubscriptionsList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/library/LibrarySubscriptionEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    sget-object v2, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/AppLibrary;

    .line 200
    .local v0, appLibrary:Lcom/google/android/finsky/library/AppLibrary;
    invoke-virtual {v0}, Lcom/google/android/finsky/library/AppLibrary;->getSubscriptionsList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 199
    .end local v0           #appLibrary:Lcom/google/android/finsky/library/AppLibrary;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getInAppEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibraryInAppEntry;
    .locals 3
    .parameter "docId"

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    sget-object v2, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/AppLibrary;

    .line 192
    .local v0, appLibrary:Lcom/google/android/finsky/library/AppLibrary;
    invoke-virtual {v0, p1}, Lcom/google/android/finsky/library/AppLibrary;->getInAppEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibraryInAppEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 191
    .end local v0           #appLibrary:Lcom/google/android/finsky/library/AppLibrary;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getInAppPurchasesForPackage(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/library/LibraryInAppEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    sget-object v2, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/AppLibrary;

    .line 209
    .local v0, appLibrary:Lcom/google/android/finsky/library/AppLibrary;
    invoke-virtual {v0, p1}, Lcom/google/android/finsky/library/AppLibrary;->getInAppPurchasesForPackage(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 208
    .end local v0           #appLibrary:Lcom/google/android/finsky/library/AppLibrary;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getLibrary(Ljava/lang/String;)Lcom/google/android/finsky/library/HashingLibrary;
    .locals 1
    .parameter "libraryId"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/HashingLibrary;

    return-object v0
.end method

.method public declared-synchronized getMagazinesSubscriptionEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibrarySubscriptionEntry;
    .locals 3
    .parameter "docId"

    .prologue
    .line 217
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    sget-object v2, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_MAGAZINE:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/MagazinesLibrary;

    .line 218
    .local v0, magazinesLibrary:Lcom/google/android/finsky/library/MagazinesLibrary;
    invoke-virtual {v0, p1}, Lcom/google/android/finsky/library/MagazinesLibrary;->getSubscriptionEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibrarySubscriptionEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 217
    .end local v0           #magazinesLibrary:Lcom/google/android/finsky/library/MagazinesLibrary;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getServerToken(Ljava/lang/String;)[B
    .locals 1
    .parameter "libraryId"

    .prologue
    .line 263
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mTokens:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/android/finsky/library/LibraryEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public declared-synchronized remove(Lcom/google/android/finsky/library/LibraryEntry;)V
    .locals 3
    .parameter "entry"

    .prologue
    .line 248
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/finsky/library/AccountLibrary;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/finsky/library/LibraryEntry;->accountName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 249
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 251
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    iget-object v2, p1, Lcom/google/android/finsky/library/LibraryEntry;->libraryId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/Library;

    .line 252
    .local v0, library:Lcom/google/android/finsky/library/Library;
    if-eqz v0, :cond_1

    .line 253
    invoke-interface {v0, p1}, Lcom/google/android/finsky/library/Library;->remove(Lcom/google/android/finsky/library/LibraryEntry;)V

    .line 254
    invoke-direct {p0}, Lcom/google/android/finsky/library/AccountLibrary;->notifyListeners()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized resetLibrary(Ljava/lang/String;)V
    .locals 4
    .parameter "libraryId"

    .prologue
    .line 289
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/HashingLibrary;

    .line 290
    .local v0, library:Lcom/google/android/finsky/library/HashingLibrary;
    if-nez v0, :cond_0

    .line 291
    const-string v1, "Cannot reset: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    :goto_0
    invoke-direct {p0}, Lcom/google/android/finsky/library/AccountLibrary;->notifyListeners()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    monitor-exit p0

    return-void

    .line 293
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/finsky/library/HashingLibrary;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 289
    .end local v0           #library:Lcom/google/android/finsky/library/HashingLibrary;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setServerToken(Ljava/lang/String;[B)V
    .locals 1
    .parameter "libraryId"
    .parameter "token"

    .prologue
    .line 259
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mTokens:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    monitor-exit p0

    return-void

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .locals 4

    .prologue
    .line 272
    monitor-enter p0

    const/4 v2, 0x0

    .line 274
    .local v2, size:I
    :try_start_0
    iget-object v3, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/library/HashingLibrary;

    .line 275
    .local v1, library:Lcom/google/android/finsky/library/HashingLibrary;
    invoke-virtual {v1}, Lcom/google/android/finsky/library/HashingLibrary;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 278
    .end local v1           #library:Lcom/google/android/finsky/library/HashingLibrary;
    :cond_0
    monitor-exit p0

    return v2

    .line 272
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public supportsLibrary(Ljava/lang/String;)Z
    .locals 1
    .parameter "libraryId"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 318
    const-string v1, "{account=%s numapps=%d}"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/library/AccountLibrary;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    sget-object v4, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/HashingLibrary;

    invoke-virtual {v0}, Lcom/google/android/finsky/library/HashingLibrary;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
