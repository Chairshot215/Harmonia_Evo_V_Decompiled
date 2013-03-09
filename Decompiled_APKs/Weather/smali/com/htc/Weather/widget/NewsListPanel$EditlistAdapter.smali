.class Lcom/htc/Weather/widget/NewsListPanel$EditlistAdapter;
.super Landroid/widget/BaseAdapter;
.source "NewsListPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/Weather/widget/NewsListPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditlistAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field newsDate:Landroid/widget/TextView;

.field newsThumb:Landroid/widget/ImageView;

.field newsTitle:Landroid/widget/TextView;

.field newsType:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/htc/Weather/widget/NewsListPanel;


# direct methods
.method public constructor <init>(Lcom/htc/Weather/widget/NewsListPanel;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/htc/Weather/widget/NewsListPanel$EditlistAdapter;->this$0:Lcom/htc/Weather/widget/NewsListPanel;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 94
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/widget/NewsListPanel$EditlistAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 95
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 98
    const/16 v0, 0x8

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 106
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "pos"
    .parameter "convertView"
    .parameter "parent2"

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, view:Landroid/view/View;
    if-nez p2, :cond_0

    .line 112
    iget-object v1, p0, Lcom/htc/Weather/widget/NewsListPanel$EditlistAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030016

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 116
    :goto_0
    const v1, 0x7f0c0068

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/Weather/widget/NewsListPanel$EditlistAdapter;->newsTitle:Landroid/widget/TextView;

    .line 117
    const v1, 0x7f0c0069

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/Weather/widget/NewsListPanel$EditlistAdapter;->newsType:Landroid/widget/TextView;

    .line 118
    const v1, 0x7f0c006a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/Weather/widget/NewsListPanel$EditlistAdapter;->newsDate:Landroid/widget/TextView;

    .line 119
    const v1, 0x7f0c0067

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/Weather/widget/NewsListPanel$EditlistAdapter;->newsThumb:Landroid/widget/ImageView;

    .line 121
    iget-object v1, p0, Lcom/htc/Weather/widget/NewsListPanel$EditlistAdapter;->newsTitle:Landroid/widget/TextView;

    const-string v2, "News Title......"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v1, p0, Lcom/htc/Weather/widget/NewsListPanel$EditlistAdapter;->newsType:Landroid/widget/TextView;

    const-string v2, "News"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v1, p0, Lcom/htc/Weather/widget/NewsListPanel$EditlistAdapter;->newsDate:Landroid/widget/TextView;

    const-string v2, "Jul 12 ,2010"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    return-object v0

    .line 114
    :cond_0
    move-object v0, p2

    goto :goto_0
.end method
