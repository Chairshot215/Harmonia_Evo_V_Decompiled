.class public final Ltwitter4j/json/DataObjectFactory;
.super Ljava/lang/Object;
.source "DataObjectFactory.java"


# static fields
.field private static final IDsConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ltwitter4j/IDs;",
            ">;"
        }
    .end annotation
.end field

.field private static final accountTotalsConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ltwitter4j/AccountTotals;",
            ">;"
        }
    .end annotation
.end field

.field private static final categoryConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ltwitter4j/Category;",
            ">;"
        }
    .end annotation
.end field

.field static class$java$lang$String:Ljava/lang/Class;

.field static class$org$json$JSONArray:Ljava/lang/Class;

.field static class$org$json$JSONObject:Ljava/lang/Class;

.field private static final directMessageConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ltwitter4j/DirectMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final locationConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ltwitter4j/Location;",
            ">;"
        }
    .end annotation
.end field

.field private static final placeConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ltwitter4j/Place;",
            ">;"
        }
    .end annotation
.end field

.field private static final rateLimitStatusConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ltwitter4j/RateLimitStatus;",
            ">;"
        }
    .end annotation
.end field

.field private static final rawJsonMap:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation
.end field

.field private static final relatedResultsConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ltwitter4j/RelatedResults;",
            ">;"
        }
    .end annotation
.end field

.field private static final relationshipConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ltwitter4j/Relationship;",
            ">;"
        }
    .end annotation
.end field

.field private static final savedSearchConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ltwitter4j/SavedSearch;",
            ">;"
        }
    .end annotation
.end field

.field private static final statusConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation
.end field

.field private static final statusDeletionNoticeConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ltwitter4j/StatusDeletionNotice;",
            ">;"
        }
    .end annotation
.end field

.field private static final trendConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ltwitter4j/Trend;",
            ">;"
        }
    .end annotation
.end field

.field private static final trendsConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ltwitter4j/Trends;",
            ">;"
        }
    .end annotation
.end field

.field private static final tweetConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ltwitter4j/Tweet;",
            ">;"
        }
    .end annotation
.end field

.field private static final userConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation
.end field

.field private static final userListConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ltwitter4j/UserList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 58
    :try_start_0
    const-string v1, "twitter4j.StatusJSONImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v1, Ltwitter4j/json/DataObjectFactory;->class$org$json$JSONObject:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "org.json.JSONObject"

    invoke-static {v1}, Ltwitter4j/json/DataObjectFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Ltwitter4j/json/DataObjectFactory;->class$org$json$JSONObject:Ljava/lang/Class;

    :goto_0
    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Ltwitter4j/json/DataObjectFactory;->statusConstructor:Ljava/lang/reflect/Constructor;

    .line 59
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->statusConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 61
    const-string v1, "twitter4j.UserJSONImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v1, Ltwitter4j/json/DataObjectFactory;->class$org$json$JSONObject:Ljava/lang/Class;

    if-nez v1, :cond_1

    const-string v1, "org.json.JSONObject"

    invoke-static {v1}, Ltwitter4j/json/DataObjectFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Ltwitter4j/json/DataObjectFactory;->class$org$json$JSONObject:Ljava/lang/Class;

    :goto_1
    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Ltwitter4j/json/DataObjectFactory;->userConstructor:Ljava/lang/reflect/Constructor;

    .line 62
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->userConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 64
    const-string v1, "twitter4j.TweetJSONImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v1, Ltwitter4j/json/DataObjectFactory;->class$org$json$JSONObject:Ljava/lang/Class;

    if-nez v1, :cond_2

    const-string v1, "org.json.JSONObject"

    invoke-static {v1}, Ltwitter4j/json/DataObjectFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Ltwitter4j/json/DataObjectFactory;->class$org$json$JSONObject:Ljava/lang/Class;

    :goto_2
    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Ltwitter4j/json/DataObjectFactory;->tweetConstructor:Ljava/lang/reflect/Constructor;

    .line 65
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->tweetConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 67
    const-string v1, "twitter4j.RelationshipJSONImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v1, Ltwitter4j/json/DataObjectFactory;->class$org$json$JSONObject:Ljava/lang/Class;

    if-nez v1, :cond_3

    const-string v1, "org.json.JSONObject"

    invoke-static {v1}, Ltwitter4j/json/DataObjectFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Ltwitter4j/json/DataObjectFactory;->class$org$json$JSONObject:Ljava/lang/Class;

    :goto_3
    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Ltwitter4j/json/DataObjectFactory;->relationshipConstructor:Ljava/lang/reflect/Constructor;

    .line 68
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->relationshipConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 70
    const-string v1, "twitter4j.PlaceJSONImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v1, Ltwitter4j/json/DataObjectFactory;->class$org$json$JSONObject:Ljava/lang/Class;

    if-nez v1, :cond_4

    const-string v1, "org.json.JSONObject"

    invoke-static {v1}, Ltwitter4j/json/DataObjectFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Ltwitter4j/json/DataObjectFactory;->class$org$json$JSONObject:Ljava/lang/Class;

    :goto_4
    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Ltwitter4j/json/DataObjectFactory;->placeConstructor:Ljava/lang/reflect/Constructor;

    .line 71
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->placeConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 73
    const-string v1, "twitter4j.SavedSearchJSONImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v1, Ltwitter4j/json/DataObjectFactory;->class$org$json$JSONObject:Ljava/lang/Class;

    if-nez v1, :cond_5

    const-string v1, "org.json.JSONObject"

    invoke-static {v1}, Ltwitter4j/json/DataObjectFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Ltwitter4j/json/DataObjectFactory;->class$org$json$JSONObject:Ljava/lang/Class;

    :goto_5
    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Ltwitter4j/json/DataObjectFactory;->savedSearchConstructor:Ljava/lang/reflect/Constructor;

    .line 74
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->savedSearchConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 76
    const-string v1, "twitter4j.TrendJSONImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v1, Ltwitter4j/json/DataObjectFactory;->class$org$json$JSONObject:Ljava/lang/Class;

    if-nez v1, :cond_6

    const-string v1, "org.json.JSONObject"

    invoke-static {v1}, Ltwitter4j/json/DataObjectFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Ltwitter4j/json/DataObjectFactory;->class$org$json$JSONObject:Ljava/lang/Class;

    :goto_6
    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Ltwitter4j/json/DataObjectFactory;->trendConstructor:Ljava/lang/reflect/Constructor;

    .line 77
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->trendConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 79
    const-string v1, "twitter4j.TrendsJSONImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v1, Ltwitter4j/json/DataObjectFactory;->class$java$lang$String:Ljava/lang/Class;

    if-nez v1, :cond_7

    const-string v1, "java.lang.String"

    invoke-static {v1}, Ltwitter4j/json/DataObjectFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Ltwitter4j/json/DataObjectFactory;->class$java$lang$String:Ljava/lang/Class;

    :goto_7
    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Ltwitter4j/json/DataObjectFactory;->trendsConstructor:Ljava/lang/reflect/Constructor;

    .line 80
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->trendsConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 82
    const-string v1, "twitter4j.IDsJSONImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v1, Ltwitter4j/json/DataObjectFactory;->class$java$lang$String:Ljava/lang/Class;

    if-nez v1, :cond_8

    const-string v1, "java.lang.String"

    invoke-static {v1}, Ltwitter4j/json/DataObjectFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Ltwitter4j/json/DataObjectFactory;->class$java$lang$String:Ljava/lang/Class;

    :goto_8
    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Ltwitter4j/json/DataObjectFactory;->IDsConstructor:Ljava/lang/reflect/Constructor;

    .line 83
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->IDsConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 85
    const-string v1, "twitter4j.RateLimitStatusJSONImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v1, Ltwitter4j/json/DataObjectFactory;->class$org$json$JSONObject:Ljava/lang/Class;

    if-nez v1, :cond_9

    const-string v1, "org.json.JSONObject"

    invoke-static {v1}, Ltwitter4j/json/DataObjectFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Ltwitter4j/json/DataObjectFactory;->class$org$json$JSONObject:Ljava/lang/Class;

    :goto_9
    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Ltwitter4j/json/DataObjectFactory;->rateLimitStatusConstructor:Ljava/lang/reflect/Constructor;

    .line 86
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->rateLimitStatusConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 88
    const-string v1, "twitter4j.CategoryJSONImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v1, Ltwitter4j/json/DataObjectFactory;->class$org$json$JSONObject:Ljava/lang/Class;

    if-nez v1, :cond_a

    const-string v1, "org.json.JSONObject"

    invoke-static {v1}, Ltwitter4j/json/DataObjectFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Ltwitter4j/json/DataObjectFactory;->class$org$json$JSONObject:Ljava/lang/Class;

    :goto_a
    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Ltwitter4j/json/DataObjectFactory;->categoryConstructor:Ljava/lang/reflect/Constructor;

    .line 89
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->categoryConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 91
    const-string v1, "twitter4j.DirectMessageJSONImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v1, Ltwitter4j/json/DataObjectFactory;->class$org$json$JSONObject:Ljava/lang/Class;

    if-nez v1, :cond_b

    const-string v1, "org.json.JSONObject"

    invoke-static {v1}, Ltwitter4j/json/DataObjectFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Ltwitter4j/json/DataObjectFactory;->class$org$json$JSONObject:Ljava/lang/Class;

    :goto_b
    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Ltwitter4j/json/DataObjectFactory;->directMessageConstructor:Ljava/lang/reflect/Constructor;

    .line 92
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->directMessageConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 94
    const-string v1, "twitter4j.LocationJSONImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v1, Ltwitter4j/json/DataObjectFactory;->class$org$json$JSONObject:Ljava/lang/Class;

    if-nez v1, :cond_c

    const-string v1, "org.json.JSONObject"

    invoke-static {v1}, Ltwitter4j/json/DataObjectFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Ltwitter4j/json/DataObjectFactory;->class$org$json$JSONObject:Ljava/lang/Class;

    :goto_c
    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Ltwitter4j/json/DataObjectFactory;->locationConstructor:Ljava/lang/reflect/Constructor;

    .line 95
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->locationConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 97
    const-string v1, "twitter4j.UserListJSONImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v1, Ltwitter4j/json/DataObjectFactory;->class$org$json$JSONObject:Ljava/lang/Class;

    if-nez v1, :cond_d

    const-string v1, "org.json.JSONObject"

    invoke-static {v1}, Ltwitter4j/json/DataObjectFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Ltwitter4j/json/DataObjectFactory;->class$org$json$JSONObject:Ljava/lang/Class;

    :goto_d
    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Ltwitter4j/json/DataObjectFactory;->userListConstructor:Ljava/lang/reflect/Constructor;

    .line 98
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->userListConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 100
    const-string v1, "twitter4j.RelatedResultsJSONImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v1, Ltwitter4j/json/DataObjectFactory;->class$org$json$JSONArray:Ljava/lang/Class;

    if-nez v1, :cond_e

    const-string v1, "org.json.JSONArray"

    invoke-static {v1}, Ltwitter4j/json/DataObjectFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Ltwitter4j/json/DataObjectFactory;->class$org$json$JSONArray:Ljava/lang/Class;

    :goto_e
    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Ltwitter4j/json/DataObjectFactory;->relatedResultsConstructor:Ljava/lang/reflect/Constructor;

    .line 101
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->relatedResultsConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 103
    const-string v1, "twitter4j.StatusDeletionNoticeImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v1, Ltwitter4j/json/DataObjectFactory;->class$org$json$JSONObject:Ljava/lang/Class;

    if-nez v1, :cond_f

    const-string v1, "org.json.JSONObject"

    invoke-static {v1}, Ltwitter4j/json/DataObjectFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Ltwitter4j/json/DataObjectFactory;->class$org$json$JSONObject:Ljava/lang/Class;

    :goto_f
    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Ltwitter4j/json/DataObjectFactory;->statusDeletionNoticeConstructor:Ljava/lang/reflect/Constructor;

    .line 104
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->statusDeletionNoticeConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 106
    const-string v1, "twitter4j.AccountTotalsJSONImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v1, Ltwitter4j/json/DataObjectFactory;->class$org$json$JSONObject:Ljava/lang/Class;

    if-nez v1, :cond_10

    const-string v1, "org.json.JSONObject"

    invoke-static {v1}, Ltwitter4j/json/DataObjectFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Ltwitter4j/json/DataObjectFactory;->class$org$json$JSONObject:Ljava/lang/Class;

    :goto_10
    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Ltwitter4j/json/DataObjectFactory;->accountTotalsConstructor:Ljava/lang/reflect/Constructor;

    .line 107
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->accountTotalsConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 115
    new-instance v1, Ltwitter4j/json/DataObjectFactory$1;

    invoke-direct {v1}, Ltwitter4j/json/DataObjectFactory$1;-><init>()V

    sput-object v1, Ltwitter4j/json/DataObjectFactory;->rawJsonMap:Ljava/lang/ThreadLocal;

    return-void

    .line 58
    :cond_0
    :try_start_1
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->class$org$json$JSONObject:Ljava/lang/Class;

    goto/16 :goto_0

    .line 61
    :cond_1
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->class$org$json$JSONObject:Ljava/lang/Class;

    goto/16 :goto_1

    .line 64
    :cond_2
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->class$org$json$JSONObject:Ljava/lang/Class;

    goto/16 :goto_2

    .line 67
    :cond_3
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->class$org$json$JSONObject:Ljava/lang/Class;

    goto/16 :goto_3

    .line 70
    :cond_4
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->class$org$json$JSONObject:Ljava/lang/Class;

    goto/16 :goto_4

    .line 73
    :cond_5
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->class$org$json$JSONObject:Ljava/lang/Class;

    goto/16 :goto_5

    .line 76
    :cond_6
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->class$org$json$JSONObject:Ljava/lang/Class;

    goto/16 :goto_6

    .line 79
    :cond_7
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->class$java$lang$String:Ljava/lang/Class;

    goto/16 :goto_7

    .line 82
    :cond_8
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->class$java$lang$String:Ljava/lang/Class;

    goto/16 :goto_8

    .line 85
    :cond_9
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->class$org$json$JSONObject:Ljava/lang/Class;

    goto/16 :goto_9

    .line 88
    :cond_a
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->class$org$json$JSONObject:Ljava/lang/Class;

    goto/16 :goto_a

    .line 91
    :cond_b
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->class$org$json$JSONObject:Ljava/lang/Class;

    goto/16 :goto_b

    .line 94
    :cond_c
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->class$org$json$JSONObject:Ljava/lang/Class;

    goto/16 :goto_c

    .line 97
    :cond_d
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->class$org$json$JSONObject:Ljava/lang/Class;

    goto/16 :goto_d

    .line 100
    :cond_e
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->class$org$json$JSONArray:Ljava/lang/Class;

    goto/16 :goto_e

    .line 103
    :cond_f
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->class$org$json$JSONObject:Ljava/lang/Class;

    goto :goto_f

    .line 106
    :cond_10
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->class$org$json$JSONObject:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_10

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, e:Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 110
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 111
    .local v0, e:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "not intended to be instantiated."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .parameter "x0"

    .prologue
    .line 58
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

.method static clearThreadLocalMap()V
    .locals 1

    .prologue
    .line 565
    sget-object v0, Ltwitter4j/json/DataObjectFactory;->rawJsonMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 566
    return-void
.end method

.method public static createAccountTotals(Ljava/lang/String;)Ltwitter4j/AccountTotals;
    .locals 5
    .parameter "rawJSON"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 198
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 199
    .local v1, json:Lorg/json/JSONObject;
    sget-object v2, Ltwitter4j/json/DataObjectFactory;->accountTotalsConstructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltwitter4j/AccountTotals;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    return-object v2

    .line 200
    .end local v1           #json:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 201
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 202
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 203
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 204
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 205
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 206
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 207
    .local v0, e:Lorg/json/JSONException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public static createCategory(Ljava/lang/String;)Ltwitter4j/Category;
    .locals 5
    .parameter "rawJSON"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 399
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 400
    .local v1, json:Lorg/json/JSONObject;
    sget-object v2, Ltwitter4j/json/DataObjectFactory;->categoryConstructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltwitter4j/Category;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    return-object v2

    .line 401
    .end local v1           #json:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 402
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 403
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 404
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 405
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 406
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 407
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 408
    .local v0, e:Lorg/json/JSONException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public static createDirectMessage(Ljava/lang/String;)Ltwitter4j/DirectMessage;
    .locals 5
    .parameter "rawJSON"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 422
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 423
    .local v1, json:Lorg/json/JSONObject;
    sget-object v2, Ltwitter4j/json/DataObjectFactory;->directMessageConstructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltwitter4j/DirectMessage;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    return-object v2

    .line 424
    .end local v1           #json:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 425
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 426
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 427
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 428
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 429
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 430
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 431
    .local v0, e:Lorg/json/JSONException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public static createIDs(Ljava/lang/String;)Ltwitter4j/IDs;
    .locals 4
    .parameter "rawJSON"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 356
    :try_start_0
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->IDsConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltwitter4j/IDs;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    return-object v1

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 359
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 360
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 361
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 362
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static createLocation(Ljava/lang/String;)Ltwitter4j/Location;
    .locals 5
    .parameter "rawJSON"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 445
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 446
    .local v1, json:Lorg/json/JSONObject;
    sget-object v2, Ltwitter4j/json/DataObjectFactory;->locationConstructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltwitter4j/Location;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    return-object v2

    .line 447
    .end local v1           #json:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 448
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 449
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 450
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 451
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 452
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 453
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 454
    .local v0, e:Lorg/json/JSONException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public static createObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .parameter "rawJSON"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 525
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 526
    .local v1, json:Lorg/json/JSONObject;
    invoke-static {v1}, Ltwitter4j/json/JSONObjectType;->determine(Lorg/json/JSONObject;)Ltwitter4j/json/JSONObjectType;

    move-result-object v2

    .line 527
    .local v2, jsonObjectType:Ltwitter4j/json/JSONObjectType;
    sget-object v3, Ltwitter4j/json/JSONObjectType;->SENDER:Ltwitter4j/json/JSONObjectType;

    if-ne v3, v2, :cond_1

    .line 528
    sget-object v3, Ltwitter4j/json/DataObjectFactory;->directMessageConstructor:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "direct_message"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v1}, Ltwitter4j/json/DataObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 545
    .end local v1           #json:Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v1

    .line 529
    .restart local v1       #json:Lorg/json/JSONObject;
    :cond_1
    sget-object v3, Ltwitter4j/json/JSONObjectType;->STATUS:Ltwitter4j/json/JSONObjectType;

    if-ne v3, v2, :cond_2

    .line 530
    sget-object v3, Ltwitter4j/json/DataObjectFactory;->statusConstructor:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v1}, Ltwitter4j/json/DataObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 531
    :cond_2
    sget-object v3, Ltwitter4j/json/JSONObjectType;->DIRECT_MESSAGE:Ltwitter4j/json/JSONObjectType;

    if-ne v3, v2, :cond_3

    .line 532
    sget-object v3, Ltwitter4j/json/DataObjectFactory;->directMessageConstructor:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "direct_message"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v1}, Ltwitter4j/json/DataObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 533
    :cond_3
    sget-object v3, Ltwitter4j/json/JSONObjectType;->DELETE:Ltwitter4j/json/JSONObjectType;

    if-ne v3, v2, :cond_4

    .line 534
    sget-object v3, Ltwitter4j/json/DataObjectFactory;->statusDeletionNoticeConstructor:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "delete"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "status"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v1}, Ltwitter4j/json/DataObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 535
    :cond_4
    sget-object v3, Ltwitter4j/json/JSONObjectType;->LIMIT:Ltwitter4j/json/JSONObjectType;

    if-eq v3, v2, :cond_0

    .line 539
    sget-object v3, Ltwitter4j/json/JSONObjectType;->SCRUB_GEO:Ltwitter4j/json/JSONObjectType;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    if-ne v3, v2, :cond_0

    goto :goto_0

    .line 547
    .end local v1           #json:Lorg/json/JSONObject;
    .end local v2           #jsonObjectType:Ltwitter4j/json/JSONObjectType;
    :catch_0
    move-exception v0

    .line 548
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v3, Ltwitter4j/TwitterException;

    invoke-direct {v3, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 549
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 550
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 551
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 552
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 553
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 554
    .local v0, e:Lorg/json/JSONException;
    new-instance v3, Ltwitter4j/TwitterException;

    invoke-direct {v3, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public static createPlace(Ljava/lang/String;)Ltwitter4j/Place;
    .locals 5
    .parameter "rawJSON"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 267
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 268
    .local v1, json:Lorg/json/JSONObject;
    sget-object v2, Ltwitter4j/json/DataObjectFactory;->placeConstructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltwitter4j/Place;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    return-object v2

    .line 269
    .end local v1           #json:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 270
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 271
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 272
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 273
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 274
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 275
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 276
    .local v0, e:Lorg/json/JSONException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public static createRateLimitStatus(Ljava/lang/String;)Ltwitter4j/RateLimitStatus;
    .locals 5
    .parameter "rawJSON"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 376
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 377
    .local v1, json:Lorg/json/JSONObject;
    sget-object v2, Ltwitter4j/json/DataObjectFactory;->rateLimitStatusConstructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltwitter4j/RateLimitStatus;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    return-object v2

    .line 378
    .end local v1           #json:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 379
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 380
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 381
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 382
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 383
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 384
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 385
    .local v0, e:Lorg/json/JSONException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public static createRelatedResults(Ljava/lang/String;)Ltwitter4j/RelatedResults;
    .locals 5
    .parameter "rawJSON"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 491
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 492
    .local v1, json:Lorg/json/JSONArray;
    sget-object v2, Ltwitter4j/json/DataObjectFactory;->relatedResultsConstructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltwitter4j/RelatedResults;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    return-object v2

    .line 493
    .end local v1           #json:Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 494
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 495
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 496
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 497
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 498
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 499
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 500
    .local v0, e:Lorg/json/JSONException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public static createRelationship(Ljava/lang/String;)Ltwitter4j/Relationship;
    .locals 5
    .parameter "rawJSON"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 244
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 245
    .local v1, json:Lorg/json/JSONObject;
    sget-object v2, Ltwitter4j/json/DataObjectFactory;->relationshipConstructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltwitter4j/Relationship;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    return-object v2

    .line 246
    .end local v1           #json:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 247
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 248
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 249
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 250
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 251
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 252
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 253
    .local v0, e:Lorg/json/JSONException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public static createSavedSearch(Ljava/lang/String;)Ltwitter4j/SavedSearch;
    .locals 5
    .parameter "rawJSON"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 290
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 291
    .local v1, json:Lorg/json/JSONObject;
    sget-object v2, Ltwitter4j/json/DataObjectFactory;->savedSearchConstructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltwitter4j/SavedSearch;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    return-object v2

    .line 292
    .end local v1           #json:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 293
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 294
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 295
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 296
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 297
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 298
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 299
    .local v0, e:Lorg/json/JSONException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public static createStatus(Ljava/lang/String;)Ltwitter4j/Status;
    .locals 5
    .parameter "rawJSON"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 152
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 153
    .local v1, json:Lorg/json/JSONObject;
    sget-object v2, Ltwitter4j/json/DataObjectFactory;->statusConstructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltwitter4j/Status;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    return-object v2

    .line 154
    .end local v1           #json:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 155
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 156
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 157
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 158
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 159
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 160
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 161
    .local v0, e:Lorg/json/JSONException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public static createTrend(Ljava/lang/String;)Ltwitter4j/Trend;
    .locals 5
    .parameter "rawJSON"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 313
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 314
    .local v1, json:Lorg/json/JSONObject;
    sget-object v2, Ltwitter4j/json/DataObjectFactory;->trendConstructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltwitter4j/Trend;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    return-object v2

    .line 315
    .end local v1           #json:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 316
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 317
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 318
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 319
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 320
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 321
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 322
    .local v0, e:Lorg/json/JSONException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public static createTrends(Ljava/lang/String;)Ltwitter4j/Trends;
    .locals 4
    .parameter "rawJSON"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 336
    :try_start_0
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->trendsConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltwitter4j/Trends;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    return-object v1

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 339
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 340
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 341
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 342
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static createTweet(Ljava/lang/String;)Ltwitter4j/Tweet;
    .locals 5
    .parameter "rawJSON"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 221
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 222
    .local v1, json:Lorg/json/JSONObject;
    sget-object v2, Ltwitter4j/json/DataObjectFactory;->tweetConstructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltwitter4j/Tweet;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    return-object v2

    .line 223
    .end local v1           #json:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 224
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 225
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 226
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 227
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 228
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 229
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 230
    .local v0, e:Lorg/json/JSONException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public static createUser(Ljava/lang/String;)Ltwitter4j/User;
    .locals 5
    .parameter "rawJSON"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 175
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 176
    .local v1, json:Lorg/json/JSONObject;
    sget-object v2, Ltwitter4j/json/DataObjectFactory;->userConstructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltwitter4j/User;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    return-object v2

    .line 177
    .end local v1           #json:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 178
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 179
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 180
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 181
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 182
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 183
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 184
    .local v0, e:Lorg/json/JSONException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public static createUserList(Ljava/lang/String;)Ltwitter4j/UserList;
    .locals 5
    .parameter "rawJSON"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 468
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 469
    .local v1, json:Lorg/json/JSONObject;
    sget-object v2, Ltwitter4j/json/DataObjectFactory;->userListConstructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltwitter4j/UserList;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    return-object v2

    .line 470
    .end local v1           #json:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 471
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 472
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 473
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 474
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 475
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 476
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 477
    .local v0, e:Lorg/json/JSONException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public static getRawJSON(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "obj"

    .prologue
    .line 131
    sget-object v1, Ltwitter4j/json/DataObjectFactory;->rawJsonMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 132
    .local v0, json:Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 133
    check-cast v0, Ljava/lang/String;

    .line 138
    .end local v0           #json:Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 134
    .restart local v0       #json:Ljava/lang/Object;
    :cond_0
    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 138
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter "json"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 575
    .local p0, key:Ljava/lang/Object;,"TT;"
    sget-object v0, Ltwitter4j/json/DataObjectFactory;->rawJsonMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    return-object p0
.end method
