.class Ltwitter4j/AsyncTwitterImpl;
.super Ltwitter4j/TwitterBaseImpl;
.source "AsyncTwitterImpl.java"

# interfaces
.implements Ltwitter4j/AsyncTwitter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltwitter4j/AsyncTwitterImpl$AsyncTask;
    }
.end annotation


# static fields
.field static class$twitter4j$AsyncTwitterImpl:Ljava/lang/Class; = null

.field private static transient dispatcher:Ltwitter4j/internal/async/Dispatcher; = null

.field private static final serialVersionUID:J = -0x1be038d7c798e703L


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltwitter4j/TwitterListener;",
            ">;"
        }
    .end annotation
.end field

.field private final twitter:Ltwitter4j/Twitter;


# direct methods
.method constructor <init>(Ltwitter4j/conf/Configuration;)V
    .locals 2
    .parameter "conf"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Ltwitter4j/TwitterBaseImpl;-><init>(Ltwitter4j/conf/Configuration;)V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    .line 54
    new-instance v0, Ltwitter4j/TwitterFactory;

    invoke-direct {v0, p1}, Ltwitter4j/TwitterFactory;-><init>(Ltwitter4j/conf/Configuration;)V

    iget-object v1, p0, Ltwitter4j/AsyncTwitterImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-virtual {v0, v1}, Ltwitter4j/TwitterFactory;->getInstance(Ltwitter4j/auth/Authorization;)Ltwitter4j/Twitter;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/AsyncTwitterImpl;->twitter:Ltwitter4j/Twitter;

    .line 55
    return-void
.end method

.method constructor <init>(Ltwitter4j/conf/Configuration;Ltwitter4j/auth/Authorization;)V
    .locals 1
    .parameter "conf"
    .parameter "auth"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ltwitter4j/TwitterBaseImpl;-><init>(Ltwitter4j/conf/Configuration;Ltwitter4j/auth/Authorization;)V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    .line 60
    new-instance v0, Ltwitter4j/TwitterFactory;

    invoke-direct {v0, p1}, Ltwitter4j/TwitterFactory;-><init>(Ltwitter4j/conf/Configuration;)V

    invoke-virtual {v0, p2}, Ltwitter4j/TwitterFactory;->getInstance(Ltwitter4j/auth/Authorization;)Ltwitter4j/Twitter;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/AsyncTwitterImpl;->twitter:Ltwitter4j/Twitter;

    .line 61
    return-void
.end method

.method static access$000(Ltwitter4j/AsyncTwitterImpl;)Ltwitter4j/Twitter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Ltwitter4j/AsyncTwitterImpl;->twitter:Ltwitter4j/Twitter;

    return-object v0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .parameter "x0"

    .prologue
    .line 2630
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

.method private getDispatcher()Ltwitter4j/internal/async/Dispatcher;
    .locals 3

    .prologue
    .line 2640
    sget-object v0, Ltwitter4j/AsyncTwitterImpl;->dispatcher:Ltwitter4j/internal/async/Dispatcher;

    if-nez v0, :cond_1

    .line 2641
    sget-object v0, Ltwitter4j/AsyncTwitterImpl;->class$twitter4j$AsyncTwitterImpl:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string v0, "twitter4j.AsyncTwitterImpl"

    invoke-static {v0}, Ltwitter4j/AsyncTwitterImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ltwitter4j/AsyncTwitterImpl;->class$twitter4j$AsyncTwitterImpl:Ljava/lang/Class;

    :goto_0
    monitor-enter v0

    .line 2642
    :try_start_0
    sget-object v1, Ltwitter4j/AsyncTwitterImpl;->dispatcher:Ltwitter4j/internal/async/Dispatcher;

    if-nez v1, :cond_0

    .line 2646
    new-instance v1, Ltwitter4j/internal/async/DispatcherFactory;

    iget-object v2, p0, Ltwitter4j/AsyncTwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v1, v2}, Ltwitter4j/internal/async/DispatcherFactory;-><init>(Ltwitter4j/conf/Configuration;)V

    invoke-virtual {v1}, Ltwitter4j/internal/async/DispatcherFactory;->getInstance()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v1

    sput-object v1, Ltwitter4j/AsyncTwitterImpl;->dispatcher:Ltwitter4j/internal/async/Dispatcher;

    .line 2648
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2650
    :cond_1
    sget-object v0, Ltwitter4j/AsyncTwitterImpl;->dispatcher:Ltwitter4j/internal/async/Dispatcher;

    return-object v0

    .line 2641
    :cond_2
    sget-object v0, Ltwitter4j/AsyncTwitterImpl;->class$twitter4j$AsyncTwitterImpl:Ljava/lang/Class;

    goto :goto_0

    .line 2648
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public addListener(Ltwitter4j/TwitterListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 67
    iget-object v0, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method public addUserListMember(IJ)V
    .locals 8
    .parameter "listId"
    .parameter "userId"

    .prologue
    .line 1244
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$68;

    sget-object v2, Ltwitter4j/TwitterMethod;->ADD_LIST_MEMBER:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitterImpl$68;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;IJ)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1255
    return-void
.end method

.method public addUserListMembers(I[J)V
    .locals 7
    .parameter "listId"
    .parameter "userIds"

    .prologue
    .line 1261
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$69;

    sget-object v2, Ltwitter4j/TwitterMethod;->ADD_LIST_MEMBERS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$69;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;I[J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1272
    return-void
.end method

.method public addUserListMembers(I[Ljava/lang/String;)V
    .locals 7
    .parameter "listId"
    .parameter "screenNames"

    .prologue
    .line 1278
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$70;

    sget-object v2, Ltwitter4j/TwitterMethod;->ADD_LIST_MEMBERS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$70;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;I[Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1289
    return-void
.end method

.method public checkUserListMembership(Ljava/lang/String;IJ)V
    .locals 9
    .parameter "listOwnerScreenName"
    .parameter "listId"
    .parameter "userId"

    .prologue
    .line 1312
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v8

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$72;

    sget-object v2, Ltwitter4j/TwitterMethod;->CHECK_LIST_MEMBERSHIP:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Ltwitter4j/AsyncTwitterImpl$72;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;IJ)V

    invoke-interface {v8, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1323
    return-void
.end method

.method public checkUserListSubscription(Ljava/lang/String;IJ)V
    .locals 9
    .parameter "listOwnerScreenName"
    .parameter "listId"
    .parameter "userId"

    .prologue
    .line 1382
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v8

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$76;

    sget-object v2, Ltwitter4j/TwitterMethod;->CHECK_LIST_SUBSCRIPTION:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Ltwitter4j/AsyncTwitterImpl$76;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;IJ)V

    invoke-interface {v8, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1393
    return-void
.end method

.method public createBlock(J)V
    .locals 7
    .parameter "userId"

    .prologue
    .line 2248
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$125;

    sget-object v2, Ltwitter4j/TwitterMethod;->CREATE_BLOCK:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$125;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2259
    return-void
.end method

.method public createBlock(Ljava/lang/String;)V
    .locals 4
    .parameter "screenName"

    .prologue
    .line 2231
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$124;

    sget-object v2, Ltwitter4j/TwitterMethod;->CREATE_BLOCK:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$124;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2242
    return-void
.end method

.method public createFavorite(J)V
    .locals 7
    .parameter "id"

    .prologue
    .line 2127
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$118;

    sget-object v2, Ltwitter4j/TwitterMethod;->CREATE_FAVORITE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$118;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2138
    return-void
.end method

.method public createFriendship(J)V
    .locals 7
    .parameter "userId"

    .prologue
    .line 1556
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$86;

    sget-object v2, Ltwitter4j/TwitterMethod;->CREATE_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$86;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1567
    return-void
.end method

.method public createFriendship(JZ)V
    .locals 8
    .parameter "userId"
    .parameter "follow"

    .prologue
    .line 1590
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$88;

    sget-object v2, Ltwitter4j/TwitterMethod;->CREATE_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitterImpl$88;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;JZ)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1601
    return-void
.end method

.method public createFriendship(Ljava/lang/String;)V
    .locals 4
    .parameter "screenName"

    .prologue
    .line 1539
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$85;

    sget-object v2, Ltwitter4j/TwitterMethod;->CREATE_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$85;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1550
    return-void
.end method

.method public createFriendship(Ljava/lang/String;Z)V
    .locals 7
    .parameter "screenName"
    .parameter "follow"

    .prologue
    .line 1573
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$87;

    sget-object v2, Ltwitter4j/TwitterMethod;->CREATE_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$87;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;Z)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1584
    return-void
.end method

.method public createPlace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltwitter4j/GeoLocation;Ljava/lang/String;)V
    .locals 10
    .parameter "name"
    .parameter "containedWithin"
    .parameter "token"
    .parameter "location"
    .parameter "streetAddress"

    .prologue
    .line 2539
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v9

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$142;

    sget-object v2, Ltwitter4j/TwitterMethod;->CREATE_PLACE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Ltwitter4j/AsyncTwitterImpl$142;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltwitter4j/GeoLocation;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2550
    return-void
.end method

.method public createUserList(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 8
    .parameter "listName"
    .parameter "isPublicList"
    .parameter "description"

    .prologue
    .line 1021
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$55;

    sget-object v2, Ltwitter4j/TwitterMethod;->CREATE_USER_LIST:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitterImpl$55;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1032
    return-void
.end method

.method public deleteUserListMember(IJ)V
    .locals 8
    .parameter "listId"
    .parameter "userId"

    .prologue
    .line 1295
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$71;

    sget-object v2, Ltwitter4j/TwitterMethod;->DELETE_LIST_MEMBER:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitterImpl$71;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;IJ)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1306
    return-void
.end method

.method public destroyBlock(J)V
    .locals 7
    .parameter "userId"

    .prologue
    .line 2282
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$127;

    sget-object v2, Ltwitter4j/TwitterMethod;->DESTROY_BLOCK:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$127;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2293
    return-void
.end method

.method public destroyBlock(Ljava/lang/String;)V
    .locals 4
    .parameter "screenName"

    .prologue
    .line 2265
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$126;

    sget-object v2, Ltwitter4j/TwitterMethod;->DESTROY_BLOCK:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$126;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2276
    return-void
.end method

.method public destroyDirectMessage(J)V
    .locals 7
    .parameter "id"

    .prologue
    .line 1503
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$83;

    sget-object v2, Ltwitter4j/TwitterMethod;->DESTROY_DIRECT_MESSAGE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$83;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1514
    return-void
.end method

.method public destroyFavorite(J)V
    .locals 7
    .parameter "id"

    .prologue
    .line 2144
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$119;

    sget-object v2, Ltwitter4j/TwitterMethod;->DESTROY_FAVORITE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$119;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2155
    return-void
.end method

.method public destroyFriendship(J)V
    .locals 7
    .parameter "userId"

    .prologue
    .line 1624
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$90;

    sget-object v2, Ltwitter4j/TwitterMethod;->DESTROY_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$90;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1635
    return-void
.end method

.method public destroyFriendship(Ljava/lang/String;)V
    .locals 4
    .parameter "screenName"

    .prologue
    .line 1607
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$89;

    sget-object v2, Ltwitter4j/TwitterMethod;->DESTROY_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$89;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1618
    return-void
.end method

.method public destroyStatus(J)V
    .locals 7
    .parameter "statusId"

    .prologue
    .line 643
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$33;

    sget-object v2, Ltwitter4j/TwitterMethod;->DESTROY_STATUS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$33;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 654
    return-void
.end method

.method public destroyUserList(I)V
    .locals 4
    .parameter "listId"

    .prologue
    .line 1089
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$59;

    sget-object v2, Ltwitter4j/TwitterMethod;->DESTROY_USER_LIST:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$59;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;I)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1100
    return-void
.end method

.method public disableNotification(J)V
    .locals 7
    .parameter "userId"

    .prologue
    .line 2212
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$123;

    sget-object v2, Ltwitter4j/TwitterMethod;->DISABLE_NOTIFICATION:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$123;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2223
    return-void
.end method

.method public disableNotification(Ljava/lang/String;)V
    .locals 4
    .parameter "screenName"

    .prologue
    .line 2195
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$122;

    sget-object v2, Ltwitter4j/TwitterMethod;->DISABLE_NOTIFICATION:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$122;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2206
    return-void
.end method

.method public enableNotification(J)V
    .locals 7
    .parameter "userId"

    .prologue
    .line 2178
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$121;

    sget-object v2, Ltwitter4j/TwitterMethod;->ENABLE_NOTIFICATION:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$121;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2189
    return-void
.end method

.method public enableNotification(Ljava/lang/String;)V
    .locals 4
    .parameter "screenName"

    .prologue
    .line 2161
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$120;

    sget-object v2, Ltwitter4j/TwitterMethod;->ENABLE_NOTIFICATION:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$120;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2172
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2765
    if-ne p0, p1, :cond_1

    .line 2776
    :cond_0
    :goto_0
    return v1

    .line 2766
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    .line 2767
    :cond_3
    invoke-super {p0, p1}, Ltwitter4j/TwitterBaseImpl;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    move-object v0, p1

    .line 2769
    check-cast v0, Ltwitter4j/AsyncTwitterImpl;

    .line 2771
    .local v0, that:Ltwitter4j/AsyncTwitterImpl;
    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    if-eqz v3, :cond_6

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    iget-object v4, v0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_5
    move v1, v2

    .line 2772
    goto :goto_0

    .line 2771
    :cond_6
    iget-object v3, v0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    if-nez v3, :cond_5

    .line 2773
    :cond_7
    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->twitter:Ltwitter4j/Twitter;

    if-eqz v3, :cond_8

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->twitter:Ltwitter4j/Twitter;

    iget-object v4, v0, Ltwitter4j/AsyncTwitterImpl;->twitter:Ltwitter4j/Twitter;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 2774
    goto :goto_0

    .line 2773
    :cond_8
    iget-object v3, v0, Ltwitter4j/AsyncTwitterImpl;->twitter:Ltwitter4j/Twitter;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public existsBlock(J)V
    .locals 7
    .parameter "userId"

    .prologue
    .line 2316
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$129;

    sget-object v2, Ltwitter4j/TwitterMethod;->EXISTS_BLOCK:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$129;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2327
    return-void
.end method

.method public existsBlock(Ljava/lang/String;)V
    .locals 4
    .parameter "screenName"

    .prologue
    .line 2299
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$128;

    sget-object v2, Ltwitter4j/TwitterMethod;->EXISTS_BLOCK:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$128;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2310
    return-void
.end method

.method public existsFriendship(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "userA"
    .parameter "userB"

    .prologue
    .line 1641
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$91;

    sget-object v2, Ltwitter4j/TwitterMethod;->EXISTS_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$91;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1652
    return-void
.end method

.method public getAccountSettings()V
    .locals 4

    .prologue
    .line 900
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$48;

    sget-object v2, Ltwitter4j/TwitterMethod;->ACCOUNT_SETTINGS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$48;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 911
    return-void
.end method

.method public getAccountTotals()V
    .locals 4

    .prologue
    .line 883
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$47;

    sget-object v2, Ltwitter4j/TwitterMethod;->ACCOUNT_TOTALS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$47;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 894
    return-void
.end method

.method public getAllSubscribingUserLists(J)V
    .locals 7
    .parameter "userId"

    .prologue
    .line 1191
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$65;

    sget-object v2, Ltwitter4j/TwitterMethod;->ALL_USER_LISTS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$65;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1202
    return-void
.end method

.method public getAllSubscribingUserLists(Ljava/lang/String;)V
    .locals 4
    .parameter "screenName"

    .prologue
    .line 1174
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$64;

    sget-object v2, Ltwitter4j/TwitterMethod;->ALL_USER_LISTS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$64;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1185
    return-void
.end method

.method public getAvailableTrends()V
    .locals 4

    .prologue
    .line 2422
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$135;

    sget-object v2, Ltwitter4j/TwitterMethod;->AVAILABLE_TRENDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$135;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2433
    return-void
.end method

.method public getAvailableTrends(Ltwitter4j/GeoLocation;)V
    .locals 4
    .parameter "location"

    .prologue
    .line 2439
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$136;

    sget-object v2, Ltwitter4j/TwitterMethod;->AVAILABLE_TRENDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$136;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ltwitter4j/GeoLocation;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2450
    return-void
.end method

.method public getBlockingUsers()V
    .locals 4

    .prologue
    .line 2333
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$130;

    sget-object v2, Ltwitter4j/TwitterMethod;->BLOCKING_USERS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$130;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2344
    return-void
.end method

.method public getBlockingUsers(I)V
    .locals 4
    .parameter "page"

    .prologue
    .line 2350
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$131;

    sget-object v2, Ltwitter4j/TwitterMethod;->BLOCKING_USERS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$131;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;I)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2361
    return-void
.end method

.method public getBlockingUsersIDs()V
    .locals 4

    .prologue
    .line 2367
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$132;

    sget-object v2, Ltwitter4j/TwitterMethod;->BLOCKING_USERS_IDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$132;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2378
    return-void
.end method

.method public getCurrentTrends()V
    .locals 4

    .prologue
    .line 109
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$3;

    sget-object v2, Ltwitter4j/TwitterMethod;->CURRENT_TRENDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$3;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 121
    return-void
.end method

.method public getCurrentTrends(Z)V
    .locals 4
    .parameter "excludeHashTags"

    .prologue
    .line 127
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$4;

    sget-object v2, Ltwitter4j/TwitterMethod;->CURRENT_TRENDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$4;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Z)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 139
    return-void
.end method

.method public getDailyTrends()V
    .locals 4

    .prologue
    .line 145
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$5;

    sget-object v2, Ltwitter4j/TwitterMethod;->DAILY_TRENDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$5;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 157
    return-void
.end method

.method public getDailyTrends(Ljava/util/Date;Z)V
    .locals 7
    .parameter "date"
    .parameter "excludeHashTags"

    .prologue
    .line 163
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$6;

    sget-object v2, Ltwitter4j/TwitterMethod;->DAILY_TRENDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$6;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/util/Date;Z)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 175
    return-void
.end method

.method public getDirectMessages()V
    .locals 4

    .prologue
    .line 1401
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$77;

    sget-object v2, Ltwitter4j/TwitterMethod;->DIRECT_MESSAGES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$77;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1412
    return-void
.end method

.method public getDirectMessages(Ltwitter4j/Paging;)V
    .locals 4
    .parameter "paging"

    .prologue
    .line 1418
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$78;

    sget-object v2, Ltwitter4j/TwitterMethod;->DIRECT_MESSAGES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$78;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ltwitter4j/Paging;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1429
    return-void
.end method

.method public getFavorites()V
    .locals 4

    .prologue
    .line 2059
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$114;

    sget-object v2, Ltwitter4j/TwitterMethod;->FAVORITES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$114;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2070
    return-void
.end method

.method public getFavorites(I)V
    .locals 4
    .parameter "page"

    .prologue
    .line 2076
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$115;

    sget-object v2, Ltwitter4j/TwitterMethod;->FAVORITES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$115;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;I)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2087
    return-void
.end method

.method public getFavorites(Ljava/lang/String;)V
    .locals 4
    .parameter "id"

    .prologue
    .line 2093
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$116;

    sget-object v2, Ltwitter4j/TwitterMethod;->FAVORITES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$116;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2104
    return-void
.end method

.method public getFavorites(Ljava/lang/String;I)V
    .locals 7
    .parameter "id"
    .parameter "page"

    .prologue
    .line 2110
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$117;

    sget-object v2, Ltwitter4j/TwitterMethod;->FAVORITES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$117;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;I)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2121
    return-void
.end method

.method public getFollowersIDs(J)V
    .locals 7
    .parameter "cursor"

    .prologue
    .line 1853
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$103;

    sget-object v2, Ltwitter4j/TwitterMethod;->FOLLOWERS_IDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$103;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1864
    return-void
.end method

.method public getFollowersIDs(JJ)V
    .locals 9
    .parameter "userId"
    .parameter "cursor"

    .prologue
    .line 1870
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v8

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$104;

    sget-object v2, Ltwitter4j/TwitterMethod;->FOLLOWERS_IDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Ltwitter4j/AsyncTwitterImpl$104;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;JJ)V

    invoke-interface {v8, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1881
    return-void
.end method

.method public getFollowersIDs(Ljava/lang/String;J)V
    .locals 8
    .parameter "screenName"
    .parameter "cursor"

    .prologue
    .line 1887
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$105;

    sget-object v2, Ltwitter4j/TwitterMethod;->FOLLOWERS_IDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitterImpl$105;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;J)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1898
    return-void
.end method

.method public getFollowersStatuses(J)V
    .locals 7
    .parameter "cursor"

    .prologue
    .line 968
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$52;

    sget-object v2, Ltwitter4j/TwitterMethod;->FOLLOWERS_STATUSES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$52;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 979
    return-void
.end method

.method public getFollowersStatuses(JJ)V
    .locals 9
    .parameter "userId"
    .parameter "cursor"

    .prologue
    .line 1002
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v8

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$54;

    sget-object v2, Ltwitter4j/TwitterMethod;->FOLLOWERS_STATUSES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Ltwitter4j/AsyncTwitterImpl$54;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;JJ)V

    invoke-interface {v8, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1013
    return-void
.end method

.method public getFollowersStatuses(Ljava/lang/String;J)V
    .locals 8
    .parameter "screenName"
    .parameter "cursor"

    .prologue
    .line 985
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$53;

    sget-object v2, Ltwitter4j/TwitterMethod;->FOLLOWERS_STATUSES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitterImpl$53;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;J)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 996
    return-void
.end method

.method public getFriendsIDs(J)V
    .locals 7
    .parameter "cursor"

    .prologue
    .line 1800
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$100;

    sget-object v2, Ltwitter4j/TwitterMethod;->FRIENDS_IDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$100;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1812
    return-void
.end method

.method public getFriendsIDs(JJ)V
    .locals 9
    .parameter "userId"
    .parameter "cursor"

    .prologue
    .line 1818
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v8

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$101;

    sget-object v2, Ltwitter4j/TwitterMethod;->FRIENDS_IDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Ltwitter4j/AsyncTwitterImpl$101;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;JJ)V

    invoke-interface {v8, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1829
    return-void
.end method

.method public getFriendsIDs(Ljava/lang/String;J)V
    .locals 8
    .parameter "screenName"
    .parameter "cursor"

    .prologue
    .line 1835
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$102;

    sget-object v2, Ltwitter4j/TwitterMethod;->FRIENDS_IDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitterImpl$102;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;J)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1847
    return-void
.end method

.method public getFriendsStatuses(J)V
    .locals 7
    .parameter "cursor"

    .prologue
    .line 917
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$49;

    sget-object v2, Ltwitter4j/TwitterMethod;->FRIENDS_STATUSES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$49;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 928
    return-void
.end method

.method public getFriendsStatuses(JJ)V
    .locals 9
    .parameter "userId"
    .parameter "cursor"

    .prologue
    .line 951
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v8

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$51;

    sget-object v2, Ltwitter4j/TwitterMethod;->FRIENDS_STATUSES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Ltwitter4j/AsyncTwitterImpl$51;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;JJ)V

    invoke-interface {v8, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 962
    return-void
.end method

.method public getFriendsStatuses(Ljava/lang/String;J)V
    .locals 8
    .parameter "screenName"
    .parameter "cursor"

    .prologue
    .line 934
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$50;

    sget-object v2, Ltwitter4j/TwitterMethod;->FRIENDS_STATUSES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitterImpl$50;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;J)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 945
    return-void
.end method

.method public getFriendsTimeline()V
    .locals 4

    .prologue
    .line 268
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$12;

    sget-object v2, Ltwitter4j/TwitterMethod;->FRIENDS_TIMELINE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$12;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 279
    return-void
.end method

.method public getFriendsTimeline(Ltwitter4j/Paging;)V
    .locals 4
    .parameter "paging"

    .prologue
    .line 285
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$13;

    sget-object v2, Ltwitter4j/TwitterMethod;->FRIENDS_TIMELINE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$13;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ltwitter4j/Paging;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 296
    return-void
.end method

.method public getGeoDetails(Ljava/lang/String;)V
    .locals 4
    .parameter "id"

    .prologue
    .line 2524
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$141;

    sget-object v2, Ltwitter4j/TwitterMethod;->GEO_DETAILS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$141;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2535
    return-void
.end method

.method public getHomeTimeline()V
    .locals 4

    .prologue
    .line 234
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$10;

    sget-object v2, Ltwitter4j/TwitterMethod;->HOME_TIMELINE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$10;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 245
    return-void
.end method

.method public getHomeTimeline(Ltwitter4j/Paging;)V
    .locals 4
    .parameter "paging"

    .prologue
    .line 251
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$11;

    sget-object v2, Ltwitter4j/TwitterMethod;->HOME_TIMELINE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$11;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ltwitter4j/Paging;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 262
    return-void
.end method

.method public getIncomingFriendships(J)V
    .locals 7
    .parameter "cursor"

    .prologue
    .line 1692
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$94;

    sget-object v2, Ltwitter4j/TwitterMethod;->INCOMING_FRIENDSHIPS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$94;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1703
    return-void
.end method

.method public getLocationTrends(I)V
    .locals 4
    .parameter "woeid"

    .prologue
    .line 2456
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$137;

    sget-object v2, Ltwitter4j/TwitterMethod;->LOCATION_TRENDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$137;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;I)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2467
    return-void
.end method

.method public getMemberSuggestions(Ljava/lang/String;)V
    .locals 4
    .parameter "categorySlug"

    .prologue
    .line 849
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$45;

    sget-object v2, Ltwitter4j/TwitterMethod;->MEMBER_SUGGESTIONS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$45;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 860
    return-void
.end method

.method public getMentions()V
    .locals 4

    .prologue
    .line 388
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$18;

    sget-object v2, Ltwitter4j/TwitterMethod;->MENTIONS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$18;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 399
    return-void
.end method

.method public getMentions(Ltwitter4j/Paging;)V
    .locals 4
    .parameter "paging"

    .prologue
    .line 405
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$19;

    sget-object v2, Ltwitter4j/TwitterMethod;->MENTIONS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$19;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ltwitter4j/Paging;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 416
    return-void
.end method

.method public getOAuthAccessToken()Ltwitter4j/auth/AccessToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2688
    iget-object v0, p0, Ltwitter4j/AsyncTwitterImpl;->twitter:Ltwitter4j/Twitter;

    invoke-interface {v0}, Ltwitter4j/Twitter;->getOAuthAccessToken()Ltwitter4j/auth/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthAccessToken(Ljava/lang/String;)Ltwitter4j/auth/AccessToken;
    .locals 1
    .parameter "oauthVerifier"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2698
    iget-object v0, p0, Ltwitter4j/AsyncTwitterImpl;->twitter:Ltwitter4j/Twitter;

    invoke-interface {v0, p1}, Ltwitter4j/Twitter;->getOAuthAccessToken(Ljava/lang/String;)Ltwitter4j/auth/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/auth/AccessToken;
    .locals 1
    .parameter "screenName"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2733
    iget-object v0, p0, Ltwitter4j/AsyncTwitterImpl;->twitter:Ltwitter4j/Twitter;

    invoke-interface {v0, p1, p2}, Ltwitter4j/Twitter;->getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/auth/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthAccessToken(Ltwitter4j/auth/RequestToken;)Ltwitter4j/auth/AccessToken;
    .locals 1
    .parameter "requestToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2708
    iget-object v0, p0, Ltwitter4j/AsyncTwitterImpl;->twitter:Ltwitter4j/Twitter;

    invoke-interface {v0, p1}, Ltwitter4j/Twitter;->getOAuthAccessToken(Ltwitter4j/auth/RequestToken;)Ltwitter4j/auth/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthAccessToken(Ltwitter4j/auth/RequestToken;Ljava/lang/String;)Ltwitter4j/auth/AccessToken;
    .locals 1
    .parameter "requestToken"
    .parameter "oauthVerifier"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2718
    iget-object v0, p0, Ltwitter4j/AsyncTwitterImpl;->twitter:Ltwitter4j/Twitter;

    invoke-interface {v0, p1, p2}, Ltwitter4j/Twitter;->getOAuthAccessToken(Ltwitter4j/auth/RequestToken;Ljava/lang/String;)Ltwitter4j/auth/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthRequestToken()Ltwitter4j/auth/RequestToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2666
    iget-object v0, p0, Ltwitter4j/AsyncTwitterImpl;->twitter:Ltwitter4j/Twitter;

    invoke-interface {v0}, Ltwitter4j/Twitter;->getOAuthRequestToken()Ltwitter4j/auth/RequestToken;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthRequestToken(Ljava/lang/String;)Ltwitter4j/auth/RequestToken;
    .locals 1
    .parameter "callbackUrl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2674
    iget-object v0, p0, Ltwitter4j/AsyncTwitterImpl;->twitter:Ltwitter4j/Twitter;

    invoke-interface {v0, p1}, Ltwitter4j/Twitter;->getOAuthRequestToken(Ljava/lang/String;)Ltwitter4j/auth/RequestToken;

    move-result-object v0

    return-object v0
.end method

.method public getOutgoingFriendships(J)V
    .locals 7
    .parameter "cursor"

    .prologue
    .line 1709
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$95;

    sget-object v2, Ltwitter4j/TwitterMethod;->OUTGOING_FRIENDSHIPS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$95;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1720
    return-void
.end method

.method public getPrivacyPolicy()V
    .locals 4

    .prologue
    .line 2574
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$144;

    sget-object v2, Ltwitter4j/TwitterMethod;->PRIVACY_POLICY:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$144;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2585
    return-void
.end method

.method public getProfileImage(Ljava/lang/String;Ltwitter4j/ProfileImage$ImageSize;)V
    .locals 7
    .parameter "screenName"
    .parameter "size"

    .prologue
    .line 866
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$46;

    sget-object v2, Ltwitter4j/TwitterMethod;->PROFILE_IMAGE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$46;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;Ltwitter4j/ProfileImage$ImageSize;)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 877
    return-void
.end method

.method public getPublicTimeline()V
    .locals 4

    .prologue
    .line 217
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$9;

    sget-object v2, Ltwitter4j/TwitterMethod;->PUBLIC_TIMELINE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$9;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 228
    return-void
.end method

.method public getRateLimitStatus()V
    .locals 4

    .prologue
    .line 1939
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$108;

    sget-object v2, Ltwitter4j/TwitterMethod;->RATE_LIMIT_STATUS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$108;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1950
    return-void
.end method

.method public getRelatedResults(J)V
    .locals 7
    .parameter "statusId"

    .prologue
    .line 2590
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$145;

    sget-object v2, Ltwitter4j/TwitterMethod;->RELATED_RESULTS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$145;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2602
    return-void
.end method

.method public getRetweetedBy(J)V
    .locals 7
    .parameter "statusId"

    .prologue
    .line 694
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$36;

    sget-object v2, Ltwitter4j/TwitterMethod;->RETWEETED_BY:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$36;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 705
    return-void
.end method

.method public getRetweetedByIDs(J)V
    .locals 7
    .parameter "statusId"

    .prologue
    .line 711
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$37;

    sget-object v2, Ltwitter4j/TwitterMethod;->RETWEETED_BY_IDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$37;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 722
    return-void
.end method

.method public getRetweetedByMe()V
    .locals 4

    .prologue
    .line 422
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$20;

    sget-object v2, Ltwitter4j/TwitterMethod;->RETWEETED_BY_ME:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$20;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 433
    return-void
.end method

.method public getRetweetedByMe(Ltwitter4j/Paging;)V
    .locals 4
    .parameter "paging"

    .prologue
    .line 439
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$21;

    sget-object v2, Ltwitter4j/TwitterMethod;->RETWEETED_BY_ME:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$21;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ltwitter4j/Paging;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 450
    return-void
.end method

.method public getRetweetedByUser(JLtwitter4j/Paging;)V
    .locals 8
    .parameter "userId"
    .parameter "paging"

    .prologue
    .line 541
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$27;

    sget-object v2, Ltwitter4j/TwitterMethod;->RETWEETED_BY_USER:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitterImpl$27;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;JLtwitter4j/Paging;)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 552
    return-void
.end method

.method public getRetweetedByUser(Ljava/lang/String;Ltwitter4j/Paging;)V
    .locals 7
    .parameter "screenName"
    .parameter "paging"

    .prologue
    .line 524
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$26;

    sget-object v2, Ltwitter4j/TwitterMethod;->RETWEETED_BY_USER:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$26;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;Ltwitter4j/Paging;)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 535
    return-void
.end method

.method public getRetweetedToMe()V
    .locals 4

    .prologue
    .line 456
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$22;

    sget-object v2, Ltwitter4j/TwitterMethod;->RETWEETED_TO_ME:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$22;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 467
    return-void
.end method

.method public getRetweetedToMe(Ltwitter4j/Paging;)V
    .locals 4
    .parameter "paging"

    .prologue
    .line 473
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$23;

    sget-object v2, Ltwitter4j/TwitterMethod;->RETWEETED_TO_ME:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$23;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ltwitter4j/Paging;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 484
    return-void
.end method

.method public getRetweetedToUser(JLtwitter4j/Paging;)V
    .locals 8
    .parameter "userId"
    .parameter "paging"

    .prologue
    .line 575
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$29;

    sget-object v2, Ltwitter4j/TwitterMethod;->RETWEETED_TO_USER:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitterImpl$29;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;JLtwitter4j/Paging;)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 586
    return-void
.end method

.method public getRetweetedToUser(Ljava/lang/String;Ltwitter4j/Paging;)V
    .locals 7
    .parameter "screenName"
    .parameter "paging"

    .prologue
    .line 558
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$28;

    sget-object v2, Ltwitter4j/TwitterMethod;->RETWEETED_TO_USER:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$28;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;Ltwitter4j/Paging;)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 569
    return-void
.end method

.method public getRetweets(J)V
    .locals 7
    .parameter "statusId"

    .prologue
    .line 677
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$35;

    sget-object v2, Ltwitter4j/TwitterMethod;->RETWEETS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$35;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 688
    return-void
.end method

.method public getRetweetsOfMe()V
    .locals 4

    .prologue
    .line 490
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$24;

    sget-object v2, Ltwitter4j/TwitterMethod;->RETWEETS_OF_ME:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$24;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 501
    return-void
.end method

.method public getRetweetsOfMe(Ltwitter4j/Paging;)V
    .locals 4
    .parameter "paging"

    .prologue
    .line 507
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$25;

    sget-object v2, Ltwitter4j/TwitterMethod;->RETWEETS_OF_ME:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$25;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ltwitter4j/Paging;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 518
    return-void
.end method

.method public getSentDirectMessages()V
    .locals 4

    .prologue
    .line 1435
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$79;

    sget-object v2, Ltwitter4j/TwitterMethod;->SENT_DIRECT_MESSAGES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$79;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1446
    return-void
.end method

.method public getSentDirectMessages(Ltwitter4j/Paging;)V
    .locals 4
    .parameter "paging"

    .prologue
    .line 1452
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$80;

    sget-object v2, Ltwitter4j/TwitterMethod;->SENT_DIRECT_MESSAGES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$80;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ltwitter4j/Paging;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1463
    return-void
.end method

.method public getSimilarPlaces(Ltwitter4j/GeoLocation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "location"
    .parameter "name"
    .parameter "containedWithin"
    .parameter "streetAddress"

    .prologue
    .line 2490
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v8

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$139;

    sget-object v2, Ltwitter4j/TwitterMethod;->SIMILAR_PLACES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Ltwitter4j/AsyncTwitterImpl$139;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ltwitter4j/GeoLocation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2501
    return-void
.end method

.method public getSuggestedUserCategories()V
    .locals 4

    .prologue
    .line 815
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$43;

    sget-object v2, Ltwitter4j/TwitterMethod;->SUGGESTED_USER_CATEGORIES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$43;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 826
    return-void
.end method

.method public getTermsOfService()V
    .locals 4

    .prologue
    .line 2557
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$143;

    sget-object v2, Ltwitter4j/TwitterMethod;->TERMS_OF_SERVICE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$143;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2568
    return-void
.end method

.method public getTrends()V
    .locals 4

    .prologue
    .line 91
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$2;

    sget-object v2, Ltwitter4j/TwitterMethod;->TRENDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$2;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 103
    return-void
.end method

.method public getUserListMembers(JIJ)V
    .locals 10
    .parameter "listOwnerId"
    .parameter "listId"
    .parameter "cursor"

    .prologue
    .line 1227
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v9

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$67;

    sget-object v2, Ltwitter4j/TwitterMethod;->LIST_MEMBERS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-wide v7, p4

    invoke-direct/range {v0 .. v8}, Ltwitter4j/AsyncTwitterImpl$67;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;JIJ)V

    invoke-interface {v9, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1238
    return-void
.end method

.method public getUserListMembers(Ljava/lang/String;IJ)V
    .locals 9
    .parameter "listOwnerScreenName"
    .parameter "listId"
    .parameter "cursor"

    .prologue
    .line 1210
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v8

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$66;

    sget-object v2, Ltwitter4j/TwitterMethod;->LIST_MEMBERS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Ltwitter4j/AsyncTwitterImpl$66;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;IJ)V

    invoke-interface {v8, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1221
    return-void
.end method

.method public getUserListMemberships(Ljava/lang/String;J)V
    .locals 8
    .parameter "listMemberScreenName"
    .parameter "cursor"

    .prologue
    .line 1140
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$62;

    sget-object v2, Ltwitter4j/TwitterMethod;->USER_LIST_MEMBERSHIPS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitterImpl$62;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;J)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1151
    return-void
.end method

.method public getUserListStatuses(JILtwitter4j/Paging;)V
    .locals 9
    .parameter "listOwnerId"
    .parameter "id"
    .parameter "paging"

    .prologue
    .line 1123
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v8

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$61;

    sget-object v2, Ltwitter4j/TwitterMethod;->USER_LIST_STATUSES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Ltwitter4j/AsyncTwitterImpl$61;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;JILtwitter4j/Paging;)V

    invoke-interface {v8, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1134
    return-void
.end method

.method public getUserListStatuses(Ljava/lang/String;ILtwitter4j/Paging;)V
    .locals 8
    .parameter "listOwnerScreenName"
    .parameter "id"
    .parameter "paging"

    .prologue
    .line 1106
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$60;

    sget-object v2, Ltwitter4j/TwitterMethod;->USER_LIST_STATUSES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitterImpl$60;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;ILtwitter4j/Paging;)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1117
    return-void
.end method

.method public getUserListSubscribers(Ljava/lang/String;IJ)V
    .locals 9
    .parameter "listOwnerScreenName"
    .parameter "listId"
    .parameter "cursor"

    .prologue
    .line 1331
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v8

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$73;

    sget-object v2, Ltwitter4j/TwitterMethod;->LIST_SUBSCRIBERS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Ltwitter4j/AsyncTwitterImpl$73;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;IJ)V

    invoke-interface {v8, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1342
    return-void
.end method

.method public getUserListSubscriptions(Ljava/lang/String;J)V
    .locals 8
    .parameter "listOwnerScreenName"
    .parameter "cursor"

    .prologue
    .line 1157
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$63;

    sget-object v2, Ltwitter4j/TwitterMethod;->USER_LIST_SUBSCRIPTIONS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitterImpl$63;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;J)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1168
    return-void
.end method

.method public getUserLists(Ljava/lang/String;J)V
    .locals 8
    .parameter "listOwnerScreenName"
    .parameter "cursor"

    .prologue
    .line 1055
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$57;

    sget-object v2, Ltwitter4j/TwitterMethod;->USER_LISTS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitterImpl$57;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;J)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1066
    return-void
.end method

.method public getUserSuggestions(Ljava/lang/String;)V
    .locals 4
    .parameter "categorySlug"

    .prologue
    .line 832
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$44;

    sget-object v2, Ltwitter4j/TwitterMethod;->USER_SUGGESTIONS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$44;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 843
    return-void
.end method

.method public getUserTimeline()V
    .locals 4

    .prologue
    .line 371
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$17;

    sget-object v2, Ltwitter4j/TwitterMethod;->USER_TIMELINE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$17;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 382
    return-void
.end method

.method public getUserTimeline(J)V
    .locals 1
    .parameter "userId"

    .prologue
    .line 364
    new-instance v0, Ltwitter4j/Paging;

    invoke-direct {v0}, Ltwitter4j/Paging;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Ltwitter4j/AsyncTwitterImpl;->getUserTimeline(JLtwitter4j/Paging;)V

    .line 365
    return-void
.end method

.method public getUserTimeline(JLtwitter4j/Paging;)V
    .locals 8
    .parameter "userId"
    .parameter "paging"

    .prologue
    .line 321
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$15;

    sget-object v2, Ltwitter4j/TwitterMethod;->USER_TIMELINE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitterImpl$15;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;JLtwitter4j/Paging;)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 333
    return-void
.end method

.method public getUserTimeline(Ljava/lang/String;)V
    .locals 1
    .parameter "screenName"

    .prologue
    .line 357
    new-instance v0, Ltwitter4j/Paging;

    invoke-direct {v0}, Ltwitter4j/Paging;-><init>()V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/AsyncTwitterImpl;->getUserTimeline(Ljava/lang/String;Ltwitter4j/Paging;)V

    .line 358
    return-void
.end method

.method public getUserTimeline(Ljava/lang/String;Ltwitter4j/Paging;)V
    .locals 7
    .parameter "screenName"
    .parameter "paging"

    .prologue
    .line 302
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$14;

    sget-object v2, Ltwitter4j/TwitterMethod;->USER_TIMELINE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$14;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;Ltwitter4j/Paging;)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 315
    return-void
.end method

.method public getUserTimeline(Ltwitter4j/Paging;)V
    .locals 4
    .parameter "paging"

    .prologue
    .line 339
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$16;

    sget-object v2, Ltwitter4j/TwitterMethod;->USER_TIMELINE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$16;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ltwitter4j/Paging;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 351
    return-void
.end method

.method public getWeeklyTrends()V
    .locals 4

    .prologue
    .line 181
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$7;

    sget-object v2, Ltwitter4j/TwitterMethod;->WEEKLY_TRENDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$7;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 193
    return-void
.end method

.method public getWeeklyTrends(Ljava/util/Date;Z)V
    .locals 7
    .parameter "date"
    .parameter "excludeHashTags"

    .prologue
    .line 199
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$8;

    sget-object v2, Ltwitter4j/TwitterMethod;->WEEKLY_TRENDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$8;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/util/Date;Z)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 211
    return-void
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2781
    invoke-super {p0}, Ltwitter4j/TwitterBaseImpl;->hashCode()I

    move-result v0

    .line 2782
    .local v0, result:I
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Ltwitter4j/AsyncTwitterImpl;->twitter:Ltwitter4j/Twitter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ltwitter4j/AsyncTwitterImpl;->twitter:Ltwitter4j/Twitter;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 2783
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v2, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 2784
    return v0

    :cond_1
    move v1, v2

    .line 2782
    goto :goto_0
.end method

.method public lookupFriendships([J)V
    .locals 4
    .parameter "ids"

    .prologue
    .line 1743
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$97;

    sget-object v2, Ltwitter4j/TwitterMethod;->LOOKUP_FRIENDSHIPS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$97;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;[J)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1754
    return-void
.end method

.method public lookupFriendships([Ljava/lang/String;)V
    .locals 4
    .parameter "screenNames"

    .prologue
    .line 1726
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$96;

    sget-object v2, Ltwitter4j/TwitterMethod;->LOOKUP_FRIENDSHIPS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$96;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1737
    return-void
.end method

.method public lookupUsers([J)V
    .locals 4
    .parameter "ids"

    .prologue
    .line 781
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$41;

    sget-object v2, Ltwitter4j/TwitterMethod;->LOOKUP_USERS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$41;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;[J)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 792
    return-void
.end method

.method public lookupUsers([Ljava/lang/String;)V
    .locals 4
    .parameter "screenNames"

    .prologue
    .line 764
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$40;

    sget-object v2, Ltwitter4j/TwitterMethod;->LOOKUP_USERS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$40;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 775
    return-void
.end method

.method public reportSpam(J)V
    .locals 7
    .parameter "userId"

    .prologue
    .line 2386
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$133;

    sget-object v2, Ltwitter4j/TwitterMethod;->REPORT_SPAM:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$133;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2397
    return-void
.end method

.method public reportSpam(Ljava/lang/String;)V
    .locals 4
    .parameter "screenName"

    .prologue
    .line 2403
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$134;

    sget-object v2, Ltwitter4j/TwitterMethod;->REPORT_SPAM:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$134;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2414
    return-void
.end method

.method public retweetStatus(J)V
    .locals 7
    .parameter "statusId"

    .prologue
    .line 660
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$34;

    sget-object v2, Ltwitter4j/TwitterMethod;->RETWEET_STATUS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$34;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 671
    return-void
.end method

.method public reverseGeoCode(Ltwitter4j/GeoQuery;)V
    .locals 4
    .parameter "query"

    .prologue
    .line 2507
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$140;

    sget-object v2, Ltwitter4j/TwitterMethod;->REVERSE_GEO_CODE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$140;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ltwitter4j/GeoQuery;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2518
    return-void
.end method

.method public search(Ltwitter4j/Query;)V
    .locals 4
    .parameter "query"

    .prologue
    .line 74
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$1;

    sget-object v2, Ltwitter4j/TwitterMethod;->SEARCH:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$1;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ltwitter4j/Query;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 85
    return-void
.end method

.method public searchPlaces(Ltwitter4j/GeoQuery;)V
    .locals 4
    .parameter "query"

    .prologue
    .line 2475
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$138;

    sget-object v2, Ltwitter4j/TwitterMethod;->SEARCH_PLACES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$138;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ltwitter4j/GeoQuery;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2486
    return-void
.end method

.method public searchUsers(Ljava/lang/String;I)V
    .locals 7
    .parameter "query"
    .parameter "page"

    .prologue
    .line 798
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$42;

    sget-object v2, Ltwitter4j/TwitterMethod;->SEARCH_USERS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$42;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;I)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 809
    return-void
.end method

.method public sendDirectMessage(JLjava/lang/String;)V
    .locals 8
    .parameter "userId"
    .parameter "text"

    .prologue
    .line 1486
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$82;

    sget-object v2, Ltwitter4j/TwitterMethod;->SEND_DIRECT_MESSAGE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitterImpl$82;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;JLjava/lang/String;)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1497
    return-void
.end method

.method public sendDirectMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "screenName"
    .parameter "text"

    .prologue
    .line 1469
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$81;

    sget-object v2, Ltwitter4j/TwitterMethod;->SEND_DIRECT_MESSAGE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$81;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1480
    return-void
.end method

.method public setOAuthAccessToken(Ltwitter4j/auth/AccessToken;)V
    .locals 1
    .parameter "accessToken"

    .prologue
    .line 2726
    iget-object v0, p0, Ltwitter4j/AsyncTwitterImpl;->twitter:Ltwitter4j/Twitter;

    invoke-interface {v0, p1}, Ltwitter4j/Twitter;->setOAuthAccessToken(Ltwitter4j/auth/AccessToken;)V

    .line 2727
    return-void
.end method

.method public setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "consumerKey"
    .parameter "consumerSecret"

    .prologue
    .line 2658
    iget-object v0, p0, Ltwitter4j/AsyncTwitterImpl;->twitter:Ltwitter4j/Twitter;

    invoke-interface {v0, p1, p2}, Ltwitter4j/Twitter;->setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V

    .line 2659
    return-void
.end method

.method public showDirectMessage(J)V
    .locals 7
    .parameter "id"

    .prologue
    .line 1520
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$84;

    sget-object v2, Ltwitter4j/TwitterMethod;->DIRECT_MESSAGE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$84;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1531
    return-void
.end method

.method public showFriendship(JJ)V
    .locals 9
    .parameter "sourceId"
    .parameter "targetId"

    .prologue
    .line 1675
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v8

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$93;

    sget-object v2, Ltwitter4j/TwitterMethod;->SHOW_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Ltwitter4j/AsyncTwitterImpl$93;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;JJ)V

    invoke-interface {v8, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1686
    return-void
.end method

.method public showFriendship(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "sourceScreenName"
    .parameter "targetScreenName"

    .prologue
    .line 1658
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$92;

    sget-object v2, Ltwitter4j/TwitterMethod;->SHOW_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$92;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1669
    return-void
.end method

.method public showStatus(J)V
    .locals 7
    .parameter "id"

    .prologue
    .line 592
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$30;

    sget-object v2, Ltwitter4j/TwitterMethod;->SHOW_STATUS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$30;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 603
    return-void
.end method

.method public showUser(J)V
    .locals 7
    .parameter "userId"

    .prologue
    .line 747
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$39;

    sget-object v2, Ltwitter4j/TwitterMethod;->SHOW_USER:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$39;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 758
    return-void
.end method

.method public showUser(Ljava/lang/String;)V
    .locals 4
    .parameter "screenName"

    .prologue
    .line 730
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$38;

    sget-object v2, Ltwitter4j/TwitterMethod;->SHOW_USER:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$38;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 741
    return-void
.end method

.method public showUserList(Ljava/lang/String;I)V
    .locals 7
    .parameter "listOwnerScreenName"
    .parameter "id"

    .prologue
    .line 1072
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$58;

    sget-object v2, Ltwitter4j/TwitterMethod;->UPDATE_USER_LIST:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$58;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;I)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1083
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 2629
    invoke-super {p0}, Ltwitter4j/TwitterBaseImpl;->shutdown()V

    .line 2630
    sget-object v0, Ltwitter4j/AsyncTwitterImpl;->class$twitter4j$AsyncTwitterImpl:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "twitter4j.AsyncTwitterImpl"

    invoke-static {v0}, Ltwitter4j/AsyncTwitterImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ltwitter4j/AsyncTwitterImpl;->class$twitter4j$AsyncTwitterImpl:Ljava/lang/Class;

    :goto_0
    monitor-enter v0

    .line 2631
    :try_start_0
    sget-object v1, Ltwitter4j/AsyncTwitterImpl;->dispatcher:Ltwitter4j/internal/async/Dispatcher;

    if-eqz v1, :cond_0

    .line 2632
    sget-object v1, Ltwitter4j/AsyncTwitterImpl;->dispatcher:Ltwitter4j/internal/async/Dispatcher;

    invoke-interface {v1}, Ltwitter4j/internal/async/Dispatcher;->shutdown()V

    .line 2633
    const/4 v1, 0x0

    sput-object v1, Ltwitter4j/AsyncTwitterImpl;->dispatcher:Ltwitter4j/internal/async/Dispatcher;

    .line 2635
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2636
    iget-object v0, p0, Ltwitter4j/AsyncTwitterImpl;->twitter:Ltwitter4j/Twitter;

    invoke-interface {v0}, Ltwitter4j/Twitter;->shutdown()V

    .line 2637
    return-void

    .line 2630
    :cond_1
    sget-object v0, Ltwitter4j/AsyncTwitterImpl;->class$twitter4j$AsyncTwitterImpl:Ljava/lang/Class;

    goto :goto_0

    .line 2635
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public subscribeUserList(Ljava/lang/String;I)V
    .locals 7
    .parameter "listOwnerScreenName"
    .parameter "listId"

    .prologue
    .line 1348
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$74;

    sget-object v2, Ltwitter4j/TwitterMethod;->SUBSCRIBE_LIST:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$74;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;I)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1359
    return-void
.end method

.method public test()V
    .locals 4

    .prologue
    .line 2610
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$146;

    sget-object v2, Ltwitter4j/TwitterMethod;->TEST:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$146;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2621
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2789
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "AsyncTwitterImpl{twitter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/AsyncTwitterImpl;->twitter:Ltwitter4j/Twitter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", listeners="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unsubscribeUserList(Ljava/lang/String;I)V
    .locals 7
    .parameter "listOwnerScreenName"
    .parameter "listId"

    .prologue
    .line 1365
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$75;

    sget-object v2, Ltwitter4j/TwitterMethod;->UNSUBSCRIBE_LIST:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$75;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;I)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1376
    return-void
.end method

.method public updateFriendship(JZZ)V
    .locals 9
    .parameter "userId"
    .parameter "enableDeviceNotification"
    .parameter "retweet"

    .prologue
    .line 1780
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v8

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$99;

    sget-object v2, Ltwitter4j/TwitterMethod;->UPDATE_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Ltwitter4j/AsyncTwitterImpl$99;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;JZZ)V

    invoke-interface {v8, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1792
    return-void
.end method

.method public updateFriendship(Ljava/lang/String;ZZ)V
    .locals 8
    .parameter "screenName"
    .parameter "enableDeviceNotification"
    .parameter "retweet"

    .prologue
    .line 1761
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$98;

    sget-object v2, Ltwitter4j/TwitterMethod;->UPDATE_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitterImpl$98;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;ZZ)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1773
    return-void
.end method

.method public updateProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "name"
    .parameter "url"
    .parameter "location"
    .parameter "description"

    .prologue
    .line 1922
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v8

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$107;

    sget-object v2, Ltwitter4j/TwitterMethod;->UPDATE_PROFILE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Ltwitter4j/AsyncTwitterImpl$107;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1933
    return-void
.end method

.method public updateProfileBackgroundImage(Ljava/io/File;Z)V
    .locals 7
    .parameter "image"
    .parameter "tile"

    .prologue
    .line 2020
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$112;

    sget-object v2, Ltwitter4j/TwitterMethod;->UPDATE_PROFILE_BACKGROUND_IMAGE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$112;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/io/File;Z)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2033
    return-void
.end method

.method public updateProfileBackgroundImage(Ljava/io/InputStream;Z)V
    .locals 7
    .parameter "image"
    .parameter "tile"

    .prologue
    .line 2040
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$113;

    sget-object v2, Ltwitter4j/TwitterMethod;->UPDATE_PROFILE_BACKGROUND_IMAGE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$113;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/io/InputStream;Z)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2053
    return-void
.end method

.method public updateProfileColors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "profileBackgroundColor"
    .parameter "profileTextColor"
    .parameter "profileLinkColor"
    .parameter "profileSidebarFillColor"
    .parameter "profileSidebarBorderColor"

    .prologue
    .line 1959
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v9

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$109;

    sget-object v2, Ltwitter4j/TwitterMethod;->UPDATE_PROFILE_COLORS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Ltwitter4j/AsyncTwitterImpl$109;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1975
    return-void
.end method

.method public updateProfileImage(Ljava/io/File;)V
    .locals 4
    .parameter "image"

    .prologue
    .line 1981
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$110;

    sget-object v2, Ltwitter4j/TwitterMethod;->UPDATE_PROFILE_IMAGE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$110;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/io/File;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1994
    return-void
.end method

.method public updateProfileImage(Ljava/io/InputStream;)V
    .locals 4
    .parameter "image"

    .prologue
    .line 2000
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$111;

    sget-object v2, Ltwitter4j/TwitterMethod;->UPDATE_PROFILE_IMAGE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$111;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2013
    return-void
.end method

.method public updateStatus(Ljava/lang/String;)V
    .locals 4
    .parameter "statusText"

    .prologue
    .line 609
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$31;

    sget-object v2, Ltwitter4j/TwitterMethod;->UPDATE_STATUS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$31;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 620
    return-void
.end method

.method public updateStatus(Ltwitter4j/StatusUpdate;)V
    .locals 4
    .parameter "latestStatus"

    .prologue
    .line 626
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$32;

    sget-object v2, Ltwitter4j/TwitterMethod;->UPDATE_STATUS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$32;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ltwitter4j/StatusUpdate;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 637
    return-void
.end method

.method public updateUserList(ILjava/lang/String;ZLjava/lang/String;)V
    .locals 9
    .parameter "listId"
    .parameter "newListName"
    .parameter "isPublicList"
    .parameter "newDescription"

    .prologue
    .line 1038
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v8

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$56;

    sget-object v2, Ltwitter4j/TwitterMethod;->UPDATE_USER_LIST:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Ltwitter4j/AsyncTwitterImpl$56;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;ILjava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v8, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1049
    return-void
.end method

.method public verifyCredentials()V
    .locals 4

    .prologue
    .line 1904
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$106;

    sget-object v2, Ltwitter4j/TwitterMethod;->VERIFY_CREDENTIALS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$106;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1915
    return-void
.end method
