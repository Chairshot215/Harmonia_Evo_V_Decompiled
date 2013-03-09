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
.field private static final DEBUG:Z = true

.field public static final FACEBOOK_LOGIN_MIMETYPE:Ljava/lang/String; = "com.htc.socialnetwork.facebook/login"

.field public static final FACEBOOK_LOGIN_ORI_MIMETYPE:Ljava/lang/String; = "com.facebook.auth.login/login"

.field public static final FLICKR_LOGIN_MIMETYPE:Ljava/lang/String; = "com.htc.socialnetwork.flickr/login"

.field private static final FRIENDOF_TAG:Ljava/lang/String; = "friendof:"

.field private static final ID_TAG:Ljava/lang/String; = "id:"

.field public static final LINK_NOTE_LIMIT:I = 0x14

.field public static final PLURK_LOGIN_MIMETYPE:Ljava/lang/String; = "com.htc.socialnetwork.plurk/login"

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

    .prologue
    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 49
    :cond_0
    return-void
.end method

.method public static appendLinkData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "text"
    .parameter "userId"
    .parameter "friendOf"
    .parameter "type"

    .prologue
    .line 253
    invoke-static {p0}, Lcom/htc/util/contacts/SNLinkUtils;->transferToNewFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, newText:Ljava/lang/String;
    invoke-static {v0, p1, p2, p3}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->appendLinkData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static extractLinkData(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter "data"
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

    .prologue
    .line 236
    invoke-static {p0}, Lcom/htc/util/contacts/SNLinkUtils$OldMethod;->extractLinkData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 237
    .local v1, list_old:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    invoke-static {p0}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->extractLinkData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 238
    .local v0, list_new:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    if-nez v1, :cond_1

    move-object v1, v0

    .line 248
    .end local v1           #list_old:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    :cond_0
    :goto_0
    return-object v1

    .line 240
    .restart local v1       #list_old:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    :cond_1
    if-eqz v0, :cond_0

    .line 242
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 243
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 248
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static findPositionByUserId(Ljava/util/List;Ljava/lang/String;)I
    .locals 5
    .parameter
    .parameter "userId"
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

    .prologue
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    const/4 v3, -0x1

    .line 73
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v2, v3

    .line 81
    :cond_1
    :goto_0
    return v2

    .line 75
    :cond_2
    const/4 v2, 0x0

    .line 76
    .local v2, pos:I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;

    .line 77
    .local v1, l:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    iget-object v4, v1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1           #l:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    :cond_3
    move v2, v3

    .line 81
    goto :goto_0
.end method

.method public static getLoginIdOfSNAccount(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "AccountType"

    .prologue
    .line 125
    if-eqz p0, :cond_0

    const-string v0, "com.htc.socialnetwork.facebook"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "facebook"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 141
    :goto_0
    return-object v0

    .line 128
    :cond_0
    if-eqz p0, :cond_1

    const-string v0, "com.facebook.auth.login"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "facebook sso"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 131
    :cond_1
    if-eqz p0, :cond_2

    const-string v0, "com.htc.socialnetwork.flickr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "flickr"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 134
    :cond_2
    if-eqz p0, :cond_3

    const-string v0, "com.htc.socialnetwork.plurk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 135
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "plurk"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 137
    :cond_3
    if-eqz p0, :cond_4

    const-string v0, "com.htc.htctwitter"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 138
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "twitter"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 141
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSNType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "AccountType"

    .prologue
    .line 215
    if-eqz p0, :cond_0

    const-string v0, "com.htc.socialnetwork.facebook"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    const-string v0, "facebook"

    .line 230
    :goto_0
    return-object v0

    .line 218
    :cond_0
    if-eqz p0, :cond_1

    const-string v0, "com.facebook.auth.login"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    const-string v0, "facebook sso"

    goto :goto_0

    .line 221
    :cond_1
    if-eqz p0, :cond_2

    const-string v0, "com.htc.socialnetwork.flickr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 222
    const-string v0, "flickr"

    goto :goto_0

    .line 224
    :cond_2
    if-eqz p0, :cond_3

    const-string v0, "com.htc.socialnetwork.plurk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 225
    const-string v0, "plurk"

    goto :goto_0

    .line 227
    :cond_3
    if-eqz p0, :cond_4

    const-string v0, "com.htc.htctwitter"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 228
    const-string v0, "twitter"

    goto :goto_0

    .line 230
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSNContacts(Ljava/lang/String;)Z
    .locals 2
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v0

    .line 88
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

    if-eqz v1, :cond_0

    .line 92
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSNFacebookLogin()Z
    .locals 2

    .prologue
    .line 109
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "facebook"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "facebook sso"

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

    .prologue
    .line 113
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "flickr"

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

    .prologue
    .line 106
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

    .prologue
    .line 116
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "plurk"

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

    .prologue
    .line 119
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "twitter"

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
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v0

    .line 99
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

    .line 101
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static removeLinkData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "text"
    .parameter "userId"
    .parameter "friendOf"
    .parameter "type"

    .prologue
    .line 259
    invoke-static {p0}, Lcom/htc/util/contacts/SNLinkUtils;->transferToNewFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, newText:Ljava/lang/String;
    invoke-static {v0, p1, p2, p3}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->removeLinkData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static removeLoginId(Ljava/lang/String;)V
    .locals 2
    .parameter "AccountType"

    .prologue
    .line 165
    if-eqz p0, :cond_1

    const-string v0, "com.htc.socialnetwork.facebook"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "facebook"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    if-eqz p0, :cond_2

    const-string v0, "com.facebook.auth.login"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "facebook sso"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 171
    :cond_2
    if-eqz p0, :cond_3

    const-string v0, "com.htc.socialnetwork.flickr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 172
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "flickr"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 174
    :cond_3
    if-eqz p0, :cond_4

    const-string v0, "com.htc.socialnetwork.plurk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 175
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "plurk"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 177
    :cond_4
    if-eqz p0, :cond_0

    const-string v0, "com.htc.htctwitter"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "twitter"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static setLoginId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "AccountType"
    .parameter "id"

    .prologue
    .line 145
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

    .line 146
    if-eqz p0, :cond_1

    const-string v0, "com.htc.socialnetwork.facebook"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "facebook"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    if-eqz p0, :cond_2

    const-string v0, "com.facebook.auth.login"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "facebook sso"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 152
    :cond_2
    if-eqz p0, :cond_3

    const-string v0, "com.htc.socialnetwork.flickr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 153
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "flickr"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 155
    :cond_3
    if-eqz p0, :cond_4

    const-string v0, "com.htc.socialnetwork.plurk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 156
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "plurk"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 158
    :cond_4
    if-eqz p0, :cond_0

    const-string v0, "com.htc.htctwitter"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "twitter"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static setLoginIdForSNAcoount(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 183
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 185
    const-string v3, "mimetype = com.htc.socialnetwork.facebook/login OR mimetype = com.facebook.auth.login/login OR mimetype = com.htc.socialnetwork.flickr/login OR mimetype = com.htc.socialnetwork.plurk/login OR mimetype = com.htc.htctwitter/login"

    .line 190
    .local v3, selection:Ljava/lang/String;
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

    .line 191
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_6

    .line 192
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 193
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 194
    .local v7, type:Ljava/lang/String;
    const-string v0, "com.htc.socialnetwork.facebook/login"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "facebook"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 197
    :cond_1
    const-string v0, "com.facebook.auth.login/login"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 198
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "facebook sso"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 200
    :cond_2
    const-string v0, "com.htc.socialnetwork.flickr/login"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 201
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "flickr"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 203
    :cond_3
    const-string v0, "com.htc.socialnetwork.plurk/login"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 204
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "plurk"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 206
    :cond_4
    const-string v0, "com.htc.htctwitter/login"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "twitter"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 210
    .end local v7           #type:Ljava/lang/String;
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 212
    :cond_6
    return-void
.end method

.method public static transferToNewFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .parameter "oriText"

    .prologue
    .line 264
    const-string v16, "NOTE"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "oriText: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const/4 v10, 0x0

    .line 267
    .local v10, newText:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 322
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 271
    .restart local p0
    :cond_1
    const-string v16, "<sn>"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 272
    .local v13, startingIndexOld:I
    const-string v16, "</sn>"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 273
    .local v6, endingIndexOld:I
    const-string v16, "<HTCData>"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 274
    .local v12, startingIndexNew:I
    const-string v16, "</HTCData>"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 276
    .local v5, endingIndexNew:I
    if-lt v6, v13, :cond_2

    if-ge v5, v12, :cond_5

    .line 278
    :cond_2
    if-le v13, v12, :cond_4

    move v9, v13

    .line 279
    .local v9, index:I
    :goto_1
    if-lez v9, :cond_3

    .line 280
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 282
    :cond_3
    const-string v16, "NOTE"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "fix the note: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 p0, v10

    .line 283
    goto :goto_0

    .end local v9           #index:I
    :cond_4
    move v9, v12

    .line 278
    goto :goto_1

    .line 287
    :cond_5
    const-string v16, "<sn>"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 288
    .local v11, startingIndex:I
    const-string v16, "</sn>"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 289
    .local v4, endingIndex:I
    if-lt v4, v11, :cond_0

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v11, v0, :cond_0

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v4, v0, :cond_0

    .line 294
    const-string v16, "<sn>"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int v16, v16, v11

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 295
    .local v14, subText:Ljava/lang/String;
    new-instance v7, Ljava/util/StringTokenizer;

    const-string v16, "|"

    move-object/from16 v0, v16

    invoke-direct {v7, v14, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .local v7, idListTokens:Ljava/util/StringTokenizer;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 297
    .local v3, dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    :cond_6
    :goto_2
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v16

    if-eqz v16, :cond_8

    .line 298
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v15

    .line 299
    .local v15, token:Ljava/lang/String;
    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 300
    .local v8, ids:[Ljava/lang/String;
    array-length v0, v8

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_6

    .line 303
    const/16 v16, 0x0

    aget-object v16, v8, v16

    const-string v17, "id:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_6

    const/16 v16, 0x1

    aget-object v16, v8, v16

    const-string v17, "friendof:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 305
    new-instance v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;

    invoke-direct {v2}, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;-><init>()V

    .line 306
    .local v2, data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    const/16 v16, 0x0

    aget-object v16, v8, v16

    const-string v17, "id:"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    .line 307
    const/16 v16, 0x1

    aget-object v16, v8, v16

    const-string v17, "friendof:"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    .line 308
    iget-object v0, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "@"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_7

    iget-object v0, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "@"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 309
    const-string v16, "flickr"

    move-object/from16 v0, v16

    iput-object v0, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    .line 313
    :goto_3
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 311
    :cond_7
    const-string v16, "facebook"

    move-object/from16 v0, v16

    iput-object v0, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    goto :goto_3

    .line 319
    .end local v2           #data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    .end local v8           #ids:[Ljava/lang/String;
    .end local v15           #token:Ljava/lang/String;
    :cond_8
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v3, v1}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->setLinkData(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v10

    .line 320
    const-string v16, "NOTE"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "newText: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 p0, v10

    .line 322
    goto/16 :goto_0
.end method
