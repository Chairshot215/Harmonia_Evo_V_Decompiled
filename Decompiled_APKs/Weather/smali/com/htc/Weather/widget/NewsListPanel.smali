.class public Lcom/htc/Weather/widget/NewsListPanel;
.super Landroid/widget/RelativeLayout;
.source "NewsListPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/Weather/widget/NewsListPanel$NewsDataItem;,
        Lcom/htc/Weather/widget/NewsListPanel$EditlistAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NewsListPanel"


# instance fields
.field private ela:Lcom/htc/Weather/widget/NewsListPanel$EditlistAdapter;

.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/Weather/widget/NewsListPanel$NewsDataItem;",
            ">;"
        }
    .end annotation
.end field

.field private mNewsListView:Lcom/htc/widget/HtcListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/Weather/widget/NewsListPanel;->mData:Ljava/util/ArrayList;

    .line 33
    const-string v0, "NewsListPanel"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iput-object p1, p0, Lcom/htc/Weather/widget/NewsListPanel;->mContext:Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Lcom/htc/Weather/widget/NewsListPanel;->initView()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/Weather/widget/NewsListPanel;->mData:Ljava/util/ArrayList;

    .line 40
    iput-object p1, p0, Lcom/htc/Weather/widget/NewsListPanel;->mContext:Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Lcom/htc/Weather/widget/NewsListPanel;->initView()V

    .line 42
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/Weather/widget/NewsListPanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030017

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 51
    const v0, 0x7f0c006b

    invoke-virtual {p0, v0}, Lcom/htc/Weather/widget/NewsListPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListView;

    iput-object v0, p0, Lcom/htc/Weather/widget/NewsListPanel;->mNewsListView:Lcom/htc/widget/HtcListView;

    .line 52
    new-instance v0, Lcom/htc/Weather/widget/NewsListPanel$EditlistAdapter;

    iget-object v1, p0, Lcom/htc/Weather/widget/NewsListPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/htc/Weather/widget/NewsListPanel$EditlistAdapter;-><init>(Lcom/htc/Weather/widget/NewsListPanel;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/Weather/widget/NewsListPanel;->ela:Lcom/htc/Weather/widget/NewsListPanel$EditlistAdapter;

    .line 53
    iget-object v0, p0, Lcom/htc/Weather/widget/NewsListPanel;->mNewsListView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/Weather/widget/NewsListPanel;->ela:Lcom/htc/Weather/widget/NewsListPanel$EditlistAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 84
    return-void
.end method
