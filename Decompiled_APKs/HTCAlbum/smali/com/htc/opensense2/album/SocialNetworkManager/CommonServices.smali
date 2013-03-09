.class public Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;
.super Ljava/lang/Object;
.source "CommonServices.java"


# static fields
.field public static final FACEBOOK:I = 0x0

.field public static final FACEBOOK_HTC:I = 0x2

.field public static final FEATURE_GALLERY:Ljava/lang/String; = "SupportGallery"

.field public static final FLICKR:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final RENREN:I = 0x3

.field public static final SERVICES_SUPPORTED:[Ljava/lang/String; = null

.field public static final SERVICES_URL:[Ljava/lang/String; = null

.field public static final SHARE_INTENT_SERVICES_URL:[Ljava/lang/String; = null

.field public static final SINA:I = 0x4

.field public static final UNKONWN:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    const-class v0, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->LOG_TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "facebook"

    aput-object v1, v0, v2

    const-string v1, "flickr"

    aput-object v1, v0, v3

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, "renren"

    aput-object v1, v0, v5

    const-string v1, "sina"

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    .line 31
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.facebook.auth.login"

    aput-object v1, v0, v2

    const-string v1, "com.htc.socialnetwork.flickr"

    aput-object v1, v0, v3

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, "com.htc.friendstream.renrenwebplugin"

    aput-object v1, v0, v5

    const-string v1, "com.htc.friendstream.sinaweiboplugin"

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    .line 37
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.facebook.auth.login"

    aput-object v1, v0, v2

    const-string v1, "com.htc.socialnetwork.flickr"

    aput-object v1, v0, v3

    const-string v1, "com.htc.socialnetwork.facebook"

    aput-object v1, v0, v4

    const-string v1, "com.htc.friendstream.renrenwebplugin"

    aput-object v1, v0, v5

    const-string v1, "com.htc.friendstream.sinaweiboplugin"

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SHARE_INTENT_SERVICES_URL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static scan4ServiceShareIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 11
    .parameter "context"
    .parameter "szService"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 47
    const/4 v1, 0x0

    .line 48
    .local v1, intent:Landroid/content/Intent;
    const/4 v3, 0x0

    .line 49
    .local v3, intentQuery:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 51
    .local v0, actList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v2, v1

    .line 91
    .end local v1           #intent:Landroid/content/Intent;
    .local v2, intent:Landroid/content/Intent;
    :goto_0
    return-object v2

    .line 55
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 56
    .local v5, pm:Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intentQuery:Landroid/content/Intent;
    const-string v7, "htc.intent.action.SEND_MULTIPLE"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .restart local v3       #intentQuery:Landroid/content/Intent;
    const-string v7, "image/*"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const/high16 v7, 0x1

    invoke-virtual {v5, v3, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v2, v1

    .line 61
    .end local v1           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 63
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_2
    const/4 v6, 0x0

    .line 66
    .local v6, resolveInfo:Landroid/content/pm/ResolveInfo;
    const/4 v4, 0x0

    .local v4, nIndex:I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v4, :cond_6

    .line 68
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #resolveInfo:Landroid/content/pm/ResolveInfo;
    check-cast v6, Landroid/content/pm/ResolveInfo;

    .restart local v6       #resolveInfo:Landroid/content/pm/ResolveInfo;
    if-nez v6, :cond_4

    .line 66
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 71
    :cond_4
    sget-object v7, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v7, v7, v9

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 73
    sget-object v7, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SHARE_INTENT_SERVICES_URL:[Ljava/lang/String;

    aget-object v7, v7, v9

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    sget-object v7, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SHARE_INTENT_SERVICES_URL:[Ljava/lang/String;

    const/4 v8, 0x2

    aget-object v7, v7, v8

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 77
    :cond_5
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 78
    .restart local v1       #intent:Landroid/content/Intent;
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_6
    :goto_2
    move-object v2, v1

    .line 91
    .end local v1           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 81
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_7
    sget-object v7, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v7, v7, v10

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 83
    sget-object v7, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SHARE_INTENT_SERVICES_URL:[Ljava/lang/String;

    aget-object v7, v7, v10

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 86
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 87
    .restart local v1       #intent:Landroid/content/Intent;
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_2
.end method
