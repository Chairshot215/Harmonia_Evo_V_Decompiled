.class Lcom/htc/widget/HeaderBarImage$ImageSelectView;
.super Landroid/widget/ImageView;
.source "HeaderBarImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HeaderBarImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageSelectView"
.end annotation


# instance fields
.field private bitmapContent:Landroid/graphics/Bitmap;

.field private bitmapMask:Landroid/graphics/Bitmap;

.field private canvasContent:Landroid/graphics/Canvas;

.field private dstRectBottom:Landroid/graphics/Rect;

.field private dstRectTop:Landroid/graphics/Rect;

.field private erasePaint:Landroid/graphics/Paint;

.field private srcRectBottom:Landroid/graphics/Rect;

.field private srcRectTop:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/htc/widget/HeaderBarImage;


# direct methods
.method public constructor <init>(Lcom/htc/widget/HeaderBarImage;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 1107
    iput-object p1, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->this$0:Lcom/htc/widget/HeaderBarImage;

    .line 1108
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1094
    iput-object v0, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->erasePaint:Landroid/graphics/Paint;

    .line 1096
    iput-object v0, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->bitmapMask:Landroid/graphics/Bitmap;

    .line 1097
    iput-object v0, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->bitmapContent:Landroid/graphics/Bitmap;

    .line 1098
    iput-object v0, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->canvasContent:Landroid/graphics/Canvas;

    .line 1101
    iput-object v0, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->srcRectTop:Landroid/graphics/Rect;

    .line 1102
    iput-object v0, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->dstRectTop:Landroid/graphics/Rect;

    .line 1103
    iput-object v0, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->srcRectBottom:Landroid/graphics/Rect;

    .line 1104
    iput-object v0, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->dstRectBottom:Landroid/graphics/Rect;

    .line 1111
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->setClickable(Z)V

    .line 1112
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    #getter for: Lcom/htc/widget/HeaderBarImage;->imageSelectWidth:I
    invoke-static {p1}, Lcom/htc/widget/HeaderBarImage;->access$200(Lcom/htc/widget/HeaderBarImage;)I

    move-result v1

    #getter for: Lcom/htc/widget/HeaderBarImage;->imageSelectHeight:I
    invoke-static {p1}, Lcom/htc/widget/HeaderBarImage;->access$300(Lcom/htc/widget/HeaderBarImage;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1114
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->mContext:Landroid/content/Context;

    const-string v1, "common_select_photo"

    const v2, 0x2080080

    invoke-static {v0, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->setBackgroundResource(I)V

    .line 1118
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->initMaskEnvironment()V

    .line 1119
    return-void
.end method

.method private initMaskEnvironment()V
    .locals 12

    .prologue
    const/4 v10, 0x0

    .line 1123
    iget-object v7, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->this$0:Lcom/htc/widget/HeaderBarImage;

    #calls: Lcom/htc/widget/HeaderBarImage;->enableMaskBitmap()Z
    invoke-static {v7}, Lcom/htc/widget/HeaderBarImage;->access$100(Lcom/htc/widget/HeaderBarImage;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1179
    :cond_0
    :goto_0
    return-void

    .line 1126
    :cond_1
    iget-object v7, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->erasePaint:Landroid/graphics/Paint;

    if-nez v7, :cond_2

    .line 1128
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->erasePaint:Landroid/graphics/Paint;

    .line 1129
    iget-object v7, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->erasePaint:Landroid/graphics/Paint;

    new-instance v8, Landroid/graphics/PorterDuffXfermode;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1133
    :cond_2
    iget-object v7, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->bitmapMask:Landroid/graphics/Bitmap;

    if-nez v7, :cond_3

    .line 1135
    iget-object v7, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->this$0:Lcom/htc/widget/HeaderBarImage;

    #getter for: Lcom/htc/widget/HeaderBarImage;->imageSelectWidth:I
    invoke-static {v7}, Lcom/htc/widget/HeaderBarImage;->access$200(Lcom/htc/widget/HeaderBarImage;)I

    move-result v7

    iget v8, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->mPaddingLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->mPaddingRight:I

    sub-int v1, v7, v8

    .line 1136
    .local v1, contentWidth:I
    iget-object v7, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->this$0:Lcom/htc/widget/HeaderBarImage;

    #getter for: Lcom/htc/widget/HeaderBarImage;->imageSelectHeight:I
    invoke-static {v7}, Lcom/htc/widget/HeaderBarImage;->access$300(Lcom/htc/widget/HeaderBarImage;)I

    move-result v7

    iget v8, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->mPaddingTop:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->mPaddingBottom:I

    sub-int v0, v7, v8

    .line 1144
    .local v0, contentHeight:I
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1145
    .local v4, tempMaskBitmap:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1149
    .local v5, tempMaskCanvas:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x2080703

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1150
    .local v6, tempMaskDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6, v10, v10, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1151
    invoke-virtual {v6, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1153
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->bitmapMask:Landroid/graphics/Bitmap;

    .line 1154
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1155
    const/4 v4, 0x0

    .line 1157
    div-int/lit8 v3, v1, 0x3

    .line 1158
    .local v3, partialWidth:I
    div-int/lit8 v2, v0, 0x3

    .line 1161
    .local v2, partialHeight:I
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v10, v10, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->srcRectTop:Landroid/graphics/Rect;

    .line 1162
    new-instance v7, Landroid/graphics/Rect;

    sub-int v8, v0, v2

    invoke-direct {v7, v10, v8, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->srcRectBottom:Landroid/graphics/Rect;

    .line 1164
    new-instance v7, Landroid/graphics/Rect;

    iget v8, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->mPaddingLeft:I

    iget v9, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->mPaddingTop:I

    iget v10, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->mPaddingLeft:I

    add-int/2addr v10, v3

    iget v11, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->mPaddingTop:I

    add-int/2addr v11, v2

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->dstRectTop:Landroid/graphics/Rect;

    .line 1165
    new-instance v7, Landroid/graphics/Rect;

    iget v8, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->mPaddingLeft:I

    iget v9, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->mPaddingTop:I

    add-int/2addr v9, v0

    sub-int/2addr v9, v2

    iget v10, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->mPaddingLeft:I

    add-int/2addr v10, v3

    iget v11, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->mPaddingTop:I

    add-int/2addr v11, v0

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->dstRectBottom:Landroid/graphics/Rect;

    .line 1174
    .end local v0           #contentHeight:I
    .end local v1           #contentWidth:I
    .end local v2           #partialHeight:I
    .end local v3           #partialWidth:I
    .end local v4           #tempMaskBitmap:Landroid/graphics/Bitmap;
    .end local v5           #tempMaskCanvas:Landroid/graphics/Canvas;
    .end local v6           #tempMaskDrawable:Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v7, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->bitmapContent:Landroid/graphics/Bitmap;

    if-nez v7, :cond_4

    .line 1175
    iget-object v7, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->this$0:Lcom/htc/widget/HeaderBarImage;

    #getter for: Lcom/htc/widget/HeaderBarImage;->imageSelectWidth:I
    invoke-static {v7}, Lcom/htc/widget/HeaderBarImage;->access$200(Lcom/htc/widget/HeaderBarImage;)I

    move-result v7

    iget-object v8, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->this$0:Lcom/htc/widget/HeaderBarImage;

    #getter for: Lcom/htc/widget/HeaderBarImage;->imageSelectHeight:I
    invoke-static {v8}, Lcom/htc/widget/HeaderBarImage;->access$300(Lcom/htc/widget/HeaderBarImage;)I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->bitmapContent:Landroid/graphics/Bitmap;

    .line 1177
    :cond_4
    iget-object v7, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->canvasContent:Landroid/graphics/Canvas;

    if-nez v7, :cond_0

    .line 1178
    new-instance v7, Landroid/graphics/Canvas;

    iget-object v8, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->bitmapContent:Landroid/graphics/Bitmap;

    invoke-direct {v7, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v7, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->canvasContent:Landroid/graphics/Canvas;

    goto/16 :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 1185
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->bitmapMask:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->bitmapContent:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->canvasContent:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    .line 1187
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->canvasContent:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1188
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->canvasContent:Landroid/graphics/Canvas;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 1191
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->canvasContent:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->bitmapMask:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->srcRectTop:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->dstRectTop:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->erasePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1192
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->canvasContent:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->bitmapMask:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->srcRectBottom:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->dstRectBottom:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->erasePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1193
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->bitmapContent:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v5, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1197
    :goto_0
    return-void

    .line 1196
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 1202
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 1204
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->initMaskEnvironment()V

    .line 1205
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->invalidate()V

    .line 1206
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1211
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 1217
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->bitmapMask:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1219
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->bitmapMask:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1220
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->bitmapMask:Landroid/graphics/Bitmap;

    .line 1223
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->bitmapContent:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1225
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->bitmapContent:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1226
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->bitmapContent:Landroid/graphics/Bitmap;

    .line 1229
    :cond_1
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage$ImageSelectView;->canvasContent:Landroid/graphics/Canvas;

    .line 1230
    return-void
.end method
