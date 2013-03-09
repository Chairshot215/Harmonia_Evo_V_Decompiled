.class public abstract Lcom/htc/home/AbstractWidgetView;
.super Ljava/lang/Object;
.source "AbstractWidgetView.java"

# interfaces
.implements Lcom/htc/home/WidgetViewInterface;
.implements Lcom/htc/home/WidgetVisibilityObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/AbstractWidgetView$WidgetUiHandler;,
        Lcom/htc/home/AbstractWidgetView$WidgetHandler;
    }
.end annotation


# static fields
.field public static final STATUS_DESTROYED:I = 0x3

.field public static final STATUS_NONE:I = 0x0

.field public static final STATUS_PAUSE:I = 0x2

.field public static final STATUS_RESUME:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Widget"

.field public static final WHAT_ON_GL_ANIMATION_STOP:I = 0x4

.field public static final WHAT_ON_NEW_INTENT:I = 0x3

.field public static final WHAT_ON_PAUSE:I = 0x2

.field public static final WHAT_ON_REFRESH_CONTENTS:I = 0x4

.field public static final WHAT_ON_RESUME:I = 0x1

.field protected static sHandlerThread:Landroid/os/HandlerThread;

.field protected static sLooper:Landroid/os/Looper;


# instance fields
.field protected mApplication:Landroid/content/Context;

.field protected mCountInitialized:I

.field protected mHandler:Lcom/htc/home/AbstractWidgetView$WidgetHandler;

.field protected mHandlerThread:Landroid/os/HandlerThread;

.field protected mHost:Lcom/htc/home/HostInterface;

.field protected mHostActivity:Lcom/htc/home/HostActivity;

.field protected mHostView:Landroid/view/View;

.field protected mLastWhat:I

.field protected mLayoutRemoved:Z

.field protected mLooper:Landroid/os/Looper;

.field protected mPrevOrientation:I

.field protected mResContext:Landroid/content/Context;

.field protected mStatus:I

.field protected mUiHandler:Lcom/htc/home/AbstractWidgetView$WidgetUiHandler;

.field protected mWidgetId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v1, p0, Lcom/htc/home/AbstractWidgetView;->mLastWhat:I

    .line 56
    iput-boolean v0, p0, Lcom/htc/home/AbstractWidgetView;->mLayoutRemoved:Z

    .line 57
    iput v0, p0, Lcom/htc/home/AbstractWidgetView;->mCountInitialized:I

    .line 58
    iput v0, p0, Lcom/htc/home/AbstractWidgetView;->mStatus:I

    .line 303
    iput v1, p0, Lcom/htc/home/AbstractWidgetView;->mPrevOrientation:I

    return-void
.end method

.method private createHander()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 149
    iget-object v0, p0, Lcom/htc/home/AbstractWidgetView;->mHandler:Lcom/htc/home/AbstractWidgetView$WidgetHandler;

    if-eqz v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/htc/home/AbstractWidgetView;->isSharingHandlerThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    const-class v1, Landroid/os/HandlerThread;

    monitor-enter v1

    .line 155
    :try_start_0
    sget-object v0, Lcom/htc/home/AbstractWidgetView;->sHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 156
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "Global Widget HT"

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/home/AbstractWidgetView;->sHandlerThread:Landroid/os/HandlerThread;

    .line 158
    sget-object v0, Lcom/htc/home/AbstractWidgetView;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 159
    sget-object v0, Lcom/htc/home/AbstractWidgetView;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    sput-object v0, Lcom/htc/home/AbstractWidgetView;->sLooper:Landroid/os/Looper;

    .line 161
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    const-string v0, "pico922"

    const-string v1, "AbstractWidgetView.createHander: with shared thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    new-instance v0, Lcom/htc/home/AbstractWidgetView$WidgetHandler;

    sget-object v1, Lcom/htc/home/AbstractWidgetView;->sLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/htc/home/AbstractWidgetView$WidgetHandler;-><init>(Lcom/htc/home/AbstractWidgetView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/home/AbstractWidgetView;->mHandler:Lcom/htc/home/AbstractWidgetView$WidgetHandler;

    goto :goto_0

    .line 161
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 167
    :cond_2
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Widget_HT("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/home/AbstractWidgetView;->mHandlerThread:Landroid/os/HandlerThread;

    .line 169
    iget-object v0, p0, Lcom/htc/home/AbstractWidgetView;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 170
    iget-object v0, p0, Lcom/htc/home/AbstractWidgetView;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/AbstractWidgetView;->mLooper:Landroid/os/Looper;

    .line 172
    const-string v0, "pico922"

    const-string v1, "AbstractWidgetView.createHander: with dedicated thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance v0, Lcom/htc/home/AbstractWidgetView$WidgetHandler;

    iget-object v1, p0, Lcom/htc/home/AbstractWidgetView;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/htc/home/AbstractWidgetView$WidgetHandler;-><init>(Lcom/htc/home/AbstractWidgetView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/home/AbstractWidgetView;->mHandler:Lcom/htc/home/AbstractWidgetView$WidgetHandler;

    goto :goto_0
.end method


# virtual methods
.method public fireOnGLAnimationStop(I)V
    .locals 4
    .parameter "notifyCause"

    .prologue
    .line 259
    iget-object v1, p0, Lcom/htc/home/AbstractWidgetView;->mHandler:Lcom/htc/home/AbstractWidgetView$WidgetHandler;

    const/4 v2, 0x4

    const/4 v3, -0x1

    invoke-static {v1, v2, p1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 260
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 261
    return-void
.end method

.method public fireOnNewIntent(I)V
    .locals 4
    .parameter "notifyCause"

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/htc/home/AbstractWidgetView;->getNotifyType()I

    move-result v1

    const/16 v2, 0x32

    if-eq v1, v2, :cond_0

    .line 255
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/htc/home/AbstractWidgetView;->mHandler:Lcom/htc/home/AbstractWidgetView$WidgetHandler;

    const/4 v2, 0x3

    const/4 v3, -0x1

    invoke-static {v1, v2, p1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 254
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public final fireOnPause(I)V
    .locals 4
    .parameter "notifyCause"

    .prologue
    const/4 v3, 0x2

    .line 228
    iput v3, p0, Lcom/htc/home/AbstractWidgetView;->mStatus:I

    .line 229
    invoke-virtual {p0}, Lcom/htc/home/AbstractWidgetView;->getNotifyType()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/htc/home/AbstractWidgetView;->mLastWhat:I

    if-ne v1, v3, :cond_1

    .line 231
    :cond_0
    const-string v1, "pico922"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AbstractWidgetView.fireOnPause: return. mLastWhat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/home/AbstractWidgetView;->mLastWhat:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " notifyType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/home/AbstractWidgetView;->getNotifyType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :goto_0
    return-void

    .line 235
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/home/AbstractWidgetView;->onNotifyWidgetPause(I)V

    .line 236
    iget-object v1, p0, Lcom/htc/home/AbstractWidgetView;->mHandler:Lcom/htc/home/AbstractWidgetView$WidgetHandler;

    const/4 v2, -0x1

    invoke-static {v1, v3, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 237
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 238
    iput v3, p0, Lcom/htc/home/AbstractWidgetView;->mLastWhat:I

    .line 240
    const-string v1, "pico922"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AbstractWidgetView.fireOnPause: msg sent. mHandler="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/home/AbstractWidgetView;->mHandler:Lcom/htc/home/AbstractWidgetView$WidgetHandler;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final fireOnResume(I)V
    .locals 4
    .parameter "notifyCause"

    .prologue
    const/4 v3, 0x1

    .line 212
    iput v3, p0, Lcom/htc/home/AbstractWidgetView;->mStatus:I

    .line 213
    invoke-virtual {p0}, Lcom/htc/home/AbstractWidgetView;->getNotifyType()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/htc/home/AbstractWidgetView;->mLastWhat:I

    if-ne v1, v3, :cond_1

    .line 215
    :cond_0
    const-string v1, "pico922"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AbstractWidgetView.fireOnResume: return. mLastWhat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/home/AbstractWidgetView;->mLastWhat:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " notifyType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/home/AbstractWidgetView;->getNotifyType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-object v1, p0, Lcom/htc/home/AbstractWidgetView;->mHandler:Lcom/htc/home/AbstractWidgetView$WidgetHandler;

    const/4 v2, -0x1

    invoke-static {v1, v3, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 220
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 221
    iput v3, p0, Lcom/htc/home/AbstractWidgetView;->mLastWhat:I

    .line 223
    const-string v1, "pico922"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AbstractWidgetView.fireOnResume: msg sent. mHandler="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/home/AbstractWidgetView;->mHandler:Lcom/htc/home/AbstractWidgetView$WidgetHandler;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getNotifyType()I
    .locals 1

    .prologue
    .line 204
    const/16 v0, 0xa

    return v0
.end method

.method public getSettingIntent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 208
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 194
    return-void
.end method

.method public handleUiMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 197
    return-void
.end method

.method public hardKeyboardSupported()Z
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x0

    return v0
.end method

.method public isAttach3DObject()Z
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method public isFirstInflated()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 285
    iget v1, p0, Lcom/htc/home/AbstractWidgetView;->mCountInitialized:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHandleDirectionalKey()Z
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x0

    return v0
.end method

.method protected isSharingHandlerThread()Z
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityDestroy()V
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/home/AbstractWidgetView;->mStatus:I

    .line 282
    return-void
.end method

.method public onActivityPause()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 274
    return-void
.end method

.method public onActivityResume()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 270
    return-void
.end method

.method public onActivityStop()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 278
    return-void
.end method

.method public onHardKeyboardOut()V
    .locals 0

    .prologue
    .line 301
    return-void
.end method

.method protected onLandscape()V
    .locals 0

    .prologue
    .line 315
    return-void
.end method

.method public onLayoutInflated(Landroid/view/View;ILandroid/content/Intent;)V
    .locals 1
    .parameter "view"
    .parameter "widgetId"
    .parameter "backIntent"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/htc/home/AbstractWidgetView;->mHostView:Landroid/view/View;

    .line 133
    iget v0, p0, Lcom/htc/home/AbstractWidgetView;->mCountInitialized:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/home/AbstractWidgetView;->mCountInitialized:I

    .line 134
    iget-object v0, p0, Lcom/htc/home/AbstractWidgetView;->mHostActivity:Lcom/htc/home/HostActivity;

    invoke-virtual {v0}, Lcom/htc/home/HostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/AbstractWidgetView;->mApplication:Landroid/content/Context;

    .line 135
    iput p2, p0, Lcom/htc/home/AbstractWidgetView;->mWidgetId:I

    .line 136
    if-eqz p1, :cond_0

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/AbstractWidgetView;->mResContext:Landroid/content/Context;

    .line 143
    :cond_0
    invoke-direct {p0}, Lcom/htc/home/AbstractWidgetView;->createHander()V

    .line 145
    new-instance v0, Lcom/htc/home/AbstractWidgetView$WidgetUiHandler;

    invoke-direct {v0, p0}, Lcom/htc/home/AbstractWidgetView$WidgetUiHandler;-><init>(Lcom/htc/home/AbstractWidgetView;)V

    iput-object v0, p0, Lcom/htc/home/AbstractWidgetView;->mUiHandler:Lcom/htc/home/AbstractWidgetView$WidgetUiHandler;

    .line 146
    return-void
.end method

.method public onLayoutRemoved()V
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/home/AbstractWidgetView;->mLayoutRemoved:Z

    .line 184
    iget-object v0, p0, Lcom/htc/home/AbstractWidgetView;->mLooper:Landroid/os/Looper;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/htc/home/AbstractWidgetView;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 187
    :cond_0
    return-void
.end method

.method protected onNotifyWidgetPause(I)V
    .locals 0
    .parameter "notifyCause"

    .prologue
    .line 246
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 305
    iget v0, p0, Lcom/htc/home/AbstractWidgetView;->mPrevOrientation:I

    if-eq v0, p1, :cond_0

    .line 306
    iput p1, p0, Lcom/htc/home/AbstractWidgetView;->mPrevOrientation:I

    .line 307
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 308
    invoke-virtual {p0}, Lcom/htc/home/AbstractWidgetView;->onLandscape()V

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    invoke-virtual {p0}, Lcom/htc/home/AbstractWidgetView;->onPortrait()V

    goto :goto_0
.end method

.method protected onPortrait()V
    .locals 0

    .prologue
    .line 317
    return-void
.end method

.method public refreshContents()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 293
    iget-object v1, p0, Lcom/htc/home/AbstractWidgetView;->mHandler:Lcom/htc/home/AbstractWidgetView$WidgetHandler;

    const/4 v2, 0x4

    invoke-static {v1, v2, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 294
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 295
    return-void
.end method

.method public setHost(Lcom/htc/home/HostInterface;)V
    .locals 0
    .parameter "host"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/htc/home/AbstractWidgetView;->mHost:Lcom/htc/home/HostInterface;

    .line 122
    return-void
.end method

.method public setHostActivity(Lcom/htc/home/HostActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/htc/home/AbstractWidgetView;->mHostActivity:Lcom/htc/home/HostActivity;

    .line 126
    return-void
.end method
