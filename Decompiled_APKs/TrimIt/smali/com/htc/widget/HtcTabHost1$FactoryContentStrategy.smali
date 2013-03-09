.class Lcom/htc/widget/HtcTabHost1$FactoryContentStrategy;
.super Ljava/lang/Object;
.source "HtcTabHost1.java"

# interfaces
.implements Lcom/htc/widget/HtcTabHost1$ContentStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcTabHost1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FactoryContentStrategy"
.end annotation


# instance fields
.field private mFactory:Lcom/htc/widget/HtcTabHost1$TabContentFactory;

.field private mTabContent:Landroid/view/View;

.field private final mTag:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/htc/widget/HtcTabHost1;


# direct methods
.method public constructor <init>(Lcom/htc/widget/HtcTabHost1;Ljava/lang/CharSequence;Lcom/htc/widget/HtcTabHost1$TabContentFactory;)V
    .locals 0
    .parameter
    .parameter "tag"
    .parameter "factory"

    .prologue
    .line 690
    iput-object p1, p0, Lcom/htc/widget/HtcTabHost1$FactoryContentStrategy;->this$0:Lcom/htc/widget/HtcTabHost1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 691
    iput-object p2, p0, Lcom/htc/widget/HtcTabHost1$FactoryContentStrategy;->mTag:Ljava/lang/CharSequence;

    .line 692
    iput-object p3, p0, Lcom/htc/widget/HtcTabHost1$FactoryContentStrategy;->mFactory:Lcom/htc/widget/HtcTabHost1$TabContentFactory;

    .line 693
    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 2

    .prologue
    .line 696
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost1$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    if-nez v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost1$FactoryContentStrategy;->mFactory:Lcom/htc/widget/HtcTabHost1$TabContentFactory;

    iget-object v1, p0, Lcom/htc/widget/HtcTabHost1$FactoryContentStrategy;->mTag:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/htc/widget/HtcTabHost1$TabContentFactory;->createTabContent(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcTabHost1$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost1$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 700
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost1$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    return-object v0
.end method

.method public tabClosed()V
    .locals 2

    .prologue
    .line 704
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost1$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 705
    return-void
.end method
