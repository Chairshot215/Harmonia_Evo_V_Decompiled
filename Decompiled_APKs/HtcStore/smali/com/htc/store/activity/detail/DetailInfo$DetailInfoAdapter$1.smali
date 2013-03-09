.class Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter$1;
.super Ljava/lang/Object;
.source "DetailInfo.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter;->createNewView(Landroid/view/ViewGroup;IIZ)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter;


# direct methods
.method constructor <init>(Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1547
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter$1;->this$1:Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "view"
    .parameter "event"

    .prologue
    .line 1551
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 1552
    const/4 v0, 0x1

    .line 1554
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
