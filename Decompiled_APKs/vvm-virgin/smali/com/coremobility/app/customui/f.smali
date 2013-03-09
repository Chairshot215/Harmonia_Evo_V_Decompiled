.class public final Lcom/coremobility/app/customui/f;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private a:Z

.field private b:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/view/LayoutInflater;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremobility/app/customui/f;->a:Z

    const/4 v0, 0x1

    invoke-virtual {p3, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0b0021

    invoke-virtual {p0, v0}, Lcom/coremobility/app/customui/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/coremobility/app/customui/f;->b:Landroid/widget/RadioButton;

    return-void
.end method


# virtual methods
.method public final isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/coremobility/app/customui/f;->a:Z

    return v0
.end method

.method public final setChecked(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/coremobility/app/customui/f;->a:Z

    iget-object v0, p0, Lcom/coremobility/app/customui/f;->b:Landroid/widget/RadioButton;

    iget-boolean v1, p0, Lcom/coremobility/app/customui/f;->a:Z

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method

.method public final toggle()V
    .locals 1

    iget-boolean v0, p0, Lcom/coremobility/app/customui/f;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/coremobility/app/customui/f;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
