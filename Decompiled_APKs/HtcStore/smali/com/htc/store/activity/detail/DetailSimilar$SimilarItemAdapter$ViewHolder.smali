.class Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "DetailSimilar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public mCommentLayout:Landroid/view/View;

.field public mCountCommentDownload:Landroid/widget/TextView;

.field public mCountLike:Landroid/widget/TextView;

.field public mIcon:Lcom/htc/store/module/view/TileImageView;

.field public mLabel:Landroid/widget/TextView;

.field public mStamp:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;


# direct methods
.method private constructor <init>(Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1167
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter$ViewHolder;->this$1:Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;Lcom/htc/store/activity/detail/DetailSimilar$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1167
    invoke-direct {p0, p1}, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter$ViewHolder;-><init>(Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;)V

    return-void
.end method
