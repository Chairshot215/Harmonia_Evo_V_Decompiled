.class public Lcom/htc/connectedMedia/ConnectedMedia;
.super Landroid/app/Activity;
.source "ConnectedMedia.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private resetLayout()V
    .locals 10

    .prologue
    .line 29
    const/high16 v8, 0x7f05

    invoke-virtual {p0, v8}, Lcom/htc/connectedMedia/ConnectedMedia;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 30
    .local v4, rlRootView:Landroid/widget/RelativeLayout;
    const-string v8, "common_glance_bkg"

    const v9, 0x20801c1

    invoke-static {p0, v8, v9}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 35
    const-string v8, "connected_media_btn"

    const v9, 0x7f020001

    invoke-static {p0, v8, v9}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 39
    .local v0, iconBgDrawableResId:I
    const v8, 0x7f050003

    invoke-virtual {p0, v8}, Lcom/htc/connectedMedia/ConnectedMedia;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 40
    .local v1, icon_music:Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 41
    const-string v8, "connected_media_icon_music"

    const v9, 0x7f020006

    invoke-static {p0, v8, v9}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 45
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 46
    new-instance v8, Lcom/htc/connectedMedia/ConnectedMedia$1;

    invoke-direct {v8, p0}, Lcom/htc/connectedMedia/ConnectedMedia$1;-><init>(Lcom/htc/connectedMedia/ConnectedMedia;)V

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    :cond_0
    const v8, 0x7f050004

    invoke-virtual {p0, v8}, Lcom/htc/connectedMedia/ConnectedMedia;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 59
    .local v5, text_music:Landroid/widget/TextView;
    if-eqz v5, :cond_1

    .line 60
    const v8, 0x7f040005

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    .line 64
    :cond_1
    const v8, 0x7f050005

    invoke-virtual {p0, v8}, Lcom/htc/connectedMedia/ConnectedMedia;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 65
    .local v2, icon_photo:Landroid/widget/ImageView;
    if-eqz v2, :cond_2

    .line 66
    const-string v8, "connected_media_icon_photo"

    const v9, 0x7f020007

    invoke-static {p0, v8, v9}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 71
    new-instance v8, Lcom/htc/connectedMedia/ConnectedMedia$2;

    invoke-direct {v8, p0}, Lcom/htc/connectedMedia/ConnectedMedia$2;-><init>(Lcom/htc/connectedMedia/ConnectedMedia;)V

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    :cond_2
    const v8, 0x7f050006

    invoke-virtual {p0, v8}, Lcom/htc/connectedMedia/ConnectedMedia;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 84
    .local v6, text_photo:Landroid/widget/TextView;
    if-eqz v6, :cond_3

    .line 85
    const v8, 0x7f040006

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    .line 89
    :cond_3
    const v8, 0x7f050007

    invoke-virtual {p0, v8}, Lcom/htc/connectedMedia/ConnectedMedia;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 90
    .local v3, icon_video:Landroid/widget/ImageView;
    if-eqz v3, :cond_4

    .line 91
    const-string v8, "connected_media_icon_video"

    const v9, 0x7f020008

    invoke-static {p0, v8, v9}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 96
    new-instance v8, Lcom/htc/connectedMedia/ConnectedMedia$3;

    invoke-direct {v8, p0}, Lcom/htc/connectedMedia/ConnectedMedia$3;-><init>(Lcom/htc/connectedMedia/ConnectedMedia;)V

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    :cond_4
    const v8, 0x7f050008

    invoke-virtual {p0, v8}, Lcom/htc/connectedMedia/ConnectedMedia;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 108
    .local v7, text_video:Landroid/widget/TextView;
    if-eqz v7, :cond_5

    .line 109
    const v8, 0x7f040007

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 111
    :cond_5
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/connectedMedia/ConnectedMedia;->requestWindowFeature(I)Z

    .line 23
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/htc/connectedMedia/ConnectedMedia;->setContentView(I)V

    .line 24
    invoke-direct {p0}, Lcom/htc/connectedMedia/ConnectedMedia;->resetLayout()V

    .line 25
    return-void
.end method
