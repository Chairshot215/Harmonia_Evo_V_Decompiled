.class public final Lcom/htc/util/contacts/SNLinkUtils;
.super Ljava/lang/Object;
.source "SNLinkUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/contacts/SNLinkUtils$NewMethod;,
        Lcom/htc/util/contacts/SNLinkUtils$OldMethod;,
        Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final FACEBOOK_LOGIN_MIMETYPE:Ljava/lang/String; = "com.htc.socialnetwork.facebook/login"

.field public static final FACEBOOK_LOGIN_ORI_MIMETYPE:Ljava/lang/String; = "com.facebook.auth.login/login"

.field public static final FLICKR_LOGIN_MIMETYPE:Ljava/lang/String; = "com.htc.socialnetwork.flickr/login"

.field private static final FRIENDOF_TAG:Ljava/lang/String; = "friendof:"

.field private static final ID_TAG:Ljava/lang/String; = "id:"

.field public static final KAIXIN_LOGIN_MIMETYPE:Ljava/lang/String; = "com.htc.KaixinFriendStream/login"

.field public static final LINK_NOTE_LIMIT:I = 0x14

.field public static final PLURK_LOGIN_MIMETYPE:Ljava/lang/String; = "com.htc.socialnetwork.plurk/login"

.field public static final QQIM_LOGIN_MIMETYPE:Ljava/lang/String; = "com.htc.socialnetwork.qqim/login"

.field public static final QQWEIBO_LOGIN_MIMETYPE:Ljava/lang/String; = "com.htc.socialnetwork.qqweibo/login"

.field public static final QZONE_LOGIN_MIMETYPE:Ljava/lang/String; = "com.htc.socialnetwork.chinasns/login"

.field public static final RENREN_LOGIN_MIMETYPE:Ljava/lang/String; = "com.htc.friendstream.renrenwebplugin/login"

.field public static final SINAWEIBO_LOGIN_MIMETYPE:Ljava/lang/String; = "com.htc.friendstream.sinaweiboplugin/login"

.field private static final TAG:Ljava/lang/String; = "SNLinkUtils"

.field public static final TWITTER_LOGIN_MIMETYPE:Ljava/lang/String; = "com.htc.htctwitter/login"

.field public static final TYPE_FACEBOOK:Ljava/lang/String; = "facebook"

.field public static final TYPE_FACEBOOK_SSO:Ljava/lang/String; = "facebook sso"

.field public static final TYPE_FLICKR:Ljava/lang/String; = "flickr"

.field public static final TYPE_PLURK:Ljava/lang/String; = "plurk"

.field public static final TYPE_TWITTER:Ljava/lang/String; = "twitter"

.field private static final mCachedLoginIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public static appendLinkData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/htc/util/contacts/SNLinkUtils;->transferToNewFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->appendLinkData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static extractLinkData(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/htc/util/contacts/SNLinkUtils$OldMethod;->extractLinkData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {p0}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->extractLinkData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v1, :cond_1

    move-object v1, v0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    if-eqz v0, :cond_0

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static findPositionByUserId(Ljava/util/List;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 v3, -0x1

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;

    iget-object v4, v1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method public static getLoginIdOfSNAccount(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSNType(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p0
.end method

.method public static isSNContacts(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "com.htc.socialnetwork.facebook"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.facebook.auth.login"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.socialnetwork.flickr"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.socialnetwork.plurk"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.htctwitter"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.friendstream.sinaweiboplugin"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.socialnetwork.qqim"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.socialnetwork.qqweibo"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.socialnetwork.chinasns"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.KaixinFriendStream"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.friendstream.renrenwebplugin"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSNFacebookLogin()Z
    .locals 2

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.socialnetwork.facebook"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.facebook.auth.login"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSNFlickrLogin()Z
    .locals 2

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.socialnetwork.flickr"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSNKaixinLogin()Z
    .locals 2

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.KaixinFriendStream"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSNLogin()Z
    .locals 1

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSNPlurkLogin()Z
    .locals 2

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.socialnetwork.plurk"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSNQQIMLogin()Z
    .locals 2

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.socialnetwork.qqim"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSNQQWeiboLogin()Z
    .locals 2

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.socialnetwork.qqweibo"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSNQZoneLogin()Z
    .locals 2

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.socialnetwork.chinasns"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSNRenrenLogin()Z
    .locals 2

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.friendstream.renrenwebplugin"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSNSinaLogin()Z
    .locals 2

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.friendstream.sinaweiboplugin"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSNTwitterLogin()Z
    .locals 2

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.htctwitter"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSyncContacts(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "com.google"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.android.mail.eas"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.android.exchange"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.android.pcsc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static removeLinkData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/htc/util/contacts/SNLinkUtils;->transferToNewFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->removeLinkData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static removeLoginId(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static setLoginId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "SNLinkUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLoginId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static setLoginIdForSNAcoount(Landroid/content/Context;)V
    .locals 10

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const-string v3, "mimetype = com.htc.socialnetwork.facebook/login OR mimetype = com.facebook.auth.login/login OR mimetype = com.htc.socialnetwork.flickr/login OR mimetype = com.htc.socialnetwork.plurk/login OR mimetype = com.htc.htctwitter/login OR mimetype = com.htc.friendstream.sinaweiboplugin/login OR mimetype = com.htc.socialnetwork.qqim/login OR mimetype = com.htc.socialnetwork.qqweibo/login OR mimetype = com.htc.socialnetwork.chinasns/login OR mimetype = com.htc.KaixinFriendStream/login OR mimetype = com.htc.friendstream.renrenwebplugin/login"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/provider/HtcContactsContract$Data;->CONTENT_URI_DATA_ONLY:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "mimetype"

    aput-object v5, v2, v9

    const-string v5, "data1"

    aput-object v5, v2, v8

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_c

    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v0, "com.htc.socialnetwork.facebook/login"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.socialnetwork.facebook"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v0, "com.facebook.auth.login/login"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.facebook.auth.login"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string v0, "com.htc.socialnetwork.flickr/login"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.socialnetwork.flickr"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const-string v0, "com.htc.socialnetwork.plurk/login"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.socialnetwork.plurk"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    const-string v0, "com.htc.htctwitter/login"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.htctwitter"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    const-string v0, "com.htc.friendstream.sinaweiboplugin/login"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.friendstream.sinaweiboplugin"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_6
    const-string v0, "com.htc.socialnetwork.qqim/login"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.socialnetwork.qqim"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_7
    const-string v0, "com.htc.socialnetwork.qqweibo/login"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.socialnetwork.qqweibo"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_8
    const-string v0, "com.htc.socialnetwork.chinasns/login"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.socialnetwork.chinasns"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_9
    const-string v0, "com.htc.KaixinFriendStream/login"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.KaixinFriendStream"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_a
    const-string v0, "com.htc.friendstream.renrenwebplugin/login"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.friendstream.renrenwebplugin"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_c
    return-void
.end method

.method public static transferToNewFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 17

    const/4 v9, 0x0

    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string v15, "<sn>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const-string v15, "</sn>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const-string v15, "<HTCData>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const-string v15, "</HTCData>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-lt v5, v12, :cond_2

    if-ge v4, v11, :cond_5

    :cond_2
    if-le v12, v11, :cond_4

    move v8, v12

    :goto_1
    if-lez v8, :cond_3

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    :cond_3
    move-object/from16 p0, v9

    goto :goto_0

    :cond_4
    move v8, v11

    goto :goto_1

    :cond_5
    const-string v15, "<sn>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const-string v15, "</sn>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-lt v3, v10, :cond_0

    const/4 v15, -0x1

    if-eq v10, v15, :cond_0

    const/4 v15, -0x1

    if-eq v3, v15, :cond_0

    const-string v15, "<sn>"

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v15, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    new-instance v6, Ljava/util/StringTokenizer;

    const-string v15, "|"

    invoke-direct {v6, v13, v15}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_6
    :goto_2
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v15, v7

    const/16 v16, 0x2

    move/from16 v0, v16

    if-lt v15, v0, :cond_6

    const/4 v15, 0x0

    aget-object v15, v7, v15

    const-string v16, "id:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    const/4 v15, 0x1

    aget-object v15, v7, v15

    const-string v16, "friendof:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    new-instance v1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;

    invoke-direct {v1}, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;-><init>()V

    const/4 v15, 0x0

    aget-object v15, v7, v15

    const-string v16, "id:"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    const/4 v15, 0x1

    aget-object v15, v7, v15

    const-string v16, "friendof:"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    iget-object v15, v1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    const-string v16, "@"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_7

    iget-object v15, v1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    const-string v16, "@"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_7

    const-string v15, "com.htc.socialnetwork.flickr"

    iput-object v15, v1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    :goto_3
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    const-string v15, "com.htc.socialnetwork.facebook"

    iput-object v15, v1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    goto :goto_3

    :cond_8
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v15}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->setLinkData(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v9

    move-object/from16 p0, v9

    goto/16 :goto_0
.end method
