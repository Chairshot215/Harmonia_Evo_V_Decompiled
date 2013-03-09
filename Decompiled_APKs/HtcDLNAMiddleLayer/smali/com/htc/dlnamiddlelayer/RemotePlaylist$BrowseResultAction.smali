.class public final enum Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;
.super Ljava/lang/Enum;
.source "RemotePlaylist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnamiddlelayer/RemotePlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BrowseResultAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;

.field public static final enum NONE:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;

.field public static final enum PRECACHE:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;

.field public static final enum PREPARE_NEXTURI:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;

.field public static final enum READY_TO_PLAY:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;

.field public static final enum SWITCH_NEXTITEM:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;

.field public static final enum SWITCH_PREVITEM:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 58
    new-instance v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;

    const-string v1, "SWITCH_NEXTITEM"

    invoke-direct {v0, v1, v3}, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;->SWITCH_NEXTITEM:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;

    .line 59
    new-instance v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;

    const-string v1, "SWITCH_PREVITEM"

    invoke-direct {v0, v1, v4}, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;->SWITCH_PREVITEM:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;

    .line 60
    new-instance v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;

    const-string v1, "PREPARE_NEXTURI"

    invoke-direct {v0, v1, v5}, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;->PREPARE_NEXTURI:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;

    .line 61
    new-instance v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;

    const-string v1, "READY_TO_PLAY"

    invoke-direct {v0, v1, v6}, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;->READY_TO_PLAY:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;

    .line 62
    new-instance v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;

    const-string v1, "PRECACHE"

    invoke-direct {v0, v1, v7}, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;->PRECACHE:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;

    .line 63
    new-instance v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;

    const-string v1, "NONE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;->NONE:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;

    .line 56
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;

    sget-object v1, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;->SWITCH_NEXTITEM:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;->SWITCH_PREVITEM:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;->PREPARE_NEXTURI:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;->READY_TO_PLAY:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;->PRECACHE:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;->NONE:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;->$VALUES:[Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;

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
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;
    .locals 1
    .parameter "name"

    .prologue
    .line 56
    const-class v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;

    return-object v0
.end method

.method public static values()[Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;->$VALUES:[Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;

    invoke-virtual {v0}, [Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;

    return-object v0
.end method
