.class public abstract Lcom/htc/album/modules/ui/widget/ControlButton;
.super Ljava/lang/Object;
.source "ControlButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/modules/ui/widget/ControlButton$1;,
        Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;,
        Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleDismissListener;,
        Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonViewClickListener;,
        Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;,
        Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;,
        Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BUTTON:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final DEF_BUBBLE_SIZE:I = 0x5

.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final STYLE_BUBBLE:I = 0x5

.field public static final STYLE_FOOTER_BUTTON:I = 0x3

.field public static final STYLE_HEADER_BUTTON:I = 0x1


# instance fields
.field protected mBubbleAdapter:Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;

.field protected mBubbleDismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

.field protected mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

.field protected mBubbleItemClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;

.field protected mBubbleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/modules/ui/widget/BubbleButton;",
            ">;"
        }
    .end annotation
.end field

.field protected mButton:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TBUTTON;"
        }
    .end annotation
.end field

.field protected mButtonClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

.field protected mButtonStateChangeListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;

.field protected mGroupId:I

.field protected mId:I

.field protected mStyle:I

.field private mViewClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonViewClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/htc/album/modules/ui/widget/ControlButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/modules/ui/widget/ControlButton;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/view/View;III)V
    .locals 2
    .parameter
    .parameter "groupId"
    .parameter "btnId"
    .parameter "style"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBUTTON;III)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<TBUTTON;>;"
    .local p1, btn:Landroid/view/View;,"TBUTTON;"
    const/4 v1, 0x0

    .line 166
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleAdapter:Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;

    .line 56
    iput-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleList:Ljava/util/ArrayList;

    .line 58
    iput-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButtonClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

    .line 65
    iput-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButtonStateChangeListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;

    .line 108
    new-instance v0, Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonViewClickListener;

    invoke-direct {v0, v1}, Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonViewClickListener;-><init>(Lcom/htc/album/modules/ui/widget/ControlButton$1;)V

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mViewClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonViewClickListener;

    .line 146
    iput-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleDismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    .line 167
    iput-object p1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    .line 168
    iput p2, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mGroupId:I

    .line 169
    iput p3, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mId:I

    .line 170
    iput p4, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mStyle:I

    .line 171
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 173
    :cond_0
    return-void
.end method


# virtual methods
.method public addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;
    .locals 2
    .parameter "btnId"
    .parameter "imgResId"
    .parameter "txtResId"

    .prologue
    .line 266
    .local p0, this:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<TBUTTON;>;"
    iget v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mId:I

    invoke-virtual {p0, v1, p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->newBubbleButton(II)Lcom/htc/album/modules/ui/widget/BubbleButton;

    move-result-object v0

    .line 268
    .local v0, bubble:Lcom/htc/album/modules/ui/widget/BubbleButton;
    invoke-virtual {v0, p2}, Lcom/htc/album/modules/ui/widget/BubbleButton;->setImageResource(I)V

    .line 269
    invoke-virtual {v0, p3}, Lcom/htc/album/modules/ui/widget/BubbleButton;->setTextResource(I)V

    .line 272
    return-object v0
.end method

.method public addBubble(IILjava/lang/String;)Lcom/htc/album/modules/ui/widget/BubbleButton;
    .locals 2
    .parameter "btnId"
    .parameter "imgResId"
    .parameter "text"

    .prologue
    .line 256
    .local p0, this:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<TBUTTON;>;"
    iget v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mId:I

    invoke-virtual {p0, v1, p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->newBubbleButton(II)Lcom/htc/album/modules/ui/widget/BubbleButton;

    move-result-object v0

    .line 258
    .local v0, bubble:Lcom/htc/album/modules/ui/widget/BubbleButton;
    invoke-virtual {v0, p2}, Lcom/htc/album/modules/ui/widget/BubbleButton;->setImageResource(I)V

    .line 259
    invoke-virtual {v0, p3}, Lcom/htc/album/modules/ui/widget/BubbleButton;->setTextString(Ljava/lang/String;)V

    .line 262
    return-object v0
.end method

.method public addBubble(ILandroid/graphics/Bitmap;I)Lcom/htc/album/modules/ui/widget/BubbleButton;
    .locals 2
    .parameter "btnId"
    .parameter "bitmap"
    .parameter "txtResId"

    .prologue
    .line 276
    .local p0, this:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<TBUTTON;>;"
    iget v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mId:I

    invoke-virtual {p0, v1, p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->newBubbleButton(II)Lcom/htc/album/modules/ui/widget/BubbleButton;

    move-result-object v0

    .line 277
    .local v0, bubble:Lcom/htc/album/modules/ui/widget/BubbleButton;
    if-eqz p2, :cond_0

    .line 278
    invoke-virtual {v0, p2}, Lcom/htc/album/modules/ui/widget/BubbleButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 281
    :goto_0
    invoke-virtual {v0, p3}, Lcom/htc/album/modules/ui/widget/BubbleButton;->setTextResource(I)V

    .line 284
    return-object v0

    .line 280
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/BubbleButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public addBubble(ILandroid/graphics/Bitmap;Ljava/lang/String;)Lcom/htc/album/modules/ui/widget/BubbleButton;
    .locals 2
    .parameter "btnId"
    .parameter "bitmap"
    .parameter "text"

    .prologue
    .line 288
    .local p0, this:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<TBUTTON;>;"
    iget v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mId:I

    invoke-virtual {p0, v1, p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->newBubbleButton(II)Lcom/htc/album/modules/ui/widget/BubbleButton;

    move-result-object v0

    .line 289
    .local v0, bubble:Lcom/htc/album/modules/ui/widget/BubbleButton;
    if-eqz p2, :cond_0

    .line 290
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/BubbleButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 293
    :goto_0
    invoke-virtual {v0, p3}, Lcom/htc/album/modules/ui/widget/BubbleButton;->setTextString(Ljava/lang/String;)V

    .line 296
    return-object v0

    .line 292
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/BubbleButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public addBubble(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/htc/album/modules/ui/widget/BubbleButton;
    .locals 2
    .parameter "btnId"
    .parameter "drawable"
    .parameter "text"

    .prologue
    .line 244
    .local p0, this:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<TBUTTON;>;"
    iget v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mId:I

    invoke-virtual {p0, v1, p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->newBubbleButton(II)Lcom/htc/album/modules/ui/widget/BubbleButton;

    move-result-object v0

    .line 245
    .local v0, bubble:Lcom/htc/album/modules/ui/widget/BubbleButton;
    if-eqz p2, :cond_0

    .line 246
    invoke-virtual {v0, p2}, Lcom/htc/album/modules/ui/widget/BubbleButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 249
    :goto_0
    invoke-virtual {v0, p3}, Lcom/htc/album/modules/ui/widget/BubbleButton;->setTextString(Ljava/lang/String;)V

    .line 252
    return-object v0

    .line 248
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/BubbleButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 228
    .local p0, this:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<TBUTTON;>;"
    invoke-virtual {p0}, Lcom/htc/album/modules/ui/widget/ControlButton;->clearBubble()V

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    .line 230
    return-void
.end method

.method public clearBubble()V
    .locals 2

    .prologue
    .local p0, this:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<TBUTTON;>;"
    const/4 v1, 0x0

    .line 352
    invoke-virtual {p0}, Lcom/htc/album/modules/ui/widget/ControlButton;->dismissBubble()V

    .line 353
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 356
    :cond_0
    iput-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleList:Ljava/util/ArrayList;

    .line 357
    iput-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleAdapter:Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;

    .line 358
    iput-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    .line 359
    iput-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleItemClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;

    .line 360
    return-void
.end method

.method public dismissBubble()V
    .locals 1

    .prologue
    .line 346
    .local p0, this:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<TBUTTON;>;"
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    invoke-virtual {v0}, Lcom/htc/widget/HtcPopupWindowWrapper;->dismiss()V

    .line 348
    :cond_0
    return-void
.end method

.method public getButton()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBUTTON;"
        }
    .end annotation

    .prologue
    .line 187
    .local p0, this:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<TBUTTON;>;"
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 177
    .local p0, this:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<TBUTTON;>;"
    iget v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mGroupId:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 182
    .local p0, this:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<TBUTTON;>;"
    iget v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mId:I

    return v0
.end method

.method public hasBubble()Z
    .locals 1

    .prologue
    .line 311
    .local p0, this:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<TBUTTON;>;"
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 223
    .local p0, this:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<TBUTTON;>;"
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 224
    return-void
.end method

.method public isBubbleShowing()Z
    .locals 1

    .prologue
    .line 364
    .local p0, this:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<TBUTTON;>;"
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    invoke-virtual {v0}, Lcom/htc/widget/HtcPopupWindowWrapper;->isPopupShowing()Z

    move-result v0

    goto :goto_0
.end method

.method protected newBubbleButton(II)Lcom/htc/album/modules/ui/widget/BubbleButton;
    .locals 3
    .parameter "groupId"
    .parameter "btnId"

    .prologue
    .local p0, this:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<TBUTTON;>;"
    const/4 v2, 0x5

    .line 301
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 302
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleList:Ljava/util/ArrayList;

    .line 304
    :cond_0
    new-instance v0, Lcom/htc/album/modules/ui/widget/BubbleButton;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/htc/album/modules/ui/widget/BubbleButton;-><init>(Lcom/htc/widget/HtcListItem;III)V

    .line 305
    .local v0, bubble:Lcom/htc/album/modules/ui/widget/BubbleButton;
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 204
    .local p0, this:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<TBUTTON;>;"
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 205
    return-void
.end method

.method setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 213
    .local p0, this:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<TBUTTON;>;"
    iput p1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mId:I

    .line 214
    return-void
.end method

.method public abstract setImageBitmap(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setImageDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setImageResource(I)V
.end method

.method public setOnClickListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 192
    .local p0, this:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<TBUTTON;>;"
    iput-object p1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButtonClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

    .line 193
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mViewClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonViewClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mViewClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonViewClickListener;

    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButtonClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonViewClickListener;->setControlButtonListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;)V

    .line 195
    return-void
.end method

.method public setOnStateChangeListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 199
    .local p0, this:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<TBUTTON;>;"
    iput-object p1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButtonStateChangeListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;

    .line 200
    return-void
.end method

.method public abstract setTextResource(I)V
.end method

.method public abstract setTextString(Ljava/lang/String;)V
.end method

.method public show()V
    .locals 2

    .prologue
    .line 218
    .local p0, this:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<TBUTTON;>;"
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 219
    return-void
.end method

.method public showBubble()Z
    .locals 3

    .prologue
    .line 316
    .local p0, this:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<TBUTTON;>;"
    invoke-virtual {p0}, Lcom/htc/album/modules/ui/widget/ControlButton;->hasBubble()Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    const/4 v0, 0x0

    .line 341
    :goto_0
    return v0

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleAdapter:Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;

    if-nez v0, :cond_1

    .line 321
    new-instance v0, Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;

    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleAdapter:Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    if-nez v0, :cond_2

    .line 326
    new-instance v0, Lcom/htc/widget/HtcPopupWindowWrapper;

    invoke-direct {v0}, Lcom/htc/widget/HtcPopupWindowWrapper;-><init>()V

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    .line 327
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcPopupWindowWrapper;->setArchorView(Landroid/view/View;)V

    .line 328
    new-instance v0, Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;

    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    invoke-direct {v0, v1}, Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;-><init>(Lcom/htc/widget/HtcPopupWindowWrapper;)V

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleItemClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;

    .line 329
    new-instance v0, Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleDismissListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleDismissListener;-><init>(Lcom/htc/album/modules/ui/widget/ControlButton;Lcom/htc/album/modules/ui/widget/ControlButton$1;)V

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleDismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    .line 332
    :cond_2
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleItemClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;

    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButtonClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;->setControlBubbleListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;)V

    .line 333
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleAdapter:Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcPopupWindowWrapper;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 334
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleItemClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcPopupWindowWrapper;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 335
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleDismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcPopupWindowWrapper;->setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V

    .line 336
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mBubbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    invoke-virtual {v0}, Lcom/htc/widget/HtcPopupWindowWrapper;->showPopupWindow()V

    .line 338
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButtonStateChangeListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;

    if-eqz v0, :cond_3

    .line 339
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButtonStateChangeListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;

    invoke-interface {v0}, Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;->onBubblePopped()V

    .line 341
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method
