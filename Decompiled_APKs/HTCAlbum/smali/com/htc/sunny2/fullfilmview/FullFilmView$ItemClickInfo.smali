.class public Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;
.super Ljava/lang/Object;
.source "FullFilmView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/FullFilmView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemClickInfo"
.end annotation


# instance fields
.field public index:I

.field public motionEvent:Landroid/view/MotionEvent;

.field public positionOffset:F

.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

.field public zoomFactor:F


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V
    .locals 1
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;->index:I

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;->positionOffset:F

    .line 135
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;->zoomFactor:F

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;->motionEvent:Landroid/view/MotionEvent;

    return-void
.end method
