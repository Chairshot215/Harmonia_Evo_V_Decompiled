.class public Ltwitter4j/AsyncTwitter;
.super Ltwitter4j/Twitter;
.source "AsyncTwitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltwitter4j/AsyncTwitter$AsyncTask;
    }
.end annotation


# static fields
.field public static final BLOCK:I = 0x16

.field public static final CREATE:I = 0xc

.field public static final CREATED_BLOCK:I = 0x2b

.field public static final CREATE_FAVORITE:I = 0x12

.field public static final CREATE_FRIENDSHIP:I = 0x20

.field public static final CURRENT_TRENDS:I = 0x2d

.field public static final DAILY_TRENDS:I = 0x2e

.field public static final DESTORY:I = 0xd

.field public static final DESTROY:I = 0xd

.field public static final DESTROYED_BLOCK:I = 0x2a

.field public static final DESTROY_DIRECT_MESSAGES:I = 0x28

.field public static final DESTROY_FAVORITE:I = 0x13

.field public static final DESTROY_FRIENDSHIP:I = 0x21

.field public static final DESTROY_STATUS:I = 0x1a

.field public static final DIRECT_MESSAGES:I = 0xa

.field public static final DISABLE_NOTIFICATION:I = 0x24

.field public static final ENABLE_NOTIFICATION:I = 0x23

.field public static final EXISTS:I = 0x1c

.field private static final EXISTS_BLOCK:I = 0x30

.field public static final EXISTS_FRIENDSHIP:I = 0x22

.field public static final FAVORITES:I = 0x11

.field public static final FEATURED:I = 0x8

.field public static final FOLLOW:I = 0xe

.field public static final FOLLOWERS:I = 0x7

.field public static final FOLLOWERS_IDS:I = 0x1e

.field public static final FRIENDS:I = 0x6

.field public static final FRIENDS_IDS:I = 0x1d

.field public static final FRIENDS_TIMELINE:I = 0x1

.field private static final GET_BLOCKING_USERS:I = 0x31

.field private static final GET_BLOCKING_USERS_IDS:I = 0x32

.field public static final GET_DOWNTIME_SCHEDULE:I = 0x19

.field public static final HOME_TIMELINE:I = 0x33

.field public static final LEAVE:I = 0xf

.field public static final MENTIONS:I = 0x25

.field public static final PUBLIC_TIMELINE:I = 0x0

.field public static final RATE_LIMIT_STATUS:I = 0x1c

.field public static final REPLIES:I = 0x5

.field public static final RETWEETED_BY_ME:I = 0x35

.field public static final RETWEETED_TO_ME:I = 0x36

.field public static final RETWEETS_OF_ME:I = 0x37

.field public static final RETWEET_STATUS:I = 0x34

.field public static final SEARCH:I = 0x1b

.field public static final SEND_DIRECT_MESSAGE:I = 0xb

.field public static final SHOW:I = 0x3

.field public static final SHOW_STATUS:I = 0x26

.field public static final TEST:I = 0x18

.field public static final TRENDS:I = 0x2c

.field public static final UNBLOCK:I = 0x17

.field public static final UPDATE:I = 0x4

.field public static final UPDATE_DELIVERLY_DEVICE:I = 0x15

.field public static final UPDATE_LOCATION:I = 0x14

.field public static final UPDATE_PROFILE:I = 0x29

.field public static final UPDATE_PROFILE_COLORS:I = 0x1f

.field public static final UPDATE_STATUS:I = 0x27

.field public static final USER_DETAIL:I = 0x9

.field public static final USER_TIMELINE:I = 0x2

.field public static final WEEKLY_TRENDS:I = 0x2f

.field static class$twitter4j$AsyncTwitter:Ljava/lang/Class; = null

.field private static transient dispatcher:Ltwitter4j/Dispatcher; = null

.field private static final serialVersionUID:J = -0x1be038d7c798e703L


# instance fields
.field private shutdown:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "password"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ltwitter4j/Twitter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2892
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltwitter4j/AsyncTwitter;->shutdown:Z

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "password"
    .parameter "baseURL"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Ltwitter4j/Twitter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2892
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltwitter4j/AsyncTwitter;->shutdown:Z

    .line 47
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .parameter "x0"

    .prologue
    .line 2900
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, x1:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method private getDispatcher()Ltwitter4j/Dispatcher;
    .locals 3

    .prologue
    .line 2910
    const/4 v0, 0x1

    iget-boolean v1, p0, Ltwitter4j/AsyncTwitter;->shutdown:Z

    if-ne v0, v1, :cond_0

    .line 2911
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already shut down"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2913
    :cond_0
    sget-object v0, Ltwitter4j/AsyncTwitter;->dispatcher:Ltwitter4j/Dispatcher;

    if-nez v0, :cond_1

    .line 2914
    new-instance v0, Ltwitter4j/Dispatcher;

    const-string v1, "Twitter4J Async Dispatcher"

    invoke-static {}, Ltwitter4j/Configuration;->getNumberOfAsyncThreads()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ltwitter4j/Dispatcher;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltwitter4j/AsyncTwitter;->dispatcher:Ltwitter4j/Dispatcher;

    .line 2916
    :cond_1
    sget-object v0, Ltwitter4j/AsyncTwitter;->dispatcher:Ltwitter4j/Dispatcher;

    return-object v0
.end method


# virtual methods
.method public blockAsync(Ljava/lang/String;)V
    .locals 6
    .parameter "id"

    .prologue
    .line 2725
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$114;

    const/16 v2, 0x16

    new-instance v3, Ltwitter4j/TwitterAdapter;

    invoke-direct {v3}, Ltwitter4j/TwitterAdapter;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-direct {v1, p0, v2, v3, v4}, Ltwitter4j/AsyncTwitter$114;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2730
    return-void
.end method

.method public createAsync(Ljava/lang/String;)V
    .locals 6
    .parameter "id"

    .prologue
    .line 1765
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$69;

    const/16 v2, 0xc

    new-instance v3, Ltwitter4j/TwitterAdapter;

    invoke-direct {v3}, Ltwitter4j/TwitterAdapter;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-direct {v1, p0, v2, v3, v4}, Ltwitter4j/AsyncTwitter$69;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1770
    return-void
.end method

.method public createAsync(Ljava/lang/String;Ltwitter4j/TwitterListener;)V
    .locals 5
    .parameter "id"
    .parameter "listener"

    .prologue
    .line 1715
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$66;

    const/16 v2, 0xc

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Ltwitter4j/AsyncTwitter$66;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1720
    return-void
.end method

.method public createBlockAsync(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 2758
    new-instance v0, Ltwitter4j/TwitterAdapter;

    invoke-direct {v0}, Ltwitter4j/TwitterAdapter;-><init>()V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/AsyncTwitter;->createBlockAsync(Ljava/lang/String;Ltwitter4j/TwitterListener;)V

    .line 2759
    return-void
.end method

.method public createBlockAsync(Ljava/lang/String;Ltwitter4j/TwitterListener;)V
    .locals 5
    .parameter "id"
    .parameter "listener"

    .prologue
    .line 2742
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$115;

    const/16 v2, 0x2b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Ltwitter4j/AsyncTwitter$115;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2747
    return-void
.end method

.method public createFavoriteAsync(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 2514
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Ltwitter4j/AsyncTwitter;->createFavoriteAsync(J)V

    .line 2515
    return-void
.end method

.method public createFavoriteAsync(ILtwitter4j/TwitterListener;)V
    .locals 2
    .parameter "id"
    .parameter "listener"

    .prologue
    .line 2486
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1, p2}, Ltwitter4j/AsyncTwitter;->createFavoriteAsync(JLtwitter4j/TwitterListener;)V

    .line 2487
    return-void
.end method

.method public createFavoriteAsync(J)V
    .locals 7
    .parameter "id"

    .prologue
    .line 2526
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$105;

    const/16 v2, 0x11

    new-instance v3, Ltwitter4j/TwitterAdapter;

    invoke-direct {v3}, Ltwitter4j/TwitterAdapter;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, p1, p2}, Ljava/lang/Long;-><init>(J)V

    aput-object v6, v4, v5

    invoke-direct {v1, p0, v2, v3, v4}, Ltwitter4j/AsyncTwitter$105;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2531
    return-void
.end method

.method public createFavoriteAsync(JLtwitter4j/TwitterListener;)V
    .locals 6
    .parameter "id"
    .parameter "listener"

    .prologue
    .line 2499
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$104;

    const/16 v2, 0x11

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p1, p2}, Ljava/lang/Long;-><init>(J)V

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p3, v3}, Ltwitter4j/AsyncTwitter$104;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2504
    return-void
.end method

.method public createFriendshipAsync(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 1781
    new-instance v0, Ltwitter4j/TwitterAdapter;

    invoke-direct {v0}, Ltwitter4j/TwitterAdapter;-><init>()V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/AsyncTwitter;->createFriendshipAsync(Ljava/lang/String;Ltwitter4j/TwitterListener;)V

    .line 1782
    return-void
.end method

.method public createFriendshipAsync(Ljava/lang/String;Ltwitter4j/TwitterListener;)V
    .locals 5
    .parameter "id"
    .parameter "listener"

    .prologue
    .line 1732
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$67;

    const/16 v2, 0x20

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Ltwitter4j/AsyncTwitter$67;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1737
    return-void
.end method

.method public createFriendshipAsync(Ljava/lang/String;ZLtwitter4j/TwitterListener;)V
    .locals 6
    .parameter "id"
    .parameter "follow"
    .parameter "listener"

    .prologue
    .line 1750
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$68;

    const/16 v2, 0x20

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p3, v3}, Ltwitter4j/AsyncTwitter$68;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1755
    return-void
.end method

.method public deleteDirectMessageAsync(ILtwitter4j/TwitterListener;)V
    .locals 6
    .parameter "id"
    .parameter "listener"

    .prologue
    .line 1669
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$63;

    const/16 v2, 0x28

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Ltwitter4j/AsyncTwitter$63;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1674
    return-void
.end method

.method public destoryStatusAsync(I)V
    .locals 2
    .parameter "statusId"

    .prologue
    .line 1046
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Ltwitter4j/AsyncTwitter;->destroyStatusAsync(J)V

    .line 1047
    return-void
.end method

.method public destoryStatusAsync(ILtwitter4j/TwitterListener;)V
    .locals 2
    .parameter "statusId"
    .parameter "listener"

    .prologue
    .line 1087
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1, p2}, Ltwitter4j/AsyncTwitter;->destroyStatusAsync(JLtwitter4j/TwitterListener;)V

    .line 1088
    return-void
.end method

.method public destroyAsync(Ljava/lang/String;)V
    .locals 6
    .parameter "id"

    .prologue
    .line 1809
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$71;

    const/16 v2, 0xd

    new-instance v3, Ltwitter4j/TwitterAdapter;

    invoke-direct {v3}, Ltwitter4j/TwitterAdapter;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-direct {v1, p0, v2, v3, v4}, Ltwitter4j/AsyncTwitter$71;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1815
    return-void
.end method

.method public destroyAsync(Ljava/lang/String;Ltwitter4j/TwitterListener;)V
    .locals 5
    .parameter "id"
    .parameter "listener"

    .prologue
    .line 1793
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$70;

    const/16 v2, 0xd

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Ltwitter4j/AsyncTwitter$70;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1799
    return-void
.end method

.method public destroyBlockAsync(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 2804
    new-instance v0, Ltwitter4j/TwitterAdapter;

    invoke-direct {v0}, Ltwitter4j/TwitterAdapter;-><init>()V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/AsyncTwitter;->destroyBlockAsync(Ljava/lang/String;Ltwitter4j/TwitterListener;)V

    .line 2805
    return-void
.end method

.method public destroyBlockAsync(Ljava/lang/String;Ltwitter4j/TwitterListener;)V
    .locals 5
    .parameter "id"
    .parameter "listener"

    .prologue
    .line 2788
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$117;

    const/16 v2, 0x2a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Ltwitter4j/AsyncTwitter$117;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2793
    return-void
.end method

.method public destroyDirectMessageAsync(I)V
    .locals 7
    .parameter "id"

    .prologue
    .line 1699
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$65;

    const/16 v2, 0x28

    new-instance v3, Ltwitter4j/TwitterAdapter;

    invoke-direct {v3}, Ltwitter4j/TwitterAdapter;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    invoke-direct {v1, p0, v2, v3, v4}, Ltwitter4j/AsyncTwitter$65;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1704
    return-void
.end method

.method public destroyDirectMessageAsync(ILtwitter4j/TwitterListener;)V
    .locals 6
    .parameter "id"
    .parameter "listener"

    .prologue
    .line 1685
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$64;

    const/16 v2, 0x28

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Ltwitter4j/AsyncTwitter$64;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1690
    return-void
.end method

.method public destroyFavoriteAsync(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 2570
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Ltwitter4j/AsyncTwitter;->destroyFavoriteAsync(J)V

    .line 2571
    return-void
.end method

.method public destroyFavoriteAsync(ILtwitter4j/TwitterListener;)V
    .locals 2
    .parameter "id"
    .parameter "listener"

    .prologue
    .line 2542
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1, p2}, Ltwitter4j/AsyncTwitter;->destroyFavoriteAsync(JLtwitter4j/TwitterListener;)V

    .line 2543
    return-void
.end method

.method public destroyFavoriteAsync(J)V
    .locals 7
    .parameter "id"

    .prologue
    .line 2582
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$107;

    const/16 v2, 0x11

    new-instance v3, Ltwitter4j/TwitterAdapter;

    invoke-direct {v3}, Ltwitter4j/TwitterAdapter;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, p1, p2}, Ljava/lang/Long;-><init>(J)V

    aput-object v6, v4, v5

    invoke-direct {v1, p0, v2, v3, v4}, Ltwitter4j/AsyncTwitter$107;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2587
    return-void
.end method

.method public destroyFavoriteAsync(JLtwitter4j/TwitterListener;)V
    .locals 6
    .parameter "id"
    .parameter "listener"

    .prologue
    .line 2555
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$106;

    const/16 v2, 0x11

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p1, p2}, Ljava/lang/Long;-><init>(J)V

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p3, v3}, Ltwitter4j/AsyncTwitter$106;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2560
    return-void
.end method

.method public destroyFriendshipAsync(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 1842
    new-instance v0, Ltwitter4j/TwitterAdapter;

    invoke-direct {v0}, Ltwitter4j/TwitterAdapter;-><init>()V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/AsyncTwitter;->destroyFriendshipAsync(Ljava/lang/String;Ltwitter4j/TwitterListener;)V

    .line 1843
    return-void
.end method

.method public destroyFriendshipAsync(Ljava/lang/String;Ltwitter4j/TwitterListener;)V
    .locals 5
    .parameter "id"
    .parameter "listener"

    .prologue
    .line 1826
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$72;

    const/16 v2, 0x21

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Ltwitter4j/AsyncTwitter$72;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1831
    return-void
.end method

.method public destroyStatusAsync(I)V
    .locals 2
    .parameter "statusId"

    .prologue
    .line 1059
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Ltwitter4j/AsyncTwitter;->destroyStatusAsync(J)V

    .line 1060
    return-void
.end method

.method public destroyStatusAsync(ILtwitter4j/TwitterListener;)V
    .locals 2
    .parameter "statusId"
    .parameter "listener"

    .prologue
    .line 1099
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1, p2}, Ltwitter4j/AsyncTwitter;->destroyStatusAsync(JLtwitter4j/TwitterListener;)V

    .line 1100
    return-void
.end method

.method public destroyStatusAsync(J)V
    .locals 7
    .parameter "statusId"

    .prologue
    .line 1071
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$42;

    const/16 v2, 0x1a

    new-instance v3, Ltwitter4j/TwitterAdapter;

    invoke-direct {v3}, Ltwitter4j/TwitterAdapter;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Long;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, p1, p2}, Ljava/lang/Long;-><init>(J)V

    aput-object v6, v4, v5

    invoke-direct {v1, p0, v2, v3, v4}, Ltwitter4j/AsyncTwitter$42;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1076
    return-void
.end method

.method public destroyStatusAsync(JLtwitter4j/TwitterListener;)V
    .locals 6
    .parameter "statusId"
    .parameter "listener"

    .prologue
    .line 1112
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$43;

    const/16 v2, 0x1a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Long;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p1, p2}, Ljava/lang/Long;-><init>(J)V

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p3, v3}, Ltwitter4j/AsyncTwitter$43;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1117
    return-void
.end method

.method public disableNotificationAsync(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 2709
    new-instance v0, Ltwitter4j/TwitterAdapter;

    invoke-direct {v0}, Ltwitter4j/TwitterAdapter;-><init>()V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/AsyncTwitter;->disableNotificationAsync(Ljava/lang/String;Ltwitter4j/TwitterListener;)V

    .line 2710
    return-void
.end method

.method public disableNotificationAsync(Ljava/lang/String;Ltwitter4j/TwitterListener;)V
    .locals 5
    .parameter "id"
    .parameter "listener"

    .prologue
    .line 2677
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$112;

    const/16 v2, 0x24

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Ltwitter4j/AsyncTwitter$112;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2682
    return-void
.end method

.method public enableNotificationAsync(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 2647
    new-instance v0, Ltwitter4j/TwitterAdapter;

    invoke-direct {v0}, Ltwitter4j/TwitterAdapter;-><init>()V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/AsyncTwitter;->enableNotificationAsync(Ljava/lang/String;Ltwitter4j/TwitterListener;)V

    .line 2648
    return-void
.end method

.method public enableNotificationAsync(Ljava/lang/String;Ltwitter4j/TwitterListener;)V
    .locals 5
    .parameter "id"
    .parameter "listener"

    .prologue
    .line 2616
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$109;

    const/16 v2, 0x23

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Ltwitter4j/AsyncTwitter$109;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2621
    return-void
.end method

.method public existsAsync(Ljava/lang/String;Ljava/lang/String;Ltwitter4j/TwitterListener;)V
    .locals 5
    .parameter "userA"
    .parameter "userB"
    .parameter "listener"

    .prologue
    .line 1855
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$73;

    const/16 v2, 0x1c

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-direct {v1, p0, v2, p3, v3}, Ltwitter4j/AsyncTwitter$73;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1860
    return-void
.end method

.method public existsBlockAsync(Ljava/lang/String;Ltwitter4j/TwitterListener;)V
    .locals 5
    .parameter "id"
    .parameter "listener"

    .prologue
    .line 2817
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$118;

    const/16 v2, 0x30

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Ltwitter4j/AsyncTwitter$118;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2822
    return-void
.end method

.method public existsFriendshipAsync(Ljava/lang/String;Ljava/lang/String;Ltwitter4j/TwitterListener;)V
    .locals 5
    .parameter "userA"
    .parameter "userB"
    .parameter "listener"

    .prologue
    .line 1872
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$74;

    const/16 v2, 0x22

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-direct {v1, p0, v2, p3, v3}, Ltwitter4j/AsyncTwitter$74;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1877
    return-void
.end method

.method public favoritesAsync(ILtwitter4j/TwitterListener;)V
    .locals 0
    .parameter "page"
    .parameter "listener"

    .prologue
    .line 2392
    invoke-virtual {p0, p1, p2}, Ltwitter4j/AsyncTwitter;->getFavoritesAsync(ILtwitter4j/TwitterListener;)V

    .line 2393
    return-void
.end method

.method public favoritesAsync(Ljava/lang/String;ILtwitter4j/TwitterListener;)V
    .locals 6
    .parameter "id"
    .parameter "page"
    .parameter "listener"

    .prologue
    .line 2453
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$102;

    const/16 v2, 0x11

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p3, v3}, Ltwitter4j/AsyncTwitter$102;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2458
    return-void
.end method

.method public favoritesAsync(Ljava/lang/String;Ltwitter4j/TwitterListener;)V
    .locals 5
    .parameter "id"
    .parameter "listener"

    .prologue
    .line 2420
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$100;

    const/16 v2, 0x11

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Ltwitter4j/AsyncTwitter$100;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2425
    return-void
.end method

.method public favoritesAsync(Ltwitter4j/TwitterListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2365
    invoke-virtual {p0, p1}, Ltwitter4j/AsyncTwitter;->getFavoritesAsync(Ltwitter4j/TwitterListener;)V

    .line 2366
    return-void
.end method

.method public followAsync(Ljava/lang/String;)V
    .locals 6
    .parameter "id"

    .prologue
    .line 2632
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$110;

    const/16 v2, 0xe

    new-instance v3, Ltwitter4j/TwitterAdapter;

    invoke-direct {v3}, Ltwitter4j/TwitterAdapter;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-direct {v1, p0, v2, v3, v4}, Ltwitter4j/AsyncTwitter$110;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2637
    return-void
.end method

.method public followAsync(Ljava/lang/String;Ltwitter4j/TwitterListener;)V
    .locals 5
    .parameter "id"
    .parameter "listener"

    .prologue
    .line 2599
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$108;

    const/16 v2, 0xe

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Ltwitter4j/AsyncTwitter$108;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2604
    return-void
.end method

.method public getAuthenticatedUserAsync(Ltwitter4j/TwitterListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 2938
    invoke-virtual {p0}, Ltwitter4j/AsyncTwitter;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2939
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "User Id not specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2941
    :cond_0
    invoke-virtual {p0}, Ltwitter4j/AsyncTwitter;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ltwitter4j/AsyncTwitter;->getUserDetailAsync(Ljava/lang/String;Ltwitter4j/TwitterListener;)V

    .line 2942
    return-void
.end method

.method public getBlockingUsersAsync(ILtwitter4j/TwitterListener;)V
    .locals 6
    .parameter "page"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2852
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$120;

    const/16 v2, 0x31

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Ltwitter4j/AsyncTwitter$120;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2857
    return-void
.end method

.method public getBlockingUsersAsync(Ltwitter4j/TwitterListener;)V
    .locals 4
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2834
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$119;

    const/16 v2, 0x31

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Ltwitter4j/AsyncTwitter$119;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2839
    return-void
.end method

.method public getBlockingUsersIDsAsync(Ltwitter4j/TwitterListener;)V
    .locals 4
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2867
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$121;

    const/16 v2, 0x32

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Ltwitter4j/AsyncTwitter$121;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2872
    return-void
.end method

.method public getCurrentTrendsAsync(Ltwitter4j/TwitterListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 91
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$3;

    const/16 v2, 0x2d

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Ltwitter4j/AsyncTwitter$3;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 97
    return-void
.end method

.method public getCurrentTrendsAsync(ZLtwitter4j/TwitterListener;)V
    .locals 6
    .parameter "excludeHashTags"
    .parameter "listener"

    .prologue
    .line 108
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$4;

    const/16 v2, 0x2d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Ltwitter4j/AsyncTwitter$4;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 115
    return-void
.end method

.method public getDailyTrendsAsync(Ljava/util/Date;ZLtwitter4j/TwitterListener;)V
    .locals 6
    .parameter "date"
    .parameter "excludeHashTags"
    .parameter "listener"

    .prologue
    .line 144
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$6;

    const/16 v2, 0x2e

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p3, v3}, Ltwitter4j/AsyncTwitter$6;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 152
    return-void
.end method

.method public getDailyTrendsAsync(Ltwitter4j/TwitterListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 126
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$5;

    const/16 v2, 0x2e

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Ltwitter4j/AsyncTwitter$5;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 132
    return-void
.end method

.method public getDirectMessagesAsync(ILtwitter4j/TwitterListener;)V
    .locals 3
    .parameter "sinceId"
    .parameter "listener"

    .prologue
    .line 1536
    new-instance v0, Ltwitter4j/Paging;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Ltwitter4j/Paging;-><init>(J)V

    invoke-virtual {p0, v0, p2}, Ltwitter4j/AsyncTwitter;->getDirectMessagesAsync(Ltwitter4j/Paging;Ltwitter4j/TwitterListener;)V

    .line 1537
    return-void
.end method

.method public getDirectMessagesAsync(Ljava/util/Date;Ltwitter4j/TwitterListener;)V
    .locals 5
    .parameter "since"
    .parameter "listener"

    .prologue
    .line 1548
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$57;

    const/16 v2, 0xa

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Ltwitter4j/AsyncTwitter$57;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1553
    return-void
.end method

.method public getDirectMessagesAsync(Ltwitter4j/Paging;Ltwitter4j/TwitterListener;)V
    .locals 5
    .parameter "paging"
    .parameter "listener"

    .prologue
    .line 1493
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$56;

    const/16 v2, 0xa

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Ltwitter4j/AsyncTwitter$56;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1498
    return-void
.end method

.method public getDirectMessagesAsync(Ltwitter4j/TwitterListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 1477
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$55;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Ltwitter4j/AsyncTwitter$55;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1482
    return-void
.end method

.method public getDirectMessagesByPageAsync(IILtwitter4j/TwitterListener;)V
    .locals 3
    .parameter "page"
    .parameter "sinceId"
    .parameter "listener"

    .prologue
    .line 1524
    new-instance v0, Ltwitter4j/Paging;

    int-to-long v1, p2

    invoke-direct {v0, p1, v1, v2}, Ltwitter4j/Paging;-><init>(IJ)V

    invoke-virtual {p0, v0, p3}, Ltwitter4j/AsyncTwitter;->getDirectMessagesAsync(Ltwitter4j/Paging;Ltwitter4j/TwitterListener;)V

    .line 1525
    return-void
.end method

.method public getDirectMessagesByPageAsync(ILtwitter4j/TwitterListener;)V
    .locals 1
    .parameter "page"
    .parameter "listener"

    .prologue
    .line 1509
    new-instance v0, Ltwitter4j/Paging;

    invoke-direct {v0, p1}, Ltwitter4j/Paging;-><init>(I)V

    invoke-virtual {p0, v0, p2}, Ltwitter4j/AsyncTwitter;->getDirectMessagesAsync(Ltwitter4j/Paging;Ltwitter4j/TwitterListener;)V

    .line 1510
    return-void
.end method

.method public getDowntimeScheduleAsync()V
    .locals 4

    .prologue
    .line 2925
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "this method is not supported by the Twitter API anymore"

    new-instance v2, Ljava/lang/NoSuchMethodException;

    const-string v3, "this method is not supported by the Twitter API anymore"

    invoke-direct {v2, v3}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getFavoritesAsync(ILtwitter4j/TwitterListener;)V
    .locals 6
    .parameter "page"
    .parameter "listener"

    .prologue
    .line 2404
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$99;

    const/16 v2, 0x11

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Ltwitter4j/AsyncTwitter$99;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2409
    return-void
.end method

.method public getFavoritesAsync(Ljava/lang/String;ILtwitter4j/TwitterListener;)V
    .locals 6
    .parameter "id"
    .parameter "page"
    .parameter "listener"

    .prologue
    .line 2470
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$103;

    const/16 v2, 0x11

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p3, v3}, Ltwitter4j/AsyncTwitter$103;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2475
    return-void
.end method

.method public getFavoritesAsync(Ljava/lang/String;Ltwitter4j/TwitterListener;)V
    .locals 5
    .parameter "id"
    .parameter "listener"

    .prologue
    .line 2436
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$101;

    const/16 v2, 0x11

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Ltwitter4j/AsyncTwitter$101;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2441
    return-void
.end method

.method public getFavoritesAsync(Ltwitter4j/TwitterListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 2376
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$98;

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Ltwitter4j/AsyncTwitter$98;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2381
    return-void
.end method

.method public getFeaturedAsync(Ltwitter4j/TwitterListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 1463
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$54;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Ltwitter4j/AsyncTwitter$54;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1468
    return-void
.end method

.method public getFollowersAsync(ILtwitter4j/TwitterListener;)V
    .locals 1
    .parameter "page"
    .parameter "listener"

    .prologue
    .line 1379
    new-instance v0, Ltwitter4j/Paging;

    invoke-direct {v0, p1}, Ltwitter4j/Paging;-><init>(I)V

    invoke-virtual {p0, v0, p2}, Ltwitter4j/AsyncTwitter;->getFollowersStatusesAsync(Ltwitter4j/Paging;Ltwitter4j/TwitterListener;)V

    .line 1380
    return-void
.end method

.method public getFollowersAsync(Ljava/lang/String;ILtwitter4j/TwitterListener;)V
    .locals 1
    .parameter "id"
    .parameter "page"
    .parameter "listener"

    .prologue
    .line 1455
    new-instance v0, Ltwitter4j/Paging;

    invoke-direct {v0, p2}, Ltwitter4j/Paging;-><init>(I)V

    invoke-virtual {p0, p1, v0, p3}, Ltwitter4j/AsyncTwitter;->getFollowersStatusesAsync(Ljava/lang/String;Ltwitter4j/Paging;Ltwitter4j/TwitterListener;)V

    .line 1456
    return-void
.end method

.method public getFollowersAsync(Ljava/lang/String;Ltwitter4j/Paging;Ltwitter4j/TwitterListener;)V
    .locals 0
    .parameter "id"
    .parameter "paging"
    .parameter "listener"

    .prologue
    .line 1424
    invoke-virtual {p0, p1, p2, p3}, Ltwitter4j/AsyncTwitter;->getFollowersStatusesAsync(Ljava/lang/String;Ltwitter4j/Paging;Ltwitter4j/TwitterListener;)V

    .line 1425
    return-void
.end method

.method public getFollowersAsync(Ljava/lang/String;Ltwitter4j/TwitterListener;)V
    .locals 0
    .parameter "id"
    .parameter "listener"

    .prologue
    .line 1393
    invoke-virtual {p0, p1, p2}, Ltwitter4j/AsyncTwitter;->getFollowersStatusesAsync(Ljava/lang/String;Ltwitter4j/TwitterListener;)V

    .line 1394
    return-void
.end method

.method public getFollowersAsync(Ltwitter4j/Paging;Ltwitter4j/TwitterListener;)V
    .locals 0
    .parameter "paging"
    .parameter "listener"

    .prologue
    .line 1350
    invoke-virtual {p0, p1, p2}, Ltwitter4j/AsyncTwitter;->getFollowersStatusesAsync(Ltwitter4j/Paging;Ltwitter4j/TwitterListener;)V

    .line 1351
    return-void
.end method

.method public getFollowersAsync(Ltwitter4j/TwitterListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1322
    invoke-virtual {p0, p1}, Ltwitter4j/AsyncTwitter;->getFollowersStatusesAsync(Ltwitter4j/TwitterListener;)V

    .line 1323
    return-void
.end method

.method public getFollowersIDsAsync(IJLtwitter4j/TwitterListener;)V
    .locals 6
    .parameter "userId"
    .parameter "cursor"
    .parameter "listener"

    .prologue
    .line 2153
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$89;

    const/16 v2, 0x1e

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p2, p3}, Ljava/lang/Long;-><init>(J)V

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p4, v3}, Ltwitter4j/AsyncTwitter$89;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2159
    return-void
.end method

.method public getFollowersIDsAsync(ILtwitter4j/Paging;Ltwitter4j/TwitterListener;)V
    .locals 6
    .parameter "userId"
    .parameter "paging"
    .parameter "listener"

    .prologue
    .line 2133
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$88;

    const/16 v2, 0x1e

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-direct {v1, p0, v2, p3, v3}, Ltwitter4j/AsyncTwitter$88;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2139
    return-void
.end method

.method public getFollowersIDsAsync(ILtwitter4j/TwitterListener;)V
    .locals 6
    .parameter "userId"
    .parameter "listener"

    .prologue
    .line 2113
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$87;

    const/16 v2, 0x1e

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Ltwitter4j/AsyncTwitter$87;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2118
    return-void
.end method

.method public getFollowersIDsAsync(JLtwitter4j/TwitterListener;)V
    .locals 6
    .parameter "cursor"
    .parameter "listener"

    .prologue
    .line 2095
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$86;

    const/16 v2, 0x1e

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p1, p2}, Ljava/lang/Long;-><init>(J)V

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p3, v3}, Ltwitter4j/AsyncTwitter$86;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2101
    return-void
.end method

.method public getFollowersIDsAsync(Ljava/lang/String;JLtwitter4j/TwitterListener;)V
    .locals 6
    .parameter "screenName"
    .parameter "cursor"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2212
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$92;

    const/16 v2, 0x1e

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p2, p3}, Ljava/lang/Long;-><init>(J)V

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p4, v3}, Ltwitter4j/AsyncTwitter$92;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2219
    return-void
.end method

.method public getFollowersIDsAsync(Ljava/lang/String;Ltwitter4j/Paging;Ltwitter4j/TwitterListener;)V
    .locals 5
    .parameter "screenName"
    .parameter "paging"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2191
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$91;

    const/16 v2, 0x1e

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-direct {v1, p0, v2, p3, v3}, Ltwitter4j/AsyncTwitter$91;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2198
    return-void
.end method

.method public getFollowersIDsAsync(Ljava/lang/String;Ltwitter4j/TwitterListener;)V
    .locals 5
    .parameter "screenName"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2171
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$90;

    const/16 v2, 0x1e

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Ltwitter4j/AsyncTwitter$90;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2176
    return-void
.end method

.method public getFollowersIDsAsync(Ltwitter4j/Paging;Ltwitter4j/TwitterListener;)V
    .locals 5
    .parameter "paging"
    .parameter "listener"

    .prologue
    .line 2077
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$85;

    const/16 v2, 0x1e

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Ltwitter4j/AsyncTwitter$85;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2083
    return-void
.end method

.method public getFollowersIDsAsync(Ltwitter4j/TwitterListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 2059
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$84;

    const/16 v2, 0x1e

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Ltwitter4j/AsyncTwitter$84;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2064
    return-void
.end method

.method public getFollowersStatusesAsync(Ljava/lang/String;Ltwitter4j/Paging;Ltwitter4j/TwitterListener;)V
    .locals 5
    .parameter "id"
    .parameter "paging"
    .parameter "listener"

    .prologue
    .line 1437
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$53;

    const/4 v2, 0x7

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-direct {v1, p0, v2, p3, v3}, Ltwitter4j/AsyncTwitter$53;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1442
    return-void
.end method

.method public getFollowersStatusesAsync(Ljava/lang/String;Ltwitter4j/TwitterListener;)V
    .locals 5
    .parameter "id"
    .parameter "listener"

    .prologue
    .line 1406
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$52;

    const/4 v2, 0x7

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Ltwitter4j/AsyncTwitter$52;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1411
    return-void
.end method

.method public getFollowersStatusesAsync(Ltwitter4j/Paging;Ltwitter4j/TwitterListener;)V
    .locals 5
    .parameter "paging"
    .parameter "listener"

    .prologue
    .line 1362
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$51;

    const/4 v2, 0x7

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Ltwitter4j/AsyncTwitter$51;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1367
    return-void
.end method

.method public getFollowersStatusesAsync(Ltwitter4j/TwitterListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 1333
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$50;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Ltwitter4j/AsyncTwitter$50;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1338
    return-void
.end method

.method public getFriendsAsync(ILtwitter4j/TwitterListener;)V
    .locals 1
    .parameter "page"
    .parameter "listener"

    .prologue
    .line 1240
    new-instance v0, Ltwitter4j/Paging;

    invoke-direct {v0, p1}, Ltwitter4j/Paging;-><init>(I)V

    invoke-virtual {p0, v0, p2}, Ltwitter4j/AsyncTwitter;->getFriendsStatusesAsync(Ltwitter4j/Paging;Ltwitter4j/TwitterListener;)V

    .line 1241
    return-void
.end method

.method public getFriendsAsync(Ljava/lang/String;ILtwitter4j/TwitterListener;)V
    .locals 1
    .parameter "id"
    .parameter "page"
    .parameter "listener"

    .prologue
    .line 1311
    new-instance v0, Ltwitter4j/Paging;

    invoke-direct {v0, p2}, Ltwitter4j/Paging;-><init>(I)V

    invoke-virtual {p0, p1, v0, p3}, Ltwitter4j/AsyncTwitter;->getFriendsStatusesAsync(Ljava/lang/String;Ltwitter4j/Paging;Ltwitter4j/TwitterListener;)V

    .line 1312
    return-void
.end method

.method public getFriendsAsync(Ljava/lang/String;Ltwitter4j/Paging;Ltwitter4j/TwitterListener;)V
    .locals 0
    .parameter "id"
    .parameter "paging"
    .parameter "listener"

    .prologue
    .line 1281
    invoke-virtual {p0, p1, p2, p3}, Ltwitter4j/AsyncTwitter;->getFriendsStatusesAsync(Ljava/lang/String;Ltwitter4j/Paging;Ltwitter4j/TwitterListener;)V

    .line 1282
    return-void
.end method

.method public getFriendsAsync(Ljava/lang/String;Ltwitter4j/TwitterListener;)V
    .locals 0
    .parameter "id"
    .parameter "listener"

    .prologue
    .line 1252
    invoke-virtual {p0, p1, p2}, Ltwitter4j/AsyncTwitter;->getFriendsStatusesAsync(Ljava/lang/String;Ltwitter4j/TwitterListener;)V

    .line 1253
    return-void
.end method

.method public getFriendsAsync(Ltwitter4j/Paging;Ltwitter4j/TwitterListener;)V
    .locals 0
    .parameter "paging"
    .parameter "listener"

    .prologue
    .line 1212
    invoke-virtual {p0, p1, p2}, Ltwitter4j/AsyncTwitter;->getFriendsStatusesAsync(Ltwitter4j/Paging;Ltwitter4j/TwitterListener;)V

    .line 1213
    return-void
.end method

.method public getFriendsAsync(Ltwitter4j/TwitterListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1183
    invoke-virtual {p0, p1}, Ltwitter4j/AsyncTwitter;->getFriendsStatusesAsync(Ltwitter4j/TwitterListener;)V

    .line 1184
    return-void
.end method

.method public getFriendsIDsAsync(IJLtwitter4j/TwitterListener;)V
    .locals 6
    .parameter "userId"
    .parameter "cursor"
    .parameter "listener"

    .prologue
    .line 1981
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$80;

    const/16 v2, 0x1d

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p2, p3}, Ljava/lang/Long;-><init>(J)V

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p4, v3}, Ltwitter4j/AsyncTwitter$80;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1986
    return-void
.end method

.method public getFriendsIDsAsync(ILtwitter4j/Paging;Ltwitter4j/TwitterListener;)V
    .locals 6
    .parameter "userId"
    .parameter "paging"
    .parameter "listener"

    .prologue
    .line 1963
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$79;

    const/16 v2, 0x1d

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-direct {v1, p0, v2, p3, v3}, Ltwitter4j/AsyncTwitter$79;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1968
    return-void
.end method

.method public getFriendsIDsAsync(ILtwitter4j/TwitterListener;)V
    .locals 6
    .parameter "userId"
    .parameter "listener"

    .prologue
    .line 1944
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$78;

    const/16 v2, 0x1d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Ltwitter4j/AsyncTwitter$78;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1949
    return-void
.end method

.method public getFriendsIDsAsync(JLtwitter4j/TwitterListener;)V
    .locals 6
    .parameter "cursor"
    .parameter "listener"

    .prologue
    .line 1925
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$77;

    const/16 v2, 0x1d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p1, p2}, Ljava/lang/Long;-><init>(J)V

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p3, v3}, Ltwitter4j/AsyncTwitter$77;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1932
    return-void
.end method

.method public getFriendsIDsAsync(Ljava/lang/String;JLtwitter4j/TwitterListener;)V
    .locals 6
    .parameter "screenName"
    .parameter "cursor"
    .parameter "listener"

    .prologue
    .line 2040
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$83;

    const/16 v2, 0x1d

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p2, p3}, Ljava/lang/Long;-><init>(J)V

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p4, v3}, Ltwitter4j/AsyncTwitter$83;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2048
    return-void
.end method

.method public getFriendsIDsAsync(Ljava/lang/String;Ltwitter4j/Paging;Ltwitter4j/TwitterListener;)V
    .locals 5
    .parameter "screenName"
    .parameter "paging"
    .parameter "listener"

    .prologue
    .line 2018
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$82;

    const/16 v2, 0x1d

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-direct {v1, p0, v2, p3, v3}, Ltwitter4j/AsyncTwitter$82;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2026
    return-void
.end method

.method public getFriendsIDsAsync(Ljava/lang/String;Ltwitter4j/TwitterListener;)V
    .locals 5
    .parameter "screenName"
    .parameter "listener"

    .prologue
    .line 1998
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$81;

    const/16 v2, 0x1d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Ltwitter4j/AsyncTwitter$81;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2003
    return-void
.end method

.method public getFriendsIDsAsync(Ltwitter4j/Paging;Ltwitter4j/TwitterListener;)V
    .locals 5
    .parameter "paging"
    .parameter "listener"

    .prologue
    .line 1906
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$76;

    const/16 v2, 0x1d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Ltwitter4j/AsyncTwitter$76;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1913
    return-void
.end method

.method public getFriendsIDsAsync(Ltwitter4j/TwitterListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 1888
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$75;

    const/16 v2, 0x1d

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Ltwitter4j/AsyncTwitter$75;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1893
    return-void
.end method

.method public getFriendsStatusesAsync(Ljava/lang/String;Ltwitter4j/Paging;Ltwitter4j/TwitterListener;)V
    .locals 5
    .parameter "id"
    .parameter "paging"
    .parameter "listener"

    .prologue
    .line 1294
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$49;

    const/4 v2, 0x6

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-direct {v1, p0, v2, p3, v3}, Ltwitter4j/AsyncTwitter$49;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1299
    return-void
.end method

.method public getFriendsStatusesAsync(Ljava/lang/String;Ltwitter4j/TwitterListener;)V
    .locals 5
    .parameter "id"
    .parameter "listener"

    .prologue
    .line 1264
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$48;

    const/4 v2, 0x6

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Ltwitter4j/AsyncTwitter$48;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1269
    return-void
.end method

.method public getFriendsStatusesAsync(Ltwitter4j/Paging;Ltwitter4j/TwitterListener;)V
    .locals 5
    .parameter "paging"
    .parameter "listener"

    .prologue
    .line 1224
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$47;

    const/4 v2, 0x6

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Ltwitter4j/AsyncTwitter$47;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1229
    return-void
.end method

.method public getFriendsStatusesAsync(Ltwitter4j/TwitterListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 1194
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$46;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Ltwitter4j/AsyncTwitter$46;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1199
    return-void
.end method

.method public getFriendsTimelineAsync(ILtwitter4j/TwitterListener;)V
    .locals 1
    .parameter "page"
    .parameter "listener"

    .prologue
    .line 317
    new-instance v0, Ltwitter4j/Paging;

    invoke-direct {v0, p1}, Ltwitter4j/Paging;-><init>(I)V

    invoke-virtual {p0, v0, p2}, Ltwitter4j/AsyncTwitter;->getFriendsTimelineAsync(Ltwitter4j/Paging;Ltwitter4j/TwitterListener;)V

    .line 318
    return-void
.end method

.method public getFriendsTimelineAsync(JILtwitter4j/TwitterListener;)V
    .locals 1
    .parameter "sinceId"
    .parameter "page"
    .parameter "listener"

    .prologue
    .line 332
    new-instance v0, Ltwitter4j/Paging;

    invoke-direct {v0, p3, p1, p2}, Ltwitter4j/Paging;-><init>(IJ)V

    invoke-virtual {p0, v0, p4}, Ltwitter4j/AsyncTwitter;->getFriendsTimelineAsync(Ltwitter4j/Paging;Ltwitter4j/TwitterListener;)V

    .line 333
    return-void
.end method

.method public getFriendsTimelineAsync(JLjava/lang/String;ILtwitter4j/TwitterListener;)V
    .locals 2
    .parameter "sinceId"
    .parameter "id"
    .parameter "page"
    .parameter "listener"

    .prologue
    .line 400
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The Twitter API is not supporting this method anymore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFriendsTimelineAsync(JLtwitter4j/TwitterListener;)V
    .locals 1
    .parameter "sinceId"
    .parameter "listener"

    .prologue
    .line 430
    new-instance v0, Ltwitter4j/Paging;

    invoke-direct {v0, p1, p2}, Ltwitter4j/Paging;-><init>(J)V

    invoke-virtual {p0, v0, p3}, Ltwitter4j/AsyncTwitter;->getFriendsTimelineAsync(Ltwitter4j/Paging;Ltwitter4j/TwitterListener;)V

    .line 431
    return-void
.end method

.method public getFriendsTimelineAsync(Ljava/lang/String;ILtwitter4j/TwitterListener;)V
    .locals 2
    .parameter "id"
    .parameter "page"
    .parameter "listener"

    .prologue
    .line 386
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The Twitter API is not supporting this method anymore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFriendsTimelineAsync(Ljava/lang/String;JLtwitter4j/TwitterListener;)V
    .locals 2
    .parameter "id"
    .parameter "sinceId"
    .parameter "listener"

    .prologue
    .line 456
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The Twitter API is not supporting this method anymore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFriendsTimelineAsync(Ljava/lang/String;Ljava/util/Date;Ltwitter4j/TwitterListener;)V
    .locals 2
    .parameter "id"
    .parameter "since"
    .parameter "listener"

    .prologue
    .line 443
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The Twitter API is not supporting this method anymore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFriendsTimelineAsync(Ljava/lang/String;Ltwitter4j/Paging;Ltwitter4j/TwitterListener;)V
    .locals 2
    .parameter "id"
    .parameter "paging"
    .parameter "listener"

    .prologue
    .line 358
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The Twitter API is not supporting this method anymore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFriendsTimelineAsync(Ljava/lang/String;Ltwitter4j/TwitterListener;)V
    .locals 2
    .parameter "id"
    .parameter "listener"

    .prologue
    .line 344
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The Twitter API is not supporting this method anymore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFriendsTimelineAsync(Ljava/util/Date;Ltwitter4j/TwitterListener;)V
    .locals 5
    .parameter "since"
    .parameter "listener"

    .prologue
    const/4 v4, 0x1

    .line 413
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$15;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v4, p2, v2}, Ltwitter4j/AsyncTwitter$15;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 418
    return-void
.end method

.method public getFriendsTimelineAsync(Ltwitter4j/Paging;Ltwitter4j/TwitterListener;)V
    .locals 5
    .parameter "paging"
    .parameter "listener"

    .prologue
    const/4 v4, 0x1

    .line 289
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$14;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v4, p2, v2}, Ltwitter4j/AsyncTwitter$14;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 294
    return-void
.end method

.method public getFriendsTimelineAsync(Ltwitter4j/TwitterListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 271
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$13;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Ltwitter4j/AsyncTwitter$13;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 276
    return-void
.end method

.method public getFriendsTimelineByPageAsync(ILtwitter4j/TwitterListener;)V
    .locals 1
    .parameter "page"
    .parameter "listener"

    .prologue
    .line 305
    new-instance v0, Ltwitter4j/Paging;

    invoke-direct {v0, p1}, Ltwitter4j/Paging;-><init>(I)V

    invoke-virtual {p0, v0, p2}, Ltwitter4j/AsyncTwitter;->getFriendsTimelineAsync(Ltwitter4j/Paging;Ltwitter4j/TwitterListener;)V

    .line 306
    return-void
.end method

.method public getFriendsTimelineByPageAsync(Ljava/lang/String;ILtwitter4j/TwitterListener;)V
    .locals 2
    .parameter "id"
    .parameter "page"
    .parameter "listener"

    .prologue
    .line 371
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The Twitter API is not supporting this method anymore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHomeTimelineAsync(Ltwitter4j/Paging;Ltwitter4j/TwitterListener;)V
    .locals 5
    .parameter "paging"
    .parameter "listener"

    .prologue
    .line 257
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$12;

    const/16 v2, 0x33

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Ltwitter4j/AsyncTwitter$12;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 262
    return-void
.end method

.method public getHomeTimelineAsync(Ltwitter4j/TwitterListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 241
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$11;

    const/16 v2, 0x33

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Ltwitter4j/AsyncTwitter$11;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 246
    return-void
.end method

.method public getMentionsAsync(Ltwitter4j/Paging;Ltwitter4j/TwitterListener;)V
    .locals 5
    .parameter "paging"
    .parameter "listener"

    .prologue
    .line 696
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$25;

    const/16 v2, 0x25

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Ltwitter4j/AsyncTwitter$25;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 701
    return-void
.end method

.method public getMentionsAsync(Ltwitter4j/TwitterListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 680
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$24;

    const/16 v2, 0x25

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Ltwitter4j/AsyncTwitter$24;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 685
    return-void
.end method

.method public getPublicTimelineAsync(ILtwitter4j/TwitterListener;)V
    .locals 2
    .parameter "sinceID"
    .parameter "listener"

    .prologue
    .line 215
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1, p2}, Ltwitter4j/AsyncTwitter;->getPublicTimelineAsync(JLtwitter4j/TwitterListener;)V

    .line 216
    return-void
.end method

.method public getPublicTimelineAsync(JLtwitter4j/TwitterListener;)V
    .locals 5
    .parameter "sinceID"
    .parameter "listener"

    .prologue
    const/4 v4, 0x0

    .line 226
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$10;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Long;

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p1, p2}, Ljava/lang/Long;-><init>(J)V

    aput-object v3, v2, v4

    invoke-direct {v1, p0, v4, p3, v2}, Ltwitter4j/AsyncTwitter$10;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 231
    return-void
.end method

.method public getPublicTimelineAsync(Ltwitter4j/TwitterListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 199
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$9;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Ltwitter4j/AsyncTwitter$9;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 204
    return-void
.end method

.method public getRepliesAsync(ILtwitter4j/TwitterListener;)V
    .locals 1
    .parameter "page"
    .parameter "listener"

    .prologue
    .line 830
    new-instance v0, Ltwitter4j/Paging;

    invoke-direct {v0, p1}, Ltwitter4j/Paging;-><init>(I)V

    invoke-virtual {p0, v0, p2}, Ltwitter4j/AsyncTwitter;->getMentionsAsync(Ltwitter4j/Paging;Ltwitter4j/TwitterListener;)V

    .line 831
    return-void
.end method

.method public getRepliesAsync(JILtwitter4j/TwitterListener;)V
    .locals 1
    .parameter "sinceId"
    .parameter "page"
    .parameter "listener"

    .prologue
    .line 844
    new-instance v0, Ltwitter4j/Paging;

    invoke-direct {v0, p3, p1, p2}, Ltwitter4j/Paging;-><init>(IJ)V

    invoke-virtual {p0, v0, p4}, Ltwitter4j/AsyncTwitter;->getMentionsAsync(Ltwitter4j/Paging;Ltwitter4j/TwitterListener;)V

    .line 845
    return-void
.end method

.method public getRepliesAsync(JLtwitter4j/TwitterListener;)V
    .locals 1
    .parameter "sinceId"
    .parameter "listener"

    .prologue
    .line 806
    new-instance v0, Ltwitter4j/Paging;

    invoke-direct {v0, p1, p2}, Ltwitter4j/Paging;-><init>(J)V

    invoke-virtual {p0, v0, p3}, Ltwitter4j/AsyncTwitter;->getMentionsAsync(Ltwitter4j/Paging;Ltwitter4j/TwitterListener;)V

    .line 807
    return-void
.end method

.method public getRepliesAsync(Ltwitter4j/TwitterListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 665
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$23;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Ltwitter4j/AsyncTwitter$23;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 670
    return-void
.end method

.method public getRepliesByPageAsync(ILtwitter4j/TwitterListener;)V
    .locals 1
    .parameter "page"
    .parameter "listener"

    .prologue
    .line 817
    new-instance v0, Ltwitter4j/Paging;

    invoke-direct {v0, p1}, Ltwitter4j/Paging;-><init>(I)V

    invoke-virtual {p0, v0, p2}, Ltwitter4j/AsyncTwitter;->getMentionsAsync(Ltwitter4j/Paging;Ltwitter4j/TwitterListener;)V

    .line 818
    return-void
.end method

.method public getRetweetedByMeAsync(Ltwitter4j/Paging;Ltwitter4j/TwitterListener;)V
    .locals 5
    .parameter "paging"
    .parameter "listener"

    .prologue
    .line 727
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$27;

    const/16 v2, 0x35

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Ltwitter4j/AsyncTwitter$27;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 732
    return-void
.end method

.method public getRetweetedByMeAsync(Ltwitter4j/TwitterListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 711
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$26;

    const/16 v2, 0x35

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Ltwitter4j/AsyncTwitter$26;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 716
    return-void
.end method

.method public getRetweetedToMeAsync(Ltwitter4j/Paging;Ltwitter4j/TwitterListener;)V
    .locals 5
    .parameter "paging"
    .parameter "listener"

    .prologue
    .line 758
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$29;

    const/16 v2, 0x36

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Ltwitter4j/AsyncTwitter$29;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 763
    return-void
.end method

.method public getRetweetedToMeAsync(Ltwitter4j/TwitterListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 742
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$28;

    const/16 v2, 0x36

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Ltwitter4j/AsyncTwitter$28;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 747
    return-void
.end method

.method public getRetweetsOfMeAsync(Ltwitter4j/Paging;Ltwitter4j/TwitterListener;)V
    .locals 5
    .parameter "paging"
    .parameter "listener"

    .prologue
    .line 789
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$31;

    const/16 v2, 0x37

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Ltwitter4j/AsyncTwitter$31;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 794
    return-void
.end method

.method public getRetweetsOfMeAsync(Ltwitter4j/TwitterListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 773
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$30;

    const/16 v2, 0x37

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Ltwitter4j/AsyncTwitter$30;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 778
    return-void
.end method

.method public getSentDirectMessagesAsync(IILtwitter4j/TwitterListener;)V
    .locals 3
    .parameter "page"
    .parameter "sinceId"
    .parameter "listener"

    .prologue
    .line 1624
    new-instance v0, Ltwitter4j/Paging;

    int-to-long v1, p2

    invoke-direct {v0, p1, v1, v2}, Ltwitter4j/Paging;-><init>(IJ)V

    invoke-virtual {p0, v0, p3}, Ltwitter4j/AsyncTwitter;->getSentDirectMessagesAsync(Ltwitter4j/Paging;Ltwitter4j/TwitterListener;)V

    .line 1625
    return-void
.end method

.method public getSentDirectMessagesAsync(ILtwitter4j/TwitterListener;)V
    .locals 3
    .parameter "sinceId"
    .parameter "listener"

    .prologue
    .line 1609
    new-instance v0, Ltwitter4j/Paging;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Ltwitter4j/Paging;-><init>(J)V

    invoke-virtual {p0, v0, p2}, Ltwitter4j/AsyncTwitter;->getSentDirectMessagesAsync(Ltwitter4j/Paging;Ltwitter4j/TwitterListener;)V

    .line 1610
    return-void
.end method

.method public getSentDirectMessagesAsync(Ljava/util/Date;Ltwitter4j/TwitterListener;)V
    .locals 5
    .parameter "since"
    .parameter "listener"

    .prologue
    .line 1593
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$60;

    const/16 v2, 0xa

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Ltwitter4j/AsyncTwitter$60;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1598
    return-void
.end method

.method public getSentDirectMessagesAsync(Ltwitter4j/Paging;Ltwitter4j/TwitterListener;)V
    .locals 5
    .parameter "paging"
    .parameter "listener"

    .prologue
    .line 1577
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$59;

    const/16 v2, 0xa

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Ltwitter4j/AsyncTwitter$59;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1582
    return-void
.end method

.method public getSentDirectMessagesAsync(Ltwitter4j/TwitterListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 1561
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$58;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Ltwitter4j/AsyncTwitter$58;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1566
    return-void
.end method

.method public getTrendsAsync(Ltwitter4j/TwitterListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 75
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$2;

    const/16 v2, 0x2c

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Ltwitter4j/AsyncTwitter$2;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 81
    return-void
.end method

.method public getUserDetailAsync(Ljava/lang/String;Ltwitter4j/TwitterListener;)V
    .locals 0
    .parameter "id"
    .parameter "listener"

    .prologue
    .line 1156
    invoke-virtual {p0, p1, p2}, Ltwitter4j/AsyncTwitter;->showUserAsync(Ljava/lang/String;Ltwitter4j/TwitterListener;)V

    .line 1157
    return-void
.end method

.method public getUserTimelineAsync(IJLtwitter4j/TwitterListener;)V
    .locals 1
    .parameter "count"
    .parameter "sinceId"
    .parameter "listener"

    .prologue
    .line 597
    new-instance v0, Ltwitter4j/Paging;

    invoke-direct {v0, p2, p3}, Ltwitter4j/Paging;-><init>(J)V

    invoke-virtual {v0, p1}, Ltwitter4j/Paging;->count(I)Ltwitter4j/Paging;

    move-result-object v0

    invoke-virtual {p0, v0, p4}, Ltwitter4j/AsyncTwitter;->getUserTimelineAsync(Ltwitter4j/Paging;Ltwitter4j/TwitterListener;)V

    .line 598
    return-void
.end method

.method public getUserTimelineAsync(ILjava/util/Date;Ltwitter4j/TwitterListener;)V
    .locals 6
    .parameter "count"
    .parameter "since"
    .parameter "listener"

    .prologue
    const/4 v5, 0x2

    .line 557
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$19;

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-direct {v1, p0, v5, p3, v2}, Ltwitter4j/AsyncTwitter$19;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 562
    return-void
.end method

.method public getUserTimelineAsync(JLtwitter4j/TwitterListener;)V
    .locals 1
    .parameter "sinceId"
    .parameter "listener"

    .prologue
    .line 654
    new-instance v0, Ltwitter4j/Paging;

    invoke-direct {v0, p1, p2}, Ltwitter4j/Paging;-><init>(J)V

    invoke-virtual {p0, v0, p3}, Ltwitter4j/AsyncTwitter;->getUserTimelineAsync(Ltwitter4j/Paging;Ltwitter4j/TwitterListener;)V

    .line 655
    return-void
.end method

.method public getUserTimelineAsync(Ljava/lang/String;IJLtwitter4j/TwitterListener;)V
    .locals 1
    .parameter "id"
    .parameter "page"
    .parameter "sinceId"
    .parameter "listener"

    .prologue
    .line 514
    new-instance v0, Ltwitter4j/Paging;

    invoke-direct {v0, p2, p3, p4}, Ltwitter4j/Paging;-><init>(IJ)V

    invoke-virtual {p0, p1, v0, p5}, Ltwitter4j/AsyncTwitter;->getUserTimelineAsync(Ljava/lang/String;Ltwitter4j/Paging;Ltwitter4j/TwitterListener;)V

    .line 515
    return-void
.end method

.method public getUserTimelineAsync(Ljava/lang/String;ILjava/util/Date;Ltwitter4j/TwitterListener;)V
    .locals 6
    .parameter "id"
    .parameter "count"
    .parameter "since"
    .parameter "listener"

    .prologue
    const/4 v5, 0x2

    .line 470
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$16;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    aput-object p3, v2, v5

    invoke-direct {v1, p0, v5, p4, v2}, Ltwitter4j/AsyncTwitter$16;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 475
    return-void
.end method

.method public getUserTimelineAsync(Ljava/lang/String;ILtwitter4j/TwitterListener;)V
    .locals 1
    .parameter "id"
    .parameter "count"
    .parameter "listener"

    .prologue
    .line 544
    new-instance v0, Ltwitter4j/Paging;

    invoke-direct {v0}, Ltwitter4j/Paging;-><init>()V

    invoke-virtual {v0, p2}, Ltwitter4j/Paging;->count(I)Ltwitter4j/Paging;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Ltwitter4j/AsyncTwitter;->getUserTimelineAsync(Ljava/lang/String;Ltwitter4j/Paging;Ltwitter4j/TwitterListener;)V

    .line 545
    return-void
.end method

.method public getUserTimelineAsync(Ljava/lang/String;JLtwitter4j/TwitterListener;)V
    .locals 1
    .parameter "id"
    .parameter "sinceId"
    .parameter "listener"

    .prologue
    .line 627
    new-instance v0, Ltwitter4j/Paging;

    invoke-direct {v0, p2, p3}, Ltwitter4j/Paging;-><init>(J)V

    invoke-virtual {p0, p1, v0, p4}, Ltwitter4j/AsyncTwitter;->getUserTimelineAsync(Ljava/lang/String;Ltwitter4j/Paging;Ltwitter4j/TwitterListener;)V

    .line 628
    return-void
.end method

.method public getUserTimelineAsync(Ljava/lang/String;Ljava/util/Date;Ltwitter4j/TwitterListener;)V
    .locals 5
    .parameter "id"
    .parameter "since"
    .parameter "listener"

    .prologue
    const/4 v4, 0x2

    .line 527
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$18;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-direct {v1, p0, v4, p3, v2}, Ltwitter4j/AsyncTwitter$18;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 532
    return-void
.end method

.method public getUserTimelineAsync(Ljava/lang/String;Ltwitter4j/Paging;Ltwitter4j/TwitterListener;)V
    .locals 5
    .parameter "id"
    .parameter "paging"
    .parameter "listener"

    .prologue
    const/4 v4, 0x2

    .line 489
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$17;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-direct {v1, p0, v4, p3, v2}, Ltwitter4j/AsyncTwitter$17;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 497
    return-void
.end method

.method public getUserTimelineAsync(Ljava/lang/String;Ltwitter4j/TwitterListener;)V
    .locals 5
    .parameter "id"
    .parameter "listener"

    .prologue
    .line 608
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$21;

    const/4 v2, 0x2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Ltwitter4j/AsyncTwitter$21;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 613
    return-void
.end method

.method public getUserTimelineAsync(Ltwitter4j/Paging;Ltwitter4j/TwitterListener;)V
    .locals 5
    .parameter "paging"
    .parameter "listener"

    .prologue
    .line 575
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$20;

    const/4 v2, 0x2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Ltwitter4j/AsyncTwitter$20;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 582
    return-void
.end method

.method public getUserTimelineAsync(Ltwitter4j/TwitterListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 637
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$22;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Ltwitter4j/AsyncTwitter$22;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 642
    return-void
.end method

.method public getWeeklyTrendsAsync(Ljava/util/Date;ZLtwitter4j/TwitterListener;)V
    .locals 6
    .parameter "date"
    .parameter "excludeHashTags"
    .parameter "listener"

    .prologue
    .line 181
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$8;

    const/16 v2, 0x2f

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p3, v3}, Ltwitter4j/AsyncTwitter$8;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 189
    return-void
.end method

.method public getWeeklyTrendsAsync(Ltwitter4j/TwitterListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 162
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$7;

    const/16 v2, 0x2f

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Ltwitter4j/AsyncTwitter$7;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 169
    return-void
.end method

.method public leaveAsync(Ljava/lang/String;)V
    .locals 6
    .parameter "id"

    .prologue
    .line 2693
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$113;

    const/16 v2, 0xf

    new-instance v3, Ltwitter4j/TwitterAdapter;

    invoke-direct {v3}, Ltwitter4j/TwitterAdapter;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-direct {v1, p0, v2, v3, v4}, Ltwitter4j/AsyncTwitter$113;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2698
    return-void
.end method

.method public leaveAsync(Ljava/lang/String;Ltwitter4j/TwitterListener;)V
    .locals 5
    .parameter "id"
    .parameter "listener"

    .prologue
    .line 2660
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$111;

    const/16 v2, 0xf

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Ltwitter4j/AsyncTwitter$111;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2665
    return-void
.end method

.method public rateLimitStatusAsync(Ltwitter4j/TwitterListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 2284
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$95;

    const/16 v2, 0x1c

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2, p1, v3}, Ltwitter4j/AsyncTwitter$95;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2289
    return-void
.end method

.method public retweetStatusAsync(J)V
    .locals 1
    .parameter "statusId"

    .prologue
    .line 1144
    new-instance v0, Ltwitter4j/TwitterAdapter;

    invoke-direct {v0}, Ltwitter4j/TwitterAdapter;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Ltwitter4j/AsyncTwitter;->retweetStatusAsync(JLtwitter4j/TwitterListener;)V

    .line 1145
    return-void
.end method

.method public retweetStatusAsync(JLtwitter4j/TwitterListener;)V
    .locals 6
    .parameter "statusId"
    .parameter "listener"

    .prologue
    .line 1129
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$44;

    const/16 v2, 0x34

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Long;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p1, p2}, Ljava/lang/Long;-><init>(J)V

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p3, v3}, Ltwitter4j/AsyncTwitter$44;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1134
    return-void
.end method

.method public searchAcync(Ltwitter4j/Query;Ltwitter4j/TwitterListener;)V
    .locals 5
    .parameter "query"
    .parameter "listener"

    .prologue
    .line 60
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$1;

    const/16 v2, 0x1b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Ltwitter4j/AsyncTwitter$1;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 65
    return-void
.end method

.method public sendDirectMessageAsync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "id"
    .parameter "text"

    .prologue
    .line 1653
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$62;

    const/16 v2, 0xb

    new-instance v3, Ltwitter4j/TwitterAdapter;

    invoke-direct {v3}, Ltwitter4j/TwitterAdapter;-><init>()V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-direct {v1, p0, v2, v3, v4}, Ltwitter4j/AsyncTwitter$62;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1658
    return-void
.end method

.method public sendDirectMessageAsync(Ljava/lang/String;Ljava/lang/String;Ltwitter4j/TwitterListener;)V
    .locals 5
    .parameter "id"
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 1637
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$61;

    const/16 v2, 0xb

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-direct {v1, p0, v2, p3, v3}, Ltwitter4j/AsyncTwitter$61;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1642
    return-void
.end method

.method public showAsync(ILtwitter4j/TwitterListener;)V
    .locals 2
    .parameter "id"
    .parameter "listener"

    .prologue
    .line 856
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1, p2}, Ltwitter4j/AsyncTwitter;->showAsync(JLtwitter4j/TwitterListener;)V

    .line 857
    return-void
.end method

.method public showAsync(JLtwitter4j/TwitterListener;)V
    .locals 6
    .parameter "id"
    .parameter "listener"

    .prologue
    .line 869
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$32;

    const/4 v2, 0x3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p1, p2}, Ljava/lang/Long;-><init>(J)V

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p3, v3}, Ltwitter4j/AsyncTwitter$32;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 874
    return-void
.end method

.method public showStatusAsync(JLtwitter4j/TwitterListener;)V
    .locals 6
    .parameter "id"
    .parameter "listener"

    .prologue
    .line 885
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$33;

    const/16 v2, 0x26

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p1, p2}, Ljava/lang/Long;-><init>(J)V

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p3, v3}, Ltwitter4j/AsyncTwitter$33;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 890
    return-void
.end method

.method public showUserAsync(Ljava/lang/String;Ltwitter4j/TwitterListener;)V
    .locals 5
    .parameter "id"
    .parameter "listener"

    .prologue
    .line 1168
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$45;

    const/16 v2, 0x9

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Ltwitter4j/AsyncTwitter$45;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1173
    return-void
.end method

.method public shutdown()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2900
    sget-object v0, Ltwitter4j/AsyncTwitter;->class$twitter4j$AsyncTwitter:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "twitter4j.AsyncTwitter"

    invoke-static {v0}, Ltwitter4j/AsyncTwitter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ltwitter4j/AsyncTwitter;->class$twitter4j$AsyncTwitter:Ljava/lang/Class;

    :goto_0
    monitor-enter v0

    .line 2901
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Ltwitter4j/AsyncTwitter;->shutdown:Z

    if-eqz v2, :cond_1

    .line 2902
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already shut down"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2907
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2900
    :cond_0
    sget-object v0, Ltwitter4j/AsyncTwitter;->class$twitter4j$AsyncTwitter:Ljava/lang/Class;

    goto :goto_0

    .line 2904
    :cond_1
    :try_start_1
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v1

    invoke-virtual {v1}, Ltwitter4j/Dispatcher;->shutdown()V

    .line 2905
    const/4 v1, 0x0

    sput-object v1, Ltwitter4j/AsyncTwitter;->dispatcher:Ltwitter4j/Dispatcher;

    .line 2906
    const/4 v1, 0x1

    iput-boolean v1, p0, Ltwitter4j/AsyncTwitter;->shutdown:Z

    .line 2907
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2908
    return-void
.end method

.method public testAsync()V
    .locals 5

    .prologue
    .line 2884
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$122;

    const/16 v2, 0x18

    new-instance v3, Ltwitter4j/TwitterAdapter;

    invoke-direct {v3}, Ltwitter4j/TwitterAdapter;-><init>()V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2, v3, v4}, Ltwitter4j/AsyncTwitter$122;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2889
    return-void
.end method

.method public unblockAsync(Ljava/lang/String;)V
    .locals 6
    .parameter "id"

    .prologue
    .line 2772
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$116;

    const/16 v2, 0x17

    new-instance v3, Ltwitter4j/TwitterAdapter;

    invoke-direct {v3}, Ltwitter4j/TwitterAdapter;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-direct {v1, p0, v2, v3, v4}, Ltwitter4j/AsyncTwitter$116;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2777
    return-void
.end method

.method public updateAsync(Ljava/lang/String;)V
    .locals 6
    .parameter "status"

    .prologue
    .line 919
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$35;

    const/4 v2, 0x4

    new-instance v3, Ltwitter4j/TwitterAdapter;

    invoke-direct {v3}, Ltwitter4j/TwitterAdapter;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-direct {v1, p0, v2, v3, v4}, Ltwitter4j/AsyncTwitter$35;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 924
    return-void
.end method

.method public updateAsync(Ljava/lang/String;J)V
    .locals 7
    .parameter "status"
    .parameter "inReplyToStatusId"

    .prologue
    .line 992
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$39;

    const/4 v2, 0x4

    new-instance v3, Ltwitter4j/TwitterAdapter;

    invoke-direct {v3}, Ltwitter4j/TwitterAdapter;-><init>()V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, p2, p3}, Ljava/lang/Long;-><init>(J)V

    aput-object v6, v4, v5

    invoke-direct {v1, p0, v2, v3, v4}, Ltwitter4j/AsyncTwitter$39;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 997
    return-void
.end method

.method public updateAsync(Ljava/lang/String;JLtwitter4j/TwitterListener;)V
    .locals 6
    .parameter "status"
    .parameter "inReplyToStatusId"
    .parameter "listener"

    .prologue
    .line 973
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$38;

    const/4 v2, 0x4

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p2, p3}, Ljava/lang/Long;-><init>(J)V

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p4, v3}, Ltwitter4j/AsyncTwitter$38;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 978
    return-void
.end method

.method public updateAsync(Ljava/lang/String;Ltwitter4j/TwitterListener;)V
    .locals 5
    .parameter "status"
    .parameter "listener"

    .prologue
    .line 903
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$34;

    const/4 v2, 0x4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Ltwitter4j/AsyncTwitter$34;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 908
    return-void
.end method

.method public updateDeliverlyDeviceAsync(Ltwitter4j/Twitter$Device;Ltwitter4j/TwitterListener;)V
    .locals 5
    .parameter "device"
    .parameter "listener"

    .prologue
    .line 2301
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$96;

    const/16 v2, 0x14

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Ltwitter4j/AsyncTwitter$96;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2306
    return-void
.end method

.method public updateLocationAsync(Ljava/lang/String;Ltwitter4j/TwitterListener;)V
    .locals 5
    .parameter "location"
    .parameter "listener"

    .prologue
    .line 2230
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$93;

    const/16 v2, 0x14

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Ltwitter4j/AsyncTwitter$93;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2235
    return-void
.end method

.method public updateProfileAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "name"
    .parameter "email"
    .parameter "url"
    .parameter "location"
    .parameter "description"

    .prologue
    .line 2272
    new-instance v6, Ltwitter4j/TwitterAdapter;

    invoke-direct {v6}, Ltwitter4j/TwitterAdapter;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Ltwitter4j/AsyncTwitter;->updateProfileAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltwitter4j/TwitterListener;)V

    .line 2274
    return-void
.end method

.method public updateProfileAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltwitter4j/TwitterListener;)V
    .locals 5
    .parameter "name"
    .parameter "email"
    .parameter "url"
    .parameter "location"
    .parameter "description"
    .parameter "listener"

    .prologue
    .line 2250
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$94;

    const/16 v2, 0x29

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    const/4 v4, 0x4

    aput-object p5, v3, v4

    invoke-direct {v1, p0, v2, p6, v3}, Ltwitter4j/AsyncTwitter$94;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2258
    return-void
.end method

.method public updateProfileColorsAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "profileBackgroundColor"
    .parameter "profileTextColor"
    .parameter "profileLinkColor"
    .parameter "profileSidebarFillColor"
    .parameter "profileSidebarBorderColor"

    .prologue
    .line 2352
    new-instance v6, Ltwitter4j/TwitterAdapter;

    invoke-direct {v6}, Ltwitter4j/TwitterAdapter;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Ltwitter4j/AsyncTwitter;->updateProfileColorsAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltwitter4j/TwitterListener;)V

    .line 2355
    return-void
.end method

.method public updateProfileColorsAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltwitter4j/TwitterListener;)V
    .locals 5
    .parameter "profileBackgroundColor"
    .parameter "profileTextColor"
    .parameter "profileLinkColor"
    .parameter "profileSidebarFillColor"
    .parameter "profileSidebarBorderColor"
    .parameter "listener"

    .prologue
    .line 2324
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$97;

    const/16 v2, 0x1f

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    const/4 v4, 0x4

    aput-object p5, v3, v4

    invoke-direct {v1, p0, v2, p6, v3}, Ltwitter4j/AsyncTwitter$97;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2335
    return-void
.end method

.method public updateStatusAsync(Ljava/lang/String;)V
    .locals 6
    .parameter "status"

    .prologue
    .line 953
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$37;

    const/16 v2, 0x27

    new-instance v3, Ltwitter4j/TwitterAdapter;

    invoke-direct {v3}, Ltwitter4j/TwitterAdapter;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-direct {v1, p0, v2, v3, v4}, Ltwitter4j/AsyncTwitter$37;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 958
    return-void
.end method

.method public updateStatusAsync(Ljava/lang/String;J)V
    .locals 7
    .parameter "status"
    .parameter "inReplyToStatusId"

    .prologue
    .line 1029
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$41;

    const/16 v2, 0x27

    new-instance v3, Ltwitter4j/TwitterAdapter;

    invoke-direct {v3}, Ltwitter4j/TwitterAdapter;-><init>()V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, p2, p3}, Ljava/lang/Long;-><init>(J)V

    aput-object v6, v4, v5

    invoke-direct {v1, p0, v2, v3, v4}, Ltwitter4j/AsyncTwitter$41;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1034
    return-void
.end method

.method public updateStatusAsync(Ljava/lang/String;JLtwitter4j/TwitterListener;)V
    .locals 6
    .parameter "status"
    .parameter "inReplyToStatusId"
    .parameter "listener"

    .prologue
    .line 1011
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$40;

    const/16 v2, 0x27

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p2, p3}, Ljava/lang/Long;-><init>(J)V

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p4, v3}, Ltwitter4j/AsyncTwitter$40;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1016
    return-void
.end method

.method public updateStatusAsync(Ljava/lang/String;Ltwitter4j/TwitterListener;)V
    .locals 5
    .parameter "status"
    .parameter "listener"

    .prologue
    .line 937
    invoke-direct {p0}, Ltwitter4j/AsyncTwitter;->getDispatcher()Ltwitter4j/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitter$36;

    const/16 v2, 0x27

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Ltwitter4j/AsyncTwitter$36;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ltwitter4j/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 942
    return-void
.end method
