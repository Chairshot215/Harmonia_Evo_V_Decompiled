.class Lcom/htc/music/MediaPlaybackService$Shuffler;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Shuffler"
.end annotation


# instance fields
.field private mPrevious:I

.field private mRandom:Ljava/util/Random;

.field final synthetic this$0:Lcom/htc/music/MediaPlaybackService;


# direct methods
.method private constructor <init>(Lcom/htc/music/MediaPlaybackService;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService$Shuffler;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService$Shuffler;->mRandom:Ljava/util/Random;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/MediaPlaybackService;Lcom/htc/music/MediaPlaybackService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService$Shuffler;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    return-void
.end method


# virtual methods
.method public nextInt(I)I
    .locals 2

    :cond_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$Shuffler;->mRandom:Ljava/util/Random;

    invoke-virtual {v1, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iget v1, p0, Lcom/htc/music/MediaPlaybackService$Shuffler;->mPrevious:I

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    if-gt p1, v1, :cond_0

    :cond_1
    iput v0, p0, Lcom/htc/music/MediaPlaybackService$Shuffler;->mPrevious:I

    return v0
.end method
