.class public Lcom/android/phone/widget/ControlButton;
.super Landroid/widget/CheckBox;
.source "ControlButton.java"


# static fields
.field private static CHECKED_STATE_SET:[I

.field private static PRESSED_STATE_SET_INDEX:I


# instance fields
.field private mButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private mCheckable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 39
    new-array v0, v3, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/android/phone/widget/ControlButton;->CHECKED_STATE_SET:[I

    .line 40
    sput v3, Lcom/android/phone/widget/ControlButton;->PRESSED_STATE_SET_INDEX:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/widget/ControlButton;->mCheckable:Z

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/widget/ControlButton;->mCheckable:Z

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/widget/ControlButton;->mCheckable:Z

    .line 45
    return-void
.end method


# virtual methods
.method public isCheckable()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/phone/widget/ControlButton;->mCheckable:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 63
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 64
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onDraw(Landroid/graphics/Canvas;)V

    .line 78
    :cond_1
    :goto_0
    return-void

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/android/phone/widget/ControlButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 67
    .local v0, buttonDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 69
    .local v1, height:I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 71
    .local v2, width:I
    invoke-virtual {p0}, Lcom/android/phone/widget/ControlButton;->getHeight()I

    move-result v5

    sub-int/2addr v5, v1

    div-int/lit8 v4, v5, 0x2

    .line 72
    .local v4, y:I
    invoke-virtual {p0}, Lcom/android/phone/widget/ControlButton;->getWidth()I

    move-result v5

    sub-int/2addr v5, v2

    div-int/lit8 v3, v5, 0x2

    .line 74
    .local v3, x:I
    add-int v5, v3, v2

    add-int v6, v4, v1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 75
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .parameter "d"

    .prologue
    .line 112
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v4

    if-eqz v4, :cond_2

    instance-of v4, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v4, :cond_2

    .line 114
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .local v2, newSd:Landroid/graphics/drawable/StateListDrawable;
    move-object v3, p1

    .line 115
    check-cast v3, Landroid/graphics/drawable/StateListDrawable;

    .line 116
    .local v3, sd:Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v0

    .line 118
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 119
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateSet(I)[I

    move-result-object v4

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 120
    sget v4, Lcom/android/phone/widget/ControlButton;->PRESSED_STATE_SET_INDEX:I

    if-ne v1, v4, :cond_0

    .line 121
    sget-object v4, Lcom/android/phone/widget/ControlButton;->CHECKED_STATE_SET:[I

    sget v5, Lcom/android/phone/widget/ControlButton;->PRESSED_STATE_SET_INDEX:I

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 118
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    :cond_1
    move-object p1, v2

    .line 127
    .end local v0           #count:I
    .end local v1           #index:I
    .end local v2           #newSd:Landroid/graphics/drawable/StateListDrawable;
    .end local v3           #sd:Landroid/graphics/drawable/StateListDrawable;
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "d"

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0, v1, p1, v1, v1}, Lcom/android/phone/widget/ControlButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 92
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    iput-object p1, p0, Lcom/android/phone/widget/ControlButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setCheckable(Z)V
    .locals 0
    .parameter "checkable"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/phone/widget/ControlButton;->mCheckable:Z

    .line 103
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/phone/widget/ControlButton;->mCheckable:Z

    if-eqz v0, :cond_0

    .line 97
    invoke-super {p0}, Landroid/widget/CheckBox;->toggle()V

    .line 99
    :cond_0
    return-void
.end method
