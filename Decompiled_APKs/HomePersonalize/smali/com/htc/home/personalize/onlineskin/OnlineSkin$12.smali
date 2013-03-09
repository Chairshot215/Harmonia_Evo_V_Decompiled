.class Lcom/htc/home/personalize/onlineskin/OnlineSkin$12;
.super Ljava/lang/Object;
.source "OnlineSkin.java"

# interfaces
.implements Lcom/htc/widget/HtcAbsListView$OnScrollListener;


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
    .line 1203
    iput-object p1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$12;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 1209
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 1212
    if-nez p2, :cond_0

    .line 1214
    invoke-static {}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$3100()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->getLastVisiblePosition()I

    move-result v0

    invoke-static {}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$3100()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$12;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #getter for: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSkinRetriever:Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;
    invoke-static {v0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$700(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;

    invoke-static {}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->hasNextPage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1216
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$12;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #calls: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->showDownloadingCursor()V
    invoke-static {v0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$1600(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)V

    .line 1217
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$12;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #getter for: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSkinRetriever:Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;
    invoke-static {v0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$700(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->retrieveSkinList()V

    .line 1220
    :cond_0
    return-void
.end method
