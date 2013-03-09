.class Lcom/htc/home/personalize/onlineskin/OnlineSkin$13;
.super Ljava/lang/Object;
.source "OnlineSkin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/onlineskin/OnlineSkin;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)V
    .locals 0
    .parameter

    .prologue
    .line 1244
    iput-object p1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$13;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$13;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #getter for: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mMessageBoard:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$2000(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1248
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$13;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    const/4 v1, 0x1

    #calls: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->updatePanelViewVisibility(Z)V
    invoke-static {v0, v1}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$2100(Lcom/htc/home/personalize/onlineskin/OnlineSkin;Z)V

    .line 1249
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$13;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #calls: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->getSkinList()V
    invoke-static {v0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$3200(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)V

    .line 1250
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$13;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #calls: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->showDownloadingCursor()V
    invoke-static {v0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$1600(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)V

    .line 1251
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$13;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    const/4 v1, 0x0

    #calls: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->enableControls(Z)V
    invoke-static {v0, v1}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$1900(Lcom/htc/home/personalize/onlineskin/OnlineSkin;Z)V

    .line 1252
    return-void
.end method
