.class Lcom/htc/widget/HtcTabHost$ViewIdContentStrategy;
.super Ljava/lang/Object;
.source "HtcTabHost.java"

# interfaces
.implements Lcom/htc/widget/HtcTabHost$ContentStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewIdContentStrategy"
.end annotation


# instance fields
.field private final mView:Landroid/view/View;

.field final synthetic this$0:Lcom/htc/widget/HtcTabHost;


# direct methods
.method private constructor <init>(Lcom/htc/widget/HtcTabHost;I)V
    .locals 3
    .parameter
    .parameter "viewId"

    .prologue
    .line 662
    iput-object p1, p0, Lcom/htc/widget/HtcTabHost$ViewIdContentStrategy;->this$0:Lcom/htc/widget/HtcTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 663
    #getter for: Lcom/htc/widget/HtcTabHost;->mTabContent:Landroid/widget/FrameLayout;
    invoke-static {p1}, Lcom/htc/widget/HtcTabHost;->access$100(Lcom/htc/widget/HtcTabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcTabHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    .line 664
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 670
    return-void

    .line 667
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create tab content because could not find view with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Lcom/htc/widget/HtcTabHost;ILcom/htc/widget/HtcTabHost$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 658
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcTabHost$ViewIdContentStrategy;-><init>(Lcom/htc/widget/HtcTabHost;I)V

    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 2

    .prologue
    .line 673
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 674
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    return-object v0
.end method

.method public tabClosed()V
    .locals 2

    .prologue
    .line 678
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 679
    return-void
.end method
