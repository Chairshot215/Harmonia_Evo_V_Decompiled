.class Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;
.super Ljava/lang/Object;
.source "FullFilmViewPreparator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemAttributes"
.end annotation


# instance fields
.field public fileCacheNotSaved:Z

.field public offLineDecode:Z

.field public textureDirty:Z

.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;


# direct methods
.method private constructor <init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 44
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;->textureDirty:Z

    .line 46
    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;->offLineDecode:Z

    .line 47
    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;->fileCacheNotSaved:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes$ItemAttributes;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;)V

    return-void
.end method
