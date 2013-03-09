.class Lcom/htc/widget/HtcTabHost$ViewIndicatorStrategy;
.super Ljava/lang/Object;
.source "HtcTabHost.java"

# interfaces
.implements Lcom/htc/widget/HtcTabHost$IndicatorStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewIndicatorStrategy"
.end annotation


# instance fields
.field private final mView:Landroid/view/View;

.field final synthetic this$0:Lcom/htc/widget/HtcTabHost;


# direct methods
.method private constructor <init>(Lcom/htc/widget/HtcTabHost;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "view"

    .prologue
    .line 646
    iput-object p1, p0, Lcom/htc/widget/HtcTabHost$ViewIndicatorStrategy;->this$0:Lcom/htc/widget/HtcTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 647
    iput-object p2, p0, Lcom/htc/widget/HtcTabHost$ViewIndicatorStrategy;->mView:Landroid/view/View;

    .line 648
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/HtcTabHost;Landroid/view/View;Lcom/htc/widget/HtcTabHost$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 642
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcTabHost$ViewIndicatorStrategy;-><init>(Lcom/htc/widget/HtcTabHost;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public createIndicatorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost$ViewIndicatorStrategy;->mView:Landroid/view/View;

    return-object v0
.end method
