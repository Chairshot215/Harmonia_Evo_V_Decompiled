.class Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;
.super Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;
.source "WISPreviewService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/weatheridlescreen/service/WISPreviewService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyEngine"
.end annotation


# static fields
.field private static final WHAT_SET_WEATHER_CONDITION:I = 0x27


# instance fields
.field private mDemoIndex:I

.field private mDisplay:Landroid/view/Display;

.field private mFxSceneBG_L:Lcom/htc/fusion/fx/FxScene;

.field private mFxSceneBG_P:Lcom/htc/fusion/fx/FxScene;

.field private mFxScene_L:Lcom/htc/fusion/fx/FxScene;

.field private mFxScene_P:Lcom/htc/fusion/fx/FxScene;

.field protected mHandlerThread:Landroid/os/HandlerThread;

.field private mIsPortrait:Z

.field protected mLooper:Landroid/os/Looper;

.field private mNonUIHandler:Landroid/os/Handler;

.field private mStateResources:Lcom/htc/weather/StateResources;

.field private mWISFxScreen_L:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

.field private mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

.field final synthetic this$0:Lcom/htc/weatheridlescreen/service/WISPreviewService;


# direct methods
.method public constructor <init>(Lcom/htc/weatheridlescreen/service/WISPreviewService;Lcom/htc/lockscreen/idlescreen/IdleScreenService;)V
    .locals 2
    .parameter
    .parameter "service"

    .prologue
    const/4 v1, 0x0

    .line 52
    iput-object p1, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->this$0:Lcom/htc/weatheridlescreen/service/WISPreviewService;

    .line 53
    invoke-direct {p0, p2}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;-><init>(Lcom/htc/lockscreen/idlescreen/IdleScreenService;)V

    .line 39
    iput-object v1, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mFxScene_P:Lcom/htc/fusion/fx/FxScene;

    .line 40
    iput-object v1, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mFxScene_L:Lcom/htc/fusion/fx/FxScene;

    .line 41
    iput-object v1, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    .line 42
    iput-object v1, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mWISFxScreen_L:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    .line 43
    iput-object v1, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mFxSceneBG_P:Lcom/htc/fusion/fx/FxScene;

    .line 44
    iput-object v1, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mFxSceneBG_L:Lcom/htc/fusion/fx/FxScene;

    .line 46
    iput-object v1, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mDisplay:Landroid/view/Display;

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mIsPortrait:Z

    .line 48
    iput-object v1, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mStateResources:Lcom/htc/weather/StateResources;

    .line 288
    iput-object v1, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mHandlerThread:Landroid/os/HandlerThread;

    .line 289
    iput-object v1, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mLooper:Landroid/os/Looper;

    .line 290
    iput-object v1, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mNonUIHandler:Landroid/os/Handler;

    .line 293
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mDemoIndex:I

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->playWeatherCondition()V

    return-void
.end method

.method private initHandler()V
    .locals 2

    .prologue
    .line 298
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WISPreviewHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mHandlerThread:Landroid/os/HandlerThread;

    .line 299
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 301
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mLooper:Landroid/os/Looper;

    .line 303
    :cond_0
    new-instance v0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine$1;

    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine$1;-><init>(Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mNonUIHandler:Landroid/os/Handler;

    .line 315
    return-void
.end method

.method private playWeatherCondition()V
    .locals 6

    .prologue
    .line 320
    sget-object v2, Lcom/htc/weatheridlescreen/WISConsts;->DEMO_CONDITION:[I

    iget v3, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mDemoIndex:I

    aget v0, v2, v3

    .line 321
    .local v0, mCondition:I
    const-string v1, ""

    .line 322
    .local v1, mDescription:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mStateResources:Lcom/htc/weather/StateResources;

    if-eqz v2, :cond_0

    .line 323
    iget-object v2, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mStateResources:Lcom/htc/weather/StateResources;

    invoke-virtual {v2, v0}, Lcom/htc/weather/StateResources;->getConditionText(I)Ljava/lang/String;

    move-result-object v1

    .line 326
    :cond_0
    iget-boolean v2, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mIsPortrait:Z

    if-eqz v2, :cond_4

    .line 327
    iget-object v2, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    if-eqz v2, :cond_1

    .line 328
    iget-object v2, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    invoke-virtual {v2, v0, v1}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->playWeatherConditionForPreview(ILjava/lang/String;)V

    .line 329
    iget v2, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mDemoIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mDemoIndex:I

    .line 338
    :cond_1
    :goto_0
    iget v2, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mDemoIndex:I

    sget-object v3, Lcom/htc/weatheridlescreen/WISConsts;->DEMO_CONDITION:[I

    array-length v3, v3

    if-lt v2, v3, :cond_2

    .line 339
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mDemoIndex:I

    .line 340
    :cond_2
    iget-object v2, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mNonUIHandler:Landroid/os/Handler;

    if-eqz v2, :cond_3

    .line 341
    iget-object v2, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mNonUIHandler:Landroid/os/Handler;

    const/16 v3, 0x27

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 342
    :cond_3
    return-void

    .line 333
    :cond_4
    iget-object v2, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mWISFxScreen_L:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    if-eqz v2, :cond_1

    .line 334
    iget-object v2, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mWISFxScreen_L:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    invoke-virtual {v2, v0, v1}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->playWeatherConditionForPreview(ILjava/lang/String;)V

    .line 335
    iget v2, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mDemoIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mDemoIndex:I

    goto :goto_0
.end method

.method private releaseFxScene()V
    .locals 4

    .prologue
    .line 254
    monitor-enter p0

    .line 259
    const/4 v1, 0x0

    :try_start_0
    check-cast v1, Lcom/htc/fusion/fx/FxScene;

    const/4 v2, 0x0

    check-cast v2, Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {p0, v1, v2}, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->setScene(Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxScene;)V

    .line 260
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->setBackground(Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxScene;)V

    .line 262
    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    invoke-virtual {v1}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->onDestroy()V

    .line 264
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    .line 266
    :cond_0
    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mWISFxScreen_L:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    if-eqz v1, :cond_1

    .line 267
    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mWISFxScreen_L:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    invoke-virtual {v1}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->onDestroy()V

    .line 268
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mWISFxScreen_L:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    .line 270
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mFxScene_P:Lcom/htc/fusion/fx/FxScene;

    .line 271
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mFxScene_L:Lcom/htc/fusion/fx/FxScene;

    .line 272
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mFxSceneBG_P:Lcom/htc/fusion/fx/FxScene;

    .line 273
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mFxSceneBG_L:Lcom/htc/fusion/fx/FxScene;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 282
    return-void

    .line 275
    :catch_0
    move-exception v0

    .line 277
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WIS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WISPreviewService]: releaseFxScene() - e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 281
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private setFxBackground()V
    .locals 10

    .prologue
    .line 180
    monitor-enter p0

    .line 183
    :try_start_0
    iget-object v7, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mFxSceneBG_P:Lcom/htc/fusion/fx/FxScene;

    if-nez v7, :cond_2

    .line 184
    const-string v7, "Port/Lockscreen_weather_bg.m10"

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mFxSceneBG_P:Lcom/htc/fusion/fx/FxScene;

    .line 186
    iget-object v7, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mFxSceneBG_P:Lcom/htc/fusion/fx/FxScene;

    if-eqz v7, :cond_2

    .line 187
    iget-object v7, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mFxSceneBG_P:Lcom/htc/fusion/fx/FxScene;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/htc/fusion/fx/FxScene;->setVisibility(Z)Ljava/util/ArrayList;

    .line 188
    const/16 v4, 0x64

    .line 189
    .local v4, mInOutFrame:I
    iget-object v7, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mFxSceneBG_P:Lcom/htc/fusion/fx/FxScene;

    const-string v8, "Out"

    invoke-virtual {v7, v8}, Lcom/htc/fusion/fx/FxScene;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v6

    .line 190
    .local v6, mMarkerInOut:Lcom/htc/fusion/fx/Marker;
    if-eqz v6, :cond_0

    .line 191
    iget v4, v6, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    .line 193
    :cond_0
    iget-object v7, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mFxSceneBG_P:Lcom/htc/fusion/fx/FxScene;

    int-to-float v8, v4

    invoke-virtual {v7, v8}, Lcom/htc/fusion/fx/FxScene;->setFrame(F)V

    .line 194
    iget-object v7, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mFxSceneBG_P:Lcom/htc/fusion/fx/FxScene;

    const-string v8, "timeline.weather_bg"

    invoke-virtual {v7, v8}, Lcom/htc/fusion/fx/FxScene;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 195
    .local v2, mFxTLCForBG:Lcom/htc/fusion/fx/FxTimelineControl;
    if-eqz v2, :cond_2

    .line 196
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/htc/fusion/fx/FxTimelineControl;->setAsync(Z)V

    .line 197
    const-string v7, "day_to_night"

    invoke-virtual {v2, v7}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v5

    .line 198
    .local v5, mMarkerDTN:Lcom/htc/fusion/fx/Marker;
    const/4 v1, 0x0

    .line 199
    .local v1, mFrame:I
    if-eqz v5, :cond_1

    .line 200
    iget v1, v5, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    .line 201
    if-gez v1, :cond_1

    .line 202
    const/4 v1, 0x0

    .line 204
    :cond_1
    int-to-float v7, v1

    invoke-virtual {v2, v7}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 205
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 210
    .end local v1           #mFrame:I
    .end local v2           #mFxTLCForBG:Lcom/htc/fusion/fx/FxTimelineControl;
    .end local v4           #mInOutFrame:I
    .end local v5           #mMarkerDTN:Lcom/htc/fusion/fx/Marker;
    .end local v6           #mMarkerInOut:Lcom/htc/fusion/fx/Marker;
    :cond_2
    invoke-static {}, Lcom/htc/weatheridlescreen/WISUtility;->hasLandscapeMode()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 211
    iget-object v7, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mFxSceneBG_L:Lcom/htc/fusion/fx/FxScene;

    if-nez v7, :cond_5

    .line 212
    const-string v7, "Land/Lockscreen_weather_bg_l.m10"

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mFxSceneBG_L:Lcom/htc/fusion/fx/FxScene;

    .line 214
    iget-object v7, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mFxSceneBG_L:Lcom/htc/fusion/fx/FxScene;

    if-eqz v7, :cond_5

    .line 215
    iget-object v7, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mFxSceneBG_L:Lcom/htc/fusion/fx/FxScene;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/htc/fusion/fx/FxScene;->setVisibility(Z)Ljava/util/ArrayList;

    .line 216
    const/16 v4, 0x64

    .line 217
    .restart local v4       #mInOutFrame:I
    iget-object v7, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mFxSceneBG_L:Lcom/htc/fusion/fx/FxScene;

    const-string v8, "Out"

    invoke-virtual {v7, v8}, Lcom/htc/fusion/fx/FxScene;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v6

    .line 218
    .restart local v6       #mMarkerInOut:Lcom/htc/fusion/fx/Marker;
    if-eqz v6, :cond_3

    .line 219
    iget v4, v6, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    .line 221
    :cond_3
    iget-object v7, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mFxSceneBG_L:Lcom/htc/fusion/fx/FxScene;

    int-to-float v8, v4

    invoke-virtual {v7, v8}, Lcom/htc/fusion/fx/FxScene;->setFrame(F)V

    .line 222
    iget-object v7, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mFxSceneBG_L:Lcom/htc/fusion/fx/FxScene;

    const-string v8, "timeline.weather_bg"

    invoke-virtual {v7, v8}, Lcom/htc/fusion/fx/FxScene;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 224
    .local v3, mFxTLCForBG_L:Lcom/htc/fusion/fx/FxTimelineControl;
    if-eqz v3, :cond_5

    .line 225
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/htc/fusion/fx/FxTimelineControl;->setAsync(Z)V

    .line 226
    const-string v7, "day_to_night"

    invoke-virtual {v3, v7}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v5

    .line 227
    .restart local v5       #mMarkerDTN:Lcom/htc/fusion/fx/Marker;
    const/4 v1, 0x0

    .line 228
    .restart local v1       #mFrame:I
    if-eqz v5, :cond_4

    .line 229
    iget v1, v5, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    .line 230
    if-gez v1, :cond_4

    .line 231
    const/4 v1, 0x0

    .line 233
    :cond_4
    int-to-float v7, v1

    invoke-virtual {v3, v7}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 234
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 239
    .end local v1           #mFrame:I
    .end local v3           #mFxTLCForBG_L:Lcom/htc/fusion/fx/FxTimelineControl;
    .end local v4           #mInOutFrame:I
    .end local v5           #mMarkerDTN:Lcom/htc/fusion/fx/Marker;
    .end local v6           #mMarkerInOut:Lcom/htc/fusion/fx/Marker;
    :cond_5
    iget-object v7, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mFxSceneBG_P:Lcom/htc/fusion/fx/FxScene;

    iget-object v8, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mFxSceneBG_L:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {p0, v7, v8}, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->setBackground(Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxScene;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 247
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 243
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "WIS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[WISPreviewService]: setFxBackground() - e = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 246
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method

.method private setFxScene()V
    .locals 6

    .prologue
    .line 136
    monitor-enter p0

    .line 137
    :try_start_0
    invoke-direct {p0}, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->setFxBackground()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :try_start_1
    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mFxScene_P:Lcom/htc/fusion/fx/FxScene;

    if-nez v1, :cond_1

    .line 142
    const-string v1, "Port/Lockscreen_weather.m10"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mFxScene_P:Lcom/htc/fusion/fx/FxScene;

    .line 144
    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mFxScene_P:Lcom/htc/fusion/fx/FxScene;

    if-eqz v1, :cond_1

    .line 145
    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    invoke-virtual {v1}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->onDestroy()V

    .line 147
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    .line 149
    :cond_0
    new-instance v1, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    iget-object v2, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->this$0:Lcom/htc/weatheridlescreen/service/WISPreviewService;

    invoke-virtual {v2}, Lcom/htc/weatheridlescreen/service/WISPreviewService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mFxScene_P:Lcom/htc/fusion/fx/FxScene;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mFxSceneBG_P:Lcom/htc/fusion/fx/FxScene;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;-><init>(Landroid/content/Context;Lcom/htc/fusion/fx/FxScene;ZLcom/htc/fusion/fx/FxScene;)V

    iput-object v1, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    .line 152
    :cond_1
    invoke-static {}, Lcom/htc/weatheridlescreen/WISUtility;->hasLandscapeMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 153
    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mFxScene_L:Lcom/htc/fusion/fx/FxScene;

    if-nez v1, :cond_3

    .line 154
    const-string v1, "Land/Lockscreen_weather_l.m10"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mFxScene_L:Lcom/htc/fusion/fx/FxScene;

    .line 156
    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mFxScene_L:Lcom/htc/fusion/fx/FxScene;

    if-eqz v1, :cond_3

    .line 157
    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mWISFxScreen_L:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    if-eqz v1, :cond_2

    .line 158
    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mWISFxScreen_L:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    invoke-virtual {v1}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->onDestroy()V

    .line 159
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mWISFxScreen_L:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    .line 161
    :cond_2
    new-instance v1, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    iget-object v2, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->this$0:Lcom/htc/weatheridlescreen/service/WISPreviewService;

    invoke-virtual {v2}, Lcom/htc/weatheridlescreen/service/WISPreviewService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mFxScene_L:Lcom/htc/fusion/fx/FxScene;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mFxSceneBG_L:Lcom/htc/fusion/fx/FxScene;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;-><init>(Landroid/content/Context;Lcom/htc/fusion/fx/FxScene;ZLcom/htc/fusion/fx/FxScene;)V

    iput-object v1, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mWISFxScreen_L:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    .line 165
    :cond_3
    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mFxScene_P:Lcom/htc/fusion/fx/FxScene;

    iget-object v2, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mFxScene_L:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {p0, v1, v2}, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->setScene(Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxScene;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 172
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 173
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 169
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WIS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WISPreviewService]: setFxScene() - Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 172
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "surfaceHolder"

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->setShowLiveWallpaper(Z)V

    .line 62
    new-instance v0, Lcom/htc/weather/StateResources;

    invoke-direct {v0}, Lcom/htc/weather/StateResources;-><init>()V

    iput-object v0, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mStateResources:Lcom/htc/weather/StateResources;

    .line 63
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mStateResources:Lcom/htc/weather/StateResources;

    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->this$0:Lcom/htc/weatheridlescreen/service/WISPreviewService;

    invoke-virtual {v1}, Lcom/htc/weatheridlescreen/service/WISPreviewService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/weather/StateResources;->init(Landroid/content/Context;)V

    .line 64
    invoke-direct {p0}, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->initHandler()V

    .line 65
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0}, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->unInitHandler()V

    .line 125
    invoke-direct {p0}, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->releaseFxScene()V

    .line 126
    iput-object v0, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mDisplay:Landroid/view/Display;

    .line 127
    iput-object v0, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mStateResources:Lcom/htc/weather/StateResources;

    .line 128
    invoke-super {p0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->onDestroy()V

    .line 129
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    invoke-virtual {v0}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->onPause()V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mWISFxScreen_L:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mWISFxScreen_L:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    invoke-virtual {v0}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->onPause()V

    .line 102
    :cond_1
    invoke-super {p0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->onPause()V

    .line 103
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->onResume()V

    .line 92
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 71
    invoke-super {p0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->onStart()V

    .line 73
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mDisplay:Landroid/view/Display;

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->this$0:Lcom/htc/weatheridlescreen/service/WISPreviewService;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Lcom/htc/weatheridlescreen/service/WISPreviewService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mDisplay:Landroid/view/Display;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mDisplay:Landroid/view/Display;

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mIsPortrait:Z

    .line 80
    :cond_1
    invoke-direct {p0}, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->setFxScene()V

    .line 81
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mNonUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mNonUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 83
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mNonUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 85
    :cond_2
    return-void

    .line 77
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 109
    invoke-super {p0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->onStop()V

    .line 110
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mNonUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mNonUIHandler:Landroid/os/Handler;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    invoke-virtual {v0}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->onStop()V

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mWISFxScreen_L:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mWISFxScreen_L:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    invoke-virtual {v0}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->onStop()V

    .line 117
    :cond_2
    invoke-direct {p0}, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->releaseFxScene()V

    .line 118
    return-void
.end method

.method public unInitHandler()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 347
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mNonUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mNonUIHandler:Landroid/os/Handler;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mLooper:Landroid/os/Looper;

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    .line 354
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 356
    :cond_2
    iput-object v2, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mNonUIHandler:Landroid/os/Handler;

    .line 357
    iput-object v2, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mLooper:Landroid/os/Looper;

    .line 358
    iput-object v2, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mHandlerThread:Landroid/os/HandlerThread;

    .line 359
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->mDemoIndex:I

    .line 360
    return-void
.end method
