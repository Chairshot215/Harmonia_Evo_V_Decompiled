.class public final Lcom/android/htccontacts/util/SNUtils;
.super Ljava/lang/Object;
.source "SNUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;,
        Lcom/android/htccontacts/util/SNUtils$CacheInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final FACEBOOK_PROFILE_LINK:Ljava/lang/String; = "http://m.facebook.com/profile.php?id=%s"

.field public static final LINK_DATA_ENDING_TOKEN:Ljava/lang/String; = "</sn>"

.field public static final LINK_DATA_STARTING_TOKEN:Ljava/lang/String; = "<sn>"

.field public static final SN_SERVICE_FACEBOOK:Ljava/lang/String; = "facebook"

.field public static final SN_SERVICE_FLICKR:Ljava/lang/String; = "flickr"

.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/android/htccontacts/util/SNUtils;


# instance fields
.field private hasSNSyncFailed:Z

.field private mAlbumUpdateTimeCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mAppCacheDir:Ljava/lang/String;

.field private mAppContext:Landroid/content/Context;

.field private mEventDisplaySettingsDays:I

.field private mFByteArray:[B

.field public mImageCacheManager:Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;

.field private mIsEventDisplaySettingsDirty:Z

.field private mSNClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/socialnetwork/SocialNetworkClient;",
            ">;"
        }
    .end annotation
.end field

.field private mSNDataHelpers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/socialnetwork/SocialNetworkDataHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mUserAlbumFilepathCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/htccontacts/util/SNUtils$CacheInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUserPhotoFilepathCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/htccontacts/util/SNUtils$CacheInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/android/htccontacts/util/SNUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/util/SNUtils;->TAG:Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    sput-object v0, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object v0, p0, Lcom/android/htccontacts/util/SNUtils;->mAppContext:Landroid/content/Context;

    .line 69
    iput-object v0, p0, Lcom/android/htccontacts/util/SNUtils;->mSNClients:Ljava/util/HashMap;

    .line 70
    iput-object v0, p0, Lcom/android/htccontacts/util/SNUtils;->mSNDataHelpers:Ljava/util/HashMap;

    .line 71
    iput-object v0, p0, Lcom/android/htccontacts/util/SNUtils;->mUserPhotoFilepathCache:Ljava/util/HashMap;

    .line 72
    iput-object v0, p0, Lcom/android/htccontacts/util/SNUtils;->mUserAlbumFilepathCache:Ljava/util/HashMap;

    .line 73
    iput-object v0, p0, Lcom/android/htccontacts/util/SNUtils;->mAlbumUpdateTimeCache:Ljava/util/HashMap;

    .line 1166
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/htccontacts/util/SNUtils;->mEventDisplaySettingsDays:I

    .line 1167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/util/SNUtils;->mIsEventDisplaySettingsDirty:Z

    .line 88
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 89
    check-cast p1, Landroid/app/Activity;

    .end local p1
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/util/SNUtils;->mAppContext:Landroid/content/Context;

    .line 95
    :goto_0
    iget-object v0, p0, Lcom/android/htccontacts/util/SNUtils;->mAppContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/htccontacts/util/SNUtils;->init(Landroid/content/Context;)V

    .line 96
    return-void

    .line 92
    .restart local p1
    :cond_0
    iput-object p1, p0, Lcom/android/htccontacts/util/SNUtils;->mAppContext:Landroid/content/Context;

    .line 93
    const-string v0, "SNUtils"

    const-string v1, "application context"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static OpenBrowser2FacebookMyEventInvite(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 991
    const-string v4, "http://m.facebook.com/eventhome.php"

    .line 992
    .local v4, url:Ljava/lang/String;
    sget-object v5, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    if-eqz v5, :cond_0

    .line 994
    :try_start_0
    sget-object v5, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    iget-object v5, v5, Lcom/android/htccontacts/util/SNUtils;->mSNClients:Ljava/util/HashMap;

    const-string v6, "facebook"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/socialnetwork/SocialNetworkClient;

    .line 995
    .local v0, client:Lcom/htc/socialnetwork/SocialNetworkClient;
    invoke-virtual {v0, v4}, Lcom/htc/socialnetwork/SocialNetworkClient;->deepLink(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/htc/socialnetwork/SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1001
    .end local v0           #client:Lcom/htc/socialnetwork/SocialNetworkClient;
    :cond_0
    :goto_0
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1002
    .local v3, uri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/htccontacts/util/SNUtils;->createABrowserIntentWithUri(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    .line 1003
    .local v2, result:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1004
    return-void

    .line 997
    .end local v2           #result:Landroid/content/Intent;
    .end local v3           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 998
    .local v1, e:Lcom/htc/socialnetwork/SocialNetworkException;
    sget-object v5, Lcom/android/htccontacts/util/SNUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SocialNetworkException - url: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/htc/socialnetwork/SocialNetworkException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static OpenBrowser2FacebookMyFriendInvite(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 972
    const-string v4, "http://m.facebook.com/reqs.php"

    .line 973
    .local v4, url:Ljava/lang/String;
    sget-object v5, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    if-eqz v5, :cond_0

    .line 975
    :try_start_0
    sget-object v5, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    iget-object v5, v5, Lcom/android/htccontacts/util/SNUtils;->mSNClients:Ljava/util/HashMap;

    const-string v6, "facebook"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/socialnetwork/SocialNetworkClient;

    .line 976
    .local v0, client:Lcom/htc/socialnetwork/SocialNetworkClient;
    invoke-virtual {v0, v4}, Lcom/htc/socialnetwork/SocialNetworkClient;->deepLink(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/htc/socialnetwork/SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 982
    .end local v0           #client:Lcom/htc/socialnetwork/SocialNetworkClient;
    :cond_0
    :goto_0
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 983
    .local v3, uri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/htccontacts/util/SNUtils;->createABrowserIntentWithUri(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    .line 984
    .local v2, result:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 985
    return-void

    .line 978
    .end local v2           #result:Landroid/content/Intent;
    .end local v3           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 979
    .local v1, e:Lcom/htc/socialnetwork/SocialNetworkException;
    sget-object v5, Lcom/android/htccontacts/util/SNUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SocialNetworkException - url: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/htc/socialnetwork/SocialNetworkException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static OpenBrowser2FacebookMyGroupInvite(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 1029
    const-string v4, "http://m.facebook.com/reqs.php"

    .line 1030
    .local v4, url:Ljava/lang/String;
    sget-object v5, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    if-eqz v5, :cond_0

    .line 1032
    :try_start_0
    sget-object v5, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    iget-object v5, v5, Lcom/android/htccontacts/util/SNUtils;->mSNClients:Ljava/util/HashMap;

    const-string v6, "facebook"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/socialnetwork/SocialNetworkClient;

    .line 1033
    .local v0, client:Lcom/htc/socialnetwork/SocialNetworkClient;
    invoke-virtual {v0, v4}, Lcom/htc/socialnetwork/SocialNetworkClient;->deepLink(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/htc/socialnetwork/SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1039
    .end local v0           #client:Lcom/htc/socialnetwork/SocialNetworkClient;
    :cond_0
    :goto_0
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1040
    .local v3, uri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/htccontacts/util/SNUtils;->createABrowserIntentWithUri(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    .line 1041
    .local v2, result:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1042
    return-void

    .line 1035
    .end local v2           #result:Landroid/content/Intent;
    .end local v3           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 1036
    .local v1, e:Lcom/htc/socialnetwork/SocialNetworkException;
    sget-object v5, Lcom/android/htccontacts/util/SNUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SocialNetworkException - url: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/htc/socialnetwork/SocialNetworkException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static OpenBrowser2FacebookMyMessages(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 953
    const-string v4, "http://m.facebook.com/inbox"

    .line 954
    .local v4, url:Ljava/lang/String;
    sget-object v5, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    if-eqz v5, :cond_0

    .line 956
    :try_start_0
    sget-object v5, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    iget-object v5, v5, Lcom/android/htccontacts/util/SNUtils;->mSNClients:Ljava/util/HashMap;

    const-string v6, "facebook"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/socialnetwork/SocialNetworkClient;

    .line 957
    .local v0, client:Lcom/htc/socialnetwork/SocialNetworkClient;
    invoke-virtual {v0, v4}, Lcom/htc/socialnetwork/SocialNetworkClient;->deepLink(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/htc/socialnetwork/SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 963
    .end local v0           #client:Lcom/htc/socialnetwork/SocialNetworkClient;
    :cond_0
    :goto_0
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 964
    .local v3, uri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/htccontacts/util/SNUtils;->createABrowserIntentWithUri(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    .line 965
    .local v2, result:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 966
    return-void

    .line 959
    .end local v2           #result:Landroid/content/Intent;
    .end local v3           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 960
    .local v1, e:Lcom/htc/socialnetwork/SocialNetworkException;
    sget-object v5, Lcom/android/htccontacts/util/SNUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SocialNetworkException - url: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/htc/socialnetwork/SocialNetworkException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static OpenBrowser2FacebookMyNewFriend(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 1010
    const-string v4, "http://m.facebook.com/friends.php"

    .line 1011
    .local v4, url:Ljava/lang/String;
    sget-object v5, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    if-eqz v5, :cond_0

    .line 1013
    :try_start_0
    sget-object v5, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    iget-object v5, v5, Lcom/android/htccontacts/util/SNUtils;->mSNClients:Ljava/util/HashMap;

    const-string v6, "facebook"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/socialnetwork/SocialNetworkClient;

    .line 1014
    .local v0, client:Lcom/htc/socialnetwork/SocialNetworkClient;
    invoke-virtual {v0, v4}, Lcom/htc/socialnetwork/SocialNetworkClient;->deepLink(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/htc/socialnetwork/SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1020
    .end local v0           #client:Lcom/htc/socialnetwork/SocialNetworkClient;
    :cond_0
    :goto_0
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1021
    .local v3, uri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/htccontacts/util/SNUtils;->createABrowserIntentWithUri(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    .line 1022
    .local v2, result:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1023
    return-void

    .line 1016
    .end local v2           #result:Landroid/content/Intent;
    .end local v3           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 1017
    .local v1, e:Lcom/htc/socialnetwork/SocialNetworkException;
    sget-object v5, Lcom/android/htccontacts/util/SNUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SocialNetworkException - url: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/htc/socialnetwork/SocialNetworkException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static OpenBrowser2FacebookMyUnreadPoke(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 1067
    const-string v4, "http://m.facebook.com/home.php?sap"

    .line 1068
    .local v4, url:Ljava/lang/String;
    sget-object v5, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    if-eqz v5, :cond_0

    .line 1070
    :try_start_0
    sget-object v5, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    iget-object v5, v5, Lcom/android/htccontacts/util/SNUtils;->mSNClients:Ljava/util/HashMap;

    const-string v6, "facebook"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/socialnetwork/SocialNetworkClient;

    .line 1071
    .local v0, client:Lcom/htc/socialnetwork/SocialNetworkClient;
    invoke-virtual {v0, v4}, Lcom/htc/socialnetwork/SocialNetworkClient;->deepLink(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/htc/socialnetwork/SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1077
    .end local v0           #client:Lcom/htc/socialnetwork/SocialNetworkClient;
    :cond_0
    :goto_0
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1078
    .local v3, uri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/htccontacts/util/SNUtils;->createABrowserIntentWithUri(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    .line 1079
    .local v2, result:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1080
    return-void

    .line 1073
    .end local v2           #result:Landroid/content/Intent;
    .end local v3           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 1074
    .local v1, e:Lcom/htc/socialnetwork/SocialNetworkException;
    sget-object v5, Lcom/android/htccontacts/util/SNUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SocialNetworkException - url: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/htc/socialnetwork/SocialNetworkException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static OpenBrowser2FacebookMyWallUpdate(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 1048
    const-string v4, "http://m.facebook.com/notifications.php"

    .line 1049
    .local v4, url:Ljava/lang/String;
    sget-object v5, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    if-eqz v5, :cond_0

    .line 1051
    :try_start_0
    sget-object v5, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    iget-object v5, v5, Lcom/android/htccontacts/util/SNUtils;->mSNClients:Ljava/util/HashMap;

    const-string v6, "facebook"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/socialnetwork/SocialNetworkClient;

    .line 1052
    .local v0, client:Lcom/htc/socialnetwork/SocialNetworkClient;
    invoke-virtual {v0, v4}, Lcom/htc/socialnetwork/SocialNetworkClient;->deepLink(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/htc/socialnetwork/SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1058
    .end local v0           #client:Lcom/htc/socialnetwork/SocialNetworkClient;
    :cond_0
    :goto_0
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1059
    .local v3, uri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/htccontacts/util/SNUtils;->createABrowserIntentWithUri(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    .line 1060
    .local v2, result:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1061
    return-void

    .line 1054
    .end local v2           #result:Landroid/content/Intent;
    .end local v3           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 1055
    .local v1, e:Lcom/htc/socialnetwork/SocialNetworkException;
    sget-object v5, Lcom/android/htccontacts/util/SNUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SocialNetworkException - url: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/htc/socialnetwork/SocialNetworkException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static OpenBrowser2FacebookProfile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "userId"

    .prologue
    .line 451
    invoke-static {p1}, Lcom/android/htccontacts/util/SNUtils;->getOpenBrowser2FacebookProfileIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 452
    .local v0, result:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 453
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 455
    :cond_0
    return-void
.end method

.method static synthetic access$000()Lcom/android/htccontacts/util/SNUtils;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/htccontacts/util/SNUtils;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/htccontacts/util/SNUtils;->mUserPhotoFilepathCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/htccontacts/util/SNUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/htccontacts/util/SNUtils;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/htccontacts/util/SNUtils;->mUserAlbumFilepathCache:Ljava/util/HashMap;

    return-object v0
.end method

.method public static addUserAlbumFilepath(JLjava/lang/String;)V
    .locals 9
    .parameter "rowId"
    .parameter "path"

    .prologue
    .line 875
    sget-object v0, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    iget-object v7, v0, Lcom/android/htccontacts/util/SNUtils;->mUserAlbumFilepathCache:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    new-instance v0, Lcom/android/htccontacts/util/SNUtils$CacheInfo;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-wide v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/htccontacts/util/SNUtils$CacheInfo;-><init>(JLjava/lang/String;IJ)V

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    sget-object v0, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    iget-object v0, v0, Lcom/android/htccontacts/util/SNUtils;->mImageCacheManager:Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->insertAlbumCache(JLjava/lang/String;)Z

    .line 877
    return-void
.end method

.method public static addUserAlbumUpdateTime(JJ)V
    .locals 3
    .parameter "rowId"
    .parameter "time"

    .prologue
    .line 187
    sget-object v0, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    if-nez v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 190
    :cond_0
    sget-object v0, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    iget-object v0, v0, Lcom/android/htccontacts/util/SNUtils;->mAlbumUpdateTimeCache:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static addUserPhotoFilepath(JLjava/lang/String;)V
    .locals 9
    .parameter "rowId"
    .parameter "path"

    .prologue
    .line 834
    sget-object v0, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    iget-object v7, v0, Lcom/android/htccontacts/util/SNUtils;->mUserPhotoFilepathCache:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    new-instance v0, Lcom/android/htccontacts/util/SNUtils$CacheInfo;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-wide v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/htccontacts/util/SNUtils$CacheInfo;-><init>(JLjava/lang/String;IJ)V

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    sget-object v0, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    iget-object v0, v0, Lcom/android/htccontacts/util/SNUtils;->mImageCacheManager:Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->insertFriendCache(JLjava/lang/String;)Z

    .line 836
    return-void
.end method

.method public static createABrowserIntentWithUri(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 3
    .parameter "uri"

    .prologue
    .line 1086
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1087
    .local v0, result:Landroid/content/Intent;
    const-string v1, "com.android.browser"

    const-string v2, "com.android.browser.BrowserActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1088
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1089
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1090
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1091
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1092
    return-object v0
.end method

.method public static extractNoteText(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "text"

    .prologue
    const/4 v5, -0x1

    .line 1153
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1163
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 1156
    .restart local p0
    :cond_1
    const-string v4, "<sn>"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1157
    .local v1, startingIndex:I
    const-string v4, "</sn>"

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1158
    .local v0, endingIndex:I
    if-lt v0, v1, :cond_0

    if-eq v1, v5, :cond_0

    if-eq v0, v5, :cond_0

    .line 1161
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1162
    .local v2, subTextFirstHalf:Ljava/lang/String;
    const-string v4, "</sn>"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1163
    .local v3, subTextSecondHalf:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getActiveUserData(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 5
    .parameter "context"
    .parameter "service"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 367
    invoke-static {p0, p1}, Lcom/android/htccontacts/util/SNUtils;->getSocialNetworkDataHelper(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/socialnetwork/SocialNetworkDataHelper;

    move-result-object v1

    .line 368
    .local v1, helper:Lcom/htc/socialnetwork/SocialNetworkDataHelper;
    if-nez v1, :cond_0

    .line 369
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 377
    :goto_0
    return-object v2

    .line 372
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->getActiveUserData()Ljava/util/HashMap;
    :try_end_0
    .catch Lcom/htc/socialnetwork/SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, e:Lcom/htc/socialnetwork/SocialNetworkException;
    sget-object v2, Lcom/android/htccontacts/util/SNUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActiveUserData("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/htc/socialnetwork/SocialNetworkException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-virtual {v0}, Lcom/htc/socialnetwork/SocialNetworkException;->getErrorCode()I

    move-result v2

    invoke-static {p0, v2}, Lcom/android/htccontacts/util/SNUtils;->showSNAlertDialog(Landroid/content/Context;I)V

    .line 377
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method public static getActiveUserId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "service"

    .prologue
    .line 298
    if-eqz p0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 299
    invoke-static {p0, p1}, Lcom/android/htccontacts/util/SNUtils;->getSocialNetworkDataHelper(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/socialnetwork/SocialNetworkDataHelper;

    move-result-object v1

    .line 300
    .local v1, helper:Lcom/htc/socialnetwork/SocialNetworkDataHelper;
    if-eqz v1, :cond_0

    .line 301
    const-string v2, "0"

    .line 303
    .local v2, result:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v1}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->getActiveUserId()Ljava/lang/String;
    :try_end_0
    .catch Lcom/htc/socialnetwork/SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 314
    .end local v1           #helper:Lcom/htc/socialnetwork/SocialNetworkDataHelper;
    .end local v2           #result:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 304
    .restart local v1       #helper:Lcom/htc/socialnetwork/SocialNetworkDataHelper;
    .restart local v2       #result:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 305
    .local v0, e:Lcom/htc/socialnetwork/SocialNetworkException;
    sget-object v3, Lcom/android/htccontacts/util/SNUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getActiveUserData("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/htc/socialnetwork/SocialNetworkException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-virtual {v0}, Lcom/htc/socialnetwork/SocialNetworkException;->getErrorCode()I

    move-result v3

    invoke-static {p0, v3}, Lcom/android/htccontacts/util/SNUtils;->showSNAlertDialog(Landroid/content/Context;I)V

    goto :goto_0

    .line 311
    .end local v0           #e:Lcom/htc/socialnetwork/SocialNetworkException;
    .end local v2           #result:Ljava/lang/String;
    :cond_0
    const-string v2, "0"

    goto :goto_0

    .line 314
    .end local v1           #helper:Lcom/htc/socialnetwork/SocialNetworkDataHelper;
    :cond_1
    const-string v2, "0"

    goto :goto_0
.end method

.method public static getActiveUserName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "service"

    .prologue
    const/4 v2, 0x0

    .line 324
    invoke-static {p0, p1}, Lcom/android/htccontacts/util/SNUtils;->getSocialNetworkClient(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/socialnetwork/SocialNetworkClient;

    move-result-object v0

    .line 325
    .local v0, client:Lcom/htc/socialnetwork/SocialNetworkClient;
    if-nez v0, :cond_0

    .line 335
    :goto_0
    return-object v2

    .line 329
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/htc/socialnetwork/SocialNetworkClient;->getDataHelper()Lcom/htc/socialnetwork/SocialNetworkDataHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->getActiveUserName()Ljava/lang/String;
    :try_end_0
    .catch Lcom/htc/socialnetwork/SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 330
    .local v2, userName:Ljava/lang/String;
    goto :goto_0

    .line 331
    .end local v2           #userName:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 332
    .local v1, e:Lcom/htc/socialnetwork/SocialNetworkException;
    sget-object v3, Lcom/android/htccontacts/util/SNUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getActiveUserName("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/htc/socialnetwork/SocialNetworkException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-virtual {v1}, Lcom/htc/socialnetwork/SocialNetworkException;->getErrorCode()I

    move-result v3

    invoke-static {p0, v3}, Lcom/android/htccontacts/util/SNUtils;->showSNAlertDialog(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public static getEventDaysTimeBySettings(Landroid/content/Context;J)J
    .locals 8
    .parameter "context"
    .parameter "currentTime"

    .prologue
    const/16 v7, 0x3b

    .line 1170
    sget-object v3, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    if-nez v3, :cond_0

    .line 1171
    invoke-static {p0}, Lcom/android/htccontacts/util/SNUtils;->initUtils(Landroid/content/Context;)V

    .line 1174
    :cond_0
    sget-object v3, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "show_events_within_days"

    sget-object v6, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    iget v6, v6, Lcom/android/htccontacts/util/SNUtils;->mEventDisplaySettingsDays:I

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/android/htccontacts/util/SNUtils;->mEventDisplaySettingsDays:I

    .line 1177
    const-wide/32 v3, 0x5265c00

    sget-object v5, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    iget v5, v5, Lcom/android/htccontacts/util/SNUtils;->mEventDisplaySettingsDays:I

    int-to-long v5, v5

    mul-long/2addr v3, v5

    add-long v1, p1, v3

    .line 1178
    .local v1, endTime:J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1179
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1180
    const/16 v3, 0xb

    const/16 v4, 0x17

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 1181
    const/16 v3, 0xc

    invoke-virtual {v0, v3, v7}, Ljava/util/Calendar;->set(II)V

    .line 1182
    const/16 v3, 0xd

    invoke-virtual {v0, v3, v7}, Ljava/util/Calendar;->set(II)V

    .line 1183
    const/16 v3, 0xe

    const/16 v4, 0x3e7

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 1184
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    return-wide v3
.end method

.method public static getFacebookProfileUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "userId"

    .prologue
    .line 439
    invoke-static {p0}, Lcom/android/htccontacts/util/SNUtils;->getFacebookProfileUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, url:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 441
    const/4 v1, 0x0

    .line 443
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public static getFacebookProfileUrlString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "userId"

    .prologue
    .line 418
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 419
    const/4 v2, 0x0

    .line 431
    :cond_0
    :goto_0
    return-object v2

    .line 421
    :cond_1
    const-string v3, "http://m.facebook.com/profile.php?id=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 422
    .local v2, url:Ljava/lang/String;
    sget-object v3, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    if-eqz v3, :cond_0

    .line 424
    :try_start_0
    sget-object v3, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    iget-object v3, v3, Lcom/android/htccontacts/util/SNUtils;->mSNClients:Ljava/util/HashMap;

    const-string v4, "facebook"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/socialnetwork/SocialNetworkClient;

    .line 425
    .local v0, client:Lcom/htc/socialnetwork/SocialNetworkClient;
    invoke-virtual {v0, v2}, Lcom/htc/socialnetwork/SocialNetworkClient;->deepLink(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/htc/socialnetwork/SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 426
    goto :goto_0

    .line 427
    .end local v0           #client:Lcom/htc/socialnetwork/SocialNetworkClient;
    :catch_0
    move-exception v1

    .line 428
    .local v1, e:Lcom/htc/socialnetwork/SocialNetworkException;
    sget-object v3, Lcom/android/htccontacts/util/SNUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SocialNetworkException - url: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/htc/socialnetwork/SocialNetworkException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getFacebookUpdateStatusIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, result:Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0           #result:Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 218
    .restart local v0       #result:Landroid/content/Intent;
    const-string v1, "com.htc.htcnew"

    const-string v2, "com.htc.htcnew.UpdateStatusPage"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    const-string v1, "FROM"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 220
    return-object v0
.end method

.method public static getLastAlbunUpdateCacheIconTime(J)J
    .locals 2
    .parameter "userid"

    .prologue
    .line 946
    sget-object v0, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    iget-object v0, v0, Lcom/android/htccontacts/util/SNUtils;->mImageCacheManager:Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;

    invoke-virtual {v0, p0, p1}, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->getLastUpdateAlbumIconTime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLastFriendUpdateCacheIconTime(J)J
    .locals 2
    .parameter "userid"

    .prologue
    .line 942
    sget-object v0, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    iget-object v0, v0, Lcom/android/htccontacts/util/SNUtils;->mImageCacheManager:Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;

    invoke-virtual {v0, p0, p1}, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->getLastUpdateFriendIconTime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getOpenBrowser2FacebookProfileIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .parameter "userId"

    .prologue
    const/4 v0, 0x0

    .line 462
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 473
    :cond_0
    :goto_0
    return-object v0

    .line 463
    :cond_1
    invoke-static {p0}, Lcom/android/htccontacts/util/SNUtils;->getFacebookProfileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 464
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 467
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 468
    .local v0, result:Landroid/content/Intent;
    const-string v2, "com.android.browser"

    const-string v3, "com.android.browser.BrowserActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 469
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 470
    const/high16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 471
    const/high16 v2, 0x4000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 472
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static getSocialNetworkClient(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/socialnetwork/SocialNetworkClient;
    .locals 2
    .parameter "context"
    .parameter "serviceName"

    .prologue
    .line 157
    sget-object v1, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    if-nez v1, :cond_0

    .line 158
    invoke-static {p0}, Lcom/android/htccontacts/util/SNUtils;->initUtils(Landroid/content/Context;)V

    .line 160
    :cond_0
    sget-object v1, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    iget-object v1, v1, Lcom/android/htccontacts/util/SNUtils;->mSNClients:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/socialnetwork/SocialNetworkClient;

    .line 161
    .local v0, client:Lcom/htc/socialnetwork/SocialNetworkClient;
    if-nez v0, :cond_1

    .line 164
    :cond_1
    return-object v0
.end method

.method public static getSocialNetworkDataHelper(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/socialnetwork/SocialNetworkDataHelper;
    .locals 2
    .parameter "context"
    .parameter "serviceName"

    .prologue
    .line 387
    sget-object v1, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    if-nez v1, :cond_0

    .line 388
    invoke-static {p0}, Lcom/android/htccontacts/util/SNUtils;->initUtils(Landroid/content/Context;)V

    .line 390
    :cond_0
    sget-object v1, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    iget-object v1, v1, Lcom/android/htccontacts/util/SNUtils;->mSNDataHelpers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;

    .line 391
    .local v0, helper:Lcom/htc/socialnetwork/SocialNetworkDataHelper;
    if-nez v0, :cond_1

    .line 395
    :cond_1
    return-object v0
.end method

.method public static getSocialNetworkOnlineAlbumIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 8
    .parameter "serviceType"
    .parameter "UserId"

    .prologue
    .line 1099
    const-string v3, "com.htc.HTCAlbum.ONLINE_ALBUM"

    .line 1100
    .local v3, ONLINE_ALBUM:Ljava/lang/String;
    const-string v0, "albumId"

    .line 1101
    .local v0, KEY_ALBUM_ID:Ljava/lang/String;
    const-string v4, "com.htc.album.recent_photos"

    .line 1102
    .local v4, RECENT_PHOTOS_AID:Ljava/lang/String;
    const-string v1, "servicetype"

    .line 1103
    .local v1, KEY_SERVICE_TYPE:Ljava/lang/String;
    const-string v2, "itemId"

    .line 1105
    .local v2, KEY_USER_ID:Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.htc.HTCAlbum.ONLINE_ALBUM"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1106
    .local v5, intent_t:Landroid/content/Intent;
    const-string v6, "albumId"

    const-string v7, "com.htc.album.recent_photos"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1107
    const-string v6, "servicetype"

    invoke-virtual {v5, v6, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1108
    const-string v6, "itemId"

    invoke-virtual {v5, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1109
    const-string v6, "com.htc.album"

    const-string v7, "com.htc.album.MainActivity"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1110
    return-object v5
.end method

.method public static getUserAlbumFilepath(J)Ljava/lang/String;
    .locals 10
    .parameter "rowId"

    .prologue
    .line 885
    const/4 v3, 0x0

    .line 887
    .local v3, result:Ljava/lang/String;
    sget-object v0, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    iget-object v0, v0, Lcom/android/htccontacts/util/SNUtils;->mUserAlbumFilepathCache:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 888
    sget-object v0, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    iget-object v0, v0, Lcom/android/htccontacts/util/SNUtils;->mUserAlbumFilepathCache:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/htccontacts/util/SNUtils$CacheInfo;

    .line 889
    .local v7, info:Lcom/android/htccontacts/util/SNUtils$CacheInfo;
    if-eqz v7, :cond_0

    .line 890
    iget-object v3, v7, Lcom/android/htccontacts/util/SNUtils$CacheInfo;->photo_path:Ljava/lang/String;

    .line 896
    .end local v7           #info:Lcom/android/htccontacts/util/SNUtils$CacheInfo;
    :cond_0
    sget-object v0, Lcom/android/htccontacts/util/SNUtils;->TAG:Ljava/lang/String;

    const-string v1, "\n-----------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    sget-object v0, Lcom/android/htccontacts/util/SNUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUserAlbumFilepath (memory): rowId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    if-nez v3, :cond_1

    .line 902
    sget-object v0, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    iget-object v0, v0, Lcom/android/htccontacts/util/SNUtils;->mImageCacheManager:Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;

    invoke-virtual {v0, p0, p1}, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->getAlbumCachePath(J)Ljava/lang/String;

    move-result-object v3

    .line 903
    sget-object v0, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    iget-object v8, v0, Lcom/android/htccontacts/util/SNUtils;->mUserAlbumFilepathCache:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    new-instance v0, Lcom/android/htccontacts/util/SNUtils$CacheInfo;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-wide v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/htccontacts/util/SNUtils$CacheInfo;-><init>(JLjava/lang/String;IJ)V

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    :cond_1
    sget-object v0, Lcom/android/htccontacts/util/SNUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUserAlbumFilepath (database): rowId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/com.android.htccontacts/cache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserAlbumUpdateTime(J)J
    .locals 5
    .parameter "rowId"

    .prologue
    const-wide/16 v1, 0x0

    .line 199
    sget-object v3, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    if-nez v3, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-wide v1

    .line 202
    :cond_1
    sget-object v3, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    iget-object v3, v3, Lcom/android/htccontacts/util/SNUtils;->mAlbumUpdateTimeCache:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 203
    .local v0, value:Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0
.end method

.method public static getUserPhotoFilepath(J)Ljava/lang/String;
    .locals 10
    .parameter "rowId"

    .prologue
    .line 844
    const/4 v3, 0x0

    .line 846
    .local v3, result:Ljava/lang/String;
    sget-object v0, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    iget-object v0, v0, Lcom/android/htccontacts/util/SNUtils;->mUserPhotoFilepathCache:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 847
    sget-object v0, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    iget-object v0, v0, Lcom/android/htccontacts/util/SNUtils;->mUserPhotoFilepathCache:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/htccontacts/util/SNUtils$CacheInfo;

    .line 848
    .local v7, info:Lcom/android/htccontacts/util/SNUtils$CacheInfo;
    if-eqz v7, :cond_0

    .line 849
    iget-object v3, v7, Lcom/android/htccontacts/util/SNUtils$CacheInfo;->photo_path:Ljava/lang/String;

    .line 855
    .end local v7           #info:Lcom/android/htccontacts/util/SNUtils$CacheInfo;
    :cond_0
    sget-object v0, Lcom/android/htccontacts/util/SNUtils;->TAG:Ljava/lang/String;

    const-string v1, "\n-----------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    sget-object v0, Lcom/android/htccontacts/util/SNUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUserPhotoFilepath (memory): rowId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    if-nez v3, :cond_1

    .line 861
    sget-object v0, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    iget-object v0, v0, Lcom/android/htccontacts/util/SNUtils;->mImageCacheManager:Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;

    invoke-virtual {v0, p0, p1}, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->getFriendCachePath(J)Ljava/lang/String;

    move-result-object v3

    .line 862
    sget-object v0, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    iget-object v8, v0, Lcom/android/htccontacts/util/SNUtils;->mUserPhotoFilepathCache:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    new-instance v0, Lcom/android/htccontacts/util/SNUtils$CacheInfo;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-wide v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/htccontacts/util/SNUtils$CacheInfo;-><init>(JLjava/lang/String;IJ)V

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    :cond_1
    sget-object v0, Lcom/android/htccontacts/util/SNUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUserPhotoFilepath (database): rowId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/com.android.htccontacts/cache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWatchFlickrStatusIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .parameter "url"

    .prologue
    .line 344
    const/4 v0, 0x0

    .line 345
    .local v0, result:Landroid/content/Intent;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 346
    new-instance v0, Landroid/content/Intent;

    .end local v0           #result:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 347
    .restart local v0       #result:Landroid/content/Intent;
    const-string v2, "com.android.browser"

    const-string v3, "com.android.browser.BrowserActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 350
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 351
    const/high16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 352
    const/high16 v2, 0x4000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 353
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 356
    .end local v1           #uri:Landroid/net/Uri;
    :cond_0
    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/htccontacts/util/SNUtils;->mSNClients:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/util/SNUtils;->mSNClients:Ljava/util/HashMap;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/util/SNUtils;->mSNDataHelpers:Ljava/util/HashMap;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/util/SNUtils;->mUserPhotoFilepathCache:Ljava/util/HashMap;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/util/SNUtils;->mUserAlbumFilepathCache:Ljava/util/HashMap;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/util/SNUtils;->mAlbumUpdateTimeCache:Ljava/util/HashMap;

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/util/SNUtils;->mAppCacheDir:Ljava/lang/String;

    .line 107
    new-instance v0, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;

    invoke-direct {v0, p1}, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/util/SNUtils;->mImageCacheManager:Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;

    .line 108
    iget-object v0, p0, Lcom/android/htccontacts/util/SNUtils;->mImageCacheManager:Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;

    invoke-virtual {v0}, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->loadDatabase()Z

    .line 141
    :cond_0
    return-void
.end method

.method public static declared-synchronized initUtils(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 144
    const-class v1, Lcom/android/htccontacts/util/SNUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Lcom/android/htccontacts/util/SNUtils;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/util/SNUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :cond_0
    monitor-exit v1

    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isSNAlbumNeedUpdate(J)Z
    .locals 3
    .parameter "userid"

    .prologue
    .line 933
    sget-object v1, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    iget-object v1, v1, Lcom/android/htccontacts/util/SNUtils;->mUserAlbumFilepathCache:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/util/SNUtils$CacheInfo;

    .line 934
    .local v0, info:Lcom/android/htccontacts/util/SNUtils$CacheInfo;
    if-eqz v0, :cond_1

    .line 935
    iget v1, v0, Lcom/android/htccontacts/util/SNUtils$CacheInfo;->update:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    .line 937
    :goto_0
    return v1

    .line 935
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 937
    :cond_1
    sget-object v1, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    iget-object v1, v1, Lcom/android/htccontacts/util/SNUtils;->mImageCacheManager:Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;

    #calls: Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->isNeedAlbumUpdate(J)Z
    invoke-static {v1, p0, p1}, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->access$500(Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;J)Z

    move-result v1

    goto :goto_0
.end method

.method public static isSNFriendNeedUpdate(J)Z
    .locals 3
    .parameter "userid"

    .prologue
    .line 925
    sget-object v1, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    iget-object v1, v1, Lcom/android/htccontacts/util/SNUtils;->mUserPhotoFilepathCache:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/util/SNUtils$CacheInfo;

    .line 926
    .local v0, info:Lcom/android/htccontacts/util/SNUtils$CacheInfo;
    if-eqz v0, :cond_1

    .line 927
    iget v1, v0, Lcom/android/htccontacts/util/SNUtils$CacheInfo;->update:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    .line 929
    :goto_0
    return v1

    .line 927
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 929
    :cond_1
    sget-object v1, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    iget-object v1, v1, Lcom/android/htccontacts/util/SNUtils;->mImageCacheManager:Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;

    #calls: Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->isNeedFriendUpdate(J)Z
    invoke-static {v1, p0, p1}, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->access$400(Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;J)Z

    move-result v1

    goto :goto_0
.end method

.method public static launchAccountManager(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .parameter "activity"
    .parameter "service"

    .prologue
    .line 173
    invoke-static {p0, p1}, Lcom/android/htccontacts/util/SNUtils;->getSocialNetworkClient(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/socialnetwork/SocialNetworkClient;

    move-result-object v0

    .line 174
    .local v0, client:Lcom/htc/socialnetwork/SocialNetworkClient;
    if-nez v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-virtual {v0, p0}, Lcom/htc/socialnetwork/SocialNetworkClient;->launchAccountManager(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public static launchAccountManager(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "service"

    .prologue
    .line 405
    invoke-static {p0, p1}, Lcom/android/htccontacts/util/SNUtils;->getSocialNetworkClient(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/socialnetwork/SocialNetworkClient;

    move-result-object v0

    .line 406
    .local v0, client:Lcom/htc/socialnetwork/SocialNetworkClient;
    if-nez v0, :cond_0

    .line 410
    :goto_0
    return-void

    .line 409
    :cond_0
    invoke-virtual {v0}, Lcom/htc/socialnetwork/SocialNetworkClient;->launchAccountManager()V

    goto :goto_0
.end method

.method public static setEventDaysTimeSettingsDirty(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 1188
    sget-object v0, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    if-nez v0, :cond_0

    .line 1189
    invoke-static {p0}, Lcom/android/htccontacts/util/SNUtils;->initUtils(Landroid/content/Context;)V

    .line 1191
    :cond_0
    sget-object v0, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/htccontacts/util/SNUtils;->mIsEventDisplaySettingsDirty:Z

    .line 1192
    return-void
.end method

.method public static setSNPhotoUpdateStatusRead(Landroid/content/Context;J)V
    .locals 5
    .parameter "context"
    .parameter "albumId"

    .prologue
    .line 1134
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1135
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "is_read"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1136
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/htc/socialnetwork/Photo;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "aid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1138
    return-void
.end method

.method public static setSNProfileUpdateStatusRead(Landroid/content/Context;J)V
    .locals 5
    .parameter "context"
    .parameter "profileId"

    .prologue
    .line 1121
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1122
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "is_read"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1123
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/htc/socialnetwork/ProfileUpdate;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1125
    return-void
.end method

.method public static setUpdateAlbumCache(JZ)V
    .locals 1
    .parameter "userid"
    .parameter "toUpdate"

    .prologue
    .line 920
    sget-object v0, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    iget-object v0, v0, Lcom/android/htccontacts/util/SNUtils;->mImageCacheManager:Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->setAlbumHasUpdate(JZ)V

    .line 921
    return-void
.end method

.method public static setUpdateFriendCache(JZ)V
    .locals 1
    .parameter "userid"
    .parameter "toUpdate"

    .prologue
    .line 916
    sget-object v0, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    iget-object v0, v0, Lcom/android/htccontacts/util/SNUtils;->mImageCacheManager:Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/htccontacts/util/SNUtils$SocailNetworkImageCacheManager;->setFriendHasUpdate(JZ)V

    .line 917
    return-void
.end method

.method public static showSNAlertDialog(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "errorCode"

    .prologue
    .line 236
    const/16 v1, 0x7df

    if-eq p1, v1, :cond_0

    .line 238
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 239
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.htccontacts"

    const-string v2, "com.android.htccontacts.HtcSnAlertDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    const-string v1, "error"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 241
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 243
    const-string v1, "showSNAlertDialog"

    invoke-static {v1}, Lcom/android/htccontacts/util/SNUtils;->traceDebug(Ljava/lang/String;)V

    .line 247
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private static traceDebug(Ljava/lang/String;)V
    .locals 9
    .parameter "checkTag"

    .prologue
    .line 249
    sget-object v6, Lcom/android/htccontacts/util/SNUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "################## traceDebug START: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :try_start_0
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :catch_0
    move-exception v1

    .line 253
    .local v1, e:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 254
    .local v3, elems:[Ljava/lang/StackTraceElement;
    if-eqz v3, :cond_0

    .line 255
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/StackTraceElement;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 256
    .local v2, el:Ljava/lang/StackTraceElement;
    sget-object v6, Lcom/android/htccontacts/util/SNUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 260
    .end local v0           #arr$:[Ljava/lang/StackTraceElement;
    .end local v2           #el:Ljava/lang/StackTraceElement;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_0
    sget-object v6, Lcom/android/htccontacts/util/SNUtils;->TAG:Ljava/lang/String;

    const-string v7, "################## traceDebug END"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return-void
.end method
