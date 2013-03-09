.class public final Lcom/android/providers/contacts/HtcUtils/LinkPriorityRule;
.super Ljava/lang/Object;
.source "LinkPriorityRule.java"


# static fields
.field public static final DEFAULT_FACEBOOK:Ljava/lang/String; = "com.facebook.auth.login"

.field public static final DEFAULT_TWITTER:Ljava/lang/String; = "com.twitter.android.auth.login"

.field public static final Exchange:Ljava/lang/String; = "com.android.exchange"

.field public static final Facebook:Ljava/lang/String; = "com.htc.socialnetwork.facebook"

.field public static final Flickr:Ljava/lang/String; = "com.htc.socialnetwork.flickr"

.field public static final GOOGLE_PLUS:Ljava/lang/String; = "com.google/plus"

.field public static final Google:Ljava/lang/String; = "com.google"

.field public static final HtcExchange:Ljava/lang/String; = "com.htc.android.mail.eas"

.field public static final HtcWindowsLive:Ljava/lang/String; = "com.htc.android.windowslive"

.field public static final Kaixin:Ljava/lang/String; = "com.htc.KaixinFriendStream"

.field public static final KaixinMimetype:Ljava/lang/String; = "com.htc.KaixinFriendStream/login"

.field public static final Phone:Ljava/lang/String; = "com.htc.android.pcsc"

.field public static final Plurk:Ljava/lang/String; = "com.htc.socialnetwork.plurk"

.field public static final QQIM:Ljava/lang/String; = "com.htc.socialnetwork.qqim"

.field public static final QQIMMimetype:Ljava/lang/String; = "com.htc.socialnetwork.qqim/login"

.field public static final QQWeibo:Ljava/lang/String; = "com.htc.socialnetwork.qqweibo"

.field public static final QQWeiboMimetype:Ljava/lang/String; = "com.htc.socialnetwork.qqweibo/login"

.field public static final QZone:Ljava/lang/String; = "com.htc.socialnetwork.chinasns"

.field public static final QZoneMimetype:Ljava/lang/String; = "com.htc.socialnetwork.chinasns/login"

.field public static final Renren:Ljava/lang/String; = "com.htc.friendstream.renrenwebplugin"

.field public static final RenrenMimetype:Ljava/lang/String; = "com.htc.friendstream.renrenwebplugin/login"

.field public static final SinaWeibo:Ljava/lang/String; = "com.htc.friendstream.sinaweiboplugin"

.field public static final SinaWeiboMimetype:Ljava/lang/String; = "com.htc.friendstream.sinaweiboplugin/login"

.field public static final Twitter:Ljava/lang/String; = "com.htc.htctwitter"

.field public static final mAutoLinkExtAccountTypePriority:[Ljava/lang/String;

.field public static final mAutoLinkNamePriority:[Ljava/lang/String;

.field public static final mAutoLinkPhotoPriority:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 70
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.google/plus"

    aput-object v1, v0, v3

    const-string v1, "com.facebook.auth.login"

    aput-object v1, v0, v4

    const-string v1, "com.htc.socialnetwork.facebook"

    aput-object v1, v0, v5

    const-string v1, "com.htc.android.pcsc"

    aput-object v1, v0, v6

    const-string v1, "com.google"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.android.exchange"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.htc.android.mail.eas"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.htc.android.windowslive"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/HtcUtils/LinkPriorityRule;->mAutoLinkNamePriority:[Ljava/lang/String;

    .line 71
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.htc.android.pcsc"

    aput-object v1, v0, v3

    const-string v1, "com.htc.android.mail.eas"

    aput-object v1, v0, v4

    const-string v1, "com.android.exchange"

    aput-object v1, v0, v5

    const-string v1, "com.htc.android.windowslive"

    aput-object v1, v0, v6

    const-string v1, "com.google"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.google/plus"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.htc.socialnetwork.plurk"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.htc.socialnetwork.flickr"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.twitter.android.auth.login"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.htc.htctwitter"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.facebook.auth.login"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.htc.socialnetwork.facebook"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/HtcUtils/LinkPriorityRule;->mAutoLinkPhotoPriority:[Ljava/lang/String;

    .line 72
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.htc.socialnetwork.plurk"

    aput-object v1, v0, v3

    const-string v1, "com.htc.socialnetwork.flickr"

    aput-object v1, v0, v4

    const-string v1, "com.twitter.android.auth.login"

    aput-object v1, v0, v5

    const-string v1, "com.htc.htctwitter"

    aput-object v1, v0, v6

    const-string v1, "com.facebook.auth.login"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.htc.socialnetwork.facebook"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/HtcUtils/LinkPriorityRule;->mAutoLinkExtAccountTypePriority:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findAutoExtAccountTypeIndex(Ljava/lang/String;)I
    .locals 2
    .parameter "type"

    .prologue
    .line 91
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/providers/contacts/HtcUtils/LinkPriorityRule;->mAutoLinkExtAccountTypePriority:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 92
    sget-object v1, Lcom/android/providers/contacts/HtcUtils/LinkPriorityRule;->mAutoLinkExtAccountTypePriority:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    .end local v0           #i:I
    :goto_1
    return v0

    .line 91
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_1
    sget-object v1, Lcom/android/providers/contacts/HtcUtils/LinkPriorityRule;->mAutoLinkExtAccountTypePriority:[Ljava/lang/String;

    array-length v0, v1

    goto :goto_1
.end method

.method public static findAutoNameIndex(Ljava/lang/String;)I
    .locals 2
    .parameter "type"

    .prologue
    .line 83
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/providers/contacts/HtcUtils/LinkPriorityRule;->mAutoLinkNamePriority:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 84
    sget-object v1, Lcom/android/providers/contacts/HtcUtils/LinkPriorityRule;->mAutoLinkNamePriority:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    .end local v0           #i:I
    :goto_1
    return v0

    .line 83
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static findAutoPhotoIndex(Ljava/lang/String;)I
    .locals 2
    .parameter "type"

    .prologue
    .line 75
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/providers/contacts/HtcUtils/LinkPriorityRule;->mAutoLinkPhotoPriority:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 76
    sget-object v1, Lcom/android/providers/contacts/HtcUtils/LinkPriorityRule;->mAutoLinkPhotoPriority:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    .end local v0           #i:I
    :goto_1
    return v0

    .line 75
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
