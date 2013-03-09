.class Lcom/htc/widget/TabSwitchHost$ViewIdContentStrategy;
.super Ljava/lang/Object;
.source "TabSwitchHost.java"

# interfaces
.implements Lcom/htc/widget/TabSwitchHost$ContentStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/TabSwitchHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewIdContentStrategy"
.end annotation


# instance fields
.field private final mView:Landroid/view/View;

.field final synthetic this$0:Lcom/htc/widget/TabSwitchHost;


# direct methods
.method private constructor <init>(Lcom/htc/widget/TabSwitchHost;I)V
    .locals 3
    .parameter
    .parameter "viewId"

    .prologue
    .line 1071
    iput-object p1, p0, Lcom/htc/widget/TabSwitchHost$ViewIdContentStrategy;->this$0:Lcom/htc/widget/TabSwitchHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1072
    #getter for: Lcom/htc/widget/TabSwitchHost;->mTabContent:Landroid/widget/FrameLayout;
    invoke-static {p1}, Lcom/htc/widget/TabSwitchHost;->access$800(Lcom/htc/widget/TabSwitchHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/TabSwitchHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    .line 1073
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1074
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1079
    return-void

    .line 1076
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

.method synthetic constructor <init>(Lcom/htc/widget/TabSwitchHost;ILcom/htc/widget/TabSwitchHost$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1067
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/TabSwitchHost$ViewIdContentStrategy;-><init>(Lcom/htc/widget/TabSwitchHost;I)V

    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 2

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1086
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    return-object v0
.end method

.method public tabClosed()V
    .locals 2

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1095
    return-void
.end method

.method public tabRemoved()V
    .locals 2

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1103
    return-void
.end method
