.class Lcom/android/settings/BatteryBar$MyLayerDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "BatteryBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/BatteryBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLayerDrawable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/BatteryBar$MyLayerDrawable$MyClipDrawable;
    }
.end annotation


# instance fields
.field private BATTERY_LEVEL_LOW:I

.field private BATTERY_LEVEL_MID:I

.field private mCurentDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mHighLevel:Landroid/graphics/drawable/GradientDrawable;

.field private mLowLevel:Landroid/graphics/drawable/GradientDrawable;

.field private mMidLevel:Landroid/graphics/drawable/GradientDrawable;

.field private mPreviousLevelStep:I

.field final synthetic this$0:Lcom/android/settings/BatteryBar;


# direct methods
.method public constructor <init>(Lcom/android/settings/BatteryBar;[Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter
    .parameter "layers"

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/settings/BatteryBar$MyLayerDrawable;->this$0:Lcom/android/settings/BatteryBar;

    .line 225
    invoke-direct {p0, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 216
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isS0002:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x7d0

    :goto_0
    iput v0, p0, Lcom/android/settings/BatteryBar$MyLayerDrawable;->BATTERY_LEVEL_MID:I

    .line 217
    const/16 v0, 0x578

    iput v0, p0, Lcom/android/settings/BatteryBar$MyLayerDrawable;->BATTERY_LEVEL_LOW:I

    .line 222
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/BatteryBar$MyLayerDrawable;->mPreviousLevelStep:I

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/BatteryBar$MyLayerDrawable;->mCurentDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 226
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/settings/BatteryBar$MyLayerDrawable;->prepareSwitchDrawableResource(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    const-string v0, "BatteryBar_LOG"

    const-string v1, "init internal gradient drawable object failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    return-void

    .line 216
    :cond_1
    const/16 v0, 0xbb8

    goto :goto_0
.end method

.method private prepareSwitchDrawableResource(I)Z
    .locals 6
    .parameter "resType"

    .prologue
    const/4 v2, 0x3

    const/4 v0, 0x1

    const/high16 v5, 0x3f40

    const/high16 v4, 0x3f00

    .line 314
    if-gt v0, p1, :cond_0

    if-ge v2, p1, :cond_2

    .line 315
    :cond_0
    const-string v0, "BatteryBar_LOG"

    const-string v1, "invalid gradientDrawable resource type input"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/4 v0, 0x0

    .line 332
    :cond_1
    :goto_0
    return v0

    .line 318
    :cond_2
    if-ne v0, p1, :cond_3

    iget-object v1, p0, Lcom/android/settings/BatteryBar$MyLayerDrawable;->mLowLevel:Landroid/graphics/drawable/GradientDrawable;

    if-nez v1, :cond_3

    .line 319
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v3, Lcom/android/settings/BatteryBar;->LOW_LEVEL_COLOR_SET:[I

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v1, p0, Lcom/android/settings/BatteryBar$MyLayerDrawable;->mLowLevel:Landroid/graphics/drawable/GradientDrawable;

    .line 321
    iget-object v1, p0, Lcom/android/settings/BatteryBar$MyLayerDrawable;->mLowLevel:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setGradientCenter(FF)V

    goto :goto_0

    .line 322
    :cond_3
    const/4 v1, 0x2

    if-ne v1, p1, :cond_4

    iget-object v1, p0, Lcom/android/settings/BatteryBar$MyLayerDrawable;->mMidLevel:Landroid/graphics/drawable/GradientDrawable;

    if-nez v1, :cond_4

    .line 323
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v3, Lcom/android/settings/BatteryBar;->MID_LEVEL_COLOR_SET:[I

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v1, p0, Lcom/android/settings/BatteryBar$MyLayerDrawable;->mMidLevel:Landroid/graphics/drawable/GradientDrawable;

    .line 325
    iget-object v1, p0, Lcom/android/settings/BatteryBar$MyLayerDrawable;->mMidLevel:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setGradientCenter(FF)V

    goto :goto_0

    .line 326
    :cond_4
    if-ne v2, p1, :cond_1

    iget-object v1, p0, Lcom/android/settings/BatteryBar$MyLayerDrawable;->mHighLevel:Landroid/graphics/drawable/GradientDrawable;

    if-nez v1, :cond_1

    .line 327
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v3, Lcom/android/settings/BatteryBar;->HIGH_LEVEL_COLOR_SET:[I

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v1, p0, Lcom/android/settings/BatteryBar$MyLayerDrawable;->mHighLevel:Landroid/graphics/drawable/GradientDrawable;

    .line 329
    iget-object v1, p0, Lcom/android/settings/BatteryBar$MyLayerDrawable;->mHighLevel:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setGradientCenter(FF)V

    goto :goto_0
.end method


# virtual methods
.method public bridageOnLevelChange(I)Z
    .locals 1
    .parameter "level"

    .prologue
    .line 235
    invoke-virtual {p0, p1}, Lcom/android/settings/BatteryBar$MyLayerDrawable;->onLevelChange(I)Z

    move-result v0

    return v0
.end method

.method public createClipDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/ClipDrawable;
    .locals 1
    .parameter "drawable"
    .parameter "gravity"
    .parameter "orientation"

    .prologue
    .line 231
    new-instance v0, Lcom/android/settings/BatteryBar$MyLayerDrawable$MyClipDrawable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/settings/BatteryBar$MyLayerDrawable$MyClipDrawable;-><init>(Lcom/android/settings/BatteryBar$MyLayerDrawable;Landroid/graphics/drawable/Drawable;II)V

    .line 232
    .local v0, target:Lcom/android/settings/BatteryBar$MyLayerDrawable$MyClipDrawable;
    return-object v0
.end method

.method protected onLevelChange(I)Z
    .locals 9
    .parameter "level"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 240
    const/4 v0, 0x0

    .line 242
    .local v0, currentLevelStep:I
    iget-object v5, p0, Lcom/android/settings/BatteryBar$MyLayerDrawable;->this$0:Lcom/android/settings/BatteryBar;

    #getter for: Lcom/android/settings/BatteryBar;->mUsedDrawType:I
    invoke-static {v5}, Lcom/android/settings/BatteryBar;->access$000(Lcom/android/settings/BatteryBar;)I

    move-result v5

    if-nez v5, :cond_6

    .line 244
    iget v5, p0, Lcom/android/settings/BatteryBar$MyLayerDrawable;->BATTERY_LEVEL_LOW:I

    if-gt p1, v5, :cond_2

    .line 245
    invoke-direct {p0, v6}, Lcom/android/settings/BatteryBar$MyLayerDrawable;->prepareSwitchDrawableResource(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 246
    const-string v5, "BatteryBar_LOG"

    const-string v6, "init internal gradient drawable object failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :goto_0
    return v4

    .line 249
    :cond_0
    iget-object v5, p0, Lcom/android/settings/BatteryBar$MyLayerDrawable;->mLowLevel:Landroid/graphics/drawable/GradientDrawable;

    iput-object v5, p0, Lcom/android/settings/BatteryBar$MyLayerDrawable;->mCurentDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 250
    const/4 v0, 0x1

    .line 290
    :goto_1
    iget v5, p0, Lcom/android/settings/BatteryBar$MyLayerDrawable;->mPreviousLevelStep:I

    if-eq v0, v5, :cond_1

    .line 292
    const/4 v2, 0x0

    .line 293
    .local v2, progressDrawable:Landroid/graphics/drawable/LayerDrawable;
    iget-object v5, p0, Lcom/android/settings/BatteryBar$MyLayerDrawable;->this$0:Lcom/android/settings/BatteryBar;

    invoke-virtual {v5}, Lcom/android/settings/BatteryBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 294
    .local v1, originalDrawable:Landroid/graphics/drawable/Drawable;
    instance-of v5, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v5, :cond_c

    move-object v2, v1

    .line 295
    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    .line 296
    new-instance v3, Landroid/graphics/drawable/ClipDrawable;

    iget-object v4, p0, Lcom/android/settings/BatteryBar$MyLayerDrawable;->mCurentDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3, v4, v8, v6}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 297
    .local v3, replaceDrawable:Landroid/graphics/drawable/ClipDrawable;
    const v4, 0x102000d

    invoke-virtual {v2, v4, v3}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 298
    iget-object v4, p0, Lcom/android/settings/BatteryBar$MyLayerDrawable;->this$0:Lcom/android/settings/BatteryBar;

    invoke-virtual {v4, v2}, Lcom/android/settings/BatteryBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 304
    .end local v1           #originalDrawable:Landroid/graphics/drawable/Drawable;
    .end local v2           #progressDrawable:Landroid/graphics/drawable/LayerDrawable;
    .end local v3           #replaceDrawable:Landroid/graphics/drawable/ClipDrawable;
    :cond_1
    iput v0, p0, Lcom/android/settings/BatteryBar$MyLayerDrawable;->mPreviousLevelStep:I

    .line 305
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->onLevelChange(I)Z

    move-result v4

    goto :goto_0

    .line 251
    :cond_2
    iget v5, p0, Lcom/android/settings/BatteryBar$MyLayerDrawable;->BATTERY_LEVEL_MID:I

    if-lt p1, v5, :cond_4

    .line 252
    invoke-direct {p0, v8}, Lcom/android/settings/BatteryBar$MyLayerDrawable;->prepareSwitchDrawableResource(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 253
    const-string v5, "BatteryBar_LOG"

    const-string v6, "init internal gradient drawable object failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 256
    :cond_3
    iget-object v5, p0, Lcom/android/settings/BatteryBar$MyLayerDrawable;->mHighLevel:Landroid/graphics/drawable/GradientDrawable;

    iput-object v5, p0, Lcom/android/settings/BatteryBar$MyLayerDrawable;->mCurentDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 257
    const/4 v0, 0x3

    goto :goto_1

    .line 260
    :cond_4
    invoke-direct {p0, v7}, Lcom/android/settings/BatteryBar$MyLayerDrawable;->prepareSwitchDrawableResource(I)Z

    move-result v5

    if-nez v5, :cond_5

    .line 261
    const-string v5, "BatteryBar_LOG"

    const-string v6, "init internal gradient drawable object failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 264
    :cond_5
    iget-object v5, p0, Lcom/android/settings/BatteryBar$MyLayerDrawable;->mMidLevel:Landroid/graphics/drawable/GradientDrawable;

    iput-object v5, p0, Lcom/android/settings/BatteryBar$MyLayerDrawable;->mCurentDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 265
    const/4 v0, 0x2

    goto :goto_1

    .line 268
    :cond_6
    iget-object v5, p0, Lcom/android/settings/BatteryBar$MyLayerDrawable;->this$0:Lcom/android/settings/BatteryBar;

    #getter for: Lcom/android/settings/BatteryBar;->mUsedDrawType:I
    invoke-static {v5}, Lcom/android/settings/BatteryBar;->access$000(Lcom/android/settings/BatteryBar;)I

    move-result v5

    if-ne v6, v5, :cond_8

    .line 269
    invoke-direct {p0, v6}, Lcom/android/settings/BatteryBar$MyLayerDrawable;->prepareSwitchDrawableResource(I)Z

    move-result v5

    if-nez v5, :cond_7

    .line 270
    const-string v5, "BatteryBar_LOG"

    const-string v6, "init internal gradient drawable object failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 273
    :cond_7
    iget-object v5, p0, Lcom/android/settings/BatteryBar$MyLayerDrawable;->mLowLevel:Landroid/graphics/drawable/GradientDrawable;

    iput-object v5, p0, Lcom/android/settings/BatteryBar$MyLayerDrawable;->mCurentDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 287
    :goto_2
    iget-object v5, p0, Lcom/android/settings/BatteryBar$MyLayerDrawable;->this$0:Lcom/android/settings/BatteryBar;

    #getter for: Lcom/android/settings/BatteryBar;->mUsedDrawType:I
    invoke-static {v5}, Lcom/android/settings/BatteryBar;->access$000(Lcom/android/settings/BatteryBar;)I

    move-result v0

    goto :goto_1

    .line 274
    :cond_8
    iget-object v5, p0, Lcom/android/settings/BatteryBar$MyLayerDrawable;->this$0:Lcom/android/settings/BatteryBar;

    #getter for: Lcom/android/settings/BatteryBar;->mUsedDrawType:I
    invoke-static {v5}, Lcom/android/settings/BatteryBar;->access$000(Lcom/android/settings/BatteryBar;)I

    move-result v5

    if-ne v7, v5, :cond_a

    .line 275
    invoke-direct {p0, v7}, Lcom/android/settings/BatteryBar$MyLayerDrawable;->prepareSwitchDrawableResource(I)Z

    move-result v5

    if-nez v5, :cond_9

    .line 276
    const-string v5, "BatteryBar_LOG"

    const-string v6, "init internal gradient drawable object failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 279
    :cond_9
    iget-object v5, p0, Lcom/android/settings/BatteryBar$MyLayerDrawable;->mMidLevel:Landroid/graphics/drawable/GradientDrawable;

    iput-object v5, p0, Lcom/android/settings/BatteryBar$MyLayerDrawable;->mCurentDrawable:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_2

    .line 281
    :cond_a
    invoke-direct {p0, v8}, Lcom/android/settings/BatteryBar$MyLayerDrawable;->prepareSwitchDrawableResource(I)Z

    move-result v5

    if-nez v5, :cond_b

    .line 282
    const-string v5, "BatteryBar_LOG"

    const-string v6, "init internal gradient drawable object failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 285
    :cond_b
    iget-object v5, p0, Lcom/android/settings/BatteryBar$MyLayerDrawable;->mHighLevel:Landroid/graphics/drawable/GradientDrawable;

    iput-object v5, p0, Lcom/android/settings/BatteryBar$MyLayerDrawable;->mCurentDrawable:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_2

    .line 300
    .restart local v1       #originalDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v2       #progressDrawable:Landroid/graphics/drawable/LayerDrawable;
    :cond_c
    const-string v5, "BatteryBar_LOG"

    const-string v6, "failed to get layerDrawable container"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
