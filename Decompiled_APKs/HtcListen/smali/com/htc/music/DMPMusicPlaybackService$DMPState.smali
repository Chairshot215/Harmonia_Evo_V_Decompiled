.class final enum Lcom/htc/music/DMPMusicPlaybackService$DMPState;
.super Ljava/lang/Enum;
.source "DMPMusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/DMPMusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DMPState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/music/DMPMusicPlaybackService$DMPState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/music/DMPMusicPlaybackService$DMPState;

.field public static final enum READY:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

.field public static final enum SERVER_DISCONNECTED:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

.field public static final enum WIFI_DISCONNECTED:Lcom/htc/music/DMPMusicPlaybackService$DMPState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    const-string v1, "READY"

    invoke-direct {v0, v1, v2}, Lcom/htc/music/DMPMusicPlaybackService$DMPState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/music/DMPMusicPlaybackService$DMPState;->READY:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    new-instance v0, Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    const-string v1, "SERVER_DISCONNECTED"

    invoke-direct {v0, v1, v3}, Lcom/htc/music/DMPMusicPlaybackService$DMPState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/music/DMPMusicPlaybackService$DMPState;->SERVER_DISCONNECTED:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    new-instance v0, Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    const-string v1, "WIFI_DISCONNECTED"

    invoke-direct {v0, v1, v4}, Lcom/htc/music/DMPMusicPlaybackService$DMPState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/music/DMPMusicPlaybackService$DMPState;->WIFI_DISCONNECTED:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    sget-object v1, Lcom/htc/music/DMPMusicPlaybackService$DMPState;->READY:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/music/DMPMusicPlaybackService$DMPState;->SERVER_DISCONNECTED:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/music/DMPMusicPlaybackService$DMPState;->WIFI_DISCONNECTED:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/music/DMPMusicPlaybackService$DMPState;->$VALUES:[Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/music/DMPMusicPlaybackService$DMPState;
    .locals 1

    const-class v0, Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    return-object v0
.end method

.method public static values()[Lcom/htc/music/DMPMusicPlaybackService$DMPState;
    .locals 1

    sget-object v0, Lcom/htc/music/DMPMusicPlaybackService$DMPState;->$VALUES:[Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    invoke-virtual {v0}, [Lcom/htc/music/DMPMusicPlaybackService$DMPState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    return-object v0
.end method
