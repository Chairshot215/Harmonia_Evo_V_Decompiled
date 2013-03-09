.class public Lcom/htc/opensense/album/ControlButton;
.super Ljava/lang/Object;
.source "ControlButton.java"


# static fields
.field public static final BUTTON_IMAGE:I = 0x0

.field public static final BUTTON_TEXT:I = 0x1

.field public static final BUTTON_TEXTIMAGE:I = 0x2

.field public static final tag:Ljava/lang/String; = "ControlButton"


# instance fields
.field mButton:Landroid/view/View;

.field private mId:I

.field private mResId:I

.field private mSelector:I

.field private mText:Ljava/lang/String;

.field private mType:I

.field private mViewId:I


# direct methods
.method public constructor <init>(Landroid/view/View;IIII)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    iput p2, p0, Lcom/htc/opensense/album/ControlButton;->mId:I

    iput p3, p0, Lcom/htc/opensense/album/ControlButton;->mViewId:I

    iput p4, p0, Lcom/htc/opensense/album/ControlButton;->mResId:I

    iput p5, p0, Lcom/htc/opensense/album/ControlButton;->mType:I

    iget v2, p0, Lcom/htc/opensense/album/ControlButton;->mType:I

    if-nez v2, :cond_3

    iput p4, p0, Lcom/htc/opensense/album/ControlButton;->mSelector:I

    iget v2, p0, Lcom/htc/opensense/album/ControlButton;->mViewId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/htc/widget/HtcFooterButton;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p4}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    :cond_0
    iput-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    :goto_0
    iget-object v2, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget v2, p0, Lcom/htc/opensense/album/ControlButton;->mViewId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p4}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_2
    iput-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/htc/opensense/album/ControlButton;->mViewId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget v2, p0, Lcom/htc/opensense/album/ControlButton;->mResId:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    iput-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/view/View;IIIII)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    iput p2, p0, Lcom/htc/opensense/album/ControlButton;->mId:I

    iput p3, p0, Lcom/htc/opensense/album/ControlButton;->mViewId:I

    iput p4, p0, Lcom/htc/opensense/album/ControlButton;->mResId:I

    iput p6, p0, Lcom/htc/opensense/album/ControlButton;->mType:I

    iget v2, p0, Lcom/htc/opensense/album/ControlButton;->mType:I

    if-nez v2, :cond_3

    iput p4, p0, Lcom/htc/opensense/album/ControlButton;->mSelector:I

    iget v2, p0, Lcom/htc/opensense/album/ControlButton;->mViewId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/htc/widget/HtcFooterButton;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p4}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    :cond_0
    iput-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    :goto_0
    iget-object v2, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget v2, p0, Lcom/htc/opensense/album/ControlButton;->mViewId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p4}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_2
    iput-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    iget v3, p0, Lcom/htc/opensense/album/ControlButton;->mType:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/htc/opensense/album/ControlButton;->mViewId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget v2, p0, Lcom/htc/opensense/album/ControlButton;->mResId:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    iput-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    goto :goto_0

    :cond_4
    iput p5, p0, Lcom/htc/opensense/album/ControlButton;->mSelector:I

    iget v2, p0, Lcom/htc/opensense/album/ControlButton;->mViewId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget v2, p0, Lcom/htc/opensense/album/ControlButton;->mResId:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    invoke-virtual {v0, v4, p5, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iput-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/view/View;IILjava/lang/String;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    const/4 v1, 0x1

    iput v1, p0, Lcom/htc/opensense/album/ControlButton;->mType:I

    iput p2, p0, Lcom/htc/opensense/album/ControlButton;->mId:I

    iput p3, p0, Lcom/htc/opensense/album/ControlButton;->mViewId:I

    iput-object p4, p0, Lcom/htc/opensense/album/ControlButton;->mText:Ljava/lang/String;

    iget v1, p0, Lcom/htc/opensense/album/ControlButton;->mViewId:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    instance-of v0, p1, Lcom/htc/widget/HtcFooterButton;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/opensense/album/ControlButton;->mType:I

    if-nez v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iget v1, p0, Lcom/htc/opensense/album/ControlButton;->mSelector:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/htc/opensense/album/ControlButton;->mType:I

    if-nez v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageButton;

    iget v1, p0, Lcom/htc/opensense/album/ControlButton;->mSelector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Landroid/widget/Button;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/htc/opensense/album/ControlButton;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/htc/opensense/album/ControlButton;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/htc/opensense/album/ControlButton;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    iget v1, p0, Lcom/htc/opensense/album/ControlButton;->mSelector:I

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string v0, "ControlButton"

    const-string v1, "bindView. wrong view."

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/album/ControlButton;->mId:I

    return v0
.end method

.method public getImageSelector()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/album/ControlButton;->mSelector:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/album/ControlButton;->mType:I

    return v0
.end method

.method public getViewId()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/album/ControlButton;->mViewId:I

    return v0
.end method

.method public refreshLayout(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    iget v2, p0, Lcom/htc/opensense/album/ControlButton;->mType:I

    if-nez v2, :cond_3

    iget v2, p0, Lcom/htc/opensense/album/ControlButton;->mViewId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/htc/widget/HtcFooterButton;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/htc/opensense/album/ControlButton;->mSelector:I

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    :cond_0
    iput-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    :goto_0
    iget-object v2, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget v2, p0, Lcom/htc/opensense/album/ControlButton;->mViewId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget v2, p0, Lcom/htc/opensense/album/ControlButton;->mSelector:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_2
    iput-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    iget v3, p0, Lcom/htc/opensense/album/ControlButton;->mType:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/htc/opensense/album/ControlButton;->mViewId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget v2, p0, Lcom/htc/opensense/album/ControlButton;->mResId:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    iput-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/htc/opensense/album/ControlButton;->mViewId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget v2, p0, Lcom/htc/opensense/album/ControlButton;->mResId:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    iget v2, p0, Lcom/htc/opensense/album/ControlButton;->mSelector:I

    invoke-virtual {v0, v4, v2, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iput-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    instance-of v0, v0, Lcom/htc/widget/HtcFooterButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setImageSelector(I)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/opensense/album/ControlButton;->mType:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/opensense/album/ControlButton;->mType:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iput p1, p0, Lcom/htc/opensense/album/ControlButton;->mSelector:I

    iget v0, p0, Lcom/htc/opensense/album/ControlButton;->mType:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    instance-of v0, v0, Lcom/htc/widget/HtcFooterButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iget v1, p0, Lcom/htc/opensense/album/ControlButton;->mSelector:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    iget v1, p0, Lcom/htc/opensense/album/ControlButton;->mSelector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    iget v2, p0, Lcom/htc/opensense/album/ControlButton;->mSelector:I

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setText(I)Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/opensense/album/ControlButton;->mType:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/htc/opensense/album/ControlButton;->mType:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    move v0, v1

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/opensense/album/ControlButton;->mType:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/htc/opensense/album/ControlButton;->mType:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    move v0, v1

    goto :goto_0
.end method

.method public setVisibility(I)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/ControlButton;->mButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method
