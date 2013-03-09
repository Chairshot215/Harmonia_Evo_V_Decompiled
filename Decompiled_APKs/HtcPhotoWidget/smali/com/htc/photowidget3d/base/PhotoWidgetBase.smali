.class public abstract Lcom/htc/photowidget3d/base/PhotoWidgetBase;
.super Lcom/htc/android/rosie/widget/Widget$Base;
.source "PhotoWidgetBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/photowidget3d/base/PhotoWidgetBase$1;,
        Lcom/htc/photowidget3d/base/PhotoWidgetBase$WorkerHandler;,
        Lcom/htc/photowidget3d/base/PhotoWidgetBase$MainHandler;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final WIDGET_STATE_CREATE:I = 0x0

.field public static final WIDGET_STATE_DESTROY:I = 0x5

.field public static final WIDGET_STATE_PAUSE:I = 0x3

.field public static final WIDGET_STATE_RESUME:I = 0x2

.field public static final WIDGET_STATE_START:I = 0x1

.field public static final WIDGET_STATE_STOP:I = 0x4

.field public static final WIDGET_STATE_UNKNOWN:I = -0x1


# instance fields
.field private mIsVisible:Z

.field protected mMainHandler:Landroid/os/Handler;

.field protected mOrientation:I

.field private mWidgetState:I

.field protected mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/htc/photowidget3d/base/PhotoWidgetBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/htc/android/rosie/widget/Widget$Base;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->mMainHandler:Landroid/os/Handler;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->mIsVisible:Z

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->mWidgetState:I

    .line 379
    return-void
.end method

.method private onConfigurationCompleted(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1b59

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 214
    :cond_0
    return-void
.end method


# virtual methods
.method public getContextResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getHostContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/widget/Widget$Host;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected getScene()Lcom/htc/fusion/fx/FxScene;
    .locals 1

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->getContextResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->getScene(Landroid/content/res/Configuration;)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getScene(Landroid/content/res/Configuration;)Lcom/htc/fusion/fx/FxScene;
.end method

.method public getWidgetState()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->mWidgetState:I

    return v0
.end method

.method protected handleUIMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 325
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 336
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 329
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 330
    .local v0, resId:I
    invoke-virtual {p0}, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 325
    :pswitch_data_0
    .packed-switch 0x1b5d
        :pswitch_0
    .end packed-switch
.end method

.method protected handleWorkerMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    .line 357
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 376
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 361
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->onPostResume()V

    goto :goto_0

    .line 366
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->onPostPause()V

    goto :goto_0

    .line 371
    :pswitch_2
    iget v1, p0, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->mOrientation:I

    invoke-virtual {p0, v1}, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->onPostConfigurationChanged(I)V

    goto :goto_0

    .line 357
    :pswitch_data_0
    .packed-switch 0x1b59
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isEditable()Z
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x1

    return v0
.end method

.method public isVisibile()Z
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->mIsVisible:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .parameter "newConfiguration"

    .prologue
    const/16 v6, 0x1b59

    .line 177
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 180
    .local v0, start:J
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->mOrientation:I

    .line 182
    iget-object v4, p0, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v4, :cond_0

    .line 184
    iget-object v4, p0, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v4}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->cancelAll()V

    .line 185
    iget-object v4, p0, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v4, v6}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 187
    sget-object v4, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[onConfigurationChanged] Message removed"

    invoke-static {v4, v5}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v4, p0, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v4, v6}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 192
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 194
    .local v2, stop:J
    sget-object v4, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[onConfigurationChanged] Total time cost = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v2, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedState"

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->mWidgetState:I

    .line 66
    new-instance v1, Lcom/htc/photowidget3d/base/PhotoWidgetBase$MainHandler;

    invoke-direct {v1, p0, v3}, Lcom/htc/photowidget3d/base/PhotoWidgetBase$MainHandler;-><init>(Lcom/htc/photowidget3d/base/PhotoWidgetBase;Lcom/htc/photowidget3d/base/PhotoWidgetBase$1;)V

    iput-object v1, p0, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->mMainHandler:Landroid/os/Handler;

    .line 67
    invoke-virtual {p0}, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v1

    new-instance v2, Lcom/htc/photowidget3d/base/PhotoWidgetBase$WorkerHandler;

    invoke-direct {v2, p0, v3}, Lcom/htc/photowidget3d/base/PhotoWidgetBase$WorkerHandler;-><init>(Lcom/htc/photowidget3d/base/PhotoWidgetBase;Lcom/htc/photowidget3d/base/PhotoWidgetBase$1;)V

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host;->getWorker(Landroid/os/Handler$Callback;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 68
    invoke-virtual {p0}, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->getContextResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 69
    .local v0, conf:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->mOrientation:I

    .line 70
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 149
    sget-object v0, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[onDestroy] +++"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->mWidgetState:I

    .line 162
    iget-object v0, p0, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 164
    :cond_0
    iput-object v2, p0, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->mMainHandler:Landroid/os/Handler;

    .line 166
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onDestroy()V

    .line 167
    sget-object v0, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[onDestroy] ---"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method protected onHostMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 261
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 270
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onHostMessage(Landroid/os/Message;)V

    .line 274
    :goto_0
    return-void

    .line 265
    :pswitch_0
    iget v0, p0, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->mOrientation:I

    invoke-direct {p0, v0}, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->onConfigurationCompleted(I)V

    goto :goto_0

    .line 261
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/16 v3, 0x1b5b

    .line 119
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->mWidgetState:I

    .line 120
    iget-object v0, p0, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 121
    iget-object v0, p0, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1b5a

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 122
    iget-object v0, p0, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const-wide/16 v1, 0x1388

    invoke-interface {v0, v3, v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->sendDelayed(IJ)V

    .line 123
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onPause()V

    .line 124
    return-void
.end method

.method protected onPostConfigurationChanged(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 204
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedState"

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onPostCreate(Landroid/os/Bundle;)V

    .line 80
    return-void
.end method

.method protected onPostPause()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method protected onPostResume()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/16 v3, 0x1b5a

    .line 100
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onResume()V

    .line 101
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->mWidgetState:I

    .line 102
    iget-object v0, p0, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1b5b

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 103
    iget-object v0, p0, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 104
    iget-object v0, p0, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const-wide/16 v1, 0x5dc

    invoke-interface {v0, v3, v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->sendDelayed(IJ)V

    .line 105
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onStart()V

    .line 90
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->mWidgetState:I

    .line 91
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onStop()V

    .line 139
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->mWidgetState:I

    .line 140
    return-void
.end method

.method protected onVisibilityChanged(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 250
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onVisibilityChanged(Z)V

    .line 251
    iput-boolean p1, p0, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->mIsVisible:Z

    .line 252
    return-void
.end method

.method protected showToast(I)V
    .locals 3
    .parameter "resId"

    .prologue
    .line 318
    iget-object v1, p0, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0x1b5d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 319
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 320
    iget-object v1, p0, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 321
    return-void
.end method
