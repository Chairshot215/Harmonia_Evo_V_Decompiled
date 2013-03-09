.class public final Lcom/coremobility/app/customui/a;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private a:Z

.field private b:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremobility/app/customui/a;->a:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0b0020

    invoke-virtual {p0, v0}, Lcom/coremobility/app/customui/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/coremobility/app/customui/a;->b:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public final isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/coremobility/app/customui/a;->a:Z

    return v0
.end method

.method public final setChecked(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/coremobility/app/customui/a;->a:Z

    iget-object v0, p0, Lcom/coremobility/app/customui/a;->b:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/coremobility/app/customui/a;->a:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public final toggle()V
    .locals 1

    iget-boolean v0, p0, Lcom/coremobility/app/customui/a;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/coremobility/app/customui/a;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
