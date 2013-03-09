.class Lcom/htc/sunny2/widget/MediaListView$SetMediaList;
.super Ljava/lang/Object;
.source "MediaListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/MediaListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetMediaList"
.end annotation


# instance fields
.field isProcess:Z

.field mediaList:Lcom/htc/sunny2/IMediaList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunny2/IMediaList",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/MediaListView$SetMediaList;->isProcess:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/MediaListView$SetMediaList;->mediaList:Lcom/htc/sunny2/IMediaList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/sunny2/widget/MediaListView$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/sunny2/widget/MediaListView$SetMediaList;-><init>()V

    return-void
.end method


# virtual methods
.method set(Lcom/htc/sunny2/IMediaList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunny2/IMediaList",
            "<*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/htc/sunny2/widget/MediaListView$SetMediaList;->mediaList:Lcom/htc/sunny2/IMediaList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/MediaListView$SetMediaList;->isProcess:Z

    return-void
.end method
