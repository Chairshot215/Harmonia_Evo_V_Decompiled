.class Lcom/htc/Weather/widget/ViewFolder;
.super Ljava/lang/Object;
.source "DaysForecastView.java"


# instance fields
.field conicon:Landroid/widget/ImageView;

.field date:Landroid/widget/TextView;

.field day_title:Landroid/widget/TextView;

.field temp:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 233
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hideView()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 240
    iget-object v0, p0, Lcom/htc/Weather/widget/ViewFolder;->day_title:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/Weather/widget/ViewFolder;->day_title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/htc/Weather/widget/ViewFolder;->date:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/Weather/widget/ViewFolder;->date:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/htc/Weather/widget/ViewFolder;->temp:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/Weather/widget/ViewFolder;->temp:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/htc/Weather/widget/ViewFolder;->conicon:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/Weather/widget/ViewFolder;->conicon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 244
    :cond_3
    return-void
.end method
