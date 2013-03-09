.class public Lcom/htc/album/modules/ui/widget/GenericHeaderBar;
.super Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
.source "GenericHeaderBar.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/modules/ui/widget/GalleryHeaderBar",
        "<",
        "Lcom/htc/widget/HeaderBar;",
        ">;"
    }
.end annotation


# static fields
.field protected static final DEF_BUTTON_SIZE:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mHeaderBack:Lcom/htc/album/modules/ui/widget/HeaderButton;

.field private mHeaderTitle:Lcom/htc/widget/HeaderBarText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/htc/album/modules/ui/widget/GenericHeaderBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/modules/ui/widget/GenericHeaderBar;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "resId"

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;-><init>(Landroid/content/Context;I)V

    .line 30
    iput-object v2, p0, Lcom/htc/album/modules/ui/widget/GenericHeaderBar;->mHeaderBack:Lcom/htc/album/modules/ui/widget/HeaderButton;

    .line 31
    iput-object v2, p0, Lcom/htc/album/modules/ui/widget/GenericHeaderBar;->mHeaderTitle:Lcom/htc/widget/HeaderBarText;

    .line 44
    :try_start_0
    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v2, Lcom/htc/widget/HeaderBar;

    const v3, 0x7f0a003b

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBarImage;

    .line 45
    .local v1, headerBack:Lcom/htc/widget/HeaderBarImage;
    if-eqz v1, :cond_0

    .line 47
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setClickable(Z)V

    .line 48
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 49
    new-instance v2, Lcom/htc/album/modules/ui/widget/HeaderButton;

    const/4 v3, 0x0

    const/16 v4, 0x13

    const/4 v5, 0x1

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/htc/album/modules/ui/widget/HeaderButton;-><init>(Lcom/htc/widget/HeaderBarImage;III)V

    iput-object v2, p0, Lcom/htc/album/modules/ui/widget/GenericHeaderBar;->mHeaderBack:Lcom/htc/album/modules/ui/widget/HeaderButton;

    .line 50
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/album/modules/ui/widget/GenericHeaderBar;->setBackButtonEnabled(Z)V

    .line 52
    :cond_0
    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v2, Lcom/htc/widget/HeaderBar;

    const v3, 0x7f0a003c

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HeaderBarText;

    iput-object v2, p0, Lcom/htc/album/modules/ui/widget/GenericHeaderBar;->mHeaderTitle:Lcom/htc/widget/HeaderBarText;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v1           #headerBack:Lcom/htc/widget/HeaderBarImage;
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 56
    .local v0, ex:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/album/modules/ui/widget/GenericHeaderBar;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[GalleryHeaderBar] <init> Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public enableDivider(ZZ)V
    .locals 1
    .parameter "enableLeft"
    .parameter "enableRight"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v0, Lcom/htc/widget/HeaderBar;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBar;->enableLeftDivider(Z)V

    .line 177
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v0, Lcom/htc/widget/HeaderBar;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HeaderBar;->enableRightDivider(Z)V

    .line 178
    return-void
.end method

.method public final getBackButton()Lcom/htc/album/modules/ui/widget/HeaderButton;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/GenericHeaderBar;->mHeaderBack:Lcom/htc/album/modules/ui/widget/HeaderButton;

    return-object v0
.end method

.method public getMaxButtonCount()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x3

    return v0
.end method

.method public bridge synthetic onNewButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 23
    invoke-virtual/range {p0 .. p5}, Lcom/htc/album/modules/ui/widget/GenericHeaderBar;->onNewButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/HeaderButton;

    move-result-object v0

    return-object v0
.end method

.method public onNewButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/HeaderButton;
    .locals 3
    .parameter "context"
    .parameter "groupId"
    .parameter "btnId"
    .parameter "imgResId"
    .parameter "txtResId"

    .prologue
    const/4 v2, 0x1

    .line 77
    new-instance v0, Lcom/htc/widget/HeaderBarImage;

    invoke-direct {v0, p1}, Lcom/htc/widget/HeaderBarImage;-><init>(Landroid/content/Context;)V

    .line 78
    .local v0, headerBtn:Lcom/htc/widget/HeaderBarImage;
    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 79
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v1, Lcom/htc/widget/HeaderBar;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HeaderBar;->addRightView(Landroid/view/View;)V

    .line 81
    new-instance v1, Lcom/htc/album/modules/ui/widget/HeaderButton;

    invoke-direct {v1, v0, p2, p3, v2}, Lcom/htc/album/modules/ui/widget/HeaderButton;-><init>(Lcom/htc/widget/HeaderBarImage;III)V

    return-object v1
.end method

.method public final setBackButtonEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/GenericHeaderBar;->mHeaderBack:Lcom/htc/album/modules/ui/widget/HeaderButton;

    if-nez v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/GenericHeaderBar;->mHeaderBack:Lcom/htc/album/modules/ui/widget/HeaderButton;

    invoke-virtual {v0, p1}, Lcom/htc/album/modules/ui/widget/HeaderButton;->setEnabled(Z)V

    .line 126
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/GenericHeaderBar;->mHeaderBack:Lcom/htc/album/modules/ui/widget/HeaderButton;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/HeaderButton;->getButton()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->enableBackIndicator(Z)V

    goto :goto_0
.end method

.method public final setBackButtonImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/GenericHeaderBar;->mHeaderBack:Lcom/htc/album/modules/ui/widget/HeaderButton;

    if-nez v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/GenericHeaderBar;->mHeaderBack:Lcom/htc/album/modules/ui/widget/HeaderButton;

    invoke-virtual {v0, p1}, Lcom/htc/album/modules/ui/widget/HeaderButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public final setBackButtonImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/GenericHeaderBar;->mHeaderBack:Lcom/htc/album/modules/ui/widget/HeaderButton;

    if-nez v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/GenericHeaderBar;->mHeaderBack:Lcom/htc/album/modules/ui/widget/HeaderButton;

    invoke-virtual {v0, p1}, Lcom/htc/album/modules/ui/widget/HeaderButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setBackButtonImageMode(I)V
    .locals 2
    .parameter "imageMode"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/GenericHeaderBar;->mHeaderBack:Lcom/htc/album/modules/ui/widget/HeaderButton;

    if-nez v0, :cond_0

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/GenericHeaderBar;->mHeaderBack:Lcom/htc/album/modules/ui/widget/HeaderButton;

    invoke-virtual {v0, p1}, Lcom/htc/album/modules/ui/widget/HeaderButton;->setImageMode(I)V

    .line 186
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/GenericHeaderBar;->mHeaderBack:Lcom/htc/album/modules/ui/widget/HeaderButton;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/HeaderButton;->getButton()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setClickable(Z)V

    goto :goto_0
.end method

.method public final setBackButtonImageResource(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/GenericHeaderBar;->mHeaderBack:Lcom/htc/album/modules/ui/widget/HeaderButton;

    if-nez v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/GenericHeaderBar;->mHeaderBack:Lcom/htc/album/modules/ui/widget/HeaderButton;

    invoke-virtual {v0, p1}, Lcom/htc/album/modules/ui/widget/HeaderButton;->setImageResource(I)V

    goto :goto_0
.end method

.method public setButtonListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;)V
    .locals 1
    .parameter "clickListener"
    .parameter "stateListener"

    .prologue
    .line 201
    invoke-super {p0, p1, p2}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->setButtonListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;)V

    .line 202
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/GenericHeaderBar;->mHeaderBack:Lcom/htc/album/modules/ui/widget/HeaderButton;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/GenericHeaderBar;->mHeaderBack:Lcom/htc/album/modules/ui/widget/HeaderButton;

    invoke-virtual {v0, p1}, Lcom/htc/album/modules/ui/widget/HeaderButton;->setOnClickListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;)V

    .line 205
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/GenericHeaderBar;->mHeaderBack:Lcom/htc/album/modules/ui/widget/HeaderButton;

    invoke-virtual {v0, p2}, Lcom/htc/album/modules/ui/widget/HeaderButton;->setOnStateChangeListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;)V

    .line 207
    :cond_0
    return-void
.end method

.method public setSubtitle(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/GenericHeaderBar;->mHeaderTitle:Lcom/htc/widget/HeaderBarText;

    if-nez v0, :cond_0

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/GenericHeaderBar;->mHeaderTitle:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(I)V

    .line 117
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/GenericHeaderBar;->mHeaderTitle:Lcom/htc/widget/HeaderBarText;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/GenericHeaderBar;->mHeaderTitle:Lcom/htc/widget/HeaderBarText;

    if-nez v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/GenericHeaderBar;->mHeaderTitle:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/GenericHeaderBar;->mHeaderTitle:Lcom/htc/widget/HeaderBarText;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public setTitle(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/GenericHeaderBar;->mHeaderTitle:Lcom/htc/widget/HeaderBarText;

    if-nez v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/GenericHeaderBar;->mHeaderTitle:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 99
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/GenericHeaderBar;->mHeaderTitle:Lcom/htc/widget/HeaderBarText;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/GenericHeaderBar;->mHeaderTitle:Lcom/htc/widget/HeaderBarText;

    if-nez v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/GenericHeaderBar;->mHeaderTitle:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/GenericHeaderBar;->mHeaderTitle:Lcom/htc/widget/HeaderBarText;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public showProgressBar(Z)V
    .locals 3
    .parameter "show"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 155
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->mHeaderControlListener:Lcom/htc/album/modules/ui/widget/IControlBarHeaderListener;

    if-eqz v0, :cond_3

    .line 162
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->mHeaderControlListener:Lcom/htc/album/modules/ui/widget/IControlBarHeaderListener;

    invoke-interface {v0, p1}, Lcom/htc/album/modules/ui/widget/IControlBarHeaderListener;->onNotifyHeaderProgressBar(Z)V

    .line 164
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->mHeaderControlListener:Lcom/htc/album/modules/ui/widget/IControlBarHeaderListener;

    invoke-interface {v0}, Lcom/htc/album/modules/ui/widget/IControlBarHeaderListener;->isHeaderSnapShotLock()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v0, Lcom/htc/widget/HeaderBar;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBar;->setProgressVisibility(I)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 169
    :cond_3
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v0, Lcom/htc/widget/HeaderBar;

    if-eqz p1, :cond_4

    :goto_2
    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBar;->setProgressVisibility(I)V

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_2
.end method
