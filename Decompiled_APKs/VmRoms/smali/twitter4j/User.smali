.class public Ltwitter4j/User;
.super Ltwitter4j/TwitterResponse;
.source "User.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final POSSIBLE_ROOT_NAMES:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = -0x581124472812f726L


# instance fields
.field private createdAt:Ljava/util/Date;

.field private description:Ljava/lang/String;

.field private favouritesCount:I

.field private followersCount:I

.field private following:Z

.field private friendsCount:I

.field private geoEnabled:Z

.field private id:I

.field private isProtected:Z

.field private location:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private notificationEnabled:Z

.field private profileBackgroundColor:Ljava/lang/String;

.field private profileBackgroundImageUrl:Ljava/lang/String;

.field private profileBackgroundTile:Ljava/lang/String;

.field private profileImageUrl:Ljava/lang/String;

.field private profileLinkColor:Ljava/lang/String;

.field private profileSidebarBorderColor:Ljava/lang/String;

.field private profileSidebarFillColor:Ljava/lang/String;

.field private profileTextColor:Ljava/lang/String;

.field private screenName:Ljava/lang/String;

.field private statusCreatedAt:Ljava/util/Date;

.field private statusFavorited:Z

.field private statusId:J

.field private statusInReplyToScreenName:Ljava/lang/String;

.field private statusInReplyToStatusId:J

.field private statusInReplyToUserId:I

.field private statusSource:Ljava/lang/String;

.field private statusText:Ljava/lang/String;

.field private statusTruncated:Z

.field private statusesCount:I

.field private timeZone:Ljava/lang/String;

.field private twitter:Ltwitter4j/Twitter;

.field private url:Ljava/lang/String;

.field private utcOffset:I

.field private verified:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "user"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "sender"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "recipient"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "retweeting_user"

    aput-object v2, v0, v1

    sput-object v0, Ltwitter4j/User;->POSSIBLE_ROOT_NAMES:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ltwitter4j/http/Response;Lorg/w3c/dom/Element;Ltwitter4j/Twitter;)V
    .locals 5
    .parameter "res"
    .parameter "elem"
    .parameter "twitter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponse;-><init>(Ltwitter4j/http/Response;)V

    .line 62
    iput-wide v3, p0, Ltwitter4j/User;->statusId:J

    .line 63
    iput-object v1, p0, Ltwitter4j/User;->statusText:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Ltwitter4j/User;->statusSource:Ljava/lang/String;

    .line 65
    iput-boolean v2, p0, Ltwitter4j/User;->statusTruncated:Z

    .line 66
    iput-wide v3, p0, Ltwitter4j/User;->statusInReplyToStatusId:J

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Ltwitter4j/User;->statusInReplyToUserId:I

    .line 68
    iput-boolean v2, p0, Ltwitter4j/User;->statusFavorited:Z

    .line 69
    iput-object v1, p0, Ltwitter4j/User;->statusInReplyToScreenName:Ljava/lang/String;

    .line 99
    invoke-direct {p0, p2, p3}, Ltwitter4j/User;->init(Lorg/w3c/dom/Element;Ltwitter4j/Twitter;)V

    .line 100
    return-void
.end method

.method constructor <init>(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)V
    .locals 6
    .parameter "res"
    .parameter "twitter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 92
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponse;-><init>(Ltwitter4j/http/Response;)V

    .line 62
    iput-wide v4, p0, Ltwitter4j/User;->statusId:J

    .line 63
    iput-object v2, p0, Ltwitter4j/User;->statusText:Ljava/lang/String;

    .line 64
    iput-object v2, p0, Ltwitter4j/User;->statusSource:Ljava/lang/String;

    .line 65
    iput-boolean v3, p0, Ltwitter4j/User;->statusTruncated:Z

    .line 66
    iput-wide v4, p0, Ltwitter4j/User;->statusInReplyToStatusId:J

    .line 67
    const/4 v1, -0x1

    iput v1, p0, Ltwitter4j/User;->statusInReplyToUserId:I

    .line 68
    iput-boolean v3, p0, Ltwitter4j/User;->statusFavorited:Z

    .line 69
    iput-object v2, p0, Ltwitter4j/User;->statusInReplyToScreenName:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Ltwitter4j/http/Response;->asDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 94
    .local v0, elem:Lorg/w3c/dom/Element;
    invoke-direct {p0, v0, p2}, Ltwitter4j/User;->init(Lorg/w3c/dom/Element;Ltwitter4j/Twitter;)V

    .line 95
    return-void
.end method

.method constructor <init>(Ltwitter4j/org/json/JSONObject;)V
    .locals 5
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Ltwitter4j/TwitterResponse;-><init>()V

    .line 62
    iput-wide v3, p0, Ltwitter4j/User;->statusId:J

    .line 63
    iput-object v1, p0, Ltwitter4j/User;->statusText:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Ltwitter4j/User;->statusSource:Ljava/lang/String;

    .line 65
    iput-boolean v2, p0, Ltwitter4j/User;->statusTruncated:Z

    .line 66
    iput-wide v3, p0, Ltwitter4j/User;->statusInReplyToStatusId:J

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Ltwitter4j/User;->statusInReplyToUserId:I

    .line 68
    iput-boolean v2, p0, Ltwitter4j/User;->statusFavorited:Z

    .line 69
    iput-object v1, p0, Ltwitter4j/User;->statusInReplyToScreenName:Ljava/lang/String;

    .line 103
    invoke-direct {p0, p1}, Ltwitter4j/User;->init(Ltwitter4j/org/json/JSONObject;)V

    .line 104
    return-void
.end method

.method public static constructUsers(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;
    .locals 9
    .parameter "res"
    .parameter "twitter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/http/Response;",
            "Ltwitter4j/Twitter;",
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
    const/4 v8, 0x0

    .line 292
    invoke-virtual {p0}, Ltwitter4j/http/Response;->asDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 293
    .local v0, doc:Lorg/w3c/dom/Document;
    invoke-static {v0}, Ltwitter4j/User;->isRootNodeNilClasses(Lorg/w3c/dom/Document;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 294
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 308
    :goto_0
    return-object v6

    .line 297
    :cond_0
    :try_start_0
    const-string v6, "users"

    invoke-static {v6, v0}, Ltwitter4j/User;->ensureRootNodeNameIs(Ljava/lang/String;Lorg/w3c/dom/Document;)V

    .line 298
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v6

    const-string v7, "user"

    invoke-interface {v6, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 300
    .local v2, list:Lorg/w3c/dom/NodeList;
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 301
    .local v3, size:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 302
    .local v5, users:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/User;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 303
    new-instance v7, Ltwitter4j/User;

    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    invoke-direct {v7, p0, v6, p1}, Ltwitter4j/User;-><init>(Ltwitter4j/http/Response;Lorg/w3c/dom/Element;Ltwitter4j/Twitter;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v6, v5

    .line 305
    goto :goto_0

    .line 306
    .end local v1           #i:I
    .end local v2           #list:Lorg/w3c/dom/NodeList;
    .end local v3           #size:I
    .end local v5           #users:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/User;>;"
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 307
    .local v4, te:Ltwitter4j/TwitterException;
    invoke-static {v0}, Ltwitter4j/User;->isRootNodeNilClasses(Lorg/w3c/dom/Document;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 308
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    .line 310
    :cond_2
    throw v4
.end method

.method private init(Lorg/w3c/dom/Element;Ltwitter4j/Twitter;)V
    .locals 4
    .parameter "elem"
    .parameter "twitter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 151
    iput-object p2, p0, Ltwitter4j/User;->twitter:Ltwitter4j/Twitter;

    .line 152
    sget-object v2, Ltwitter4j/User;->POSSIBLE_ROOT_NAMES:[Ljava/lang/String;

    invoke-static {v2, p1}, Ltwitter4j/User;->ensureRootNodeNameIs([Ljava/lang/String;Lorg/w3c/dom/Element;)V

    .line 153
    const-string v2, "id"

    invoke-static {v2, p1}, Ltwitter4j/User;->getChildInt(Ljava/lang/String;Lorg/w3c/dom/Element;)I

    move-result v2

    iput v2, p0, Ltwitter4j/User;->id:I

    .line 154
    const-string v2, "name"

    invoke-static {v2, p1}, Ltwitter4j/User;->getChildText(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/User;->name:Ljava/lang/String;

    .line 155
    const-string v2, "screen_name"

    invoke-static {v2, p1}, Ltwitter4j/User;->getChildText(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/User;->screenName:Ljava/lang/String;

    .line 156
    const-string v2, "location"

    invoke-static {v2, p1}, Ltwitter4j/User;->getChildText(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/User;->location:Ljava/lang/String;

    .line 157
    const-string v2, "description"

    invoke-static {v2, p1}, Ltwitter4j/User;->getChildText(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/User;->description:Ljava/lang/String;

    .line 158
    const-string v2, "profile_image_url"

    invoke-static {v2, p1}, Ltwitter4j/User;->getChildText(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/User;->profileImageUrl:Ljava/lang/String;

    .line 159
    const-string v2, "url"

    invoke-static {v2, p1}, Ltwitter4j/User;->getChildText(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/User;->url:Ljava/lang/String;

    .line 160
    const-string v2, "protected"

    invoke-static {v2, p1}, Ltwitter4j/User;->getChildBoolean(Ljava/lang/String;Lorg/w3c/dom/Element;)Z

    move-result v2

    iput-boolean v2, p0, Ltwitter4j/User;->isProtected:Z

    .line 161
    const-string v2, "followers_count"

    invoke-static {v2, p1}, Ltwitter4j/User;->getChildInt(Ljava/lang/String;Lorg/w3c/dom/Element;)I

    move-result v2

    iput v2, p0, Ltwitter4j/User;->followersCount:I

    .line 163
    const-string v2, "profile_background_color"

    invoke-static {v2, p1}, Ltwitter4j/User;->getChildText(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/User;->profileBackgroundColor:Ljava/lang/String;

    .line 164
    const-string v2, "profile_text_color"

    invoke-static {v2, p1}, Ltwitter4j/User;->getChildText(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/User;->profileTextColor:Ljava/lang/String;

    .line 165
    const-string v2, "profile_link_color"

    invoke-static {v2, p1}, Ltwitter4j/User;->getChildText(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/User;->profileLinkColor:Ljava/lang/String;

    .line 166
    const-string v2, "profile_sidebar_fill_color"

    invoke-static {v2, p1}, Ltwitter4j/User;->getChildText(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/User;->profileSidebarFillColor:Ljava/lang/String;

    .line 167
    const-string v2, "profile_sidebar_border_color"

    invoke-static {v2, p1}, Ltwitter4j/User;->getChildText(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/User;->profileSidebarBorderColor:Ljava/lang/String;

    .line 168
    const-string v2, "friends_count"

    invoke-static {v2, p1}, Ltwitter4j/User;->getChildInt(Ljava/lang/String;Lorg/w3c/dom/Element;)I

    move-result v2

    iput v2, p0, Ltwitter4j/User;->friendsCount:I

    .line 169
    const-string v2, "created_at"

    invoke-static {v2, p1}, Ltwitter4j/User;->getChildDate(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/User;->createdAt:Ljava/util/Date;

    .line 170
    const-string v2, "favourites_count"

    invoke-static {v2, p1}, Ltwitter4j/User;->getChildInt(Ljava/lang/String;Lorg/w3c/dom/Element;)I

    move-result v2

    iput v2, p0, Ltwitter4j/User;->favouritesCount:I

    .line 171
    const-string v2, "utc_offset"

    invoke-static {v2, p1}, Ltwitter4j/User;->getChildInt(Ljava/lang/String;Lorg/w3c/dom/Element;)I

    move-result v2

    iput v2, p0, Ltwitter4j/User;->utcOffset:I

    .line 172
    const-string v2, "time_zone"

    invoke-static {v2, p1}, Ltwitter4j/User;->getChildText(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/User;->timeZone:Ljava/lang/String;

    .line 173
    const-string v2, "profile_background_image_url"

    invoke-static {v2, p1}, Ltwitter4j/User;->getChildText(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/User;->profileBackgroundImageUrl:Ljava/lang/String;

    .line 174
    const-string v2, "profile_background_tile"

    invoke-static {v2, p1}, Ltwitter4j/User;->getChildText(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/User;->profileBackgroundTile:Ljava/lang/String;

    .line 175
    const-string v2, "following"

    invoke-static {v2, p1}, Ltwitter4j/User;->getChildBoolean(Ljava/lang/String;Lorg/w3c/dom/Element;)Z

    move-result v2

    iput-boolean v2, p0, Ltwitter4j/User;->following:Z

    .line 176
    const-string v2, "notifications"

    invoke-static {v2, p1}, Ltwitter4j/User;->getChildBoolean(Ljava/lang/String;Lorg/w3c/dom/Element;)Z

    move-result v2

    iput-boolean v2, p0, Ltwitter4j/User;->notificationEnabled:Z

    .line 177
    const-string v2, "statuses_count"

    invoke-static {v2, p1}, Ltwitter4j/User;->getChildInt(Ljava/lang/String;Lorg/w3c/dom/Element;)I

    move-result v2

    iput v2, p0, Ltwitter4j/User;->statusesCount:I

    .line 178
    const-string v2, "geo_enabled"

    invoke-static {v2, p1}, Ltwitter4j/User;->getChildBoolean(Ljava/lang/String;Lorg/w3c/dom/Element;)Z

    move-result v2

    iput-boolean v2, p0, Ltwitter4j/User;->geoEnabled:Z

    .line 179
    const-string v2, "verified"

    invoke-static {v2, p1}, Ltwitter4j/User;->getChildBoolean(Ljava/lang/String;Lorg/w3c/dom/Element;)Z

    move-result v2

    iput-boolean v2, p0, Ltwitter4j/User;->verified:Z

    .line 181
    const-string v2, "status"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 182
    .local v1, statuses:Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 184
    .local v0, status:Lorg/w3c/dom/Element;
    const-string v2, "created_at"

    invoke-static {v2, v0}, Ltwitter4j/User;->getChildDate(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/User;->statusCreatedAt:Ljava/util/Date;

    .line 185
    const-string v2, "id"

    invoke-static {v2, v0}, Ltwitter4j/User;->getChildLong(Ljava/lang/String;Lorg/w3c/dom/Element;)J

    move-result-wide v2

    iput-wide v2, p0, Ltwitter4j/User;->statusId:J

    .line 186
    const-string v2, "text"

    invoke-static {v2, v0}, Ltwitter4j/User;->getChildText(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/User;->statusText:Ljava/lang/String;

    .line 187
    const-string v2, "source"

    invoke-static {v2, v0}, Ltwitter4j/User;->getChildText(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/User;->statusSource:Ljava/lang/String;

    .line 188
    const-string v2, "truncated"

    invoke-static {v2, v0}, Ltwitter4j/User;->getChildBoolean(Ljava/lang/String;Lorg/w3c/dom/Element;)Z

    move-result v2

    iput-boolean v2, p0, Ltwitter4j/User;->statusTruncated:Z

    .line 189
    const-string v2, "in_reply_to_status_id"

    invoke-static {v2, v0}, Ltwitter4j/User;->getChildLong(Ljava/lang/String;Lorg/w3c/dom/Element;)J

    move-result-wide v2

    iput-wide v2, p0, Ltwitter4j/User;->statusInReplyToStatusId:J

    .line 190
    const-string v2, "in_reply_to_user_id"

    invoke-static {v2, v0}, Ltwitter4j/User;->getChildInt(Ljava/lang/String;Lorg/w3c/dom/Element;)I

    move-result v2

    iput v2, p0, Ltwitter4j/User;->statusInReplyToUserId:I

    .line 191
    const-string v2, "favorited"

    invoke-static {v2, v0}, Ltwitter4j/User;->getChildBoolean(Ljava/lang/String;Lorg/w3c/dom/Element;)Z

    move-result v2

    iput-boolean v2, p0, Ltwitter4j/User;->statusFavorited:Z

    .line 192
    const-string v2, "in_reply_to_screen_name"

    invoke-static {v2, v0}, Ltwitter4j/User;->getChildText(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/User;->statusInReplyToScreenName:Ljava/lang/String;

    .line 194
    .end local v0           #status:Lorg/w3c/dom/Element;
    :cond_0
    return-void
.end method

.method private init(Ltwitter4j/org/json/JSONObject;)V
    .locals 5
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 108
    :try_start_0
    const-string v2, "id"

    invoke-virtual {p1, v2}, Ltwitter4j/org/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Ltwitter4j/User;->id:I

    .line 109
    const-string v2, "name"

    invoke-virtual {p1, v2}, Ltwitter4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/User;->name:Ljava/lang/String;

    .line 110
    const-string v2, "screen_name"

    invoke-virtual {p1, v2}, Ltwitter4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/User;->screenName:Ljava/lang/String;

    .line 111
    const-string v2, "location"

    invoke-virtual {p1, v2}, Ltwitter4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/User;->location:Ljava/lang/String;

    .line 112
    const-string v2, "description"

    invoke-virtual {p1, v2}, Ltwitter4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/User;->description:Ljava/lang/String;

    .line 113
    const-string v2, "profile_image_url"

    invoke-virtual {p1, v2}, Ltwitter4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/User;->profileImageUrl:Ljava/lang/String;

    .line 114
    const-string v2, "url"

    invoke-virtual {p1, v2}, Ltwitter4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/User;->url:Ljava/lang/String;

    .line 115
    const-string v2, "protected"

    invoke-virtual {p1, v2}, Ltwitter4j/org/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Ltwitter4j/User;->isProtected:Z

    .line 116
    const-string v2, "followers_count"

    invoke-virtual {p1, v2}, Ltwitter4j/org/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Ltwitter4j/User;->followersCount:I

    .line 118
    const-string v2, "profile_background_color"

    invoke-virtual {p1, v2}, Ltwitter4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/User;->profileBackgroundColor:Ljava/lang/String;

    .line 119
    const-string v2, "profile_text_color"

    invoke-virtual {p1, v2}, Ltwitter4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/User;->profileTextColor:Ljava/lang/String;

    .line 120
    const-string v2, "profile_link_color"

    invoke-virtual {p1, v2}, Ltwitter4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/User;->profileLinkColor:Ljava/lang/String;

    .line 121
    const-string v2, "profile_sidebar_fill_color"

    invoke-virtual {p1, v2}, Ltwitter4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/User;->profileSidebarFillColor:Ljava/lang/String;

    .line 122
    const-string v2, "profile_sidebar_border_color"

    invoke-virtual {p1, v2}, Ltwitter4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/User;->profileSidebarBorderColor:Ljava/lang/String;

    .line 123
    const-string v2, "friends_count"

    invoke-virtual {p1, v2}, Ltwitter4j/org/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Ltwitter4j/User;->friendsCount:I

    .line 124
    const-string v2, "created_at"

    invoke-virtual {p1, v2}, Ltwitter4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "EEE MMM dd HH:mm:ss z yyyy"

    invoke-static {v2, v3}, Ltwitter4j/User;->parseDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/User;->createdAt:Ljava/util/Date;

    .line 125
    const-string v2, "favourites_count"

    invoke-virtual {p1, v2}, Ltwitter4j/org/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Ltwitter4j/User;->favouritesCount:I

    .line 126
    const-string v2, "utc_offset"

    invoke-static {v2, p1}, Ltwitter4j/User;->getInt(Ljava/lang/String;Ltwitter4j/org/json/JSONObject;)I

    move-result v2

    iput v2, p0, Ltwitter4j/User;->utcOffset:I

    .line 127
    const-string v2, "time_zone"

    invoke-virtual {p1, v2}, Ltwitter4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/User;->timeZone:Ljava/lang/String;

    .line 128
    const-string v2, "profile_background_image_url"

    invoke-virtual {p1, v2}, Ltwitter4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/User;->profileBackgroundImageUrl:Ljava/lang/String;

    .line 129
    const-string v2, "profile_background_tile"

    invoke-virtual {p1, v2}, Ltwitter4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/User;->profileBackgroundTile:Ljava/lang/String;

    .line 130
    const-string v2, "following"

    invoke-static {v2, p1}, Ltwitter4j/User;->getBoolean(Ljava/lang/String;Ltwitter4j/org/json/JSONObject;)Z

    move-result v2

    iput-boolean v2, p0, Ltwitter4j/User;->following:Z

    .line 131
    const-string v2, "notifications"

    invoke-static {v2, p1}, Ltwitter4j/User;->getBoolean(Ljava/lang/String;Ltwitter4j/org/json/JSONObject;)Z

    move-result v2

    iput-boolean v2, p0, Ltwitter4j/User;->notificationEnabled:Z

    .line 132
    const-string v2, "statuses_count"

    invoke-virtual {p1, v2}, Ltwitter4j/org/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Ltwitter4j/User;->statusesCount:I

    .line 133
    const-string v2, "status"

    invoke-virtual {p1, v2}, Ltwitter4j/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 134
    const-string v2, "status"

    invoke-virtual {p1, v2}, Ltwitter4j/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/org/json/JSONObject;

    move-result-object v1

    .line 135
    .local v1, status:Ltwitter4j/org/json/JSONObject;
    const-string v2, "created_at"

    invoke-virtual {v1, v2}, Ltwitter4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "EEE MMM dd HH:mm:ss z yyyy"

    invoke-static {v2, v3}, Ltwitter4j/User;->parseDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/User;->statusCreatedAt:Ljava/util/Date;

    .line 136
    const-string v2, "id"

    invoke-virtual {v1, v2}, Ltwitter4j/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Ltwitter4j/User;->statusId:J

    .line 137
    const-string v2, "text"

    invoke-virtual {v1, v2}, Ltwitter4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/User;->statusText:Ljava/lang/String;

    .line 138
    const-string v2, "source"

    invoke-virtual {v1, v2}, Ltwitter4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/User;->statusSource:Ljava/lang/String;

    .line 139
    const-string v2, "truncated"

    invoke-virtual {v1, v2}, Ltwitter4j/org/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Ltwitter4j/User;->statusTruncated:Z

    .line 140
    const-string v2, "in_reply_to_status_id"

    invoke-virtual {v1, v2}, Ltwitter4j/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Ltwitter4j/User;->statusInReplyToStatusId:J

    .line 141
    const-string v2, "in_reply_to_user_id"

    invoke-virtual {v1, v2}, Ltwitter4j/org/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Ltwitter4j/User;->statusInReplyToUserId:I

    .line 142
    const-string v2, "favorited"

    invoke-virtual {v1, v2}, Ltwitter4j/org/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Ltwitter4j/User;->statusFavorited:Z

    .line 143
    const-string v2, "in_reply_to_screen_name"

    invoke-virtual {v1, v2}, Ltwitter4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/User;->statusInReplyToScreenName:Ljava/lang/String;
    :try_end_0
    .catch Ltwitter4j/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v1           #status:Ltwitter4j/org/json/JSONObject;
    :cond_0
    return-void

    .line 145
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 146
    .local v0, jsone:Ltwitter4j/org/json/JSONException;
    new-instance v2, Ltwitter4j/TwitterException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Ltwitter4j/org/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p1}, Ltwitter4j/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 496
    if-nez p1, :cond_0

    move v0, v2

    .line 502
    .end local p1
    :goto_0
    return v0

    .line 499
    .restart local p1
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v3

    .line 500
    goto :goto_0

    .line 502
    :cond_1
    instance-of v0, p1, Ltwitter4j/User;

    if-eqz v0, :cond_2

    check-cast p1, Ltwitter4j/User;

    .end local p1
    iget v0, p1, Ltwitter4j/User;->id:I

    iget v1, p0, Ltwitter4j/User;->id:I

    if-ne v0, v1, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Ltwitter4j/User;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Ltwitter4j/User;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFavouritesCount()I
    .locals 1

    .prologue
    .line 424
    iget v0, p0, Ltwitter4j/User;->favouritesCount:I

    return v0
.end method

.method public getFollowersCount()I
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Ltwitter4j/User;->followersCount:I

    return v0
.end method

.method public getFriendsCount()I
    .locals 1

    .prologue
    .line 416
    iget v0, p0, Ltwitter4j/User;->friendsCount:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Ltwitter4j/User;->id:I

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Ltwitter4j/User;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Ltwitter4j/User;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileBackgroundColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Ltwitter4j/User;->profileBackgroundColor:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileBackgroundImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Ltwitter4j/User;->profileBackgroundImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileBackgroundTile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Ltwitter4j/User;->profileBackgroundTile:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileImageURL()Ljava/net/URL;
    .locals 3

    .prologue
    .line 248
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Ltwitter4j/User;->profileImageUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :goto_0
    return-object v1

    .line 249
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 250
    .local v0, ex:Ljava/net/MalformedURLException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProfileLinkColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Ltwitter4j/User;->profileLinkColor:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileSidebarBorderColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Ltwitter4j/User;->profileSidebarBorderColor:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileSidebarFillColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Ltwitter4j/User;->profileSidebarFillColor:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileTextColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Ltwitter4j/User;->profileTextColor:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Ltwitter4j/User;->screenName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCreatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Ltwitter4j/User;->statusCreatedAt:Ljava/util/Date;

    return-object v0
.end method

.method public getStatusId()J
    .locals 2

    .prologue
    .line 329
    iget-wide v0, p0, Ltwitter4j/User;->statusId:J

    return-wide v0
.end method

.method public getStatusInReplyToScreenName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 392
    const/4 v0, -0x1

    iget v1, p0, Ltwitter4j/User;->statusInReplyToUserId:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ltwitter4j/User;->statusInReplyToScreenName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStatusInReplyToStatusId()J
    .locals 2

    .prologue
    .line 364
    iget-wide v0, p0, Ltwitter4j/User;->statusInReplyToStatusId:J

    return-wide v0
.end method

.method public getStatusInReplyToUserId()I
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Ltwitter4j/User;->statusInReplyToUserId:I

    return v0
.end method

.method public getStatusSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Ltwitter4j/User;->statusSource:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Ltwitter4j/User;->statusText:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusesCount()I
    .locals 1

    .prologue
    .line 469
    iget v0, p0, Ltwitter4j/User;->statusesCount:I

    return v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Ltwitter4j/User;->timeZone:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 3

    .prologue
    .line 261
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Ltwitter4j/User;->url:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :goto_0
    return-object v1

    .line 262
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 263
    .local v0, ex:Ljava/net/MalformedURLException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUtcOffset()I
    .locals 1

    .prologue
    .line 428
    iget v0, p0, Ltwitter4j/User;->utcOffset:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 491
    iget v0, p0, Ltwitter4j/User;->id:I

    return v0
.end method

.method public isFollowing()Z
    .locals 1

    .prologue
    .line 448
    iget-boolean v0, p0, Ltwitter4j/User;->following:Z

    return v0
.end method

.method public isGeoEnabled()Z
    .locals 1

    .prologue
    .line 477
    iget-boolean v0, p0, Ltwitter4j/User;->geoEnabled:Z

    return v0
.end method

.method public isNotificationEnabled()Z
    .locals 1

    .prologue
    .line 465
    iget-boolean v0, p0, Ltwitter4j/User;->notificationEnabled:Z

    return v0
.end method

.method public isNotifications()Z
    .locals 1

    .prologue
    .line 456
    iget-boolean v0, p0, Ltwitter4j/User;->notificationEnabled:Z

    return v0
.end method

.method public isProtected()Z
    .locals 1

    .prologue
    .line 273
    iget-boolean v0, p0, Ltwitter4j/User;->isProtected:Z

    return v0
.end method

.method public isStatusFavorited()Z
    .locals 1

    .prologue
    .line 382
    iget-boolean v0, p0, Ltwitter4j/User;->statusFavorited:Z

    return v0
.end method

.method public isStatusTruncated()Z
    .locals 1

    .prologue
    .line 355
    iget-boolean v0, p0, Ltwitter4j/User;->statusTruncated:Z

    return v0
.end method

.method public isVerified()Z
    .locals 1

    .prologue
    .line 485
    iget-boolean v0, p0, Ltwitter4j/User;->verified:Z

    return v0
.end method

.method public sendDirectMessage(Ljava/lang/String;)Ltwitter4j/DirectMessage;
    .locals 2
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Ltwitter4j/User;->twitter:Ltwitter4j/Twitter;

    invoke-virtual {p0}, Ltwitter4j/User;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ltwitter4j/Twitter;->sendDirectMessage(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/DirectMessage;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x27

    .line 507
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "User{twitter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/User;->twitter:Ltwitter4j/Twitter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/User;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/User;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", screenName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/User;->screenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", location=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/User;->location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", description=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/User;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", profileImageUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/User;->profileImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/User;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", isProtected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/User;->isProtected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", followersCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/User;->followersCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", statusCreatedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/User;->statusCreatedAt:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", statusId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/User;->statusId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", statusText=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/User;->statusText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", statusSource=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/User;->statusSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", statusTruncated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/User;->statusTruncated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", statusInReplyToStatusId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/User;->statusInReplyToStatusId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", statusInReplyToUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/User;->statusInReplyToUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", statusFavorited="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/User;->statusFavorited:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", statusInReplyToScreenName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/User;->statusInReplyToScreenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", profileBackgroundColor=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/User;->profileBackgroundColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", profileTextColor=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/User;->profileTextColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", profileLinkColor=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/User;->profileLinkColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", profileSidebarFillColor=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/User;->profileSidebarFillColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", profileSidebarBorderColor=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/User;->profileSidebarBorderColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", friendsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/User;->friendsCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/User;->createdAt:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", favouritesCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/User;->favouritesCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", utcOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/User;->utcOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", timeZone=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/User;->timeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", profileBackgroundImageUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/User;->profileBackgroundImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", profileBackgroundTile=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/User;->profileBackgroundTile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", following="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/User;->following:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", notificationEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/User;->notificationEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", statusesCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/User;->statusesCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", geoEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/User;->geoEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", verified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/User;->verified:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
