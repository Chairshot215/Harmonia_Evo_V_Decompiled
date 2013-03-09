.class public Lcom/htc/dockmode/music/MusicControl;
.super Ljava/lang/Object;
.source "MusicControl.java"

# interfaces
.implements Lcom/htc/dockmode/utils/ControlInterface;


# static fields
.field private static final BIND_SERVICE_DELAY:I = 0x3e8

.field public static final MSG_ON_BIND_SERVICE:I = 0x2001

.field public static final MSG_ON_UNBIND_SERVICE:I = 0x2002

.field private static final TAG:Ljava/lang/String; = null

.field private static final UNBIND_SERVICE_DELAY:I = 0x1d4c0

.field private static final WHAT_BASE:I = 0x2000

.field private static final localLOGV:Z


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLayoutId:I

.field private mMusicView:Lcom/htc/dockmode/music/MusicView;

.field private mNonUIHandler:Landroid/os/Handler;

.field private mRootView:Landroid/view/View;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/htc/dockmode/music/MusicControl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/dockmode/music/MusicControl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;Landroid/os/Handler;I)V
    .locals 1
    .parameter "activity"
    .parameter "uiHander"
    .parameter "nonUIHandler"
    .parameter "layoutId"

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 162
    new-instance v0, Lcom/htc/dockmode/music/MusicControl$1;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/music/MusicControl$1;-><init>(Lcom/htc/dockmode/music/MusicControl;)V

    iput-object v0, p0, Lcom/htc/dockmode/music/MusicControl;->mHandler:Landroid/os/Handler;

    .line 42
    iput-object p1, p0, Lcom/htc/dockmode/music/MusicControl;->mContext:Landroid/content/Context;

    .line 43
    iput-object p1, p0, Lcom/htc/dockmode/music/MusicControl;->mActivity:Landroid/app/Activity;

    .line 44
    iput-object p2, p0, Lcom/htc/dockmode/music/MusicControl;->mUIHandler:Landroid/os/Handler;

    .line 45
    iput-object p3, p0, Lcom/htc/dockmode/music/MusicControl;->mNonUIHandler:Landroid/os/Handler;

    .line 46
    iput p4, p0, Lcom/htc/dockmode/music/MusicControl;->mLayoutId:I

    .line 47
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/htc/dockmode/music/MusicControl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/dockmode/music/MusicControl;)Lcom/htc/dockmode/music/MusicView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicControl;->mMusicView:Lcom/htc/dockmode/music/MusicView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/dockmode/music/MusicControl;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicControl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onDoDestroy()V
    .locals 3

    .prologue
    const/16 v1, 0x2002

    const/4 v2, 0x0

    .line 138
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicControl;->mMusicView:Lcom/htc/dockmode/music/MusicView;

    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {p0}, Lcom/htc/dockmode/music/MusicControl;->sendUnBindService()V

    .line 145
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 147
    sget-object v0, Lcom/htc/dockmode/music/MusicControl;->TAG:Ljava/lang/String;

    const-string v1, "onLayoutRemoved(), remove message MSG_ON_UNBIND_SERVICE in queue and call unbindMusicPlaybackService()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicControl;->mMusicView:Lcom/htc/dockmode/music/MusicView;

    invoke-virtual {v0}, Lcom/htc/dockmode/music/MusicView;->unbindMusicPlaybackService()V

    .line 154
    :cond_0
    iput-object v2, p0, Lcom/htc/dockmode/music/MusicControl;->mMusicView:Lcom/htc/dockmode/music/MusicView;

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 158
    iput-object v2, p0, Lcom/htc/dockmode/music/MusicControl;->mHandler:Landroid/os/Handler;

    .line 160
    :cond_2
    return-void
.end method

.method public onDoInit1()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public onDoInit2()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicControl;->mMusicView:Lcom/htc/dockmode/music/MusicView;

    invoke-virtual {v0}, Lcom/htc/dockmode/music/MusicView;->bindMusicPlaybackService()V

    .line 111
    return-void
.end method

.method public onDoPause()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public onDoRefresh1()V
    .locals 7

    .prologue
    .line 101
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicControl;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/htc/dockmode/music/MusicControl;->mLayoutId:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dockmode/music/MusicControl;->mRootView:Landroid/view/View;

    .line 103
    invoke-virtual {p0}, Lcom/htc/dockmode/music/MusicControl;->resetController()V

    .line 104
    new-instance v0, Lcom/htc/dockmode/music/MusicView;

    iget-object v1, p0, Lcom/htc/dockmode/music/MusicControl;->mRootView:Landroid/view/View;

    iget-object v2, p0, Lcom/htc/dockmode/music/MusicControl;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/htc/dockmode/music/MusicControl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/dockmode/music/MusicControl;->mUIHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/htc/dockmode/music/MusicControl;->mNonUIHandler:Landroid/os/Handler;

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/dockmode/music/MusicView;-><init>(Landroid/view/View;Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Lcom/htc/dockmode/music/MusicControl;)V

    iput-object v0, p0, Lcom/htc/dockmode/music/MusicControl;->mMusicView:Lcom/htc/dockmode/music/MusicView;

    .line 106
    return-void
.end method

.method public onDoRemoveMessages()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method public onDoResume()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicControl;->mMusicView:Lcom/htc/dockmode/music/MusicView;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicControl;->mMusicView:Lcom/htc/dockmode/music/MusicView;

    invoke-virtual {v0}, Lcom/htc/dockmode/music/MusicView;->updateMusicInfo()V

    .line 119
    :cond_0
    return-void
.end method

.method public onDoStop()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method public resetController()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicControl;->mMusicView:Lcom/htc/dockmode/music/MusicView;

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/htc/dockmode/music/MusicControl;->sendUnBindService()V

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/dockmode/music/MusicControl;->mMusicView:Lcom/htc/dockmode/music/MusicView;

    .line 209
    :cond_0
    return-void
.end method

.method public resetLayout()V
    .locals 11

    .prologue
    const v2, 0x7f0a000b

    const/4 v3, 0x0

    .line 76
    iget-object v1, p0, Lcom/htc/dockmode/music/MusicControl;->mMusicView:Lcom/htc/dockmode/music/MusicView;

    if-eqz v1, :cond_1

    .line 77
    iget-object v1, p0, Lcom/htc/dockmode/music/MusicControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 79
    .local v0, res:Landroid/content/res/Resources;
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0xad

    if-ne v1, v4, :cond_0

    .line 81
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    .line 82
    iget-object v1, p0, Lcom/htc/dockmode/music/MusicControl;->mRootView:Landroid/view/View;

    const v4, 0x7f0a0018

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lcom/htc/dockmode/utils/ResetLayoutUtil;->ResetRelativeLayoutAlignSblings(Landroid/content/res/Resources;Landroid/view/View;IIIII)V

    .line 87
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/dockmode/music/MusicControl;->mRootView:Landroid/view/View;

    const/high16 v4, 0x7f08

    invoke-static {v0, v1, v2, v4}, Lcom/htc/dockmode/utils/ResetLayoutUtil;->ResetRelativeLayoutAlignParentRight(Landroid/content/res/Resources;Landroid/view/View;II)V

    .line 89
    iget-object v5, p0, Lcom/htc/dockmode/music/MusicControl;->mRootView:Landroid/view/View;

    const v7, 0x7f070033

    const v8, 0x7f070032

    const v9, 0x7f070018

    move-object v4, v0

    move v6, v2

    move v10, v3

    invoke-static/range {v4 .. v10}, Lcom/htc/dockmode/utils/ResetLayoutUtil;->ResetRelativeLayoutMargin(Landroid/content/res/Resources;Landroid/view/View;IIIII)V

    .line 92
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_1
    return-void

    .line 84
    .restart local v0       #res:Landroid/content/res/Resources;
    :cond_2
    iget-object v1, p0, Lcom/htc/dockmode/music/MusicControl;->mRootView:Landroid/view/View;

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lcom/htc/dockmode/utils/ResetLayoutUtil;->ResetRelativeLayoutAlignSblings(Landroid/content/res/Resources;Landroid/view/View;IIIII)V

    goto :goto_0
.end method

.method public sendBindService()V
    .locals 2

    .prologue
    const/16 v1, 0x2001

    .line 212
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 214
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 218
    :goto_0
    return-void

    .line 216
    :cond_0
    sget-object v0, Lcom/htc/dockmode/music/MusicControl;->TAG:Ljava/lang/String;

    const-string v1, "sendBindService(), mHandler is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendUnBindService()V
    .locals 2

    .prologue
    const/16 v1, 0x2002

    .line 221
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 223
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_0
    sget-object v0, Lcom/htc/dockmode/music/MusicControl;->TAG:Ljava/lang/String;

    const-string v1, "sendUnBindService(), mHandler is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
