.class Lcom/htc/widget/HtcTabHost1$ViewIndicatorStrategy;
.super Ljava/lang/Object;
.source "HtcTabHost1.java"

# interfaces
.implements Lcom/htc/widget/HtcTabHost1$IndicatorStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcTabHost1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewIndicatorStrategy"
.end annotation


# instance fields
.field private final mView:Landroid/view/View;

.field final synthetic this$0:Lcom/htc/widget/HtcTabHost1;


# direct methods
.method private constructor <init>(Lcom/htc/widget/HtcTabHost1;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcTabHost1$ViewIndicatorStrategy;->this$0:Lcom/htc/widget/HtcTabHost1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/htc/widget/HtcTabHost1$ViewIndicatorStrategy;->mView:Landroid/view/View;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/HtcTabHost1;Landroid/view/View;Lcom/htc/widget/HtcTabHost1$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcTabHost1$ViewIndicatorStrategy;-><init>(Lcom/htc/widget/HtcTabHost1;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public createIndicatorView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcTabHost1$ViewIndicatorStrategy;->mView:Landroid/view/View;

    return-object v0
.end method
