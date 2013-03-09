.class public Lcom/htc/opensense/album/ControlTitleBar;
.super Lcom/htc/opensense/album/ControlBase;
.source "ControlTitleBar.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/opensense/album/ControlTitleBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/ControlTitleBar;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/opensense/album/ControlBase;-><init>(ILandroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public setImageViewBackgroundResource(II)Landroid/view/View;
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/htc/opensense/album/ControlBase;->mRoot:Landroid/view/View;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/htc/opensense/album/ControlBase;->mRoot:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public setText(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense/album/ControlBase;->mRoot:Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/album/ControlBase;->mRoot:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
