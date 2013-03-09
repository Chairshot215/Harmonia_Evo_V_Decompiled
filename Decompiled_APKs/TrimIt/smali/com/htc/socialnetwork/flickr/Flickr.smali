.class public Lcom/htc/socialnetwork/flickr/Flickr;
.super Ljava/lang/Object;
.source "Flickr.java"


# static fields
.field static final API_KEY:Ljava/lang/String; = "api_key"

.field private static final AUTH:Ljava/lang/String; = "auth"

.field static final AUTH_TOKEN:Ljava/lang/String; = "auth_token"

.field private static final CONTACT:Ljava/lang/String; = "contact"

.field private static final CONTACTS:Ljava/lang/String; = "contacts"

.field private static final COUNT:Ljava/lang/String; = "count"

.field private static final DATES:Ljava/lang/String; = "dates"

.field private static final DATETAKEN:Ljava/lang/String; = "datetaken"

.field private static final DATEUPLOAD:Ljava/lang/String; = "dateupload"

.field private static DEFAULT_TYPE:Ljava/lang/String; = null

.field private static final DESCRIPTION:Ljava/lang/String; = "description"

.field private static final EXTRAS:Ljava/lang/String; = "extras"

.field private static final EXTRAS_DATE_TAKEN:Ljava/lang/String; = "date_taken"

.field private static final EXTRAS_DATE_UPLOAD:Ljava/lang/String; = "date_upload"

.field private static final EXTRAS_LAST_UPDATE:Ljava/lang/String; = "last_update"

.field private static final EXTRAS_ORIGINAL_FORMAT:Ljava/lang/String; = "original_format"

.field private static final EXTRAS_O_DIMS:Ljava/lang/String; = "o_dims"

.field private static final EXTRAS_PATH_ALIAS:Ljava/lang/String; = "path_alias"

.field private static final EXTRAS_URL_LARGE_2:Ljava/lang/String; = "url_l"

.field private static final FARM:Ljava/lang/String; = "farm"

.field private static final FORMAT:Ljava/lang/String; = "format"

.field private static final FROB:Ljava/lang/String; = "frob"

.field private static final GROUP:Ljava/lang/String; = "group"

.field private static final GROUPS:Ljava/lang/String; = "groups"

.field private static final HAS_CONTENT:Ljava/lang/String; = "_content"

.field private static final ICONFARM:Ljava/lang/String; = "iconfarm"

.field private static final ICONSERVER:Ljava/lang/String; = "iconserver"

.field private static final ID:Ljava/lang/String; = "id"

.field private static final INCLUDE_SELF:Ljava/lang/String; = "include_self"

.field private static final JUST_FRIENDS:Ljava/lang/String; = "just_friends"

.field private static final LASTUPDATE:Ljava/lang/String; = "lastupdate"

.field private static final LOCATION:Ljava/lang/String; = "location"

.field private static final Large:Ljava/lang/String; = "_b"

.field private static final MEDIA:Ljava/lang/String; = "media"

.field private static final METHOD_AUTH_CHECKTOKEN:Ljava/lang/String; = "flickr.auth.checkToken"

.field private static final METHOD_AUTH_GETFROB:Ljava/lang/String; = "flickr.auth.getFrob"

.field private static final METHOD_AUTH_GETTOKEN:Ljava/lang/String; = "flickr.auth.getToken"

.field private static final METHOD_CONTACTS_GETLIST:Ljava/lang/String; = "flickr.contacts.getList"

.field private static final METHOD_CONTACTS_GETPUBLICLIST:Ljava/lang/String; = "flickr.contacts.getPublicList"

.field private static final METHOD_PEOPLE_FINDBYUSERNAME:Ljava/lang/String; = "flickr.people.findByUsername"

.field private static final METHOD_PEOPLE_GETINFO:Ljava/lang/String; = "flickr.people.getInfo"

.field private static final METHOD_PHOTOSETS_ADDPHOTO:Ljava/lang/String; = "flickr.photosets.addPhoto"

.field private static final METHOD_PHOTOSETS_CREATE:Ljava/lang/String; = "flickr.photosets.create"

.field private static final METHOD_PHOTOSETS_GETINFO:Ljava/lang/String; = "flickr.photosets.getInfo"

.field private static final METHOD_PHOTOSETS_GETLIST:Ljava/lang/String; = "flickr.photosets.getList"

.field private static final METHOD_PHOTOSETS_GETPHOTOS:Ljava/lang/String; = "flickr.photosets.getPhotos"

.field private static final METHOD_PHOTOS_GETCONTACTSPHOTOS:Ljava/lang/String; = "flickr.photos.getContactsPhotos"

.field private static final METHOD_PHOTOS_GETINFO:Ljava/lang/String; = "flickr.photos.getInfo"

.field private static final METHOD_PHOTOS_GETNOTINSET:Ljava/lang/String; = "flickr.photos.getNotInSet"

.field private static final METHOD_PHOTOS_SEARCH:Ljava/lang/String; = "flickr.photos.search"

.field private static final MIN_UPLOAD_DATE:Ljava/lang/String; = "min_upload_date"

.field private static final Medium:Ljava/lang/String; = ""

.field private static final NSID:Ljava/lang/String; = "nsid"

.field private static final ORIGINAL_FORMAT:Ljava/lang/String; = "originalformat"

.field private static final ORIGINAL_HEIGHT:Ljava/lang/String; = "o_height"

.field private static final ORIGINAL_SECRET:Ljava/lang/String; = "originalsecret"

.field private static final ORIGINAL_WIDTH:Ljava/lang/String; = "o_width"

.field private static final OWNER:Ljava/lang/String; = "owner"

.field private static final PAGE:Ljava/lang/String; = "page"

.field private static final PAGES:Ljava/lang/String; = "pages"

.field private static final PERPAGE:Ljava/lang/String; = "perpage"

.field private static final PERSON:Ljava/lang/String; = "person"

.field private static final PER_PAGE:Ljava/lang/String; = "per_page"

.field private static final PHOTO:Ljava/lang/String; = "photo"

.field private static final PHOTOS:Ljava/lang/String; = "photos"

.field private static final PHOTOSET:Ljava/lang/String; = "photoset"

.field private static final PHOTOSETS:Ljava/lang/String; = "photosets"

.field private static final PHOTOSET_ID:Ljava/lang/String; = "photoset_id"

.field private static final PHOTOSURL:Ljava/lang/String; = "photosurl"

.field private static final PHOTO_ID:Ljava/lang/String; = "photo_id"

.field private static final PHOTO_LINK:Ljava/lang/String; = "http://www.flickr.com/photos/"

.field private static final PHOTO_ORIGINAL_URL_FORMAT:Ljava/lang/String; = "http://farm%s.static.flickr.com/%s/%s_%s_o.%s"

.field private static final PROFILEURL:Ljava/lang/String; = "profileurl"

.field private static final PROFILE_URL_PREFIX:Ljava/lang/String; = "http://www.flickr.com/people/"

.field private static final REALNAME:Ljava/lang/String; = "realname"

.field private static final SECRET:Ljava/lang/String; = "secret"

.field private static final SERVER:Ljava/lang/String; = "server"

.field private static final SINGLE_PHOTO:Ljava/lang/String; = "single_photo"

.field private static final Small:Ljava/lang/String; = "_m"

.field private static final SmallSquare:Ljava/lang/String; = "_s"

.field private static TAG:Ljava/lang/String; = null

.field private static final TAKEN:Ljava/lang/String; = "taken"

.field private static final TITLE:Ljava/lang/String; = "title"

.field private static final TOKEN:Ljava/lang/String; = "token"

.field private static final TOTAL:Ljava/lang/String; = "total"

.field private static final Thumbnail:Ljava/lang/String; = "_t"

.field private static final USER:Ljava/lang/String; = "user"

.field private static final USERID:Ljava/lang/String; = "user_id"

.field private static final USERNAME:Ljava/lang/String; = "username"

.field private static final _CONTENT:Ljava/lang/String; = "_content"

.field private static final buddy:Ljava/lang/String; = "http://farm%d.static.flickr.com/%d/buddyicons/%s.jpg"

.field static mSecret:Ljava/lang/String;

.field private static final sExtrasParams:Ljava/lang/String;


# instance fields
.field private authLink:Ljava/lang/String;

.field private auth_token_text:Ljava/lang/String;

.field db:Ljavax/xml/parsers/DocumentBuilder;

.field dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

.field private df:Ljava/text/SimpleDateFormat;

.field frob:Ljava/lang/String;

.field private loginId:Ljava/lang/String;

.field private loginName:Ljava/lang/String;

.field private mParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private responsePayLoad:Lorg/w3c/dom/Element;

.field public useLargePhoto:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const-string v0, "Flickr"

    sput-object v0, Lcom/htc/socialnetwork/flickr/Flickr;->TAG:Ljava/lang/String;

    .line 197
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "date_taken"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "date_upload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "last_update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "url_l"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "original_format"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "o_dims"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "path_alias"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/socialnetwork/flickr/Flickr;->sExtrasParams:Ljava/lang/String;

    .line 434
    const-string v0, ""

    sput-object v0, Lcom/htc/socialnetwork/flickr/Flickr;->DEFAULT_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "api_key"
    .parameter "secret"

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd hh:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/htc/socialnetwork/flickr/Flickr;->df:Ljava/text/SimpleDateFormat;

    .line 217
    const-string v0, "auth_token"

    iput-object v0, p0, Lcom/htc/socialnetwork/flickr/Flickr;->auth_token_text:Ljava/lang/String;

    .line 305
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/socialnetwork/flickr/Flickr;->useLargePhoto:Z

    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/socialnetwork/flickr/Flickr;->mParams:Ljava/util/HashMap;

    .line 205
    iget-object v0, p0, Lcom/htc/socialnetwork/flickr/Flickr;->mParams:Ljava/util/HashMap;

    const-string v1, "api_key"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sput-object p2, Lcom/htc/socialnetwork/flickr/Flickr;->mSecret:Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lcom/htc/socialnetwork/flickr/Flickr;->mParams:Ljava/util/HashMap;

    const-string v1, "format"

    const-string v2, "json"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    return-void
.end method

.method public static setPhotoype(II)V
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 929
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 930
    .local v0, max_edge:I
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 931
    .local v1, min_edge:I
    const/16 v2, 0x4b

    if-gt v1, v2, :cond_0

    .line 932
    const-string v2, "_s"

    sput-object v2, Lcom/htc/socialnetwork/flickr/Flickr;->DEFAULT_TYPE:Ljava/lang/String;

    .line 941
    :goto_0
    return-void

    .line 933
    :cond_0
    const/16 v2, 0x64

    if-gt v0, v2, :cond_1

    .line 934
    const-string v2, "_t"

    sput-object v2, Lcom/htc/socialnetwork/flickr/Flickr;->DEFAULT_TYPE:Ljava/lang/String;

    goto :goto_0

    .line 935
    :cond_1
    const/16 v2, 0xf0

    if-gt v0, v2, :cond_2

    .line 936
    const-string v2, "_m"

    sput-object v2, Lcom/htc/socialnetwork/flickr/Flickr;->DEFAULT_TYPE:Ljava/lang/String;

    goto :goto_0

    .line 937
    :cond_2
    const/16 v2, 0x1f4

    if-gt v0, v2, :cond_3

    .line 938
    const-string v2, ""

    sput-object v2, Lcom/htc/socialnetwork/flickr/Flickr;->DEFAULT_TYPE:Ljava/lang/String;

    goto :goto_0

    .line 940
    :cond_3
    const-string v2, "_b"

    sput-object v2, Lcom/htc/socialnetwork/flickr/Flickr;->DEFAULT_TYPE:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public CheckToken()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 278
    iget-object v5, p0, Lcom/htc/socialnetwork/flickr/Flickr;->mParams:Ljava/util/HashMap;

    const-string v6, "flickr.auth.checkToken"

    invoke-static {v5, v6}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->setParams(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 281
    .local v2, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v5, p0, Lcom/htc/socialnetwork/flickr/Flickr;->auth_token_text:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 292
    :cond_0
    :goto_0
    return v4

    .line 284
    :cond_1
    :try_start_0
    sget-object v5, Lcom/htc/socialnetwork/flickr/Flickr;->mSecret:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->getResult(Ljava/util/HashMap;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "auth"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 285
    .local v1, obj:Lorg/json/JSONObject;
    const-string v5, "perms"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 286
    .local v3, perms:Ljava/lang/String;
    const-string v5, "none"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/htc/socialnetwork/SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-nez v5, :cond_0

    .line 289
    const/4 v4, 0x1

    goto :goto_0

    .line 290
    .end local v1           #obj:Lorg/json/JSONObject;
    .end local v3           #perms:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 291
    .local v0, e:Lcom/htc/socialnetwork/SocialNetworkException;
    invoke-virtual {v0}, Lcom/htc/socialnetwork/SocialNetworkException;->getErrorCode()I

    move-result v5

    const/16 v6, 0x7dd

    if-eq v5, v6, :cond_0

    .line 294
    new-instance v4, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-virtual {v0}, Lcom/htc/socialnetwork/SocialNetworkException;->getErrorCode()I

    move-result v5

    invoke-virtual {v0}, Lcom/htc/socialnetwork/SocialNetworkException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 297
    .end local v0           #e:Lcom/htc/socialnetwork/SocialNetworkException;
    :catch_1
    move-exception v0

    .line 298
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 299
    new-instance v4, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v5, 0x7d0

    const-string v6, "JSONException"

    invoke-direct {v4, v5, v6, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public CreatePhotoSet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "setTitle"
    .parameter "pid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 679
    iget-object v3, p0, Lcom/htc/socialnetwork/flickr/Flickr;->mParams:Ljava/util/HashMap;

    const-string v4, "flickr.photosets.create"

    invoke-static {v3, v4}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->setParams(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 681
    .local v2, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "title"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    const-string v3, "primary_photo_id"

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    sget-object v3, Lcom/htc/socialnetwork/flickr/Flickr;->mSecret:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->postResult(Ljava/util/HashMap;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 685
    .local v1, obj:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "photoset"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 686
    :catch_0
    move-exception v0

    .line 687
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 688
    new-instance v3, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v4, 0x7d0

    const-string v5, "JSONException"

    invoke-direct {v3, v4, v5, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public SetUser(Lorg/json/JSONObject;Lcom/htc/socialnetwork/User;)V
    .locals 11
    .parameter "obj"
    .parameter "user"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 385
    :try_start_0
    const-string v7, "nsid"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 386
    .local v5, userId:Ljava/lang/String;
    invoke-virtual {p2, v5}, Lcom/htc/socialnetwork/User;->setId(Ljava/lang/String;)V

    .line 387
    const-string v7, "username"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "_content"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 389
    .local v6, username:Ljava/lang/String;
    invoke-virtual {p2, v6}, Lcom/htc/socialnetwork/User;->setUserName(Ljava/lang/String;)V

    .line 390
    const-string v7, "realname"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 391
    const-string v7, "realname"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "_content"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Lcom/htc/socialnetwork/User;->setFullName(Ljava/lang/String;)V

    .line 395
    :goto_0
    const-string v7, "iconfarm"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "iconserver"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 396
    const-string v7, "iconfarm"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 397
    .local v2, icon_farm:I
    const-string v7, "iconserver"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 398
    .local v3, icon_server:I
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 399
    const-string v7, "http://farm%d.static.flickr.com/%d/buddyicons/%s.jpg"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    aput-object v5, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, buddy_icon:Ljava/lang/String;
    invoke-virtual {p2, v0}, Lcom/htc/socialnetwork/User;->setBuddyIconURL(Ljava/lang/String;)V

    .line 405
    .end local v0           #buddy_icon:Ljava/lang/String;
    .end local v2           #icon_farm:I
    .end local v3           #icon_server:I
    :cond_0
    const-string v7, "profileurl"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 406
    const-string v7, "profileurl"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "_content"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Lcom/htc/socialnetwork/User;->setProfileUrl(Ljava/lang/String;)V

    .line 409
    :cond_1
    const-string v7, "location"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 410
    const-string v7, "location"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "_content"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 412
    .local v4, location:Ljava/lang/String;
    invoke-virtual {p2, v4}, Lcom/htc/socialnetwork/User;->setCurrentLocation(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p2, v4}, Lcom/htc/socialnetwork/User;->setWorkLocation(Ljava/lang/String;)V

    .line 415
    .end local v4           #location:Ljava/lang/String;
    :cond_2
    const-wide/16 v7, 0x0

    invoke-virtual {p2, v7, v8}, Lcom/htc/socialnetwork/User;->setProfileUpdateTime(J)V

    .line 421
    return-void

    .line 394
    :cond_3
    invoke-virtual {p2, v6}, Lcom/htc/socialnetwork/User;->setFullName(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 416
    .end local v5           #userId:Ljava/lang/String;
    .end local v6           #username:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 417
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 418
    new-instance v7, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v8, 0x7d0

    const-string v9, "JSONException"

    invoke-direct {v7, v8, v9, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method public addComment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "pid"
    .parameter "comment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 1306
    iget-object v2, p0, Lcom/htc/socialnetwork/flickr/Flickr;->mParams:Ljava/util/HashMap;

    const-string v3, "flickr.photos.comments.addComment"

    invoke-static {v2, v3}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->setParams(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 1308
    .local v1, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "photo_id"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1309
    const-string v2, "comment_text"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1310
    sget-object v2, Lcom/htc/socialnetwork/flickr/Flickr;->mSecret:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->getResult(Ljava/util/HashMap;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1311
    .local v0, obj:Lorg/json/JSONObject;
    sget-object v2, Lcom/htc/socialnetwork/flickr/Flickr;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add comment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    return-void
.end method

.method public addToAlbum(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "aid"
    .parameter "pid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 695
    iget-object v1, p0, Lcom/htc/socialnetwork/flickr/Flickr;->mParams:Ljava/util/HashMap;

    const-string v2, "flickr.photosets.addPhoto"

    invoke-static {v1, v2}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->setParams(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 697
    .local v0, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "photoset_id"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    const-string v1, "photo_id"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    sget-object v1, Lcom/htc/socialnetwork/flickr/Flickr;->mSecret:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->postResult(Ljava/util/HashMap;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 700
    return-void
.end method

.method protected editFavorite(Ljava/lang/String;Z)V
    .locals 3
    .parameter "photo_id"
    .parameter "favorite"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 1336
    invoke-virtual {p0}, Lcom/htc/socialnetwork/flickr/Flickr;->getParams()Ljava/util/HashMap;

    move-result-object v2

    if-eqz p2, :cond_0

    const-string v1, "flickr.favorites.add"

    :goto_0
    invoke-static {v2, v1}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->setParams(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 1339
    .local v0, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "photo_id"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1340
    sget-object v1, Lcom/htc/socialnetwork/flickr/Flickr;->mSecret:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->postResult(Ljava/util/HashMap;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 1341
    return-void

    .line 1336
    .end local v0           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    const-string v1, "flickr.favorites.remove"

    goto :goto_0
.end method

.method public findByUserName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "username"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 332
    iget-object v3, p0, Lcom/htc/socialnetwork/flickr/Flickr;->mParams:Ljava/util/HashMap;

    const-string v4, "flickr.people.findByUsername"

    invoke-static {v3, v4}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->setParams(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 334
    .local v2, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "username"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    :try_start_0
    sget-object v3, Lcom/htc/socialnetwork/flickr/Flickr;->mSecret:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->getResult(Ljava/util/HashMap;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "user"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 338
    .local v1, obj:Lorg/json/JSONObject;
    const-string v3, "nsid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 339
    .end local v1           #obj:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 340
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 341
    new-instance v3, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v4, 0x7d0

    const-string v5, "JSONException"

    invoke-direct {v3, v4, v5, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getAlbumIdList(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 437
    iget-object v5, p0, Lcom/htc/socialnetwork/flickr/Flickr;->mParams:Ljava/util/HashMap;

    const-string v6, "flickr.photosets.getList"

    invoke-static {v5, v6}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->setParams(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 439
    .local v4, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "user_id"

    invoke-virtual {v4, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    :try_start_0
    sget-object v5, Lcom/htc/socialnetwork/flickr/Flickr;->mSecret:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->getResult(Ljava/util/HashMap;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "photosets"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "photoset"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 443
    .local v1, array:Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v0, v5, [Ljava/lang/String;

    .line 444
    .local v0, aidlist:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, v0

    if-ge v3, v5, :cond_0

    .line 445
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 448
    .end local v0           #aidlist:[Ljava/lang/String;
    .end local v1           #array:Lorg/json/JSONArray;
    .end local v3           #i:I
    :catch_0
    move-exception v2

    .line 449
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 450
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v6, 0x7d0

    const-string v7, "JSONException"

    invoke-direct {v5, v6, v7, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 447
    .end local v2           #e:Lorg/json/JSONException;
    .restart local v0       #aidlist:[Ljava/lang/String;
    .restart local v1       #array:Lorg/json/JSONArray;
    .restart local v3       #i:I
    :cond_0
    return-object v0
.end method

.method public getAlbums(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Album;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 456
    iget-object v7, p0, Lcom/htc/socialnetwork/flickr/Flickr;->mParams:Ljava/util/HashMap;

    const-string v8, "flickr.photosets.getList"

    invoke-static {v7, v8}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->setParams(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    .line 458
    .local v5, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "user_id"

    invoke-virtual {v5, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    :try_start_0
    sget-object v7, Lcom/htc/socialnetwork/flickr/Flickr;->mSecret:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->getResult(Ljava/util/HashMap;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "photosets"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 462
    .local v4, obj:Lorg/json/JSONObject;
    const-string v7, "photoset"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 463
    .local v1, array:Lorg/json/JSONArray;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 464
    .local v0, albumList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/socialnetwork/Album;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 465
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 466
    .local v6, pobj:Lorg/json/JSONObject;
    invoke-virtual {p0, v6}, Lcom/htc/socialnetwork/flickr/Flickr;->setAlbum(Lorg/json/JSONObject;)Lcom/htc/socialnetwork/Album;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 469
    .end local v0           #albumList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/socialnetwork/Album;>;"
    .end local v1           #array:Lorg/json/JSONArray;
    .end local v3           #i:I
    .end local v4           #obj:Lorg/json/JSONObject;
    .end local v6           #pobj:Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 470
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 471
    new-instance v7, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v8, 0x7d0

    const-string v9, "JSONException"

    invoke-direct {v7, v8, v9, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 468
    .end local v2           #e:Lorg/json/JSONException;
    .restart local v0       #albumList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/socialnetwork/Album;>;"
    .restart local v1       #array:Lorg/json/JSONArray;
    .restart local v3       #i:I
    .restart local v4       #obj:Lorg/json/JSONObject;
    :cond_0
    return-object v0
.end method

.method public getAuthLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/htc/socialnetwork/flickr/Flickr;->authLink:Ljava/lang/String;

    return-object v0
.end method

.method public getComments(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .parameter "pid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Comment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 1315
    iget-object v7, p0, Lcom/htc/socialnetwork/flickr/Flickr;->mParams:Ljava/util/HashMap;

    const-string v8, "flickr.photos.comments.getList"

    invoke-static {v7, v8}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->setParams(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    .line 1317
    .local v6, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "photo_id"

    invoke-virtual {v6, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1319
    :try_start_0
    sget-object v7, Lcom/htc/socialnetwork/flickr/Flickr;->mSecret:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->getResult(Ljava/util/HashMap;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "comments"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 1321
    .local v5, obj:Lorg/json/JSONObject;
    const-string v7, "comment"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 1322
    .local v4, oComments:Lorg/json/JSONArray;
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 1323
    .local v0, comments:Ljava/util/List;,"Ljava/util/List<Lcom/htc/socialnetwork/Comment;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 1324
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1325
    .local v3, o:Lorg/json/JSONObject;
    new-instance v7, Lcom/htc/socialnetwork/Comment;

    invoke-direct {v7}, Lcom/htc/socialnetwork/Comment;-><init>()V

    invoke-static {v3, v7}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->loadCommentFromJson(Lorg/json/JSONObject;Lcom/htc/socialnetwork/Comment;)Lcom/htc/socialnetwork/Comment;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1323
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1329
    .end local v0           #comments:Ljava/util/List;,"Ljava/util/List<Lcom/htc/socialnetwork/Comment;>;"
    .end local v2           #i:I
    .end local v3           #o:Lorg/json/JSONObject;
    .end local v4           #oComments:Lorg/json/JSONArray;
    .end local v5           #obj:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 1330
    .local v1, e:Lorg/json/JSONException;
    new-instance v7, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v8, 0x7e1

    const-string v9, "JSONException"

    invoke-direct {v7, v8, v9, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 1328
    .end local v1           #e:Lorg/json/JSONException;
    .restart local v0       #comments:Ljava/util/List;,"Ljava/util/List<Lcom/htc/socialnetwork/Comment;>;"
    .restart local v2       #i:I
    .restart local v4       #oComments:Lorg/json/JSONArray;
    .restart local v5       #obj:Lorg/json/JSONObject;
    :cond_0
    return-object v0
.end method

.method protected getContactIds(Ljava/lang/String;ZLjava/util/Collection;)V
    .locals 6
    .parameter "uid"
    .parameter "withToken"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 1061
    .local p3, collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/htc/socialnetwork/flickr/Flickr;->mParams:Ljava/util/HashMap;

    const-string v2, "flickr.contacts.getList"

    invoke-static {v0, v2}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->setParams(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 1068
    .local v1, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    const/16 v2, 0x3e8

    sget-object v3, Lcom/htc/socialnetwork/flickr/Flickr;->mSecret:Ljava/lang/String;

    const-string v4, "contact"

    move-object v0, p0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/socialnetwork/flickr/Flickr;->getContactIds(Ljava/util/HashMap;ILjava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 1069
    return-void

    .line 1064
    .end local v1           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    iget-object v0, p0, Lcom/htc/socialnetwork/flickr/Flickr;->mParams:Ljava/util/HashMap;

    const-string v2, "flickr.contacts.getPublicList"

    invoke-static {v0, v2}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->setParams(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 1066
    .restart local v1       #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "user_id"

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected getContactIds(Ljava/util/HashMap;ILjava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 13
    .parameter
    .parameter "per_page"
    .parameter "mSecret"
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 1074
    .local p1, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v9, -0x1

    .line 1075
    .local v9, total:I
    const/4 v8, 0x1

    .line 1076
    .local v8, page:I
    const-string v10, "per_page"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "s"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1079
    .local v6, names:Ljava/lang/String;
    :cond_0
    const-string v10, "page"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    :try_start_0
    move-object/from16 v0, p3

    invoke-static {p1, v0}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->getResult(Ljava/util/HashMap;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 1083
    .local v7, obj:Lorg/json/JSONObject;
    const/4 v10, -0x1

    if-ne v9, v10, :cond_2

    .line 1084
    const-string v10, "total"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 1085
    if-nez v9, :cond_2

    .line 1107
    :cond_1
    :goto_0
    return-void

    .line 1088
    :cond_2
    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1089
    .local v1, array:Lorg/json/JSONArray;
    if-eqz v1, :cond_1

    .line 1091
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v4, v10, :cond_4

    .line 1092
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 1093
    .local v5, jsonObj:Lorg/json/JSONObject;
    const-string v10, "nsid"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "nsid"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1094
    const-string v10, "nsid"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1095
    .local v3, friendId:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 1096
    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1091
    .end local v3           #friendId:Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1099
    .end local v1           #array:Lorg/json/JSONArray;
    .end local v4           #i:I
    .end local v5           #jsonObj:Lorg/json/JSONObject;
    .end local v7           #obj:Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 1100
    .local v2, e:Lorg/json/JSONException;
    new-instance v10, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v11, 0x7e1

    const-string v12, "JSONException"

    invoke-direct {v10, v11, v12, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 1104
    .end local v2           #e:Lorg/json/JSONException;
    .restart local v1       #array:Lorg/json/JSONArray;
    .restart local v4       #i:I
    .restart local v7       #obj:Lorg/json/JSONObject;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 1105
    sub-int/2addr v9, p2

    .line 1106
    if-gtz v9, :cond_0

    goto :goto_0
.end method

.method protected getContacts(Ljava/lang/String;Z)Ljava/util/List;
    .locals 4
    .parameter "uid"
    .parameter "withToken"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 1112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1113
    .local v0, collection:Ljava/util/List;,"Ljava/util/List<Lcom/htc/socialnetwork/User;>;"
    if-eqz p2, :cond_0

    .line 1114
    iget-object v2, p0, Lcom/htc/socialnetwork/flickr/Flickr;->mParams:Ljava/util/HashMap;

    const-string v3, "flickr.contacts.getList"

    invoke-static {v2, v3}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->setParams(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 1120
    .local v1, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    const/16 v2, 0x3e8

    sget-object v3, Lcom/htc/socialnetwork/flickr/Flickr;->mSecret:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/htc/socialnetwork/flickr/Flickr;->getContactsList(Ljava/util/HashMap;ILjava/lang/String;Ljava/util/Collection;)V

    .line 1121
    return-object v0

    .line 1116
    .end local v1           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    iget-object v2, p0, Lcom/htc/socialnetwork/flickr/Flickr;->mParams:Ljava/util/HashMap;

    const-string v3, "flickr.contacts.getPublicList"

    invoke-static {v2, v3}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->setParams(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 1118
    .restart local v1       #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "user_id"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getContactsIdList(Ljava/util/HashMap;ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .parameter
    .parameter "per_page"
    .parameter "mSecret"
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 1189
    .local p1, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1190
    .local v7, users:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, -0x1

    .line 1191
    .local v6, total:I
    const/4 v5, 0x1

    .line 1192
    .local v5, page:I
    const-string v8, "per_page"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "s"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1195
    .local v3, names:Ljava/lang/String;
    :cond_0
    const-string v8, "page"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1197
    :try_start_0
    invoke-static {p1, p3}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->getResult(Ljava/util/HashMap;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 1199
    .local v4, obj:Lorg/json/JSONObject;
    const/4 v8, -0x1

    if-ne v6, v8, :cond_1

    .line 1200
    const-string v8, "total"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 1201
    if-nez v6, :cond_1

    .line 1217
    :goto_0
    return-object v7

    .line 1204
    :cond_1
    invoke-virtual {v4, p4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1206
    .local v0, array:Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v2, v8, :cond_2

    .line 1207
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "nsid"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1206
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1209
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v2           #i:I
    .end local v4           #obj:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 1210
    .local v1, e:Lorg/json/JSONException;
    new-instance v8, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v9, 0x7e1

    const-string v10, "JSONException"

    invoke-direct {v8, v9, v10, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 1214
    .end local v1           #e:Lorg/json/JSONException;
    .restart local v0       #array:Lorg/json/JSONArray;
    .restart local v2       #i:I
    .restart local v4       #obj:Lorg/json/JSONObject;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 1215
    sub-int/2addr v6, p2

    .line 1216
    if-gtz v6, :cond_0

    goto :goto_0
.end method

.method public getContactsList(Ljava/util/HashMap;ILjava/lang/String;Ljava/util/Collection;)V
    .locals 22
    .parameter
    .parameter "per_page"
    .parameter "mSecret"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/htc/socialnetwork/User;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 1128
    .local p1, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, users:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/htc/socialnetwork/User;>;"
    const/4 v14, -0x1

    .line 1129
    .local v14, total:I
    const/4 v12, 0x1

    .line 1130
    .local v12, page:I
    const-string v18, "per_page"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    const-string v9, "contact"

    .line 1132
    .local v9, name:Ljava/lang/String;
    const-string v10, "contacts"

    .line 1134
    .local v10, names:Ljava/lang/String;
    :cond_0
    const-string v18, "page"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1136
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->getResult(Ljava/util/HashMap;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    const-string v19, "contacts"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 1138
    .local v11, obj:Lorg/json/JSONObject;
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v14, v0, :cond_1

    .line 1139
    const-string v18, "total"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 1140
    if-nez v14, :cond_1

    .line 1184
    :goto_0
    return-void

    .line 1143
    :cond_1
    const-string v18, "contact"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1144
    .local v3, array:Lorg/json/JSONArray;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_6

    .line 1145
    new-instance v15, Lcom/htc/socialnetwork/User;

    invoke-direct {v15}, Lcom/htc/socialnetwork/User;-><init>()V

    .line 1146
    .local v15, user:Lcom/htc/socialnetwork/User;
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    .line 1147
    .local v16, userObj:Lorg/json/JSONObject;
    const-string v18, "nsid"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/htc/socialnetwork/User;->setId(Ljava/lang/String;)V

    .line 1148
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1149
    .local v13, st:Ljava/lang/StringBuilder;
    const-string v18, "http://www.flickr.com/people/"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1150
    invoke-virtual {v15}, Lcom/htc/socialnetwork/User;->getId()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1151
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/htc/socialnetwork/User;->setProfileUrl(Ljava/lang/String;)V

    .line 1152
    const-string v18, "location"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1153
    const-string v18, "location"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/htc/socialnetwork/User;->setCurrentLocation(Ljava/lang/String;)V

    .line 1155
    :cond_2
    const-string v18, "username"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 1156
    const-string v18, "username"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1157
    .local v17, username:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/htc/socialnetwork/User;->setUserName(Ljava/lang/String;)V

    .line 1158
    const-string v18, "realname"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 1159
    const-string v18, "realname"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/htc/socialnetwork/User;->setFullName(Ljava/lang/String;)V

    .line 1164
    .end local v17           #username:Ljava/lang/String;
    :cond_3
    :goto_2
    const-string v18, "iconfarm"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    const-string v18, "iconserver"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 1165
    const-string v18, "iconfarm"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 1166
    .local v7, icon_farm:I
    const-string v18, "iconserver"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 1167
    .local v8, icon_server:I
    if-eqz v7, :cond_4

    if-eqz v8, :cond_4

    .line 1168
    const-string v18, "http://farm%d.static.flickr.com/%d/buddyicons/%s.jpg"

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    invoke-virtual {v15}, Lcom/htc/socialnetwork/User;->getId()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1170
    .local v4, buddy_icon:Ljava/lang/String;
    invoke-virtual {v15, v4}, Lcom/htc/socialnetwork/User;->setBuddyIconURL(Ljava/lang/String;)V

    .line 1173
    .end local v4           #buddy_icon:Ljava/lang/String;
    .end local v7           #icon_farm:I
    .end local v8           #icon_server:I
    :cond_4
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Lcom/htc/socialnetwork/User;->setProfileUpdateTime(J)V

    .line 1174
    move-object/from16 v0, p4

    invoke-interface {v0, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1144
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 1161
    .restart local v17       #username:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/htc/socialnetwork/User;->setFullName(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1176
    .end local v3           #array:Lorg/json/JSONArray;
    .end local v6           #i:I
    .end local v11           #obj:Lorg/json/JSONObject;
    .end local v13           #st:Ljava/lang/StringBuilder;
    .end local v15           #user:Lcom/htc/socialnetwork/User;
    .end local v16           #userObj:Lorg/json/JSONObject;
    .end local v17           #username:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 1177
    .local v5, e:Lorg/json/JSONException;
    new-instance v18, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v19, 0x7e1

    const-string v20, "JSONException"

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v5}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v18

    .line 1181
    .end local v5           #e:Lorg/json/JSONException;
    .restart local v3       #array:Lorg/json/JSONArray;
    .restart local v6       #i:I
    .restart local v11       #obj:Lorg/json/JSONObject;
    :cond_6
    add-int/lit8 v12, v12, 0x1

    .line 1182
    sub-int v14, v14, p2

    .line 1183
    if-gtz v14, :cond_0

    goto/16 :goto_0
.end method

.method public getContactsPhotos(ZZ)Ljava/util/List;
    .locals 13
    .parameter "just_friends"
    .parameter "include_self"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Photo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    .line 524
    iget-object v10, p0, Lcom/htc/socialnetwork/flickr/Flickr;->mParams:Ljava/util/HashMap;

    const-string v11, "flickr.photos.getContactsPhotos"

    invoke-static {v10, v11}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->setParams(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    .line 526
    .local v6, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 527
    .local v8, photos:Ljava/util/List;,"Ljava/util/List<Lcom/htc/socialnetwork/Photo;>;"
    const-string v10, "count"

    const/16 v11, 0x32

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    const-string v10, "extras"

    sget-object v11, Lcom/htc/socialnetwork/flickr/Flickr;->sExtrasParams:Ljava/lang/String;

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    if-eqz p1, :cond_0

    .line 530
    const-string v10, "just_friends"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    :cond_0
    if-eqz p2, :cond_1

    .line 533
    const-string v10, "include_self"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    :cond_1
    :try_start_0
    sget-object v10, Lcom/htc/socialnetwork/flickr/Flickr;->mSecret:Ljava/lang/String;

    invoke-static {v6, v10}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->getResult(Ljava/util/HashMap;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "photos"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 539
    .local v3, obj:Lorg/json/JSONObject;
    if-eqz v3, :cond_4

    .line 540
    const-string v10, "total"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 541
    .local v9, total:I
    const-string v10, "photo"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 542
    .local v0, array:Lorg/json/JSONArray;
    if-eqz v0, :cond_4

    .line 543
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    .line 544
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v9, :cond_4

    .line 545
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 546
    .local v5, p:Lorg/json/JSONObject;
    if-eqz v5, :cond_3

    .line 547
    invoke-virtual {p0, v5}, Lcom/htc/socialnetwork/flickr/Flickr;->setPhoto(Lorg/json/JSONObject;)Lcom/htc/socialnetwork/Photo;

    move-result-object v7

    .line 548
    .local v7, photo:Lcom/htc/socialnetwork/Photo;
    const-string v10, "owner"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 549
    const-string v10, "owner"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 550
    .local v4, owner_uid:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/htc/socialnetwork/Photo;->getPid()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v4, v10}, Lcom/htc/socialnetwork/flickr/Flickr;->getLink(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/htc/socialnetwork/Photo;->setLink(Ljava/net/URL;)V

    .line 553
    .end local v4           #owner_uid:Ljava/lang/String;
    :cond_2
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    .end local v7           #photo:Lcom/htc/socialnetwork/Photo;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 559
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v2           #i:I
    .end local v3           #obj:Lorg/json/JSONObject;
    .end local v5           #p:Lorg/json/JSONObject;
    .end local v9           #total:I
    :catch_0
    move-exception v1

    .line 560
    .local v1, e:Lorg/json/JSONException;
    new-instance v10, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v11, 0x7d0

    const-string v12, "JSONException"

    invoke-direct {v10, v11, v12, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 558
    .end local v1           #e:Lorg/json/JSONException;
    .restart local v3       #obj:Lorg/json/JSONObject;
    :cond_4
    return-object v8
.end method

.method public getFavoriteList(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter "photo_id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 1344
    invoke-virtual {p0}, Lcom/htc/socialnetwork/flickr/Flickr;->getParams()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "flickr.photos.getFavorites"

    invoke-static {v1, v2}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->setParams(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 1346
    .local v0, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "photo_id"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1347
    const/16 v1, 0x32

    const-string v2, "photo"

    const-string v3, "person"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/socialnetwork/flickr/Flickr;->getIdList(Ljava/util/HashMap;ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getFrob()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 224
    iget-object v3, p0, Lcom/htc/socialnetwork/flickr/Flickr;->mParams:Ljava/util/HashMap;

    const-string v4, "flickr.auth.getFrob"

    invoke-static {v3, v4}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->setParams(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 226
    .local v2, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/htc/socialnetwork/flickr/Flickr;->auth_token_text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 227
    const-string v3, "auth_token"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_0
    sget-object v3, Lcom/htc/socialnetwork/flickr/Flickr;->mSecret:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->getResult(Ljava/util/HashMap;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 231
    .local v1, obj:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "frob"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "_content"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/socialnetwork/flickr/Flickr;->frob:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    const-string v3, "RTest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FROB:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/socialnetwork/flickr/Flickr;->frob:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const-string v3, "method"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v3, "format"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v3, "frob"

    iget-object v4, p0, Lcom/htc/socialnetwork/flickr/Flickr;->frob:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string v3, "perms"

    const-string v4, "write"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://m.flickr.com/services/auth/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "http://api.flickr.com/services/rest/"

    sget-object v5, Lcom/htc/socialnetwork/flickr/Flickr;->mSecret:Ljava/lang/String;

    invoke-static {v4, v2, v5}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->encodeURI(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/socialnetwork/flickr/Flickr;->authLink:Ljava/lang/String;

    .line 245
    const-string v3, "RTest"

    iget-object v4, p0, Lcom/htc/socialnetwork/flickr/Flickr;->authLink:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 234
    new-instance v3, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v4, 0x7d0

    const-string v5, "JSONException"

    invoke-direct {v3, v4, v5, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getGroups()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 945
    iget-object v1, p0, Lcom/htc/socialnetwork/flickr/Flickr;->mParams:Ljava/util/HashMap;

    const-string v2, "flickr.groups.pools.getGroups"

    invoke-static {v1, v2}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->setParams(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 947
    .local v0, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v1, 0x190

    sget-object v2, Lcom/htc/socialnetwork/flickr/Flickr;->mSecret:Ljava/lang/String;

    const-string v3, "group"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/socialnetwork/flickr/Flickr;->getContactsIdList(Ljava/util/HashMap;ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getIdArray(Ljava/util/HashMap;ILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 13
    .parameter
    .parameter "per_page"
    .parameter "mSecret"
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 1265
    .local p1, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v9, -0x1

    .line 1266
    .local v9, total:I
    const/4 v7, 0x1

    .line 1267
    .local v7, page:I
    const-string v10, "per_page"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1268
    const-string v10, "page"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1269
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "s"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1271
    .local v5, names:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p3

    invoke-static {p1, v0}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->getResult(Ljava/util/HashMap;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 1273
    .local v6, obj:Lorg/json/JSONObject;
    const-string v10, "total"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 1274
    if-nez v9, :cond_0

    .line 1275
    const/4 v10, 0x0

    new-array v4, v10, [Ljava/lang/String;

    .line 1297
    :goto_0
    return-object v4

    .line 1276
    :cond_0
    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1277
    .local v1, array:Lorg/json/JSONArray;
    new-array v4, v9, [Ljava/lang/String;

    .line 1278
    .local v4, idlist:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v3, v10, :cond_1

    .line 1279
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "id"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1280
    .local v8, tmpid:Ljava/lang/String;
    aput-object v8, v4, v3

    .line 1278
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1282
    .end local v8           #tmpid:Ljava/lang/String;
    :cond_1
    sub-int/2addr v9, p2

    .line 1283
    :goto_2
    if-lez v9, :cond_3

    .line 1284
    add-int/lit8 v7, v7, 0x1

    .line 1285
    const-string v10, "page"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1286
    move-object/from16 v0, p3

    invoke-static {p1, v0}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->getResult(Ljava/util/HashMap;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 1288
    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1289
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v3, v10, :cond_2

    .line 1290
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "id"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1291
    .restart local v8       #tmpid:Ljava/lang/String;
    add-int/lit8 v10, v7, -0x1

    mul-int/2addr v10, p2

    add-int/2addr v10, v3

    aput-object v8, v4, v10
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1289
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1293
    .end local v8           #tmpid:Ljava/lang/String;
    :cond_2
    sub-int/2addr v9, p2

    goto :goto_2

    .line 1295
    :cond_3
    const/4 v6, 0x0

    .line 1296
    const/4 v1, 0x0

    .line 1297
    goto :goto_0

    .line 1298
    .end local v1           #array:Lorg/json/JSONArray;
    .end local v3           #i:I
    .end local v4           #idlist:[Ljava/lang/String;
    .end local v6           #obj:Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 1299
    .local v2, e:Lorg/json/JSONException;
    new-instance v10, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v11, 0x7e1

    const-string v12, "JSONException"

    invoke-direct {v10, v11, v12, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v10
.end method

.method public getIdList(Ljava/util/HashMap;ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .parameter
    .parameter "per_page"
    .parameter "name1"
    .parameter "name2"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 1352
    .local p1, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v9, -0x1

    .line 1353
    .local v9, total:I
    const/4 v7, 0x1

    .line 1354
    .local v7, page:I
    const-string v10, "per_page"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1355
    const/4 v4, 0x0

    .local v4, idlist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object v5, v4

    .line 1360
    .end local v4           #idlist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local v5, idlist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    :try_start_0
    const-string v10, "page"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1361
    sget-object v10, Lcom/htc/socialnetwork/flickr/Flickr;->mSecret:Ljava/lang/String;

    invoke-static {p1, v10}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->getResult(Ljava/util/HashMap;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 1364
    .local v6, obj:Lorg/json/JSONObject;
    const/4 v10, -0x1

    if-ne v9, v10, :cond_2

    .line 1365
    const-string v10, "total"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 1366
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1368
    .end local v5           #idlist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4       #idlist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    :try_start_1
    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1369
    .local v1, array:Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v3, v10, :cond_0

    .line 1370
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "nsid"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1371
    .local v8, tmpid:Ljava/lang/String;
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1369
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1373
    .end local v8           #tmpid:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    sub-int/2addr v9, v10

    .line 1374
    add-int/lit8 v7, v7, 0x1

    .line 1375
    if-gtz v9, :cond_1

    .line 1376
    const/4 v6, 0x0

    .line 1377
    const/4 v1, 0x0

    .line 1378
    return-object v4

    .line 1379
    .end local v1           #array:Lorg/json/JSONArray;
    .end local v3           #i:I
    .end local v4           #idlist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v6           #obj:Lorg/json/JSONObject;
    .restart local v5       #idlist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    move-object v4, v5

    .line 1380
    .end local v5           #idlist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local v2, e:Lorg/json/JSONException;
    .restart local v4       #idlist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_3
    new-instance v10, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v11, 0x7e1

    const-string v12, "JSONException"

    invoke-direct {v10, v11, v12, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 1379
    .end local v2           #e:Lorg/json/JSONException;
    .restart local v6       #obj:Lorg/json/JSONObject;
    :catch_1
    move-exception v2

    goto :goto_3

    .restart local v1       #array:Lorg/json/JSONArray;
    .restart local v3       #i:I
    :cond_1
    move-object v5, v4

    .end local v4           #idlist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5       #idlist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .end local v1           #array:Lorg/json/JSONArray;
    .end local v3           #i:I
    :cond_2
    move-object v4, v5

    .end local v5           #idlist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4       #idlist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1
.end method

.method public getInfo(Ljava/lang/String;Lcom/htc/socialnetwork/User;)V
    .locals 6
    .parameter "uid"
    .parameter "user"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 347
    iget-object v3, p0, Lcom/htc/socialnetwork/flickr/Flickr;->mParams:Ljava/util/HashMap;

    const-string v4, "flickr.people.getInfo"

    invoke-static {v3, v4}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->setParams(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 349
    .local v2, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "user_id"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    :try_start_0
    sget-object v3, Lcom/htc/socialnetwork/flickr/Flickr;->mSecret:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->getResult(Ljava/util/HashMap;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "person"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 353
    .local v1, obj:Lorg/json/JSONObject;
    invoke-virtual {p0, v1, p2}, Lcom/htc/socialnetwork/flickr/Flickr;->SetUser(Lorg/json/JSONObject;Lcom/htc/socialnetwork/User;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    return-void

    .line 354
    .end local v1           #obj:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 355
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 356
    new-instance v3, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v4, 0x7d0

    const-string v5, "JSONException"

    invoke-direct {v3, v4, v5, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method getLink(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;
    .locals 4
    .parameter "uid"
    .parameter "pid"

    .prologue
    .line 704
    :try_start_0
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://www.flickr.com/photos/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    :goto_0
    return-object v1

    .line 705
    :catch_0
    move-exception v0

    .line 706
    .local v0, e:Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 708
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getListWithToken()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 325
    iget-object v1, p0, Lcom/htc/socialnetwork/flickr/Flickr;->mParams:Ljava/util/HashMap;

    const-string v2, "flickr.contacts.getList"

    invoke-static {v1, v2}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->setParams(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 327
    .local v0, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v1, 0x3e8

    sget-object v2, Lcom/htc/socialnetwork/flickr/Flickr;->mSecret:Ljava/lang/String;

    const-string v3, "contact"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/socialnetwork/flickr/Flickr;->getContactsIdList(Ljava/util/HashMap;ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getListWithoutToken(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 318
    iget-object v1, p0, Lcom/htc/socialnetwork/flickr/Flickr;->mParams:Ljava/util/HashMap;

    const-string v2, "flickr.contacts.getPublicList"

    invoke-static {v1, v2}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->setParams(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 320
    .local v0, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const/16 v1, 0x3e8

    sget-object v2, Lcom/htc/socialnetwork/flickr/Flickr;->mSecret:Ljava/lang/String;

    const-string v3, "contact"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/socialnetwork/flickr/Flickr;->getContactsIdList(Ljava/util/HashMap;ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getLoginUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/htc/socialnetwork/flickr/Flickr;->loginId:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/htc/socialnetwork/flickr/Flickr;->loginName:Ljava/lang/String;

    return-object v0
.end method

.method public getNotInSetPhotosIdList()[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 836
    iget-object v1, p0, Lcom/htc/socialnetwork/flickr/Flickr;->mParams:Ljava/util/HashMap;

    const-string v2, "flickr.photos.getNotInSet"

    invoke-static {v1, v2}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->setParams(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 838
    .local v0, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v1, 0x1f4

    sget-object v2, Lcom/htc/socialnetwork/flickr/Flickr;->mSecret:Ljava/lang/String;

    const-string v3, "photo"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/socialnetwork/flickr/Flickr;->getIdArray(Ljava/util/HashMap;ILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getParams()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/htc/socialnetwork/flickr/Flickr;->mParams:Ljava/util/HashMap;

    return-object v0
.end method

.method public getPhotoIdArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 13
    .parameter "psid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 639
    iget-object v10, p0, Lcom/htc/socialnetwork/flickr/Flickr;->mParams:Ljava/util/HashMap;

    const-string v11, "flickr.photosets.getPhotos"

    invoke-static {v10, v11}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->setParams(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    .line 641
    .local v5, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v10, "photoset_id"

    invoke-virtual {v5, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    const/16 v6, 0x1f4

    .line 643
    .local v6, per_page:I
    const/4 v4, 0x1

    .line 644
    .local v4, page:I
    const-string v10, "per_page"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    const-string v10, "page"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    const-string v10, "media"

    const-string v11, "photos"

    invoke-virtual {v5, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    :try_start_0
    sget-object v10, Lcom/htc/socialnetwork/flickr/Flickr;->mSecret:Ljava/lang/String;

    invoke-static {v5, v10}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->getResult(Ljava/util/HashMap;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "photoset"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 650
    .local v3, obj:Lorg/json/JSONObject;
    const-string v10, "total"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 651
    .local v9, total:I
    const-string v10, "photo"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 652
    .local v0, array:Lorg/json/JSONArray;
    new-array v7, v9, [Ljava/lang/String;

    .line 653
    .local v7, pidList:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v2, v10, :cond_0

    .line 654
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "id"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 655
    .local v8, tmpid:Ljava/lang/String;
    aput-object v8, v7, v2

    .line 653
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 657
    .end local v8           #tmpid:Ljava/lang/String;
    :cond_0
    sub-int/2addr v9, v6

    .line 658
    :cond_1
    if-lez v9, :cond_2

    .line 659
    add-int/lit8 v4, v4, 0x1

    .line 660
    const-string v10, "page"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    sget-object v10, Lcom/htc/socialnetwork/flickr/Flickr;->mSecret:Ljava/lang/String;

    invoke-static {v5, v10}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->getResult(Ljava/util/HashMap;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "photoset"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 663
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v2, v10, :cond_1

    .line 664
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "id"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 665
    .restart local v8       #tmpid:Ljava/lang/String;
    add-int/lit8 v10, v4, -0x1

    mul-int/2addr v10, v6

    add-int/2addr v10, v2

    aput-object v8, v7, v10
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 668
    .end local v8           #tmpid:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    .line 669
    return-object v7

    .line 670
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v2           #i:I
    .end local v3           #obj:Lorg/json/JSONObject;
    .end local v7           #pidList:[Ljava/lang/String;
    .end local v9           #total:I
    :catch_0
    move-exception v1

    .line 671
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 672
    new-instance v10, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v11, 0x7d0

    const-string v12, "JSONException"

    invoke-direct {v10, v11, v12, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v10
.end method

.method public getPhotoInfo(Ljava/lang/String;)Lcom/htc/socialnetwork/Photo;
    .locals 8
    .parameter "pid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 715
    iget-object v5, p0, Lcom/htc/socialnetwork/flickr/Flickr;->mParams:Ljava/util/HashMap;

    const-string v6, "flickr.photos.getInfo"

    invoke-static {v5, v6}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->setParams(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 717
    .local v3, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "photo_id"

    invoke-virtual {v3, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    :try_start_0
    sget-object v5, Lcom/htc/socialnetwork/flickr/Flickr;->mSecret:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->getResult(Ljava/util/HashMap;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "photo"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 721
    .local v1, obj:Lorg/json/JSONObject;
    invoke-virtual {p0, v1}, Lcom/htc/socialnetwork/flickr/Flickr;->setPhoto(Lorg/json/JSONObject;)Lcom/htc/socialnetwork/Photo;

    move-result-object v4

    .line 722
    .local v4, photo:Lcom/htc/socialnetwork/Photo;
    const-string v5, "owner"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 723
    const-string v5, "owner"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "nsid"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 724
    .local v2, ownerId:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/htc/socialnetwork/Photo;->getPid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2, v5}, Lcom/htc/socialnetwork/flickr/Flickr;->getLink(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/socialnetwork/Photo;->setLink(Ljava/net/URL;)V

    .line 725
    sget-object v5, Lcom/htc/socialnetwork/flickr/Flickr;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "link = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/htc/socialnetwork/Photo;->getLink()Ljava/net/URL;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    .end local v2           #ownerId:Ljava/lang/String;
    :cond_0
    return-object v4

    .line 728
    .end local v1           #obj:Lorg/json/JSONObject;
    .end local v4           #photo:Lcom/htc/socialnetwork/Photo;
    :catch_0
    move-exception v0

    .line 729
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 730
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v6, 0x7d0

    const-string v7, "JSONException"

    invoke-direct {v5, v6, v7, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public getPhotoSetInfo(Ljava/lang/String;)Lcom/htc/socialnetwork/Album;
    .locals 4
    .parameter "aid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 478
    iget-object v2, p0, Lcom/htc/socialnetwork/flickr/Flickr;->mParams:Ljava/util/HashMap;

    const-string v3, "flickr.photosets.getInfo"

    invoke-static {v2, v3}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->setParams(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 480
    .local v1, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "photoset_id"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    sget-object v2, Lcom/htc/socialnetwork/flickr/Flickr;->mSecret:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->getResult(Ljava/util/HashMap;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "photoset"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 483
    .local v0, obj:Lorg/json/JSONObject;
    invoke-virtual {p0, v0}, Lcom/htc/socialnetwork/flickr/Flickr;->setAlbum(Lorg/json/JSONObject;)Lcom/htc/socialnetwork/Album;

    move-result-object v2

    return-object v2
.end method

.method public getPhotos(Ljava/lang/String;)Ljava/util/List;
    .locals 16
    .parameter "psid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Photo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 566
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/socialnetwork/flickr/Flickr;->mParams:Ljava/util/HashMap;

    const-string v14, "flickr.photosets.getPhotos"

    invoke-static {v13, v14}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->setParams(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    .line 568
    .local v6, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 569
    .local v9, photoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/socialnetwork/Photo;>;"
    const-string v13, "photoset_id"

    move-object/from16 v0, p1

    invoke-virtual {v6, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    const/16 v7, 0x1f4

    .line 571
    .local v7, per_page:I
    const/4 v5, 0x1

    .line 572
    .local v5, page:I
    const-string v13, "per_page"

    const/16 v14, 0x1f4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    const-string v13, "page"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    const-string v13, "media"

    const-string v14, "photos"

    invoke-virtual {v6, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    const-string v13, "extras"

    sget-object v14, Lcom/htc/socialnetwork/flickr/Flickr;->sExtrasParams:Ljava/lang/String;

    invoke-virtual {v6, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    :try_start_0
    sget-object v13, Lcom/htc/socialnetwork/flickr/Flickr;->mSecret:Ljava/lang/String;

    invoke-static {v6, v13}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->getResult(Ljava/util/HashMap;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "photoset"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 579
    .local v4, obj:Lorg/json/JSONObject;
    if-eqz v4, :cond_5

    .line 580
    const-string v13, "total"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 581
    .local v11, total:I
    const/4 v12, 0x0

    .line 582
    .local v12, uid:Ljava/lang/String;
    const-string v13, "owner"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 583
    const-string v13, "owner"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 585
    :cond_0
    const-string v13, "photo"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 586
    .local v1, array:Lorg/json/JSONArray;
    if-eqz v1, :cond_3

    .line 587
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v13

    if-ge v3, v13, :cond_3

    .line 589
    :try_start_1
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 590
    .local v10, pobj:Lorg/json/JSONObject;
    if-eqz v10, :cond_2

    .line 591
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/socialnetwork/flickr/Flickr;->setPhoto(Lorg/json/JSONObject;)Lcom/htc/socialnetwork/Photo;

    move-result-object v8

    .line 592
    .local v8, photo:Lcom/htc/socialnetwork/Photo;
    if-eqz v12, :cond_1

    .line 593
    invoke-virtual {v8}, Lcom/htc/socialnetwork/Photo;->getPid()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/htc/socialnetwork/flickr/Flickr;->getLink(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/htc/socialnetwork/Photo;->setLink(Ljava/net/URL;)V

    .line 594
    :cond_1
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 587
    .end local v8           #photo:Lcom/htc/socialnetwork/Photo;
    .end local v10           #pobj:Lorg/json/JSONObject;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 596
    :catch_0
    move-exception v2

    .line 597
    .local v2, e:Lorg/json/JSONException;
    :try_start_2
    sget-object v13, Lcom/htc/socialnetwork/flickr/Flickr;->TAG:Ljava/lang/String;

    const-string v14, "JSONException in getPhotos 1"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 631
    .end local v1           #array:Lorg/json/JSONArray;
    .end local v2           #e:Lorg/json/JSONException;
    .end local v3           #i:I
    .end local v4           #obj:Lorg/json/JSONObject;
    .end local v11           #total:I
    .end local v12           #uid:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 632
    .restart local v2       #e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 633
    new-instance v13, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v14, 0x7d0

    const-string v15, "JSONException"

    invoke-direct {v13, v14, v15, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 601
    .end local v2           #e:Lorg/json/JSONException;
    .restart local v1       #array:Lorg/json/JSONArray;
    .restart local v4       #obj:Lorg/json/JSONObject;
    .restart local v11       #total:I
    .restart local v12       #uid:Ljava/lang/String;
    :cond_3
    add-int/lit16 v11, v11, -0x1f4

    .line 602
    :goto_2
    if-lez v11, :cond_4

    .line 603
    add-int/lit8 v5, v5, 0x1

    .line 604
    :try_start_3
    const-string v13, "page"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    sget-object v13, Lcom/htc/socialnetwork/flickr/Flickr;->mSecret:Ljava/lang/String;

    invoke-static {v6, v13}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->getResult(Ljava/util/HashMap;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "photoset"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 607
    if-nez v4, :cond_6

    .line 628
    :cond_4
    const/4 v4, 0x0

    .line 630
    .end local v1           #array:Lorg/json/JSONArray;
    .end local v11           #total:I
    .end local v12           #uid:Ljava/lang/String;
    :cond_5
    return-object v9

    .line 609
    .restart local v1       #array:Lorg/json/JSONArray;
    .restart local v11       #total:I
    .restart local v12       #uid:Ljava/lang/String;
    :cond_6
    const-string v13, "photo"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 610
    if-eqz v1, :cond_9

    .line 611
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v13

    if-ge v3, v13, :cond_9

    .line 613
    :try_start_4
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 614
    .restart local v10       #pobj:Lorg/json/JSONObject;
    if-eqz v10, :cond_8

    .line 615
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/socialnetwork/flickr/Flickr;->setPhoto(Lorg/json/JSONObject;)Lcom/htc/socialnetwork/Photo;

    move-result-object v8

    .line 616
    .restart local v8       #photo:Lcom/htc/socialnetwork/Photo;
    if-eqz v12, :cond_7

    .line 617
    invoke-virtual {v8}, Lcom/htc/socialnetwork/Photo;->getPid()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/htc/socialnetwork/flickr/Flickr;->getLink(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/htc/socialnetwork/Photo;->setLink(Ljava/net/URL;)V

    .line 619
    :cond_7
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    .line 611
    .end local v8           #photo:Lcom/htc/socialnetwork/Photo;
    .end local v10           #pobj:Lorg/json/JSONObject;
    :cond_8
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 621
    :catch_2
    move-exception v2

    .line 622
    .restart local v2       #e:Lorg/json/JSONException;
    :try_start_5
    sget-object v13, Lcom/htc/socialnetwork/flickr/Flickr;->TAG:Ljava/lang/String;

    const-string v14, "JSONException in getPhotos 2"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    .line 626
    .end local v2           #e:Lorg/json/JSONException;
    .end local v3           #i:I
    :cond_9
    add-int/lit16 v11, v11, -0x1f4

    goto :goto_2
.end method

.method public getPublicGroups(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 363
    iget-object v5, p0, Lcom/htc/socialnetwork/flickr/Flickr;->mParams:Ljava/util/HashMap;

    const-string v6, "flickr.people.getPublicGroups"

    invoke-static {v5, v6}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->setParams(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 365
    .local v3, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "user_id"

    invoke-virtual {v3, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sget-object v5, Lcom/htc/socialnetwork/flickr/Flickr;->mSecret:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->getResult(Ljava/util/HashMap;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "groups"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 368
    .local v2, obj:Lorg/json/JSONObject;
    const-string v5, "group"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 369
    .local v0, array:Lorg/json/JSONArray;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .local v4, users:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 371
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "nsid"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 373
    :cond_0
    return-object v4
.end method

.method public getRecentPhotos(Ljava/lang/String;I)Ljava/util/List;
    .locals 13
    .parameter "uid"
    .parameter "maxNum"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Photo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 1230
    iget-object v10, p0, Lcom/htc/socialnetwork/flickr/Flickr;->mParams:Ljava/util/HashMap;

    const-string v11, "flickr.photos.search"

    invoke-static {v10, v11}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->setParams(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    .line 1232
    .local v5, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v10, "user_id"

    invoke-virtual {v5, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1233
    move v6, p2

    .line 1234
    .local v6, per_page:I
    const/4 v4, 0x1

    .line 1235
    .local v4, page:I
    const-string v10, "per_page"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    const-string v10, "page"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1237
    const-string v10, "media"

    const-string v11, "photos"

    invoke-virtual {v5, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1238
    const-string v10, "extras"

    sget-object v11, Lcom/htc/socialnetwork/flickr/Flickr;->sExtrasParams:Ljava/lang/String;

    invoke-virtual {v5, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1240
    :try_start_0
    sget-object v10, Lcom/htc/socialnetwork/flickr/Flickr;->mSecret:Ljava/lang/String;

    invoke-static {v5, v10}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->getResult(Ljava/util/HashMap;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "photos"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1242
    .local v3, obj:Lorg/json/JSONObject;
    const-string v10, "photo"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1243
    .local v0, array:Lorg/json/JSONArray;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1244
    .local v8, photoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/socialnetwork/Photo;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v2, v10, :cond_1

    .line 1245
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 1246
    .local v9, pobj:Lorg/json/JSONObject;
    invoke-virtual {p0, v9}, Lcom/htc/socialnetwork/flickr/Flickr;->setPhoto(Lorg/json/JSONObject;)Lcom/htc/socialnetwork/Photo;

    move-result-object v7

    .line 1247
    .local v7, photo:Lcom/htc/socialnetwork/Photo;
    invoke-virtual {v7}, Lcom/htc/socialnetwork/Photo;->getPid()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {v7}, Lcom/htc/socialnetwork/Photo;->getUrl()Ljava/net/URL;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 1248
    invoke-virtual {v7}, Lcom/htc/socialnetwork/Photo;->getPid()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, p1, v10}, Lcom/htc/socialnetwork/flickr/Flickr;->getLink(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/htc/socialnetwork/Photo;->setLink(Ljava/net/URL;)V

    .line 1249
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1244
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1253
    .end local v7           #photo:Lcom/htc/socialnetwork/Photo;
    .end local v9           #pobj:Lorg/json/JSONObject;
    :cond_1
    const/4 v3, 0x0

    .line 1254
    return-object v8

    .line 1255
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v2           #i:I
    .end local v3           #obj:Lorg/json/JSONObject;
    .end local v8           #photoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/socialnetwork/Photo;>;"
    :catch_0
    move-exception v1

    .line 1256
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1257
    new-instance v10, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v11, 0x7d0

    const-string v12, "JSONException"

    invoke-direct {v10, v11, v12, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v10
.end method

.method public getToken()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 254
    iget-object v4, p0, Lcom/htc/socialnetwork/flickr/Flickr;->mParams:Ljava/util/HashMap;

    const-string v5, "flickr.auth.getToken"

    invoke-static {v4, v5}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->setParams(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 256
    .local v2, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v4, p0, Lcom/htc/socialnetwork/flickr/Flickr;->auth_token_text:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 257
    iget-object v4, p0, Lcom/htc/socialnetwork/flickr/Flickr;->auth_token_text:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    :cond_0
    iget-object v4, p0, Lcom/htc/socialnetwork/flickr/Flickr;->frob:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 260
    const-string v4, "frob"

    iget-object v5, p0, Lcom/htc/socialnetwork/flickr/Flickr;->frob:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_1
    :try_start_0
    sget-object v4, Lcom/htc/socialnetwork/flickr/Flickr;->mSecret:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->getResult(Ljava/util/HashMap;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "auth"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 264
    .local v1, obj:Lorg/json/JSONObject;
    const-string v4, "token"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "_content"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 265
    .local v3, token:Ljava/lang/String;
    sget-object v4, Lcom/htc/socialnetwork/flickr/Flickr;->TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const-string v4, "user"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 267
    const-string v4, "username"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/socialnetwork/flickr/Flickr;->loginName:Ljava/lang/String;

    .line 268
    const-string v4, "nsid"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/socialnetwork/flickr/Flickr;->loginId:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    return-object v3

    .line 270
    .end local v1           #obj:Lorg/json/JSONObject;
    .end local v3           #token:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 271
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 272
    new-instance v4, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v5, 0x7d0

    const-string v6, "JSONException"

    invoke-direct {v4, v5, v6, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public getUpdatePhoto(Ljava/lang/String;J)[Ljava/lang/String;
    .locals 4
    .parameter "uid"
    .parameter "time"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 844
    iget-object v1, p0, Lcom/htc/socialnetwork/flickr/Flickr;->mParams:Ljava/util/HashMap;

    const-string v2, "flickr.photos.search"

    invoke-static {v1, v2}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->setParams(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 846
    .local v0, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    const-string v1, "min_upload_date"

    const-wide/16 v2, 0x3e8

    div-long v2, p2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    const/16 v1, 0x1f4

    sget-object v2, Lcom/htc/socialnetwork/flickr/Flickr;->mSecret:Ljava/lang/String;

    const-string v3, "photo"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/socialnetwork/flickr/Flickr;->getIdArray(Ljava/util/HashMap;ILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getUpdatePhotos(Ljava/util/Collection;J)Ljava/util/HashMap;
    .locals 16
    .parameter
    .parameter "time"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;J)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Photo;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 854
    .local p1, uids:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 855
    new-instance v13, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v14, 0x7d0

    const-string v15, "uids is null in getUpdatePhotos"

    invoke-direct {v13, v14, v15}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v13

    .line 860
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/socialnetwork/flickr/Flickr;->mParams:Ljava/util/HashMap;

    const-string v14, "flickr.photos.search"

    invoke-static {v13, v14}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->setParams(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v10

    .line 862
    .local v10, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v13, "user_id"

    const-string v14, "me"

    invoke-virtual {v10, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    const-string v13, "min_upload_date"

    const-wide/16 v14, 0x3e8

    div-long v14, p2, v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    const-string v13, "contacts"

    const-string v14, "all"

    invoke-virtual {v10, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    const-string v13, "extras"

    sget-object v14, Lcom/htc/socialnetwork/flickr/Flickr;->sExtrasParams:Ljava/lang/String;

    invoke-virtual {v10, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    const-string v13, "per_page"

    const/16 v14, 0x1f4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    const/16 v1, 0x1f4

    .line 870
    .local v1, MAX_RETRIEVED_PHOTOS:I
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 872
    .local v12, userMedia:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/htc/socialnetwork/Photo;>;>;"
    const/4 v9, 0x1

    .line 873
    .local v9, page:I
    const/16 v11, 0x1f4

    .line 875
    .local v11, total:I
    :cond_1
    :goto_0
    if-lez v11, :cond_8

    .line 876
    const-string v13, "page"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    :try_start_0
    sget-object v13, Lcom/htc/socialnetwork/flickr/Flickr;->mSecret:Ljava/lang/String;

    invoke-static {v10, v13}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->getResult(Ljava/util/HashMap;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "photos"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 880
    .local v6, obj:Lorg/json/JSONObject;
    if-eqz v6, :cond_1

    .line 881
    const/4 v13, 0x1

    if-ne v9, v13, :cond_2

    .line 882
    const-string v13, "total"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 883
    const/16 v13, 0x1f4

    if-le v11, v13, :cond_2

    const/16 v11, 0x1f4

    .line 886
    :cond_2
    const/4 v7, 0x0

    .line 888
    .local v7, objs:Lorg/json/JSONArray;
    :try_start_1
    const-string v13, "photo"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 892
    :goto_1
    if-eqz v7, :cond_6

    .line 893
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    :try_start_2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v3, v13, :cond_5

    if-lez v11, :cond_5

    .line 894
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 895
    .local v5, o:Lorg/json/JSONObject;
    if-eqz v5, :cond_4

    .line 896
    const-string v13, "owner"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 897
    .local v8, owner_id:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    const-string v13, "owner"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_4

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 900
    invoke-virtual {v12, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 901
    .local v4, media:Ljava/util/List;,"Ljava/util/List<Lcom/htc/socialnetwork/Photo;>;"
    if-nez v4, :cond_3

    .line 902
    new-instance v4, Ljava/util/ArrayList;

    .end local v4           #media:Ljava/util/List;,"Ljava/util/List<Lcom/htc/socialnetwork/Photo;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 903
    .restart local v4       #media:Ljava/util/List;,"Ljava/util/List<Lcom/htc/socialnetwork/Photo;>;"
    invoke-virtual {v12, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/socialnetwork/flickr/Flickr;->setPhoto(Lorg/json/JSONObject;)Lcom/htc/socialnetwork/Photo;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 893
    .end local v4           #media:Ljava/util/List;,"Ljava/util/List<Lcom/htc/socialnetwork/Photo;>;"
    .end local v8           #owner_id:Ljava/lang/String;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v11, v11, -0x1

    goto :goto_2

    .line 909
    .end local v5           #o:Lorg/json/JSONObject;
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 911
    .end local v3           #i:I
    :cond_6
    const/4 v11, 0x0

    goto :goto_0

    .line 914
    .end local v6           #obj:Lorg/json/JSONObject;
    .end local v7           #objs:Lorg/json/JSONArray;
    :catch_0
    move-exception v2

    .line 915
    .local v2, e:Lorg/json/JSONException;
    const/4 v13, 0x1

    if-ne v9, v13, :cond_7

    .line 916
    sget-object v13, Lcom/htc/socialnetwork/flickr/Flickr;->TAG:Ljava/lang/String;

    const-string v14, "JSONException at page 1"

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 917
    new-instance v13, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v14, 0x7d0

    const-string v15, "JSONException at page 1"

    invoke-direct {v13, v14, v15, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 921
    :cond_7
    const/4 v11, 0x0

    .line 922
    goto/16 :goto_0

    .line 925
    .end local v2           #e:Lorg/json/JSONException;
    :cond_8
    return-object v12

    .line 889
    .restart local v6       #obj:Lorg/json/JSONObject;
    .restart local v7       #objs:Lorg/json/JSONArray;
    :catch_1
    move-exception v13

    goto :goto_1
.end method

.method public getUploadParameters(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 965
    .local p1, input:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 966
    .local v4, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "api_key"

    iget-object v7, p0, Lcom/htc/socialnetwork/flickr/Flickr;->mParams:Ljava/util/HashMap;

    const-string v8, "api_key"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    const-string v6, "auth_token"

    iget-object v7, p0, Lcom/htc/socialnetwork/flickr/Flickr;->mParams:Ljava/util/HashMap;

    const-string v8, "auth_token"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 969
    .local v2, k:Ljava/lang/String;
    const-string v6, "privacy"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 970
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 972
    .end local v2           #k:Ljava/lang/String;
    :cond_1
    const-string v6, "privacy"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 973
    .local v5, privacySetting:I
    and-int/lit8 v6, v5, 0x4

    if-lez v6, :cond_2

    .line 974
    const-string v6, "is_family"

    const-string v7, "1"

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    :cond_2
    and-int/lit8 v6, v5, 0x2

    if-lez v6, :cond_3

    .line 977
    const-string v6, "is_friend"

    const-string v7, "1"

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    :cond_3
    and-int/lit8 v6, v5, 0x1

    if-lez v6, :cond_4

    .line 980
    const-string v6, "is_public"

    const-string v7, "1"

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    :goto_1
    const-string v6, "api_sig"

    sget-object v7, Lcom/htc/socialnetwork/flickr/Flickr;->mSecret:Ljava/lang/String;

    invoke-static {v4, v7}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->getSignature(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    return-object v4

    .line 982
    :cond_4
    const-string v6, "is_public"

    const-string v7, "0"

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public getUploadResponseMsg(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .parameter "responseXML"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x7d0

    .line 992
    iget-object v2, p0, Lcom/htc/socialnetwork/flickr/Flickr;->db:Ljavax/xml/parsers/DocumentBuilder;

    if-nez v2, :cond_0

    .line 994
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/socialnetwork/flickr/Flickr;->setUp()V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1003
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/htc/socialnetwork/flickr/Flickr;->db:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v2, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 1004
    .local v0, document:Lorg/w3c/dom/Document;
    invoke-virtual {p0, v0}, Lcom/htc/socialnetwork/flickr/Flickr;->parse(Lorg/w3c/dom/Document;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    return-object v2

    .line 995
    .end local v0           #document:Lorg/w3c/dom/Document;
    :catch_0
    move-exception v1

    .line 996
    .local v1, e:Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v2, Lcom/htc/socialnetwork/SocialNetworkException;

    const-string v3, "ParserConfigurationException"

    invoke-direct {v2, v4, v3}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 1005
    .end local v1           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v1

    .line 1006
    .local v1, e:Lorg/xml/sax/SAXException;
    new-instance v2, Lcom/htc/socialnetwork/SocialNetworkException;

    const-string v3, "SAXException"

    invoke-direct {v2, v4, v3}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 1008
    .end local v1           #e:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v1

    .line 1009
    .local v1, e:Ljava/io/IOException;
    new-instance v2, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v3, 0x7d8

    const-string v4, "IOException"

    invoke-direct {v2, v3, v4}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method public getUserByName(Ljava/lang/String;Lcom/htc/socialnetwork/User;)V
    .locals 1
    .parameter "username"
    .parameter "user"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 378
    invoke-virtual {p0, p1}, Lcom/htc/socialnetwork/flickr/Flickr;->findByUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, uid:Ljava/lang/String;
    invoke-virtual {p0, v0, p2}, Lcom/htc/socialnetwork/flickr/Flickr;->getInfo(Ljava/lang/String;Lcom/htc/socialnetwork/User;)V

    .line 380
    return-void
.end method

.method public parse(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 8
    .parameter "document"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/AuthenticationException;,
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1017
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/socialnetwork/flickr/Flickr;->responsePayLoad:Lorg/w3c/dom/Element;

    .line 1018
    iget-object v5, p0, Lcom/htc/socialnetwork/flickr/Flickr;->responsePayLoad:Lorg/w3c/dom/Element;

    const-string v6, "stat"

    invoke-interface {v5, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1019
    .local v4, status:Ljava/lang/String;
    const-string v5, "ok"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1020
    iget-object v5, p0, Lcom/htc/socialnetwork/flickr/Flickr;->responsePayLoad:Lorg/w3c/dom/Element;

    const-string v6, "photoid"

    invoke-interface {v5, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-interface {v5, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 1022
    .local v3, photoIdElement:Lorg/w3c/dom/Element;
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Text;

    invoke-interface {v5}, Lorg/w3c/dom/Text;->getData()Ljava/lang/String;

    move-result-object v2

    .line 1024
    .local v2, photoId:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ok pid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1051
    .end local v2           #photoId:Ljava/lang/String;
    .end local v3           #photoIdElement:Lorg/w3c/dom/Element;
    :goto_0
    return-object v5

    .line 1025
    :cond_0
    const-string v5, "fail"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1026
    iget-object v5, p0, Lcom/htc/socialnetwork/flickr/Flickr;->responsePayLoad:Lorg/w3c/dom/Element;

    const-string v6, "err"

    invoke-interface {v5, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-interface {v5, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 1028
    .local v1, errElement:Lorg/w3c/dom/Element;
    const-string v5, "code"

    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1030
    .local v0, errCode:I
    sparse-switch v0, :sswitch_data_0

    .line 1046
    const-string v5, "err:8001"

    goto :goto_0

    .line 1032
    :sswitch_0
    const-string v5, "err:8009"

    goto :goto_0

    .line 1034
    :sswitch_1
    const-string v5, "err:8009"

    goto :goto_0

    .line 1036
    :sswitch_2
    const-string v5, "err:8010"

    goto :goto_0

    .line 1038
    :sswitch_3
    const-string v5, "err:8011"

    goto :goto_0

    .line 1044
    :sswitch_4
    const-string v5, "err:8002"

    goto :goto_0

    .line 1048
    :sswitch_5
    const/16 v5, 0x62

    if-eq v0, v5, :cond_1

    const/16 v5, 0x63

    if-ne v0, v5, :cond_2

    .line 1049
    :cond_1
    new-instance v5, Lcom/htc/socialnetwork/AuthenticationException;

    invoke-direct {v5}, Lcom/htc/socialnetwork/AuthenticationException;-><init>()V

    throw v5

    .line 1051
    :cond_2
    const-string v5, "msg"

    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1053
    .end local v0           #errCode:I
    .end local v1           #errElement:Lorg/w3c/dom/Element;
    :cond_3
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v6, 0x7e1

    invoke-direct {v5, v6}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v5

    .line 1030
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x62 -> :sswitch_5
        0x63 -> :sswitch_5
        0x69 -> :sswitch_4
    .end sparse-switch
.end method

.method public setAlbum(Lorg/json/JSONObject;)Lcom/htc/socialnetwork/Album;
    .locals 12
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 487
    new-instance v1, Lcom/htc/socialnetwork/Album;

    invoke-direct {v1}, Lcom/htc/socialnetwork/Album;-><init>()V

    .line 489
    .local v1, album:Lcom/htc/socialnetwork/Album;
    :try_start_0
    const-string v9, "id"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/htc/socialnetwork/Album;->setId(Ljava/lang/String;)V

    .line 490
    const-string v9, "photos"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v1, v9}, Lcom/htc/socialnetwork/Album;->setPhotoAmount(I)V

    .line 491
    const-string v9, "farm"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 492
    .local v5, farm_id:Ljava/lang/String;
    const-string v9, "server"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 493
    .local v7, server_id:Ljava/lang/String;
    const-string v9, "secret"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 494
    .local v6, secret:Ljava/lang/String;
    const-string v9, "primary"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 495
    .local v3, cover_id:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 496
    .local v2, buffer:Ljava/lang/StringBuffer;
    const-string v9, "http://farm"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 497
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 498
    const-string v9, ".static.flickr.com/"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 499
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 500
    const-string v9, "/"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 501
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 502
    const-string v9, "_"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 503
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 504
    const-string v9, "%s.jpg"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 505
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, PHOTO_IMG_URL:Ljava/lang/String;
    invoke-virtual {v1, v3}, Lcom/htc/socialnetwork/Album;->setCoverPhoto(Ljava/lang/String;)V

    .line 507
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "_s"

    aput-object v11, v9, v10

    invoke-static {v0, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/htc/socialnetwork/Album;->setCoverUrl(Ljava/lang/String;)V

    .line 508
    const-string v9, "title"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 509
    .local v8, title:Ljava/lang/String;
    const-string v9, "_content"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 510
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v10, "_content"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 512
    :cond_0
    invoke-virtual {v1, v8}, Lcom/htc/socialnetwork/Album;->setName(Ljava/lang/String;)V

    .line 513
    const/4 v9, -0x1

    invoke-virtual {v1, v9}, Lcom/htc/socialnetwork/Album;->setVisibleType(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    return-object v1

    .line 515
    .end local v0           #PHOTO_IMG_URL:Ljava/lang/String;
    .end local v2           #buffer:Ljava/lang/StringBuffer;
    .end local v3           #cover_id:Ljava/lang/String;
    .end local v5           #farm_id:Ljava/lang/String;
    .end local v6           #secret:Ljava/lang/String;
    .end local v7           #server_id:Ljava/lang/String;
    .end local v8           #title:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 516
    .local v4, e:Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 517
    new-instance v9, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v10, 0x7d0

    const-string v11, "JSONException"

    invoke-direct {v9, v10, v11, v4}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v9
.end method

.method public setPhoto(Lorg/json/JSONObject;)Lcom/htc/socialnetwork/Photo;
    .locals 27
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 736
    new-instance v15, Lcom/htc/socialnetwork/Photo;

    invoke-direct {v15}, Lcom/htc/socialnetwork/Photo;-><init>()V

    .line 738
    .local v15, photo:Lcom/htc/socialnetwork/Photo;
    :try_start_0
    const-string v23, "id"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 739
    .local v9, id:Ljava/lang/String;
    const-string v23, "title"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 740
    .local v20, title:Ljava/lang/String;
    const-string v23, "_content"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 741
    new-instance v23, Lorg/json/JSONObject;

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v24, "_content"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 743
    :cond_0
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/htc/socialnetwork/Photo;->setTitle(Ljava/lang/String;)V

    .line 748
    const-string v23, "description"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 749
    const-string v23, "description"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 750
    .local v6, description:Ljava/lang/String;
    sget-object v23, Lcom/htc/socialnetwork/flickr/Flickr;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "description = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    if-eqz v6, :cond_2

    .line 752
    const-string v23, "_content"

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 753
    new-instance v23, Lorg/json/JSONObject;

    move-object/from16 v0, v23

    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v24, "_content"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 755
    :cond_1
    invoke-virtual {v15, v6}, Lcom/htc/socialnetwork/Photo;->setDescription(Ljava/lang/String;)V

    .line 759
    .end local v6           #description:Ljava/lang/String;
    :cond_2
    const-string v23, "secret"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 760
    .local v16, secret:Ljava/lang/String;
    const-string v23, "farm"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 761
    .local v8, farm_id:I
    const-string v23, "server"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 762
    .local v17, server_id:I
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 763
    .local v4, buffer:Ljava/lang/StringBuffer;
    const-string v23, "http://farm"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v23

    const-string v24, ".static.flickr.com/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    const-string v24, "_"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    const-string v24, "%s.jpg"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 766
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 768
    .local v3, PHOTO_IMG_URL:Ljava/lang/String;
    const/16 v21, 0x0

    .local v21, url_b:Ljava/lang/String;
    const/16 v22, 0x0

    .line 770
    .local v22, url_o:Ljava/lang/String;
    :try_start_1
    const-string v23, "url_l"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v21

    .line 775
    :goto_0
    :try_start_2
    const-string v23, "originalformat"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 776
    .local v13, original_format:Ljava/lang/String;
    const-string v23, "originalsecret"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 777
    .local v14, original_secret:Ljava/lang/String;
    const-string v23, "http://farm%s.static.flickr.com/%s/%s_%s_o.%s"

    const/16 v24, 0x5

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x2

    aput-object v9, v24, v25

    const/16 v25, 0x3

    aput-object v14, v24, v25

    const/16 v25, 0x4

    aput-object v13, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v22

    .line 783
    .end local v13           #original_format:Ljava/lang/String;
    .end local v14           #original_secret:Ljava/lang/String;
    :goto_1
    :try_start_3
    const-string v23, "dates"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 784
    const-string v23, "dates"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v23

    const-string v24, "lastupdate"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 786
    .local v11, lastupdate:J
    const-string v23, "dates"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v23

    const-string v24, "taken"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v5

    .line 788
    .local v5, date:Ljava/lang/String;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/flickr/Flickr;->df:Ljava/text/SimpleDateFormat;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    .line 789
    .local v18, taken:J
    const-wide/16 v23, 0x3e8

    mul-long v23, v23, v11

    move-wide/from16 v0, v23

    invoke-virtual {v15, v0, v1}, Lcom/htc/socialnetwork/Photo;->setLastUpdateTime(J)V

    .line 790
    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Lcom/htc/socialnetwork/Photo;->setTime(J)V
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_2

    .line 813
    .end local v5           #date:Ljava/lang/String;
    .end local v11           #lastupdate:J
    .end local v18           #taken:J
    :cond_3
    :goto_2
    :try_start_5
    invoke-virtual {v15, v9}, Lcom/htc/socialnetwork/Photo;->setPid(Ljava/lang/String;)V

    .line 814
    new-instance v23, Ljava/net/URL;

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string v26, "_t"

    aput-object v26, v24, v25

    move-object/from16 v0, v24

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/htc/socialnetwork/Photo;->setThumbUrl(Ljava/net/URL;)V

    .line 815
    move-object/from16 v10, v21

    .line 816
    .local v10, img_url:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 817
    move-object/from16 v10, v22

    .line 819
    :cond_4
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/socialnetwork/flickr/Flickr;->useLargePhoto:Z

    move/from16 v23, v0

    if-nez v23, :cond_6

    .line 820
    :cond_5
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    sget-object v25, Lcom/htc/socialnetwork/flickr/Flickr;->DEFAULT_TYPE:Ljava/lang/String;

    aput-object v25, v23, v24

    move-object/from16 v0, v23

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 822
    :cond_6
    new-instance v23, Ljava/net/URL;

    move-object/from16 v0, v23

    invoke-direct {v0, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/htc/socialnetwork/Photo;->setUrl(Ljava/net/URL;)V

    .line 823
    return-object v15

    .line 791
    .end local v10           #img_url:Ljava/lang/String;
    .restart local v5       #date:Ljava/lang/String;
    .restart local v11       #lastupdate:J
    :catch_0
    move-exception v7

    .line 792
    .local v7, e:Ljava/text/ParseException;
    new-instance v23, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v24, 0x7d0

    const-string v25, "ParseException"

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v23
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_2

    .line 824
    .end local v3           #PHOTO_IMG_URL:Ljava/lang/String;
    .end local v4           #buffer:Ljava/lang/StringBuffer;
    .end local v5           #date:Ljava/lang/String;
    .end local v7           #e:Ljava/text/ParseException;
    .end local v8           #farm_id:I
    .end local v9           #id:Ljava/lang/String;
    .end local v11           #lastupdate:J
    .end local v16           #secret:Ljava/lang/String;
    .end local v17           #server_id:I
    .end local v20           #title:Ljava/lang/String;
    .end local v21           #url_b:Ljava/lang/String;
    .end local v22           #url_o:Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 825
    .local v7, e:Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    .line 826
    new-instance v23, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v24, 0x7d0

    const-string v25, "JSONException"

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v23

    .line 797
    .end local v7           #e:Lorg/json/JSONException;
    .restart local v3       #PHOTO_IMG_URL:Ljava/lang/String;
    .restart local v4       #buffer:Ljava/lang/StringBuffer;
    .restart local v8       #farm_id:I
    .restart local v9       #id:Ljava/lang/String;
    .restart local v16       #secret:Ljava/lang/String;
    .restart local v17       #server_id:I
    .restart local v20       #title:Ljava/lang/String;
    .restart local v21       #url_b:Ljava/lang/String;
    .restart local v22       #url_o:Ljava/lang/String;
    :cond_7
    :try_start_6
    const-string v23, "lastupdate"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 798
    const-string v23, "lastupdate"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 800
    .restart local v11       #lastupdate:J
    const-wide/16 v23, 0x3e8

    mul-long v23, v23, v11

    move-wide/from16 v0, v23

    invoke-virtual {v15, v0, v1}, Lcom/htc/socialnetwork/Photo;->setLastUpdateTime(J)V

    .line 802
    .end local v11           #lastupdate:J
    :cond_8
    const-string v23, "datetaken"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 803
    const-string v23, "datetaken"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_2

    move-result-object v5

    .line 804
    .restart local v5       #date:Ljava/lang/String;
    const-wide/16 v18, 0x0

    .line 806
    .restart local v18       #taken:J
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/flickr/Flickr;->df:Ljava/text/SimpleDateFormat;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Date;->getTime()J
    :try_end_7
    .catch Ljava/text/ParseException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_2

    move-result-wide v18

    .line 810
    :goto_3
    :try_start_8
    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Lcom/htc/socialnetwork/Photo;->setTime(J)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_2

    .line 828
    .end local v3           #PHOTO_IMG_URL:Ljava/lang/String;
    .end local v4           #buffer:Ljava/lang/StringBuffer;
    .end local v5           #date:Ljava/lang/String;
    .end local v8           #farm_id:I
    .end local v9           #id:Ljava/lang/String;
    .end local v16           #secret:Ljava/lang/String;
    .end local v17           #server_id:I
    .end local v18           #taken:J
    .end local v20           #title:Ljava/lang/String;
    .end local v21           #url_b:Ljava/lang/String;
    .end local v22           #url_o:Ljava/lang/String;
    :catch_2
    move-exception v7

    .line 829
    .local v7, e:Ljava/net/MalformedURLException;
    invoke-virtual {v7}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 830
    new-instance v23, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v24, 0x7d7

    const-string v25, "MalformedURLException"

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v23

    .line 807
    .end local v7           #e:Ljava/net/MalformedURLException;
    .restart local v3       #PHOTO_IMG_URL:Ljava/lang/String;
    .restart local v4       #buffer:Ljava/lang/StringBuffer;
    .restart local v5       #date:Ljava/lang/String;
    .restart local v8       #farm_id:I
    .restart local v9       #id:Ljava/lang/String;
    .restart local v16       #secret:Ljava/lang/String;
    .restart local v17       #server_id:I
    .restart local v18       #taken:J
    .restart local v20       #title:Ljava/lang/String;
    .restart local v21       #url_b:Ljava/lang/String;
    .restart local v22       #url_o:Ljava/lang/String;
    :catch_3
    move-exception v7

    .line 808
    .local v7, e:Ljava/text/ParseException;
    :try_start_9
    sget-object v23, Lcom/htc/socialnetwork/flickr/Flickr;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Failed to parse date_taken: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_3

    .line 779
    .end local v5           #date:Ljava/lang/String;
    .end local v7           #e:Ljava/text/ParseException;
    .end local v18           #taken:J
    :catch_4
    move-exception v23

    goto/16 :goto_1

    .line 771
    :catch_5
    move-exception v23

    goto/16 :goto_0
.end method

.method public setUp()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 958
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/socialnetwork/flickr/Flickr;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 959
    iget-object v0, p0, Lcom/htc/socialnetwork/flickr/Flickr;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringElementContentWhitespace(Z)V

    .line 960
    iget-object v0, p0, Lcom/htc/socialnetwork/flickr/Flickr;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/socialnetwork/flickr/Flickr;->db:Ljavax/xml/parsers/DocumentBuilder;

    .line 961
    return-void
.end method
