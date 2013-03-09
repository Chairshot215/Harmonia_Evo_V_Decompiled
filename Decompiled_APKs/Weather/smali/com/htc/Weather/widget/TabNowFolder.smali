.class Lcom/htc/Weather/widget/TabNowFolder;
.super Ljava/lang/Object;
.source "NowForecastView.java"


# instance fields
.field curTemp:Landroid/widget/TextView;

.field date_txt:Landroid/widget/TextView;

.field day_txt:Landroid/widget/TextView;

.field hl_label:Landroid/widget/TextView;

.field icon:Landroid/widget/ImageView;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 280
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hideView()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 287
    iget-object v0, p0, Lcom/htc/Weather/widget/TabNowFolder;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/Weather/widget/TabNowFolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/htc/Weather/widget/TabNowFolder;->curTemp:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/Weather/widget/TabNowFolder;->curTemp:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/htc/Weather/widget/TabNowFolder;->date_txt:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/Weather/widget/TabNowFolder;->date_txt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    :cond_2
    iget-object v0, p0, Lcom/htc/Weather/widget/TabNowFolder;->hl_label:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/Weather/widget/TabNowFolder;->hl_label:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    :cond_3
    return-void
.end method

.method public showView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 294
    iget-object v0, p0, Lcom/htc/Weather/widget/TabNowFolder;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/Weather/widget/TabNowFolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/htc/Weather/widget/TabNowFolder;->curTemp:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/Weather/widget/TabNowFolder;->curTemp:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/htc/Weather/widget/TabNowFolder;->date_txt:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/Weather/widget/TabNowFolder;->date_txt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    :cond_2
    iget-object v0, p0, Lcom/htc/Weather/widget/TabNowFolder;->hl_label:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/Weather/widget/TabNowFolder;->hl_label:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 298
    :cond_3
    return-void
.end method
