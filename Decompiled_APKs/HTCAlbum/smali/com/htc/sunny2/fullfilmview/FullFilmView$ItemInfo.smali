.class public Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;
.super Ljava/lang/Object;
.source "FullFilmView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/FullFilmView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemInfo"
.end annotation


# instance fields
.field public imageHeight:I

.field public imageLeft:I

.field public imageTop:I

.field public imageWidth:I

.field public index:I

.field public positionOffset:F

.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

.field public zoomFactor:F


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 139
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->index:I

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->positionOffset:F

    .line 143
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->zoomFactor:F

    .line 144
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageLeft:I

    .line 146
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageTop:I

    .line 147
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageWidth:I

    .line 148
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageHeight:I

    return-void
.end method
