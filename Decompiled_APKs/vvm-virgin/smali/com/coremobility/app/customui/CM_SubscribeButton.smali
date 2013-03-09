.class public Lcom/coremobility/app/customui/CM_SubscribeButton;
.super Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    if-nez p1, :cond_0

    const/high16 v0, -0x100

    invoke-super {p0, v0}, Landroid/widget/Button;->setTextColor(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
