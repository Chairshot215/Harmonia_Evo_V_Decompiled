.class public Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;
.super Landroid/app/Dialog;
.source "ColorPickerDialog.java"

# interfaces
.implements Lcom/m0narx/tweaks/colorpicker/ColorPickerView$OnColorChangedListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog$OnColorChangedListener;
    }
.end annotation


# instance fields
.field private mColorPicker:Lcom/m0narx/tweaks/colorpicker/ColorPickerView;

.field private mListener:Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog$OnColorChangedListener;

.field private mNewColor:Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;

.field private mOldColor:Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "initialColor"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-direct {p0, p2}, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->init(I)V

    .line 35
    return-void
.end method

.method private init(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 41
    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->setUp(I)V

    .line 43
    return-void
.end method

.method private setUp(I)V
    .locals 6
    .parameter "color"

    .prologue
    const/4 v5, 0x0

    .line 47
    invoke-virtual {p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 49
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030004

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 51
    .local v1, layout:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->setContentView(Landroid/view/View;)V

    .line 53
    const v2, 0x7f050003

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->setTitle(I)V

    .line 55
    const v2, 0x7f090011

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;

    iput-object v2, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->mColorPicker:Lcom/m0narx/tweaks/colorpicker/ColorPickerView;

    .line 56
    const v2, 0x7f090012

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;

    iput-object v2, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->mOldColor:Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;

    .line 57
    const v2, 0x7f090013

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;

    iput-object v2, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->mNewColor:Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;

    .line 59
    iget-object v2, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->mOldColor:Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;

    invoke-virtual {v2}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 60
    iget-object v3, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->mColorPicker:Lcom/m0narx/tweaks/colorpicker/ColorPickerView;

    invoke-virtual {v3}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->getDrawingOffset()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 62
    iget-object v4, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->mColorPicker:Lcom/m0narx/tweaks/colorpicker/ColorPickerView;

    invoke-virtual {v4}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->getDrawingOffset()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 59
    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 66
    iget-object v2, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->mOldColor:Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;

    invoke-virtual {v2, p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v2, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->mNewColor:Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;

    invoke-virtual {v2, p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v2, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->mColorPicker:Lcom/m0narx/tweaks/colorpicker/ColorPickerView;

    invoke-virtual {v2, p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->setOnColorChangedListener(Lcom/m0narx/tweaks/colorpicker/ColorPickerView$OnColorChangedListener;)V

    .line 69
    iget-object v2, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->mOldColor:Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;

    invoke-virtual {v2, p1}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->setColor(I)V

    .line 70
    iget-object v2, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->mColorPicker:Lcom/m0narx/tweaks/colorpicker/ColorPickerView;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->setColor(IZ)V

    .line 72
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->mColorPicker:Lcom/m0narx/tweaks/colorpicker/ColorPickerView;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->getColor()I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090013

    if-ne v0, v1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->mListener:Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog$OnColorChangedListener;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->mListener:Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog$OnColorChangedListener;

    iget-object v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->mNewColor:Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->getColor()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog$OnColorChangedListener;->onColorChanged(I)V

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->dismiss()V

    .line 104
    return-void
.end method

.method public onColorChanged(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->mNewColor:Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;

    invoke-virtual {v0, p1}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->setColor(I)V

    .line 77
    return-void
.end method

.method public setAlphaSliderVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->mColorPicker:Lcom/m0narx/tweaks/colorpicker/ColorPickerView;

    invoke-virtual {v0, p1}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->setAlphaSliderVisible(Z)V

    .line 81
    return-void
.end method

.method public setOnColorChangedListener(Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog$OnColorChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog;->mListener:Lcom/m0narx/tweaks/colorpicker/ColorPickerDialog$OnColorChangedListener;

    .line 90
    return-void
.end method
