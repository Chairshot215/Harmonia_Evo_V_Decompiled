.class public Lcom/htc/music/DeleteItemsActivity;
.super Landroid/app/Activity;
.source "DeleteItemsActivity.java"


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mButtonClicked:Landroid/view/View$OnClickListener;

.field private mDrmUri:Ljava/lang/String;

.field private mItemList:[I

.field private mPrompt:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/DeleteItemsActivity;->mDrmUri:Ljava/lang/String;

    new-instance v0, Lcom/htc/music/DeleteItemsActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/DeleteItemsActivity$2;-><init>(Lcom/htc/music/DeleteItemsActivity;)V

    iput-object v0, p0, Lcom/htc/music/DeleteItemsActivity;->mButtonClicked:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/DeleteItemsActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DeleteItemsActivity;->mDrmUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/DeleteItemsActivity;)[I
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DeleteItemsActivity;->mItemList:[I

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/htc/music/DeleteItemsActivity;->setVolumeControlStream(I)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/music/DeleteItemsActivity;->requestWindowFeature(I)Z

    const v2, 0x7f030017

    invoke-virtual {p0, v2}, Lcom/htc/music/DeleteItemsActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/htc/music/DeleteItemsActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    const v2, 0x7f08004f

    invoke-virtual {p0, v2}, Lcom/htc/music/DeleteItemsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/htc/music/DeleteItemsActivity;->mPrompt:Landroid/widget/TextView;

    const v2, 0x7f080050

    invoke-virtual {p0, v2}, Lcom/htc/music/DeleteItemsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/htc/music/DeleteItemsActivity;->mButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/htc/music/DeleteItemsActivity;->mButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/htc/music/DeleteItemsActivity;->mButtonClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f080051

    invoke-virtual {p0, v2}, Lcom/htc/music/DeleteItemsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v3, Lcom/htc/music/DeleteItemsActivity$1;

    invoke-direct {v3, p0}, Lcom/htc/music/DeleteItemsActivity$1;-><init>(Lcom/htc/music/DeleteItemsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/htc/music/DeleteItemsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "description"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "audioidlist"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/DeleteItemsActivity;->mItemList:[I

    const-string v2, "drm"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/DeleteItemsActivity;->mDrmUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/music/DeleteItemsActivity;->mPrompt:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
