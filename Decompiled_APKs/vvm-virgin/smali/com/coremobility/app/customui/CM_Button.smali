.class public Lcom/coremobility/app/customui/CM_Button;
.super Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public setBackgroundResource(I)V
    .locals 1

    const v0, 0x7f020022

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f020023

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    return-void
.end method
