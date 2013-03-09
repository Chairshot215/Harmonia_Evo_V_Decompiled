.class public final enum Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;
.super Ljava/lang/Enum;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WPersonFriendStatusType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;

.field public static final enum FriendBlocked:Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;

.field public static final enum FriendFriends:Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;

.field public static final enum FriendInvite:Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;

.field public static final enum FriendPending:Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;

.field public static final enum FriendPotential:Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;

.field public static final enum FriendUnknown:Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 461
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;

    const-string v1, "FriendUnknown"

    invoke-direct {v0, v1, v3}, Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;->FriendUnknown:Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;

    .line 462
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;

    const-string v1, "FriendPotential"

    invoke-direct {v0, v1, v4}, Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;->FriendPotential:Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;

    .line 463
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;

    const-string v1, "FriendPending"

    invoke-direct {v0, v1, v5}, Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;->FriendPending:Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;

    .line 464
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;

    const-string v1, "FriendFriends"

    invoke-direct {v0, v1, v6}, Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;->FriendFriends:Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;

    .line 465
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;

    const-string v1, "FriendBlocked"

    invoke-direct {v0, v1, v7}, Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;->FriendBlocked:Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;

    .line 466
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;

    const-string v1, "FriendInvite"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;->FriendInvite:Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;

    .line 460
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;->FriendUnknown:Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;->FriendPotential:Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;->FriendPending:Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;->FriendFriends:Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;->FriendBlocked:Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;->FriendInvite:Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;->$VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 460
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;
    .locals 1
    .parameter "name"

    .prologue
    .line 460
    const-class v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;

    return-object v0
.end method

.method public static values()[Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;
    .locals 1

    .prologue
    .line 460
    sget-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;->$VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;

    invoke-virtual {v0}, [Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;

    return-object v0
.end method
