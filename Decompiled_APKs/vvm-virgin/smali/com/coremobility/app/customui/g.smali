.class final Lcom/coremobility/app/customui/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/RatingBar$OnRatingBarChangeListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/coremobility/app/customui/CM_RatingBarComponent;


# direct methods
.method constructor <init>(Lcom/coremobility/app/customui/CM_RatingBarComponent;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/customui/g;->b:Lcom/coremobility/app/customui/CM_RatingBarComponent;

    iput-object p2, p0, Lcom/coremobility/app/customui/g;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRatingChanged(Landroid/widget/RatingBar;FZ)V
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    float-to-int v1, p2

    const-string v0, ""

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/coremobility/app/customui/g;->b:Lcom/coremobility/app/customui/CM_RatingBarComponent;

    iget-object v1, v1, Lcom/coremobility/app/customui/CM_RatingBarComponent;->b:Landroid/widget/Button;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/coremobility/app/customui/g;->b:Lcom/coremobility/app/customui/CM_RatingBarComponent;

    iget-object v1, v1, Lcom/coremobility/app/customui/CM_RatingBarComponent;->a:Landroid/widget/RatingBar;

    invoke-virtual {v1, v5}, Landroid/widget/RatingBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/coremobility/app/customui/g;->b:Lcom/coremobility/app/customui/CM_RatingBarComponent;

    iget-object v1, v1, Lcom/coremobility/app/customui/CM_RatingBarComponent;->a:Landroid/widget/RatingBar;

    invoke-virtual {v1, p2}, Landroid/widget/RatingBar;->setRating(F)V

    iget-object v1, p0, Lcom/coremobility/app/customui/g;->b:Lcom/coremobility/app/customui/CM_RatingBarComponent;

    iget-object v1, v1, Lcom/coremobility/app/customui/CM_RatingBarComponent;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coremobility/app/customui/g;->a:Landroid/content/Context;

    const v3, 0x7f0c010e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/coremobility/app/customui/g;->a:Landroid/content/Context;

    const v1, 0x7f0c00ff

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/coremobility/app/customui/g;->a:Landroid/content/Context;

    const v1, 0x7f0c0100

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/coremobility/app/customui/g;->a:Landroid/content/Context;

    const v1, 0x7f0c0101

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/coremobility/app/customui/g;->a:Landroid/content/Context;

    const v1, 0x7f0c0102

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/coremobility/app/customui/g;->a:Landroid/content/Context;

    const v1, 0x7f0c0103

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coremobility/app/customui/g;->b:Lcom/coremobility/app/customui/CM_RatingBarComponent;

    iget-object v0, v0, Lcom/coremobility/app/customui/CM_RatingBarComponent;->b:Landroid/widget/Button;

    const v1, 0x7f0c010b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/coremobility/app/customui/g;->b:Lcom/coremobility/app/customui/CM_RatingBarComponent;

    iget-object v0, v0, Lcom/coremobility/app/customui/CM_RatingBarComponent;->a:Landroid/widget/RatingBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/customui/g;->b:Lcom/coremobility/app/customui/CM_RatingBarComponent;

    iget-object v0, v0, Lcom/coremobility/app/customui/CM_RatingBarComponent;->c:Landroid/widget/TextView;

    const v1, 0x7f0c010c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
