.class Lcom/android/phone/InCallMenuItemView;
.super Landroid/widget/TextView;
.source "InCallMenuItemView.java"


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PHONE/InCallMenuItemView"


# instance fields
.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

.field private mIndicatorState:Z

.field private mIndicatorVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 54
    const/16 v5, 0x11

    invoke-virtual {p0, v5}, Lcom/android/phone/InCallMenuItemView;->setGravity(I)V

    .line 56
    sget-object v5, Lcom/android/internal/R$styleable;->MenuView:[I

    invoke-virtual {p1, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 59
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v5, -0x1

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 62
    .local v3, textAppearance:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    invoke-virtual {p0, v6}, Lcom/android/phone/InCallMenuItemView;->setClickable(Z)V

    .line 65
    invoke-virtual {p0, v6}, Lcom/android/phone/InCallMenuItemView;->setFocusable(Z)V

    .line 66
    invoke-virtual {p0, p1, v3}, Lcom/android/phone/InCallMenuItemView;->setTextAppearance(Landroid/content/Context;I)V

    .line 69
    invoke-virtual {p0}, Lcom/android/phone/InCallMenuItemView;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/phone/InCallMenuItemView;->getPaddingBottom()I

    move-result v6

    invoke-virtual {p0, v7, v5, v7, v6}, Lcom/android/phone/InCallMenuItemView;->setPadding(IIII)V

    .line 72
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.htc"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 74
    .local v2, res:Landroid/content/res/Resources;
    const v5, 0x20a0048

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 75
    .local v4, textColor:Landroid/content/res/ColorStateList;
    invoke-virtual {p0, v4}, Lcom/android/phone/InCallMenuItemView;->setTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v2           #res:Landroid/content/res/Resources;
    .end local v4           #textColor:Landroid/content/res/ColorStateList;
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v1

    .line 78
    .local v1, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "PHONE/InCallMenuItemView"

    const-string v6, "fail to update text color"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 200
    const-string v0, "PHONE/InCallMenuItemView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void
.end method

.method private setSingleLineMarquee()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 189
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallMenuItemView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 190
    invoke-virtual {p0, v1}, Lcom/android/phone/InCallMenuItemView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 191
    invoke-virtual {p0, v1}, Lcom/android/phone/InCallMenuItemView;->setSingleLine(Z)V

    .line 192
    return-void
.end method

.method private updateCompoundDrawables()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 161
    iget-object v0, p0, Lcom/android/phone/InCallMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 162
    const/16 v0, -0xa

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallMenuItemView;->setCompoundDrawablePadding(I)V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/phone/InCallMenuItemView;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/android/phone/InCallMenuItemView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 181
    return-void
.end method

.method private updateIndicator()V
    .locals 2

    .prologue
    .line 140
    iget-boolean v1, p0, Lcom/android/phone/InCallMenuItemView;->mIndicatorVisible:Z

    if-eqz v1, :cond_1

    .line 141
    iget-boolean v1, p0, Lcom/android/phone/InCallMenuItemView;->mIndicatorState:Z

    if-eqz v1, :cond_0

    const v0, 0x108000d

    .line 143
    .local v0, resId:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/InCallMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallMenuItemView;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 147
    .end local v0           #resId:I
    :goto_1
    return-void

    .line 141
    :cond_0
    const v0, 0x108000e

    goto :goto_0

    .line 145
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/InCallMenuItemView;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method


# virtual methods
.method public isVisible()Z
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/android/phone/InCallMenuItemView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/phone/InCallMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 121
    invoke-direct {p0}, Lcom/android/phone/InCallMenuItemView;->updateCompoundDrawables()V

    .line 124
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/InCallMenuItemView;->setSingleLineMarquee()V

    .line 125
    :cond_0
    return-void
.end method

.method public setIconResource(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/android/phone/InCallMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 133
    .local v0, iconDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 134
    return-void
.end method

.method public setIndicatorState(Z)V
    .locals 0
    .parameter "onoff"

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/phone/InCallMenuItemView;->mIndicatorState:Z

    .line 111
    invoke-direct {p0}, Lcom/android/phone/InCallMenuItemView;->updateIndicator()V

    .line 112
    invoke-direct {p0}, Lcom/android/phone/InCallMenuItemView;->updateCompoundDrawables()V

    .line 113
    return-void
.end method

.method public setIndicatorVisible(Z)V
    .locals 0
    .parameter "isVisible"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/phone/InCallMenuItemView;->mIndicatorVisible:Z

    .line 101
    invoke-direct {p0}, Lcom/android/phone/InCallMenuItemView;->updateIndicator()V

    .line 102
    invoke-direct {p0}, Lcom/android/phone/InCallMenuItemView;->updateCompoundDrawables()V

    .line 103
    return-void
.end method

.method public setVisible(Z)V
    .locals 1
    .parameter "isVisible"

    .prologue
    .line 87
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallMenuItemView;->setVisibility(I)V

    .line 88
    return-void

    .line 87
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/InCallMenuItemView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
