.class Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter$ItemViewHolder;
.super Ljava/lang/Object;
.source "DetailInfo.java"

# interfaces
.implements Lcom/htc/widget/HtcListItemSeparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemViewHolder"
.end annotation


# instance fields
.field public button:Lcom/htc/widget/HtcListItemImageButton;

.field public shouldDraw:Z

.field public shouldSeparate:Z

.field public singleLineInfo:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter;

.field public twoLineInfo:Lcom/htc/widget/HtcListItem2LineText;


# direct methods
.method private constructor <init>(Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 1620
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter$ItemViewHolder;->this$1:Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1624
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter$ItemViewHolder;->shouldDraw:Z

    .line 1625
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter$ItemViewHolder;->shouldSeparate:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter;Lcom/htc/store/activity/detail/DetailInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1620
    invoke-direct {p0, p1}, Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter$ItemViewHolder;-><init>(Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter;)V

    return-void
.end method


# virtual methods
.method public shouldDrawOnThis()Z
    .locals 1

    .prologue
    .line 1628
    iget-boolean v0, p0, Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter$ItemViewHolder;->shouldDraw:Z

    return v0
.end method

.method public shouldSeparate(Ljava/lang/Object;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 1632
    iget-boolean v0, p0, Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter$ItemViewHolder;->shouldSeparate:Z

    return v0
.end method
