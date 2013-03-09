.class public final enum Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseQueState;
.super Ljava/lang/Enum;
.source "RemotePlaylist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnamiddlelayer/RemotePlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BrowseQueState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseQueState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseQueState;

.field public static final enum STATE_QUEBROWSING:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseQueState;

.field public static final enum STATE_QUEEMPTY:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseQueState;

.field public static final enum STATE_QUEFINISH:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseQueState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    new-instance v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseQueState;

    const-string v1, "STATE_QUEEMPTY"

    invoke-direct {v0, v1, v2}, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseQueState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseQueState;->STATE_QUEEMPTY:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseQueState;

    .line 75
    new-instance v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseQueState;

    const-string v1, "STATE_QUEFINISH"

    invoke-direct {v0, v1, v3}, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseQueState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseQueState;->STATE_QUEFINISH:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseQueState;

    .line 76
    new-instance v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseQueState;

    const-string v1, "STATE_QUEBROWSING"

    invoke-direct {v0, v1, v4}, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseQueState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseQueState;->STATE_QUEBROWSING:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseQueState;

    .line 73
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseQueState;

    sget-object v1, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseQueState;->STATE_QUEEMPTY:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseQueState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseQueState;->STATE_QUEFINISH:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseQueState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseQueState;->STATE_QUEBROWSING:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseQueState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseQueState;->$VALUES:[Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseQueState;

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
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseQueState;
    .locals 1
    .parameter "name"

    .prologue
    .line 73
    const-class v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseQueState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseQueState;

    return-object v0
.end method

.method public static values()[Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseQueState;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseQueState;->$VALUES:[Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseQueState;

    invoke-virtual {v0}, [Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseQueState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseQueState;

    return-object v0
.end method
