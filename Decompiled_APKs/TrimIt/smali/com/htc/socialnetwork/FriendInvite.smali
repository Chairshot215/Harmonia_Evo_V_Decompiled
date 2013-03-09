.class public Lcom/htc/socialnetwork/FriendInvite;
.super Ljava/lang/Object;
.source "FriendInvite.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/htc/socialnetwork/Constants;


# static fields
.field public static final ACCEPTTIME:Ljava/lang/String; = "accept_time"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.socialnetwork.friend_invite"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.socialnetwork.friend_invite"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CREATE_TABLE_SQL:Ljava/lang/String; = "CREATE TABLE friend_invite (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, sid INTEGER NOT NULL, uid INTEGER NOT NULL, from_user_id TEXT NOT NULL, from_user_name TEXT NOT NULL, request_time INTEGER NOT NULL, status CHAR(1), accept_time INTEGER , UNIQUE( sid , uid , from_user_id ));"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "_id ASC"

.field public static final FRIEND_INVITE_PROJECTION:[Ljava/lang/String; = null

.field public static final FRIEND_INVITE_TABLE:Ljava/lang/String; = "friend_invite"

.field public static final FROMUSERID:Ljava/lang/String; = "from_user_id"

.field public static final FROMUSERNAME:Ljava/lang/String; = "from_user_name"

.field public static final REQUESTTIME:Ljava/lang/String; = "request_time"

.field public static final SID:Ljava/lang/String; = "sid"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final UID:Ljava/lang/String; = "uid"


# instance fields
.field private mFromUserId:Ljava/lang/String;

.field private mFromUserName:Ljava/lang/String;

.field private mStatus:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 9
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "sid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "uid"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "from_user_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "from_user_name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "request_time"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "accept_time"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/socialnetwork/FriendInvite;->FRIEND_INVITE_PROJECTION:[Ljava/lang/String;

    .line 20
    const-string v0, "content://com.htc.socialnetwork.snprovider/friend_invites"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/socialnetwork/FriendInvite;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFromUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/socialnetwork/FriendInvite;->mFromUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getFromUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/socialnetwork/FriendInvite;->mFromUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/socialnetwork/FriendInvite;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public setFromUserId(Ljava/lang/String;)V
    .locals 0
    .parameter "from_user_id"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/htc/socialnetwork/FriendInvite;->mFromUserId:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setFromUserName(Ljava/lang/String;)V
    .locals 0
    .parameter "from_user_name"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/htc/socialnetwork/FriendInvite;->mFromUserName:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/htc/socialnetwork/FriendInvite;->mStatus:Ljava/lang/String;

    .line 68
    return-void
.end method
