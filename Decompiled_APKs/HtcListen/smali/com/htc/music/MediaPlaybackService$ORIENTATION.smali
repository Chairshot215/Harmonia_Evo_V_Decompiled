.class public final enum Lcom/htc/music/MediaPlaybackService$ORIENTATION;
.super Ljava/lang/Enum;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ORIENTATION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/music/MediaPlaybackService$ORIENTATION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/music/MediaPlaybackService$ORIENTATION;

.field public static final enum ILANDSCAPE:Lcom/htc/music/MediaPlaybackService$ORIENTATION;

.field public static final enum IPORTRAIT:Lcom/htc/music/MediaPlaybackService$ORIENTATION;

.field public static final enum LANDSCAPE:Lcom/htc/music/MediaPlaybackService$ORIENTATION;

.field public static final enum PORTRAIT:Lcom/htc/music/MediaPlaybackService$ORIENTATION;

.field public static final enum UNDEFINED:Lcom/htc/music/MediaPlaybackService$ORIENTATION;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/htc/music/MediaPlaybackService$ORIENTATION;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1, v2}, Lcom/htc/music/MediaPlaybackService$ORIENTATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/music/MediaPlaybackService$ORIENTATION;->UNDEFINED:Lcom/htc/music/MediaPlaybackService$ORIENTATION;

    new-instance v0, Lcom/htc/music/MediaPlaybackService$ORIENTATION;

    const-string v1, "PORTRAIT"

    invoke-direct {v0, v1, v3}, Lcom/htc/music/MediaPlaybackService$ORIENTATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/music/MediaPlaybackService$ORIENTATION;->PORTRAIT:Lcom/htc/music/MediaPlaybackService$ORIENTATION;

    new-instance v0, Lcom/htc/music/MediaPlaybackService$ORIENTATION;

    const-string v1, "IPORTRAIT"

    invoke-direct {v0, v1, v4}, Lcom/htc/music/MediaPlaybackService$ORIENTATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/music/MediaPlaybackService$ORIENTATION;->IPORTRAIT:Lcom/htc/music/MediaPlaybackService$ORIENTATION;

    new-instance v0, Lcom/htc/music/MediaPlaybackService$ORIENTATION;

    const-string v1, "LANDSCAPE"

    invoke-direct {v0, v1, v5}, Lcom/htc/music/MediaPlaybackService$ORIENTATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/music/MediaPlaybackService$ORIENTATION;->LANDSCAPE:Lcom/htc/music/MediaPlaybackService$ORIENTATION;

    new-instance v0, Lcom/htc/music/MediaPlaybackService$ORIENTATION;

    const-string v1, "ILANDSCAPE"

    invoke-direct {v0, v1, v6}, Lcom/htc/music/MediaPlaybackService$ORIENTATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/music/MediaPlaybackService$ORIENTATION;->ILANDSCAPE:Lcom/htc/music/MediaPlaybackService$ORIENTATION;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/htc/music/MediaPlaybackService$ORIENTATION;

    sget-object v1, Lcom/htc/music/MediaPlaybackService$ORIENTATION;->UNDEFINED:Lcom/htc/music/MediaPlaybackService$ORIENTATION;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/music/MediaPlaybackService$ORIENTATION;->PORTRAIT:Lcom/htc/music/MediaPlaybackService$ORIENTATION;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/music/MediaPlaybackService$ORIENTATION;->IPORTRAIT:Lcom/htc/music/MediaPlaybackService$ORIENTATION;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/music/MediaPlaybackService$ORIENTATION;->LANDSCAPE:Lcom/htc/music/MediaPlaybackService$ORIENTATION;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/music/MediaPlaybackService$ORIENTATION;->ILANDSCAPE:Lcom/htc/music/MediaPlaybackService$ORIENTATION;

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/music/MediaPlaybackService$ORIENTATION;->$VALUES:[Lcom/htc/music/MediaPlaybackService$ORIENTATION;

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

.method public static valueOf(Ljava/lang/String;)Lcom/htc/music/MediaPlaybackService$ORIENTATION;
    .locals 1

    const-class v0, Lcom/htc/music/MediaPlaybackService$ORIENTATION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService$ORIENTATION;

    return-object v0
.end method

.method public static values()[Lcom/htc/music/MediaPlaybackService$ORIENTATION;
    .locals 1

    sget-object v0, Lcom/htc/music/MediaPlaybackService$ORIENTATION;->$VALUES:[Lcom/htc/music/MediaPlaybackService$ORIENTATION;

    invoke-virtual {v0}, [Lcom/htc/music/MediaPlaybackService$ORIENTATION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/music/MediaPlaybackService$ORIENTATION;

    return-object v0
.end method
