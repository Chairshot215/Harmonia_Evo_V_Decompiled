.class public Ltwitter4j/Twitter;
.super Ltwitter4j/TwitterSupport;
.source "Twitter.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltwitter4j/Twitter$Device;
    }
.end annotation


# static fields
.field public static final IM:Ltwitter4j/Twitter$Device; = null

.field public static final NONE:Ltwitter4j/Twitter$Device; = null

.field public static final SMS:Ltwitter4j/Twitter$Device; = null

.field private static final serialVersionUID:J = -0x14a09c9e28673704L


# instance fields
.field private baseURL:Ljava/lang/String;

.field private format:Ljava/text/SimpleDateFormat;

.field private searchBaseURL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2311
    new-instance v0, Ltwitter4j/Twitter$Device;

    const-string v1, "im"

    invoke-direct {v0, v1}, Ltwitter4j/Twitter$Device;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/Twitter;->IM:Ltwitter4j/Twitter$Device;

    .line 2312
    new-instance v0, Ltwitter4j/Twitter$Device;

    const-string v1, "sms"

    invoke-direct {v0, v1}, Ltwitter4j/Twitter$Device;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/Twitter;->SMS:Ltwitter4j/Twitter$Device;

    .line 2313
    new-instance v0, Ltwitter4j/Twitter$Device;

    const-string v1, "none"

    invoke-direct {v0, v1}, Ltwitter4j/Twitter$Device;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/Twitter;->NONE:Ltwitter4j/Twitter$Device;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 52
    invoke-direct {p0}, Ltwitter4j/TwitterSupport;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Ltwitter4j/Configuration;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "twitter.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/Twitter;->baseURL:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Ltwitter4j/Configuration;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "search.twitter.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/Twitter;->searchBaseURL:Ljava/lang/String;

    .line 2779
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, d MMM yyyy HH:mm:ss z"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Ltwitter4j/Twitter;->format:Ljava/text/SimpleDateFormat;

    .line 53
    iget-object v0, p0, Ltwitter4j/Twitter;->format:Ljava/text/SimpleDateFormat;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 55
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/http/HttpClient;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Ltwitter4j/Configuration;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "twitter.com/oauth/request_token"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltwitter4j/http/HttpClient;->setRequestTokenURL(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/http/HttpClient;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Ltwitter4j/Configuration;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "twitter.com/oauth/authorize"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltwitter4j/http/HttpClient;->setAuthorizationURL(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/http/HttpClient;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Ltwitter4j/Configuration;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "twitter.com/oauth/access_token"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltwitter4j/http/HttpClient;->setAccessTokenURL(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "baseURL"

    .prologue
    .line 61
    invoke-direct {p0}, Ltwitter4j/Twitter;-><init>()V

    .line 62
    iput-object p1, p0, Ltwitter4j/Twitter;->baseURL:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "password"

    .prologue
    .line 66
    invoke-direct {p0}, Ltwitter4j/Twitter;-><init>()V

    .line 67
    invoke-virtual {p0, p1}, Ltwitter4j/Twitter;->setUserId(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, p2}, Ltwitter4j/Twitter;->setPassword(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "password"
    .parameter "baseURL"

    .prologue
    .line 72
    invoke-direct {p0}, Ltwitter4j/Twitter;-><init>()V

    .line 73
    invoke-virtual {p0, p1}, Ltwitter4j/Twitter;->setUserId(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0, p2}, Ltwitter4j/Twitter;->setPassword(Ljava/lang/String;)V

    .line 75
    iput-object p3, p0, Ltwitter4j/Twitter;->baseURL:Ljava/lang/String;

    .line 76
    return-void
.end method

.method private addParameterToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "paramName"
    .parameter "color"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/http/PostParameter;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2374
    .local p1, colors:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/http/PostParameter;>;"
    if-eqz p3, :cond_0

    .line 2375
    new-instance v0, Ltwitter4j/http/PostParameter;

    invoke-direct {v0, p2, p3}, Ltwitter4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2377
    :cond_0
    return-void
.end method

.method private get(Ljava/lang/String;Z)Ltwitter4j/http/Response;
    .locals 1
    .parameter "url"
    .parameter "authenticate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 232
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Ltwitter4j/Twitter;->get(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Z)Ltwitter4j/http/Response;

    move-result-object v0

    return-object v0
.end method

.method private toDateStr(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .parameter "date"

    .prologue
    .line 426
    if-nez p1, :cond_0

    .line 427
    new-instance p1, Ljava/util/Date;

    .end local p1
    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 429
    .restart local p1
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 430
    .local v0, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public block(Ljava/lang/String;)Ltwitter4j/User;
    .locals 4
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2572
    new-instance v0, Ltwitter4j/User;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/http/HttpClient;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "blocks/create/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ltwitter4j/http/HttpClient;->post(Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ltwitter4j/User;-><init>(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)V

    return-object v0
.end method

.method public create(Ljava/lang/String;)Ltwitter4j/User;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1921
    invoke-virtual {p0, p1}, Ltwitter4j/Twitter;->createFriendship(Ljava/lang/String;)Ltwitter4j/User;

    move-result-object v0

    return-object v0
.end method

.method public createBlock(Ljava/lang/String;)Ltwitter4j/User;
    .locals 4
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2585
    new-instance v0, Ltwitter4j/User;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/http/HttpClient;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "blocks/create/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ltwitter4j/http/HttpClient;->post(Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ltwitter4j/User;-><init>(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)V

    return-object v0
.end method

.method public createFavorite(J)Ltwitter4j/Status;
    .locals 4
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2492
    new-instance v0, Ltwitter4j/Status;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/http/HttpClient;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "favorites/create/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ltwitter4j/http/HttpClient;->post(Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ltwitter4j/Status;-><init>(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)V

    return-object v0
.end method

.method public createFriendship(Ljava/lang/String;)Ltwitter4j/User;
    .locals 5
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1934
    new-instance v0, Ltwitter4j/User;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/http/HttpClient;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "friendships/create/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ltwitter4j/http/PostParameter;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Ltwitter4j/http/HttpClient;->post(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Z)Ltwitter4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ltwitter4j/User;-><init>(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)V

    return-object v0
.end method

.method public createFriendship(Ljava/lang/String;Z)Ltwitter4j/User;
    .locals 9
    .parameter "id"
    .parameter "follow"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 1948
    new-instance v0, Ltwitter4j/User;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/http/HttpClient;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "friendships/create/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ltwitter4j/http/PostParameter;

    const/4 v4, 0x0

    new-instance v5, Ltwitter4j/http/PostParameter;

    const-string v6, "follow"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ltwitter4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3, v8}, Ltwitter4j/http/HttpClient;->post(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Z)Ltwitter4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ltwitter4j/User;-><init>(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)V

    return-object v0
.end method

.method public createSavedSearch(Ljava/lang/String;)Ltwitter4j/SavedSearch;
    .locals 8
    .parameter "query"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 2718
    new-instance v0, Ltwitter4j/SavedSearch;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/http/HttpClient;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "saved_searches/create.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ltwitter4j/http/PostParameter;

    const/4 v4, 0x0

    new-instance v5, Ltwitter4j/http/PostParameter;

    const-string v6, "query"

    invoke-direct {v5, v6, p1}, Ltwitter4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3, v7}, Ltwitter4j/http/HttpClient;->post(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Z)Ltwitter4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/SavedSearch;-><init>(Ltwitter4j/http/Response;)V

    return-object v0
.end method

.method public deleteDirectMessage(I)Ltwitter4j/DirectMessage;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1891
    invoke-virtual {p0, p1}, Ltwitter4j/Twitter;->destroyDirectMessage(I)Ltwitter4j/DirectMessage;

    move-result-object v0

    return-object v0
.end method

.method public destroy(Ljava/lang/String;)Ltwitter4j/User;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1964
    invoke-virtual {p0, p1}, Ltwitter4j/Twitter;->destroyFriendship(Ljava/lang/String;)Ltwitter4j/User;

    move-result-object v0

    return-object v0
.end method

.method public destroyBlock(Ljava/lang/String;)Ltwitter4j/User;
    .locals 4
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2613
    new-instance v0, Ltwitter4j/User;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/http/HttpClient;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "blocks/destroy/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ltwitter4j/http/HttpClient;->post(Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ltwitter4j/User;-><init>(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)V

    return-object v0
.end method

.method public destroyDirectMessage(I)Ltwitter4j/DirectMessage;
    .locals 5
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1906
    new-instance v0, Ltwitter4j/DirectMessage;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/http/HttpClient;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "direct_messages/destroy/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ltwitter4j/http/PostParameter;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Ltwitter4j/http/HttpClient;->post(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Z)Ltwitter4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ltwitter4j/DirectMessage;-><init>(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)V

    return-object v0
.end method

.method public destroyFavorite(J)Ltwitter4j/Status;
    .locals 4
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2504
    new-instance v0, Ltwitter4j/Status;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/http/HttpClient;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "favorites/destroy/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ltwitter4j/http/HttpClient;->post(Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ltwitter4j/Status;-><init>(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)V

    return-object v0
.end method

.method public destroyFriendship(Ljava/lang/String;)Ltwitter4j/User;
    .locals 5
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1977
    new-instance v0, Ltwitter4j/User;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/http/HttpClient;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "friendships/destroy/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ltwitter4j/http/PostParameter;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Ltwitter4j/http/HttpClient;->post(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Z)Ltwitter4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ltwitter4j/User;-><init>(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)V

    return-object v0
.end method

.method public destroySavedSearch(I)Ltwitter4j/SavedSearch;
    .locals 4
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2732
    new-instance v0, Ltwitter4j/SavedSearch;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/http/HttpClient;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "saved_searches/destroy/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ltwitter4j/http/HttpClient;->post(Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/SavedSearch;-><init>(Ltwitter4j/http/Response;)V

    return-object v0
.end method

.method public destroyStatus(J)Ltwitter4j/Status;
    .locals 5
    .parameter "statusId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1326
    new-instance v0, Ltwitter4j/Status;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/http/HttpClient;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "statuses/destroy/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ltwitter4j/http/PostParameter;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Ltwitter4j/http/HttpClient;->post(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Z)Ltwitter4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ltwitter4j/Status;-><init>(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)V

    return-object v0
.end method

.method public disableNotification(Ljava/lang/String;)Ltwitter4j/User;
    .locals 4
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2556
    new-instance v0, Ltwitter4j/User;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/http/HttpClient;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "notifications/leave/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ltwitter4j/http/HttpClient;->post(Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ltwitter4j/User;-><init>(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)V

    return-object v0
.end method

.method public enableNotification(Ljava/lang/String;)Ltwitter4j/User;
    .locals 4
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2530
    new-instance v0, Ltwitter4j/User;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/http/HttpClient;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "notifications/follow/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ltwitter4j/http/HttpClient;->post(Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ltwitter4j/User;-><init>(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2784
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 2795
    :goto_0
    return v2

    .line 2785
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    :cond_1
    move v2, v4

    goto :goto_0

    .line 2787
    :cond_2
    move-object v0, p1

    check-cast v0, Ltwitter4j/Twitter;

    move-object v1, v0

    .line 2789
    .local v1, twitter:Ltwitter4j/Twitter;
    iget-object v2, p0, Ltwitter4j/Twitter;->baseURL:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/Twitter;->baseURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v4

    goto :goto_0

    .line 2790
    :cond_3
    iget-object v2, p0, Ltwitter4j/Twitter;->format:Ljava/text/SimpleDateFormat;

    iget-object v3, v1, Ltwitter4j/Twitter;->format:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v4

    goto :goto_0

    .line 2791
    :cond_4
    iget-object v2, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/http/HttpClient;

    iget-object v3, v1, Ltwitter4j/Twitter;->http:Ltwitter4j/http/HttpClient;

    invoke-virtual {v2, v3}, Ltwitter4j/http/HttpClient;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v4

    goto :goto_0

    .line 2792
    :cond_5
    iget-object v2, p0, Ltwitter4j/Twitter;->searchBaseURL:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/Twitter;->searchBaseURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v2, v4

    goto :goto_0

    .line 2793
    :cond_6
    iget-object v2, p0, Ltwitter4j/Twitter;->source:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/Twitter;->source:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v2, v4

    goto :goto_0

    :cond_7
    move v2, v5

    .line 2795
    goto :goto_0
.end method

.method public exists(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "userA"
    .parameter "userB"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1991
    invoke-virtual {p0, p1, p2}, Ltwitter4j/Twitter;->existsFriendship(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public existsBlock(Ljava/lang/String;)Z
    .locals 6
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2629
    const/4 v1, -0x1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "blocks/exists/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Ltwitter4j/Twitter;->get(Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v2

    invoke-virtual {v2}, Ltwitter4j/http/Response;->asString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "<error>You are not blocking this user.</error>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v1, v2, :cond_0

    move v1, v5

    .line 2633
    :goto_0
    return v1

    :cond_0
    move v1, v4

    .line 2629
    goto :goto_0

    .line 2631
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2632
    .local v0, te:Ltwitter4j/TwitterException;
    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getStatusCode()I

    move-result v1

    const/16 v2, 0x194

    if-ne v1, v2, :cond_1

    move v1, v4

    .line 2633
    goto :goto_0

    .line 2635
    :cond_1
    throw v0
.end method

.method public existsFriendship(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "userA"
    .parameter "userB"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 2004
    const/4 v7, -0x1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "friendships/exists.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "user_a"

    const-string v4, "user_b"

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Ltwitter4j/Twitter;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-virtual {v0}, Ltwitter4j/http/Response;->asString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v7, v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public favorites()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2388
    invoke-virtual {p0}, Ltwitter4j/Twitter;->getFavorites()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public favorites(I)Ljava/util/List;
    .locals 1
    .parameter "page"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2413
    invoke-virtual {p0, p1}, Ltwitter4j/Twitter;->getFavorites(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public favorites(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2439
    invoke-virtual {p0, p1}, Ltwitter4j/Twitter;->getFavorites(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public favorites(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .parameter "id"
    .parameter "page"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2466
    invoke-virtual {p0, p1, p2}, Ltwitter4j/Twitter;->getFavorites(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public follow(Ljava/lang/String;)Ltwitter4j/User;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2517
    invoke-virtual {p0, p1}, Ltwitter4j/Twitter;->enableNotification(Ljava/lang/String;)Ltwitter4j/User;

    move-result-object v0

    return-object v0
.end method

.method public forceUsePost(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-super {p0, p1}, Ltwitter4j/TwitterSupport;->forceUsePost(Z)V

    return-void
.end method

.method protected get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ltwitter4j/http/Response;
    .locals 3
    .parameter "url"
    .parameter "name1"
    .parameter "value1"
    .parameter "name2"
    .parameter "value2"
    .parameter "authenticate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 264
    const/4 v0, 0x2

    new-array v0, v0, [Ltwitter4j/http/PostParameter;

    const/4 v1, 0x0

    new-instance v2, Ltwitter4j/http/PostParameter;

    invoke-direct {v2, p2, p3}, Ltwitter4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ltwitter4j/http/PostParameter;

    invoke-direct {v2, p4, p5}, Ltwitter4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0, p6}, Ltwitter4j/Twitter;->get(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Z)Ltwitter4j/http/Response;

    move-result-object v0

    return-object v0
.end method

.method protected get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ltwitter4j/http/Response;
    .locals 3
    .parameter "url"
    .parameter "name1"
    .parameter "value1"
    .parameter "authenticate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 247
    const/4 v0, 0x1

    new-array v0, v0, [Ltwitter4j/http/PostParameter;

    const/4 v1, 0x0

    new-instance v2, Ltwitter4j/http/PostParameter;

    invoke-direct {v2, p2, p3}, Ltwitter4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0, p4}, Ltwitter4j/Twitter;->get(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Z)Ltwitter4j/http/Response;

    move-result-object v0

    return-object v0
.end method

.method protected get(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Ltwitter4j/Paging;Z)Ltwitter4j/http/Response;
    .locals 8
    .parameter "url"
    .parameter "params"
    .parameter "paging"
    .parameter "authenticate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 294
    if-eqz p3, :cond_8

    .line 295
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 296
    .local v3, pagingParams:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/http/PostParameter;>;"
    const-wide/16 v4, -0x1

    invoke-virtual {p3}, Ltwitter4j/Paging;->getMaxId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 297
    new-instance v4, Ltwitter4j/http/PostParameter;

    const-string v5, "max_id"

    invoke-virtual {p3}, Ltwitter4j/Paging;->getMaxId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ltwitter4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    :cond_0
    const-wide/16 v4, -0x1

    invoke-virtual {p3}, Ltwitter4j/Paging;->getSinceId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 300
    new-instance v4, Ltwitter4j/http/PostParameter;

    const-string v5, "since_id"

    invoke-virtual {p3}, Ltwitter4j/Paging;->getSinceId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ltwitter4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_1
    const/4 v4, -0x1

    invoke-virtual {p3}, Ltwitter4j/Paging;->getPage()I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 303
    new-instance v4, Ltwitter4j/http/PostParameter;

    const-string v5, "page"

    invoke-virtual {p3}, Ltwitter4j/Paging;->getPage()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ltwitter4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_2
    const/4 v4, -0x1

    invoke-virtual {p3}, Ltwitter4j/Paging;->getCount()I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 306
    const/4 v4, -0x1

    const-string v5, "search"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v4, v5, :cond_5

    .line 309
    new-instance v4, Ltwitter4j/http/PostParameter;

    const-string v5, "rpp"

    invoke-virtual {p3}, Ltwitter4j/Paging;->getCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ltwitter4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_3
    :goto_0
    const/4 v2, 0x0

    .line 315
    .local v2, newparams:[Ltwitter4j/http/PostParameter;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ltwitter4j/http/PostParameter;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltwitter4j/http/PostParameter;

    .line 316
    .local v0, arrayPagingParams:[Ltwitter4j/http/PostParameter;
    if-eqz p2, :cond_6

    .line 317
    array-length v4, p2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v4, v5

    new-array v2, v4, [Ltwitter4j/http/PostParameter;

    .line 318
    const/4 v4, 0x0

    const/4 v5, 0x0

    array-length v6, p2

    invoke-static {p2, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 319
    const/4 v4, 0x0

    array-length v5, p2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v0, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 330
    :cond_4
    :goto_1
    invoke-virtual {p0, p1, v2, p4}, Ltwitter4j/Twitter;->get(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Z)Ltwitter4j/http/Response;

    move-result-object v4

    .line 332
    .end local v0           #arrayPagingParams:[Ltwitter4j/http/PostParameter;
    .end local v2           #newparams:[Ltwitter4j/http/PostParameter;
    .end local v3           #pagingParams:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/http/PostParameter;>;"
    :goto_2
    return-object v4

    .line 311
    .restart local v3       #pagingParams:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/http/PostParameter;>;"
    :cond_5
    new-instance v4, Ltwitter4j/http/PostParameter;

    const-string v5, "count"

    invoke-virtual {p3}, Ltwitter4j/Paging;->getCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ltwitter4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 321
    .restart local v0       #arrayPagingParams:[Ltwitter4j/http/PostParameter;
    .restart local v2       #newparams:[Ltwitter4j/http/PostParameter;
    :cond_6
    array-length v4, v0

    if-eqz v4, :cond_4

    .line 322
    invoke-static {v0}, Ltwitter4j/http/HttpClient;->encodeParameters([Ltwitter4j/http/PostParameter;)Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, encodedParams:Ljava/lang/String;
    const/4 v4, -0x1

    const-string v5, "?"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v4, v5, :cond_7

    .line 324
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 326
    :cond_7
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 332
    .end local v0           #arrayPagingParams:[Ltwitter4j/http/PostParameter;
    .end local v1           #encodedParams:Ljava/lang/String;
    .end local v2           #newparams:[Ltwitter4j/http/PostParameter;
    .end local v3           #pagingParams:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/http/PostParameter;>;"
    :cond_8
    invoke-virtual {p0, p1, p2, p4}, Ltwitter4j/Twitter;->get(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Z)Ltwitter4j/http/Response;

    move-result-object v4

    goto :goto_2
.end method

.method protected get(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Z)Ltwitter4j/http/Response;
    .locals 2
    .parameter "url"
    .parameter "params"
    .parameter "authenticate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 277
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 278
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p2}, Ltwitter4j/http/HttpClient;->encodeParameters([Ltwitter4j/http/PostParameter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 280
    :cond_0
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/http/HttpClient;

    invoke-virtual {v0, p1, p3}, Ltwitter4j/http/HttpClient;->get(Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v0

    return-object v0
.end method

.method public getAuthenticatedUser()Ltwitter4j/User;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2761
    new-instance v0, Ltwitter4j/User;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "account/verify_credentials.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Ltwitter4j/Twitter;->get(Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ltwitter4j/User;-><init>(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)V

    return-object v0
.end method

.method public getBaseURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Ltwitter4j/Twitter;->baseURL:Ljava/lang/String;

    return-object v0
.end method

.method public getBlockingUsers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2650
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "blocks/blocking.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ltwitter4j/Twitter;->get(Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/User;->constructUsers(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBlockingUsers(I)Ljava/util/List;
    .locals 2
    .parameter "page"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2666
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "blocks/blocking.xml?page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ltwitter4j/Twitter;->get(Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/User;->constructUsers(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBlockingUsersIDs()Ltwitter4j/IDs;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2679
    new-instance v0, Ltwitter4j/IDs;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "blocks/blocking/ids.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Ltwitter4j/Twitter;->get(Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/IDs;-><init>(Ltwitter4j/http/Response;)V

    return-object v0
.end method

.method public getClientURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Ltwitter4j/TwitterSupport;->getClientURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Ltwitter4j/TwitterSupport;->getClientVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTrends()Ltwitter4j/Trends;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 378
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/Twitter;->searchBaseURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "trends/current.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Ltwitter4j/Twitter;->get(Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/Trends;->constructTrendsList(Ltwitter4j/http/Response;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ltwitter4j/Trends;

    return-object p0
.end method

.method public getCurrentTrends(Z)Ltwitter4j/Trends;
    .locals 3
    .parameter "excludeHashTags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 392
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/Twitter;->searchBaseURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "trends/current.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v1, "?exclude=hashtags"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Ltwitter4j/Twitter;->get(Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/Trends;->constructTrendsList(Ltwitter4j/http/Response;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ltwitter4j/Trends;

    return-object p0

    .restart local p0
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getDailyTrends()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Trends;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 406
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/Twitter;->searchBaseURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "trends/daily.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ltwitter4j/Twitter;->get(Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/Trends;->constructTrendsList(Ltwitter4j/http/Response;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDailyTrends(Ljava/util/Date;Z)Ljava/util/List;
    .locals 2
    .parameter "date"
    .parameter "excludeHashTags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Trends;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 420
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/Twitter;->searchBaseURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "trends/daily.json?date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-direct {p0, p1}, Ltwitter4j/Twitter;->toDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    if-eqz p2, :cond_0

    const-string v1, "&exclude=hashtags"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ltwitter4j/Twitter;->get(Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/Trends;->constructTrendsList(Ltwitter4j/http/Response;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getDirectMessages()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/DirectMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1704
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "direct_messages.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ltwitter4j/Twitter;->get(Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/DirectMessage;->constructDirectMessages(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDirectMessages(I)Ljava/util/List;
    .locals 3
    .parameter "sinceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/DirectMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1763
    new-instance v0, Ltwitter4j/Paging;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Ltwitter4j/Paging;-><init>(J)V

    invoke-virtual {p0, v0}, Ltwitter4j/Twitter;->getDirectMessages(Ltwitter4j/Paging;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDirectMessages(II)Ljava/util/List;
    .locals 1
    .parameter "page"
    .parameter "sinceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/DirectMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1749
    new-instance v0, Ltwitter4j/Paging;

    invoke-direct {v0, p1}, Ltwitter4j/Paging;-><init>(I)V

    invoke-virtual {v0, p2}, Ltwitter4j/Paging;->sinceId(I)Ltwitter4j/Paging;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/Twitter;->getDirectMessages(Ltwitter4j/Paging;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDirectMessages(Ljava/util/Date;)Ljava/util/List;
    .locals 4
    .parameter "since"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/DirectMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1778
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "direct_messages.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "since"

    iget-object v2, p0, Ltwitter4j/Twitter;->format:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Ltwitter4j/Twitter;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/DirectMessage;->constructDirectMessages(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDirectMessages(Ltwitter4j/Paging;)Ljava/util/List;
    .locals 3
    .parameter "paging"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/Paging;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/DirectMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1717
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "direct_messages.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, p1, v2}, Ltwitter4j/Twitter;->get(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Ltwitter4j/Paging;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/DirectMessage;->constructDirectMessages(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDirectMessagesByPage(I)Ljava/util/List;
    .locals 1
    .parameter "page"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/DirectMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1732
    new-instance v0, Ltwitter4j/Paging;

    invoke-direct {v0, p1}, Ltwitter4j/Paging;-><init>(I)V

    invoke-virtual {p0, v0}, Ltwitter4j/Twitter;->getDirectMessages(Ltwitter4j/Paging;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDowntimeSchedule()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2773
    new-instance v0, Ltwitter4j/TwitterException;

    const-string v1, "this method is not supported by the Twitter API anymore"

    new-instance v2, Ljava/lang/NoSuchMethodException;

    const-string v3, "this method is not supported by the Twitter API anymore"

    invoke-direct {v2, v3}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public getFavorites()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2400
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "favorites.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ltwitter4j/http/PostParameter;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Ltwitter4j/Twitter;->get(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/Status;->constructStatuses(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFavorites(I)Ljava/util/List;
    .locals 4
    .parameter "page"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2426
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "favorites.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "page"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Ltwitter4j/Twitter;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/Status;->constructStatuses(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFavorites(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2452
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "favorites/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ltwitter4j/http/PostParameter;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Ltwitter4j/Twitter;->get(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/Status;->constructStatuses(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFavorites(Ljava/lang/String;I)Ljava/util/List;
    .locals 4
    .parameter "id"
    .parameter "page"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2480
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "favorites/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "page"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Ltwitter4j/Twitter;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/Status;->constructStatuses(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFeatured()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1692
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/featured.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ltwitter4j/Twitter;->get(Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/User;->constructUsers(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFollowers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1547
    invoke-virtual {p0}, Ltwitter4j/Twitter;->getFollowersStatuses()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFollowers(I)Ljava/util/List;
    .locals 1
    .parameter "page"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1605
    new-instance v0, Ltwitter4j/Paging;

    invoke-direct {v0, p1}, Ltwitter4j/Paging;-><init>(I)V

    invoke-virtual {p0, v0}, Ltwitter4j/Twitter;->getFollowersStatuses(Ltwitter4j/Paging;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFollowers(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1620
    invoke-virtual {p0, p1}, Ltwitter4j/Twitter;->getFollowersStatuses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFollowers(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .parameter "id"
    .parameter "page"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1682
    new-instance v0, Ltwitter4j/Paging;

    invoke-direct {v0, p2}, Ltwitter4j/Paging;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/Twitter;->getFollowersStatuses(Ljava/lang/String;Ltwitter4j/Paging;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFollowers(Ljava/lang/String;Ltwitter4j/Paging;)Ljava/util/List;
    .locals 1
    .parameter "id"
    .parameter "paging"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ltwitter4j/Paging;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1650
    invoke-virtual {p0, p1, p2}, Ltwitter4j/Twitter;->getFollowersStatuses(Ljava/lang/String;Ltwitter4j/Paging;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFollowers(Ltwitter4j/Paging;)Ljava/util/List;
    .locals 1
    .parameter "paging"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/Paging;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1575
    invoke-virtual {p0, p1}, Ltwitter4j/Twitter;->getFollowersStatuses(Ltwitter4j/Paging;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFollowersIDs()Ltwitter4j/IDs;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2135
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Ltwitter4j/Twitter;->getFollowersIDs(J)Ltwitter4j/IDs;

    move-result-object v0

    return-object v0
.end method

.method public getFollowersIDs(I)Ltwitter4j/IDs;
    .locals 2
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2174
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Ltwitter4j/Twitter;->getFollowersIDs(IJ)Ltwitter4j/IDs;

    move-result-object v0

    return-object v0
.end method

.method public getFollowersIDs(IJ)Ltwitter4j/IDs;
    .locals 3
    .parameter "userId"
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2202
    new-instance v0, Ltwitter4j/IDs;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "followers/ids.xml?user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Ltwitter4j/Twitter;->get(Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/IDs;-><init>(Ltwitter4j/http/Response;)V

    return-object v0
.end method

.method public getFollowersIDs(ILtwitter4j/Paging;)Ltwitter4j/IDs;
    .locals 4
    .parameter "userId"
    .parameter "paging"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2188
    new-instance v0, Ltwitter4j/IDs;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "followers/ids.xml?user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, p2, v3}, Ltwitter4j/Twitter;->get(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Ltwitter4j/Paging;Z)Ltwitter4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/IDs;-><init>(Ltwitter4j/http/Response;)V

    return-object v0
.end method

.method public getFollowersIDs(J)Ltwitter4j/IDs;
    .locals 3
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2161
    new-instance v0, Ltwitter4j/IDs;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "followers/ids.xml?cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Ltwitter4j/Twitter;->get(Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/IDs;-><init>(Ltwitter4j/http/Response;)V

    return-object v0
.end method

.method public getFollowersIDs(Ljava/lang/String;)Ltwitter4j/IDs;
    .locals 2
    .parameter "screenName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2215
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Ltwitter4j/Twitter;->getFollowersIDs(Ljava/lang/String;J)Ltwitter4j/IDs;

    move-result-object v0

    return-object v0
.end method

.method public getFollowersIDs(Ljava/lang/String;J)Ltwitter4j/IDs;
    .locals 3
    .parameter "screenName"
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2243
    new-instance v0, Ltwitter4j/IDs;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "followers/ids.xml?screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Ltwitter4j/Twitter;->get(Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/IDs;-><init>(Ltwitter4j/http/Response;)V

    return-object v0
.end method

.method public getFollowersIDs(Ljava/lang/String;Ltwitter4j/Paging;)Ltwitter4j/IDs;
    .locals 4
    .parameter "screenName"
    .parameter "paging"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2229
    new-instance v0, Ltwitter4j/IDs;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "followers/ids.xml?screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, p2, v3}, Ltwitter4j/Twitter;->get(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Ltwitter4j/Paging;Z)Ltwitter4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/IDs;-><init>(Ltwitter4j/http/Response;)V

    return-object v0
.end method

.method public getFollowersIDs(Ltwitter4j/Paging;)Ltwitter4j/IDs;
    .locals 4
    .parameter "paging"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2148
    new-instance v0, Ltwitter4j/IDs;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "followers/ids.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, p1, v3}, Ltwitter4j/Twitter;->get(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Ltwitter4j/Paging;Z)Ltwitter4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/IDs;-><init>(Ltwitter4j/http/Response;)V

    return-object v0
.end method

.method public getFollowersStatuses()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1560
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/followers.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ltwitter4j/Twitter;->get(Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/User;->constructUsers(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFollowersStatuses(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1634
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/followers/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ltwitter4j/Twitter;->get(Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/User;->constructUsers(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFollowersStatuses(Ljava/lang/String;Ltwitter4j/Paging;)Ljava/util/List;
    .locals 3
    .parameter "id"
    .parameter "paging"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ltwitter4j/Paging;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1665
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/followers/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, p2, v2}, Ltwitter4j/Twitter;->get(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Ltwitter4j/Paging;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/User;->constructUsers(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFollowersStatuses(Ltwitter4j/Paging;)Ljava/util/List;
    .locals 3
    .parameter "paging"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/Paging;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1589
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/followers.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, p1, v2}, Ltwitter4j/Twitter;->get(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Ltwitter4j/Paging;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/User;->constructUsers(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFriends()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1401
    invoke-virtual {p0}, Ltwitter4j/Twitter;->getFriendsStatuses()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFriends(I)Ljava/util/List;
    .locals 1
    .parameter "page"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1458
    new-instance v0, Ltwitter4j/Paging;

    invoke-direct {v0, p1}, Ltwitter4j/Paging;-><init>(I)V

    invoke-virtual {p0, v0}, Ltwitter4j/Twitter;->getFriendsStatuses(Ltwitter4j/Paging;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFriends(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1472
    invoke-virtual {p0, p1}, Ltwitter4j/Twitter;->getFriendsStatuses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFriends(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .parameter "id"
    .parameter "page"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1534
    new-instance v0, Ltwitter4j/Paging;

    invoke-direct {v0, p2}, Ltwitter4j/Paging;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/Twitter;->getFriendsStatuses(Ljava/lang/String;Ltwitter4j/Paging;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFriends(Ljava/lang/String;Ltwitter4j/Paging;)Ljava/util/List;
    .locals 1
    .parameter "id"
    .parameter "paging"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ltwitter4j/Paging;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1503
    invoke-virtual {p0, p1, p2}, Ltwitter4j/Twitter;->getFriendsStatuses(Ljava/lang/String;Ltwitter4j/Paging;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFriends(Ltwitter4j/Paging;)Ljava/util/List;
    .locals 1
    .parameter "paging"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/Paging;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1429
    invoke-virtual {p0, p1}, Ltwitter4j/Twitter;->getFriendsStatuses(Ltwitter4j/Paging;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsIDs()Ltwitter4j/IDs;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2016
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Ltwitter4j/Twitter;->getFriendsIDs(J)Ltwitter4j/IDs;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsIDs(I)Ltwitter4j/IDs;
    .locals 2
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2054
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Ltwitter4j/Twitter;->getFriendsIDs(IJ)Ltwitter4j/IDs;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsIDs(IJ)Ltwitter4j/IDs;
    .locals 3
    .parameter "userId"
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2082
    new-instance v0, Ltwitter4j/IDs;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "friends/ids.xml?user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Ltwitter4j/Twitter;->get(Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/IDs;-><init>(Ltwitter4j/http/Response;)V

    return-object v0
.end method

.method public getFriendsIDs(ILtwitter4j/Paging;)Ltwitter4j/IDs;
    .locals 4
    .parameter "userId"
    .parameter "paging"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2068
    new-instance v0, Ltwitter4j/IDs;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "friends/ids.xml?user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, p2, v3}, Ltwitter4j/Twitter;->get(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Ltwitter4j/Paging;Z)Ltwitter4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/IDs;-><init>(Ltwitter4j/http/Response;)V

    return-object v0
.end method

.method public getFriendsIDs(J)Ltwitter4j/IDs;
    .locals 3
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2041
    new-instance v0, Ltwitter4j/IDs;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "friends/ids.xml?cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Ltwitter4j/Twitter;->get(Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/IDs;-><init>(Ltwitter4j/http/Response;)V

    return-object v0
.end method

.method public getFriendsIDs(Ljava/lang/String;)Ltwitter4j/IDs;
    .locals 2
    .parameter "screenName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2095
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Ltwitter4j/Twitter;->getFriendsIDs(Ljava/lang/String;J)Ltwitter4j/IDs;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsIDs(Ljava/lang/String;J)Ltwitter4j/IDs;
    .locals 3
    .parameter "screenName"
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2123
    new-instance v0, Ltwitter4j/IDs;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "friends/ids.xml?screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Ltwitter4j/Twitter;->get(Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/IDs;-><init>(Ltwitter4j/http/Response;)V

    return-object v0
.end method

.method public getFriendsIDs(Ljava/lang/String;Ltwitter4j/Paging;)Ltwitter4j/IDs;
    .locals 4
    .parameter "screenName"
    .parameter "paging"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2109
    new-instance v0, Ltwitter4j/IDs;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "friends/ids.xml?screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, p2, v3}, Ltwitter4j/Twitter;->get(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Ltwitter4j/Paging;Z)Ltwitter4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/IDs;-><init>(Ltwitter4j/http/Response;)V

    return-object v0
.end method

.method public getFriendsIDs(Ltwitter4j/Paging;)Ltwitter4j/IDs;
    .locals 4
    .parameter "paging"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2029
    new-instance v0, Ltwitter4j/IDs;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "friends/ids.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, p1, v3}, Ltwitter4j/Twitter;->get(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Ltwitter4j/Paging;Z)Ltwitter4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/IDs;-><init>(Ltwitter4j/http/Response;)V

    return-object v0
.end method

.method public getFriendsStatuses()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1414
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/friends.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ltwitter4j/Twitter;->get(Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/User;->constructUsers(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsStatuses(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1486
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/friends/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ltwitter4j/Twitter;->get(Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/User;->constructUsers(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsStatuses(Ljava/lang/String;Ltwitter4j/Paging;)Ljava/util/List;
    .locals 3
    .parameter "id"
    .parameter "paging"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ltwitter4j/Paging;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1518
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/friends/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p2, v2}, Ltwitter4j/Twitter;->get(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Ltwitter4j/Paging;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/User;->constructUsers(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsStatuses(Ltwitter4j/Paging;)Ljava/util/List;
    .locals 3
    .parameter "paging"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/Paging;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1443
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/friends.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, p1, v2}, Ltwitter4j/Twitter;->get(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Ltwitter4j/Paging;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/User;->constructUsers(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsTimeline()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 549
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/friends_timeline.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ltwitter4j/Twitter;->get(Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/Status;->constructStatuses(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsTimeline(I)Ljava/util/List;
    .locals 1
    .parameter "page"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 580
    new-instance v0, Ltwitter4j/Paging;

    invoke-direct {v0, p1}, Ltwitter4j/Paging;-><init>(I)V

    invoke-virtual {p0, v0}, Ltwitter4j/Twitter;->getFriendsTimeline(Ltwitter4j/Paging;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsTimeline(J)Ljava/util/List;
    .locals 4
    .parameter "sinceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 728
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/friends_timeline.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "since_id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Ltwitter4j/Twitter;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/Status;->constructStatuses(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsTimeline(JI)Ljava/util/List;
    .locals 1
    .parameter "sinceId"
    .parameter "page"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 597
    new-instance v0, Ltwitter4j/Paging;

    invoke-direct {v0, p3}, Ltwitter4j/Paging;-><init>(I)V

    invoke-virtual {v0, p1, p2}, Ltwitter4j/Paging;->sinceId(J)Ltwitter4j/Paging;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/Twitter;->getFriendsTimeline(Ltwitter4j/Paging;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsTimeline(JLjava/lang/String;I)Ljava/util/List;
    .locals 2
    .parameter "sinceId"
    .parameter "id"
    .parameter "page"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 663
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The Twitter API is not supporting this method anymore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFriendsTimeline(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 612
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The Twitter API is not supporting this method anymore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFriendsTimeline(Ljava/lang/String;I)Ljava/util/List;
    .locals 2
    .parameter "id"
    .parameter "page"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 645
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The Twitter API is not supporting this method anymore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFriendsTimeline(Ljava/lang/String;J)Ljava/util/List;
    .locals 2
    .parameter "id"
    .parameter "sinceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 761
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The Twitter API is not supporting this method anymore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFriendsTimeline(Ljava/lang/String;Ljava/util/Date;)Ljava/util/List;
    .locals 2
    .parameter "id"
    .parameter "since"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 745
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The Twitter API is not supporting this method anymore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFriendsTimeline(Ljava/lang/String;Ltwitter4j/Paging;)Ljava/util/List;
    .locals 2
    .parameter "id"
    .parameter "paging"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ltwitter4j/Paging;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 695
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The Twitter API is not supporting this method anymore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFriendsTimeline(Ljava/util/Date;)Ljava/util/List;
    .locals 4
    .parameter "since"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 711
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/friends_timeline.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "since"

    iget-object v2, p0, Ltwitter4j/Twitter;->format:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Ltwitter4j/Twitter;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/Status;->constructStatuses(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsTimeline(Ltwitter4j/Paging;)Ljava/util/List;
    .locals 3
    .parameter "paging"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/Paging;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 678
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/friends_timeline.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, p1, v2}, Ltwitter4j/Twitter;->get(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Ltwitter4j/Paging;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/Status;->constructStatuses(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsTimelineByPage(I)Ljava/util/List;
    .locals 1
    .parameter "page"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 564
    new-instance v0, Ltwitter4j/Paging;

    invoke-direct {v0, p1}, Ltwitter4j/Paging;-><init>(I)V

    invoke-virtual {p0, v0}, Ltwitter4j/Twitter;->getFriendsTimeline(Ltwitter4j/Paging;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsTimelineByPage(Ljava/lang/String;I)Ljava/util/List;
    .locals 2
    .parameter "id"
    .parameter "page"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 628
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The Twitter API is not supporting this method anymore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHomeTimeline()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 519
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/home_timeline.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ltwitter4j/Twitter;->get(Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/Status;->constructStatuses(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHomeTimeline(Ltwitter4j/Paging;)Ljava/util/List;
    .locals 3
    .parameter "paging"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/Paging;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 535
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/home_timeline.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, p1, v2}, Ltwitter4j/Twitter;->get(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Ltwitter4j/Paging;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/Status;->constructStatuses(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMentions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1054
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/mentions.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Ltwitter4j/Twitter;->get(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/Status;->constructStatuses(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMentions(Ltwitter4j/Paging;)Ljava/util/List;
    .locals 3
    .parameter "paging"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/Paging;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1069
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/mentions.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, p1, v2}, Ltwitter4j/Twitter;->get(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Ltwitter4j/Paging;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/Status;->constructStatuses(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/http/AccessToken;
    .locals 2
    .parameter "token"
    .parameter "tokenSecret"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/http/HttpClient;

    invoke-virtual {v1, p1, p2}, Ltwitter4j/http/HttpClient;->getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/http/AccessToken;

    move-result-object v0

    .line 182
    .local v0, accessToken:Ltwitter4j/http/AccessToken;
    invoke-virtual {v0}, Ltwitter4j/http/AccessToken;->getScreenName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ltwitter4j/Twitter;->setUserId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    monitor-exit p0

    return-object v0

    .line 181
    .end local v0           #accessToken:Ltwitter4j/http/AccessToken;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/http/AccessToken;
    .locals 1
    .parameter "token"
    .parameter "tokenSecret"
    .parameter "oauth_verifier"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 199
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/http/HttpClient;

    invoke-virtual {v0, p1, p2, p3}, Ltwitter4j/http/HttpClient;->getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/http/AccessToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOAuthAccessToken(Ltwitter4j/http/RequestToken;)Ltwitter4j/http/AccessToken;
    .locals 1
    .parameter "requestToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/http/HttpClient;

    invoke-virtual {v0, p1}, Ltwitter4j/http/HttpClient;->getOAuthAccessToken(Ltwitter4j/http/RequestToken;)Ltwitter4j/http/AccessToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOAuthAccessToken(Ltwitter4j/http/RequestToken;Ljava/lang/String;)Ltwitter4j/http/AccessToken;
    .locals 2
    .parameter "requestToken"
    .parameter "pin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/http/HttpClient;

    invoke-virtual {v1, p1, p2}, Ltwitter4j/http/HttpClient;->getOAuthAccessToken(Ltwitter4j/http/RequestToken;Ljava/lang/String;)Ltwitter4j/http/AccessToken;

    move-result-object v0

    .line 166
    .local v0, accessToken:Ltwitter4j/http/AccessToken;
    invoke-virtual {v0}, Ltwitter4j/http/AccessToken;->getScreenName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ltwitter4j/Twitter;->setUserId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    monitor-exit p0

    return-object v0

    .line 165
    .end local v0           #accessToken:Ltwitter4j/http/AccessToken;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getOAuthRequestToken()Ltwitter4j/http/RequestToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/http/HttpClient;

    invoke-virtual {v0}, Ltwitter4j/http/HttpClient;->getOAuthRequestToken()Ltwitter4j/http/RequestToken;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthRequestToken(Ljava/lang/String;)Ltwitter4j/http/RequestToken;
    .locals 1
    .parameter "callback_url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/http/HttpClient;

    invoke-virtual {v0, p1}, Ltwitter4j/http/HttpClient;->getOauthRequestToken(Ljava/lang/String;)Ltwitter4j/http/RequestToken;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Ltwitter4j/TwitterSupport;->getPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublicTimeline()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 474
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/public_timeline.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ltwitter4j/Twitter;->get(Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/Status;->constructStatuses(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPublicTimeline(I)Ljava/util/List;
    .locals 2
    .parameter "sinceID"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 490
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Ltwitter4j/Twitter;->getPublicTimeline(J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPublicTimeline(J)Ljava/util/List;
    .locals 4
    .parameter "sinceID"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 503
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/public_timeline.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Ltwitter4j/Paging;

    invoke-direct {v2, p1, p2}, Ltwitter4j/Paging;-><init>(J)V

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Ltwitter4j/Twitter;->get(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Ltwitter4j/Paging;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/Status;->constructStatuses(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReplies()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 967
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/replies.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ltwitter4j/Twitter;->get(Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/Status;->constructStatuses(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReplies(I)Ljava/util/List;
    .locals 4
    .parameter "page"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1016
    if-ge p1, v3, :cond_0

    .line 1017
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "page should be positive integer. passed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1019
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/replies.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "page"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, v3}, Ltwitter4j/Twitter;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/Status;->constructStatuses(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReplies(J)Ljava/util/List;
    .locals 4
    .parameter "sinceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 982
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/replies.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "since_id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Ltwitter4j/Twitter;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/Status;->constructStatuses(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReplies(JI)Ljava/util/List;
    .locals 7
    .parameter "sinceId"
    .parameter "page"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 1036
    if-ge p3, v6, :cond_0

    .line 1037
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "page should be positive integer. passed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1039
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/replies.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "since_id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "page"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Ltwitter4j/Twitter;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/Status;->constructStatuses(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRepliesByPage(I)Ljava/util/List;
    .locals 4
    .parameter "page"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 997
    if-ge p1, v3, :cond_0

    .line 998
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "page should be positive integer. passed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1000
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/replies.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "page"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, v3}, Ltwitter4j/Twitter;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/Status;->constructStatuses(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRetweetedByMe()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1083
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/retweeted_by_me.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Ltwitter4j/Twitter;->get(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/Status;->constructStatuses(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRetweetedByMe(Ltwitter4j/Paging;)Ljava/util/List;
    .locals 3
    .parameter "paging"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/Paging;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1098
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/retweeted_by_me.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, p1, v2}, Ltwitter4j/Twitter;->get(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Ltwitter4j/Paging;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/Status;->constructStatuses(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRetweetedToMe()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1112
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/retweeted_to_me.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Ltwitter4j/Twitter;->get(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/Status;->constructStatuses(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRetweetedToMe(Ltwitter4j/Paging;)Ljava/util/List;
    .locals 3
    .parameter "paging"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/Paging;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1127
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/retweeted_to_me.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, p1, v2}, Ltwitter4j/Twitter;->get(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Ltwitter4j/Paging;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/Status;->constructStatuses(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRetweets(J)Ljava/util/List;
    .locals 2
    .parameter "statusId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/RetweetDetails;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1356
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/retweets/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ltwitter4j/Twitter;->get(Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/RetweetDetails;->createRetweetDetails(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRetweetsOfMe()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1141
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/retweets_of_me.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Ltwitter4j/Twitter;->get(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/Status;->constructStatuses(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRetweetsOfMe(Ltwitter4j/Paging;)Ljava/util/List;
    .locals 3
    .parameter "paging"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/Paging;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1156
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/retweets_of_me.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, p1, v2}, Ltwitter4j/Twitter;->get(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Ltwitter4j/Paging;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/Status;->constructStatuses(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSavedSearches()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/SavedSearch;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2692
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "saved_searches.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ltwitter4j/Twitter;->get(Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/SavedSearch;->constructSavedSearches(Ltwitter4j/http/Response;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSearchBaseURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Ltwitter4j/Twitter;->searchBaseURL:Ljava/lang/String;

    return-object v0
.end method

.method public getSentDirectMessages()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/DirectMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1792
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "direct_messages/sent.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ltwitter4j/http/PostParameter;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Ltwitter4j/Twitter;->get(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/DirectMessage;->constructDirectMessages(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSentDirectMessages(I)Ljava/util/List;
    .locals 3
    .parameter "sinceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/DirectMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1840
    new-instance v0, Ltwitter4j/Paging;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Ltwitter4j/Paging;-><init>(J)V

    invoke-virtual {p0, v0}, Ltwitter4j/Twitter;->getSentDirectMessages(Ltwitter4j/Paging;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSentDirectMessages(II)Ljava/util/List;
    .locals 3
    .parameter "page"
    .parameter "sinceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/DirectMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1857
    new-instance v0, Ltwitter4j/Paging;

    int-to-long v1, p2

    invoke-direct {v0, p1, v1, v2}, Ltwitter4j/Paging;-><init>(IJ)V

    invoke-virtual {p0, v0}, Ltwitter4j/Twitter;->getSentDirectMessages(Ltwitter4j/Paging;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSentDirectMessages(Ljava/util/Date;)Ljava/util/List;
    .locals 4
    .parameter "since"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/DirectMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1824
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "direct_messages/sent.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "since"

    iget-object v2, p0, Ltwitter4j/Twitter;->format:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Ltwitter4j/Twitter;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/DirectMessage;->constructDirectMessages(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSentDirectMessages(Ltwitter4j/Paging;)Ljava/util/List;
    .locals 3
    .parameter "paging"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/Paging;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/DirectMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1808
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "direct_messages/sent.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ltwitter4j/http/PostParameter;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, p1, v2}, Ltwitter4j/Twitter;->get(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Ltwitter4j/Paging;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/DirectMessage;->constructDirectMessages(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Ltwitter4j/TwitterSupport;->getSource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrends()Ltwitter4j/Trends;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 366
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/Twitter;->searchBaseURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "trends.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ltwitter4j/Twitter;->get(Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/Trends;->constructTrends(Ltwitter4j/http/Response;)Ltwitter4j/Trends;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Ltwitter4j/TwitterSupport;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserDetail(Ljava/lang/String;)Ltwitter4j/User;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1371
    invoke-virtual {p0, p1}, Ltwitter4j/Twitter;->showUser(Ljava/lang/String;)Ltwitter4j/User;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Ltwitter4j/TwitterSupport;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserTimeline()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 921
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/user_timeline.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ltwitter4j/Twitter;->get(Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/Status;->constructStatuses(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserTimeline(IJ)Ljava/util/List;
    .locals 1
    .parameter "count"
    .parameter "sinceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 879
    new-instance v0, Ltwitter4j/Paging;

    invoke-direct {v0, p2, p3}, Ltwitter4j/Paging;-><init>(J)V

    invoke-virtual {v0, p1}, Ltwitter4j/Paging;->count(I)Ltwitter4j/Paging;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/Twitter;->getUserTimeline(Ltwitter4j/Paging;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserTimeline(ILjava/util/Date;)Ljava/util/List;
    .locals 7
    .parameter "count"
    .parameter "since"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 862
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/user_timeline.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "since"

    iget-object v0, p0, Ltwitter4j/Twitter;->format:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "count"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Ltwitter4j/Twitter;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/Status;->constructStatuses(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserTimeline(J)Ljava/util/List;
    .locals 1
    .parameter "sinceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 954
    new-instance v0, Ltwitter4j/Paging;

    invoke-direct {v0, p1, p2}, Ltwitter4j/Paging;-><init>(J)V

    invoke-virtual {p0, v0}, Ltwitter4j/Twitter;->getUserTimeline(Ltwitter4j/Paging;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserTimeline(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 892
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/user_timeline/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/http/HttpClient;

    invoke-virtual {v1}, Ltwitter4j/http/HttpClient;->isAuthenticationEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Ltwitter4j/Twitter;->get(Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/Status;->constructStatuses(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserTimeline(Ljava/lang/String;I)Ljava/util/List;
    .locals 4
    .parameter "id"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 846
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/user_timeline/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "count"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/http/HttpClient;

    invoke-virtual {v3}, Ltwitter4j/http/HttpClient;->isAuthenticationEnabled()Z

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Ltwitter4j/Twitter;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/Status;->constructStatuses(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserTimeline(Ljava/lang/String;IJ)Ljava/util/List;
    .locals 1
    .parameter "id"
    .parameter "count"
    .parameter "sinceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ)",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 797
    new-instance v0, Ltwitter4j/Paging;

    invoke-direct {v0, p3, p4}, Ltwitter4j/Paging;-><init>(J)V

    invoke-virtual {v0, p2}, Ltwitter4j/Paging;->count(I)Ltwitter4j/Paging;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ltwitter4j/Twitter;->getUserTimeline(Ljava/lang/String;Ltwitter4j/Paging;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserTimeline(Ljava/lang/String;ILjava/util/Date;)Ljava/util/List;
    .locals 7
    .parameter "id"
    .parameter "count"
    .parameter "since"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 778
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/user_timeline/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "since"

    iget-object v0, p0, Ltwitter4j/Twitter;->format:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "count"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/http/HttpClient;

    invoke-virtual {v0}, Ltwitter4j/http/HttpClient;->isAuthenticationEnabled()Z

    move-result v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Ltwitter4j/Twitter;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/Status;->constructStatuses(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserTimeline(Ljava/lang/String;J)Ljava/util/List;
    .locals 1
    .parameter "id"
    .parameter "sinceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 908
    new-instance v0, Ltwitter4j/Paging;

    invoke-direct {v0, p2, p3}, Ltwitter4j/Paging;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/Twitter;->getUserTimeline(Ljava/lang/String;Ltwitter4j/Paging;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserTimeline(Ljava/lang/String;Ljava/util/Date;)Ljava/util/List;
    .locals 4
    .parameter "id"
    .parameter "since"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 829
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/user_timeline/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "since"

    iget-object v2, p0, Ltwitter4j/Twitter;->format:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/http/HttpClient;

    invoke-virtual {v3}, Ltwitter4j/http/HttpClient;->isAuthenticationEnabled()Z

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Ltwitter4j/Twitter;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/Status;->constructStatuses(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserTimeline(Ljava/lang/String;Ltwitter4j/Paging;)Ljava/util/List;
    .locals 3
    .parameter "id"
    .parameter "paging"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ltwitter4j/Paging;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 813
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/user_timeline/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/http/HttpClient;

    invoke-virtual {v2}, Ltwitter4j/http/HttpClient;->isAuthenticationEnabled()Z

    move-result v2

    invoke-virtual {p0, v0, v1, p2, v2}, Ltwitter4j/Twitter;->get(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Ltwitter4j/Paging;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/Status;->constructStatuses(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserTimeline(Ltwitter4j/Paging;)Ljava/util/List;
    .locals 3
    .parameter "paging"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/Paging;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 937
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statuses/user_timeline.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, p1, v2}, Ltwitter4j/Twitter;->get(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Ltwitter4j/Paging;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/Status;->constructStatuses(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWeeklyTrends()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Trends;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 442
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/Twitter;->searchBaseURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "trends/weekly.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ltwitter4j/Twitter;->get(Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/Trends;->constructTrendsList(Ltwitter4j/http/Response;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWeeklyTrends(Ljava/util/Date;Z)Ljava/util/List;
    .locals 2
    .parameter "date"
    .parameter "excludeHashTags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Trends;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 457
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/Twitter;->searchBaseURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "trends/weekly.json?date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-direct {p0, p1}, Ltwitter4j/Twitter;->toDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    if-eqz p2, :cond_0

    const-string v1, "&exclude=hashtags"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ltwitter4j/Twitter;->get(Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/Trends;->constructTrendsList(Ltwitter4j/http/Response;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 2800
    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/http/HttpClient;

    invoke-virtual {v1}, Ltwitter4j/http/HttpClient;->hashCode()I

    move-result v0

    .line 2801
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/Twitter;->baseURL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 2802
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/Twitter;->searchBaseURL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 2803
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/Twitter;->source:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 2804
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/Twitter;->format:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Ljava/text/SimpleDateFormat;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 2805
    return v0
.end method

.method public isUsePostForced()Z
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Ltwitter4j/TwitterSupport;->isUsePostForced()Z

    move-result v0

    return v0
.end method

.method public leave(Ljava/lang/String;)Ltwitter4j/User;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2543
    invoke-virtual {p0, p1}, Ltwitter4j/Twitter;->disableNotification(Ljava/lang/String;)Ltwitter4j/User;

    move-result-object v0

    return-object v0
.end method

.method public rateLimitStatus()Ltwitter4j/RateLimitStatus;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2308
    new-instance v0, Ltwitter4j/RateLimitStatus;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/http/HttpClient;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "account/rate_limit_status.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getUserId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getPassword()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v1, v2, v3}, Ltwitter4j/http/HttpClient;->get(Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/RateLimitStatus;-><init>(Ltwitter4j/http/Response;)V

    return-object v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public retweetStatus(J)Ltwitter4j/Status;
    .locals 5
    .parameter "statusId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1341
    new-instance v0, Ltwitter4j/Status;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/http/HttpClient;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "statuses/retweet/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ltwitter4j/http/PostParameter;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Ltwitter4j/http/HttpClient;->post(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Z)Ltwitter4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ltwitter4j/Status;-><init>(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)V

    return-object v0
.end method

.method public search(Ltwitter4j/Query;)Ltwitter4j/QueryResult;
    .locals 5
    .parameter "query"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 347
    :try_start_0
    new-instance v1, Ltwitter4j/QueryResult;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ltwitter4j/Twitter;->searchBaseURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "search.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ltwitter4j/Query;->asPostParameters()[Ltwitter4j/http/PostParameter;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Ltwitter4j/Twitter;->get(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Z)Ltwitter4j/http/Response;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Ltwitter4j/QueryResult;-><init>(Ltwitter4j/http/Response;Ltwitter4j/TwitterSupport;)V
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :goto_0
    return-object v1

    .line 348
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 349
    .local v0, te:Ltwitter4j/TwitterException;
    const/16 v1, 0x194

    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getStatusCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 350
    new-instance v1, Ltwitter4j/QueryResult;

    invoke-direct {v1, p1}, Ltwitter4j/QueryResult;-><init>(Ltwitter4j/Query;)V

    goto :goto_0

    .line 352
    :cond_0
    throw v0
.end method

.method public sendDirectMessage(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/DirectMessage;
    .locals 8
    .parameter "id"
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 1873
    new-instance v0, Ltwitter4j/DirectMessage;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/http/HttpClient;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "direct_messages/new.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ltwitter4j/http/PostParameter;

    const/4 v4, 0x0

    new-instance v5, Ltwitter4j/http/PostParameter;

    const-string v6, "user"

    invoke-direct {v5, v6, p1}, Ltwitter4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    new-instance v4, Ltwitter4j/http/PostParameter;

    const-string v5, "text"

    invoke-direct {v4, v5, p2}, Ltwitter4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3, v7}, Ltwitter4j/http/HttpClient;->post(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Z)Ltwitter4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ltwitter4j/DirectMessage;-><init>(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)V

    return-object v0
.end method

.method public setBaseURL(Ljava/lang/String;)V
    .locals 0
    .parameter "baseURL"

    .prologue
    .line 84
    iput-object p1, p0, Ltwitter4j/Twitter;->baseURL:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setClientURL(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-super {p0, p1}, Ltwitter4j/TwitterSupport;->setClientURL(Ljava/lang/String;)V

    return-void
.end method

.method public setClientVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-super {p0, p1}, Ltwitter4j/TwitterSupport;->setClientVersion(Ljava/lang/String;)V

    return-void
.end method

.method public setHttpConnectionTimeout(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-super {p0, p1}, Ltwitter4j/TwitterSupport;->setHttpConnectionTimeout(I)V

    return-void
.end method

.method public setHttpProxy(Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-super {p0, p1, p2}, Ltwitter4j/TwitterSupport;->setHttpProxy(Ljava/lang/String;I)V

    return-void
.end method

.method public setHttpProxyAuth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-super {p0, p1, p2}, Ltwitter4j/TwitterSupport;->setHttpProxyAuth(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHttpReadTimeout(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-super {p0, p1}, Ltwitter4j/TwitterSupport;->setHttpReadTimeout(I)V

    return-void
.end method

.method public setOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "token"
    .parameter "tokenSecret"

    .prologue
    .line 218
    new-instance v0, Ltwitter4j/http/AccessToken;

    invoke-direct {v0, p1, p2}, Ltwitter4j/http/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ltwitter4j/Twitter;->setOAuthAccessToken(Ltwitter4j/http/AccessToken;)V

    .line 219
    return-void
.end method

.method public setOAuthAccessToken(Ltwitter4j/http/AccessToken;)V
    .locals 1
    .parameter "accessToken"

    .prologue
    .line 208
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/http/HttpClient;

    invoke-virtual {v0, p1}, Ltwitter4j/http/HttpClient;->setOAuthAccessToken(Ltwitter4j/http/AccessToken;)V

    .line 209
    return-void
.end method

.method public declared-synchronized setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "consumerKey"
    .parameter "consumerSecret"

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/http/HttpClient;

    invoke-virtual {v0, p1, p2}, Ltwitter4j/http/HttpClient;->setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-super {p0, p1}, Ltwitter4j/TwitterSupport;->setPassword(Ljava/lang/String;)V

    return-void
.end method

.method public setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-super {p0, p1, p2}, Ltwitter4j/TwitterSupport;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRetryCount(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-super {p0, p1}, Ltwitter4j/TwitterSupport;->setRetryCount(I)V

    return-void
.end method

.method public setRetryIntervalSecs(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-super {p0, p1}, Ltwitter4j/TwitterSupport;->setRetryIntervalSecs(I)V

    return-void
.end method

.method public setSearchBaseURL(Ljava/lang/String;)V
    .locals 0
    .parameter "searchBaseURL"

    .prologue
    .line 103
    iput-object p1, p0, Ltwitter4j/Twitter;->searchBaseURL:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-super {p0, p1}, Ltwitter4j/TwitterSupport;->setSource(Ljava/lang/String;)V

    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-super {p0, p1}, Ltwitter4j/TwitterSupport;->setUserAgent(Ljava/lang/String;)V

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-super {p0, p1}, Ltwitter4j/TwitterSupport;->setUserId(Ljava/lang/String;)V

    return-void
.end method

.method public show(I)Ltwitter4j/Status;
    .locals 2
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1172
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Ltwitter4j/Twitter;->showStatus(J)Ltwitter4j/Status;

    move-result-object v0

    return-object v0
.end method

.method public show(J)Ltwitter4j/Status;
    .locals 3
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1188
    new-instance v0, Ltwitter4j/Status;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "statuses/show/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Ltwitter4j/Twitter;->get(Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ltwitter4j/Status;-><init>(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)V

    return-object v0
.end method

.method public showSavedSearch(I)Ltwitter4j/SavedSearch;
    .locals 3
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2705
    new-instance v0, Ltwitter4j/SavedSearch;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "saved_searches/show/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Ltwitter4j/Twitter;->get(Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/SavedSearch;-><init>(Ltwitter4j/http/Response;)V

    return-object v0
.end method

.method public showStatus(J)Ltwitter4j/Status;
    .locals 3
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1202
    new-instance v0, Ltwitter4j/Status;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "statuses/show/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Ltwitter4j/Twitter;->get(Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ltwitter4j/Status;-><init>(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)V

    return-object v0
.end method

.method public showUser(Ljava/lang/String;)Ltwitter4j/User;
    .locals 3
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1385
    new-instance v0, Ltwitter4j/User;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "users/show/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/http/HttpClient;

    invoke-virtual {v2}, Ltwitter4j/http/HttpClient;->isAuthenticationEnabled()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Ltwitter4j/Twitter;->get(Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ltwitter4j/User;-><init>(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)V

    return-object v0
.end method

.method public test()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2746
    const/4 v0, -0x1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "help/test.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Ltwitter4j/Twitter;->get(Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v1

    invoke-virtual {v1}, Ltwitter4j/http/Response;->asString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ok"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v3

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 2810
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Twitter{http="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/http/HttpClient;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", baseURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Twitter;->baseURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", searchBaseURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Twitter;->searchBaseURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", source=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Twitter;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Twitter;->format:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unblock(Ljava/lang/String;)Ltwitter4j/User;
    .locals 4
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2600
    new-instance v0, Ltwitter4j/User;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/http/HttpClient;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "blocks/destroy/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ltwitter4j/http/HttpClient;->post(Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ltwitter4j/User;-><init>(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)V

    return-object v0
.end method

.method public update(Ljava/lang/String;)Ltwitter4j/Status;
    .locals 1
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1217
    invoke-virtual {p0, p1}, Ltwitter4j/Twitter;->updateStatus(Ljava/lang/String;)Ltwitter4j/Status;

    move-result-object v0

    return-object v0
.end method

.method public update(Ljava/lang/String;J)Ltwitter4j/Status;
    .locals 1
    .parameter "status"
    .parameter "inReplyToStatusId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1270
    invoke-virtual {p0, p1, p2, p3}, Ltwitter4j/Twitter;->updateStatus(Ljava/lang/String;J)Ltwitter4j/Status;

    move-result-object v0

    return-object v0
.end method

.method public updateDeliverlyDevice(Ltwitter4j/Twitter$Device;)Ltwitter4j/User;
    .locals 9
    .parameter "device"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 2333
    new-instance v0, Ltwitter4j/User;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/http/HttpClient;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "account/update_delivery_device.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ltwitter4j/http/PostParameter;

    const/4 v4, 0x0

    new-instance v5, Ltwitter4j/http/PostParameter;

    const-string v6, "device"

    iget-object v7, p1, Ltwitter4j/Twitter$Device;->DEVICE:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Ltwitter4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3, v8}, Ltwitter4j/http/HttpClient;->post(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Z)Ltwitter4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ltwitter4j/User;-><init>(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)V

    return-object v0
.end method

.method public updateLocation(Ljava/lang/String;)Ltwitter4j/User;
    .locals 8
    .parameter "location"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 2271
    new-instance v0, Ltwitter4j/User;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/http/HttpClient;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "account/update_location.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ltwitter4j/http/PostParameter;

    const/4 v4, 0x0

    new-instance v5, Ltwitter4j/http/PostParameter;

    const-string v6, "location"

    invoke-direct {v5, v6, p1}, Ltwitter4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3, v7}, Ltwitter4j/http/HttpClient;->post(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Z)Ltwitter4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ltwitter4j/User;-><init>(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)V

    return-object v0
.end method

.method public updateProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/User;
    .locals 6
    .parameter "name"
    .parameter "email"
    .parameter "url"
    .parameter "location"
    .parameter "description"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2289
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2290
    .local v0, profile:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/http/PostParameter;>;"
    const-string v1, "name"

    invoke-direct {p0, v0, v1, p1}, Ltwitter4j/Twitter;->addParameterToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 2291
    const-string v1, "email"

    invoke-direct {p0, v0, v1, p2}, Ltwitter4j/Twitter;->addParameterToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 2292
    const-string v1, "url"

    invoke-direct {p0, v0, v1, p3}, Ltwitter4j/Twitter;->addParameterToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 2293
    const-string v1, "location"

    invoke-direct {p0, v0, v1, p4}, Ltwitter4j/Twitter;->addParameterToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 2294
    const-string v1, "description"

    invoke-direct {p0, v0, v1, p5}, Ltwitter4j/Twitter;->addParameterToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 2295
    new-instance v2, Ltwitter4j/User;

    iget-object v3, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/http/HttpClient;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, "account/update_profile.xml"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ltwitter4j/http/PostParameter;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ltwitter4j/http/PostParameter;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v1, v5}, Ltwitter4j/http/HttpClient;->post(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Z)Ltwitter4j/http/Response;

    move-result-object v1

    invoke-direct {v2, v1, p0}, Ltwitter4j/User;-><init>(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)V

    return-object v2
.end method

.method public updateProfileColors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/User;
    .locals 6
    .parameter "profileBackgroundColor"
    .parameter "profileTextColor"
    .parameter "profileLinkColor"
    .parameter "profileSidebarFillColor"
    .parameter "profileSidebarBorderColor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2356
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2357
    .local v0, colors:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/http/PostParameter;>;"
    const-string v1, "profile_background_color"

    invoke-direct {p0, v0, v1, p1}, Ltwitter4j/Twitter;->addParameterToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 2359
    const-string v1, "profile_text_color"

    invoke-direct {p0, v0, v1, p2}, Ltwitter4j/Twitter;->addParameterToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 2361
    const-string v1, "profile_link_color"

    invoke-direct {p0, v0, v1, p3}, Ltwitter4j/Twitter;->addParameterToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 2363
    const-string v1, "profile_sidebar_fill_color"

    invoke-direct {p0, v0, v1, p4}, Ltwitter4j/Twitter;->addParameterToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 2365
    const-string v1, "profile_sidebar_border_color"

    invoke-direct {p0, v0, v1, p5}, Ltwitter4j/Twitter;->addParameterToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 2367
    new-instance v2, Ltwitter4j/User;

    iget-object v3, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/http/HttpClient;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, "account/update_profile_colors.xml"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ltwitter4j/http/PostParameter;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ltwitter4j/http/PostParameter;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v1, v5}, Ltwitter4j/http/HttpClient;->post(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Z)Ltwitter4j/http/Response;

    move-result-object v1

    invoke-direct {v2, v1, p0}, Ltwitter4j/User;-><init>(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)V

    return-object v2
.end method

.method public updateStatus(Ljava/lang/String;)Ltwitter4j/Status;
    .locals 8
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 1232
    new-instance v0, Ltwitter4j/Status;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/http/HttpClient;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "statuses/update.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ltwitter4j/http/PostParameter;

    const/4 v4, 0x0

    new-instance v5, Ltwitter4j/http/PostParameter;

    const-string v6, "status"

    invoke-direct {v5, v6, p1}, Ltwitter4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    new-instance v4, Ltwitter4j/http/PostParameter;

    const-string v5, "source"

    iget-object v6, p0, Ltwitter4j/Twitter;->source:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Ltwitter4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3, v7}, Ltwitter4j/http/HttpClient;->post(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Z)Ltwitter4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ltwitter4j/Status;-><init>(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)V

    return-object v0
.end method

.method public updateStatus(Ljava/lang/String;DD)Ltwitter4j/Status;
    .locals 9
    .parameter "status"
    .parameter "latitude"
    .parameter "longitude"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 1250
    new-instance v0, Ltwitter4j/Status;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/http/HttpClient;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "statuses/update.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ltwitter4j/http/PostParameter;

    const/4 v4, 0x0

    new-instance v5, Ltwitter4j/http/PostParameter;

    const-string v6, "status"

    invoke-direct {v5, v6, p1}, Ltwitter4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    new-instance v4, Ltwitter4j/http/PostParameter;

    const-string v5, "lat"

    invoke-direct {v4, v5, p2, p3}, Ltwitter4j/http/PostParameter;-><init>(Ljava/lang/String;D)V

    aput-object v4, v3, v8

    const/4 v4, 0x2

    new-instance v5, Ltwitter4j/http/PostParameter;

    const-string v6, "long"

    invoke-direct {v5, v6, p4, p5}, Ltwitter4j/http/PostParameter;-><init>(Ljava/lang/String;D)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ltwitter4j/http/PostParameter;

    const-string v6, "source"

    iget-object v7, p0, Ltwitter4j/Twitter;->source:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Ltwitter4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3, v8}, Ltwitter4j/http/HttpClient;->post(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Z)Ltwitter4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ltwitter4j/Status;-><init>(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)V

    return-object v0
.end method

.method public updateStatus(Ljava/lang/String;J)Ltwitter4j/Status;
    .locals 9
    .parameter "status"
    .parameter "inReplyToStatusId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 1286
    new-instance v0, Ltwitter4j/Status;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/http/HttpClient;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "statuses/update.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ltwitter4j/http/PostParameter;

    const/4 v4, 0x0

    new-instance v5, Ltwitter4j/http/PostParameter;

    const-string v6, "status"

    invoke-direct {v5, v6, p1}, Ltwitter4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    new-instance v4, Ltwitter4j/http/PostParameter;

    const-string v5, "in_reply_to_status_id"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ltwitter4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v8

    const/4 v4, 0x2

    new-instance v5, Ltwitter4j/http/PostParameter;

    const-string v6, "source"

    iget-object v7, p0, Ltwitter4j/Twitter;->source:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Ltwitter4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3, v8}, Ltwitter4j/http/HttpClient;->post(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Z)Ltwitter4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ltwitter4j/Status;-><init>(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)V

    return-object v0
.end method

.method public updateStatus(Ljava/lang/String;JDD)Ltwitter4j/Status;
    .locals 8
    .parameter "status"
    .parameter "inReplyToStatusId"
    .parameter "latitude"
    .parameter "longitude"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1306
    new-instance v0, Ltwitter4j/Status;

    iget-object v1, p0, Ltwitter4j/Twitter;->http:Ltwitter4j/http/HttpClient;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "statuses/update.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [Ltwitter4j/http/PostParameter;

    const/4 v4, 0x0

    new-instance v5, Ltwitter4j/http/PostParameter;

    const-string v6, "status"

    invoke-direct {v5, v6, p1}, Ltwitter4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ltwitter4j/http/PostParameter;

    const-string v6, "lat"

    invoke-direct {v5, v6, p4, p5}, Ltwitter4j/http/PostParameter;-><init>(Ljava/lang/String;D)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ltwitter4j/http/PostParameter;

    const-string v6, "long"

    invoke-direct {v5, v6, p6, p7}, Ltwitter4j/http/PostParameter;-><init>(Ljava/lang/String;D)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ltwitter4j/http/PostParameter;

    const-string v6, "in_reply_to_status_id"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ltwitter4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    new-instance v5, Ltwitter4j/http/PostParameter;

    const-string v6, "source"

    iget-object v7, p0, Ltwitter4j/Twitter;->source:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Ltwitter4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Ltwitter4j/http/HttpClient;->post(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Z)Ltwitter4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ltwitter4j/Status;-><init>(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)V

    return-object v0
.end method

.method public verifyCredentials()Ltwitter4j/User;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2256
    new-instance v0, Ltwitter4j/User;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/Twitter;->getBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "account/verify_credentials.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Ltwitter4j/Twitter;->get(Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ltwitter4j/User;-><init>(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)V

    return-object v0
.end method
