.class public Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;
.super Ljava/lang/Object;
.source "ShortcutIcon.java"

# interfaces
.implements Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnDragListener;
.implements Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnBackListener;
.implements Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon$1;,
        Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon$MyHandler;
    }
.end annotation


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "ShortcutIcon"

.field private static final WHAT_ON_NAME_VISIBLE:I = 0x1


# instance fields
.field mAnimationIcon:Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field mBubbleMarker:Lcom/htc/fusion/fx/Marker;

.field mBubbleTL:Lcom/htc/fusion/fx/FxTimelineControl;

.field mBubbleTL2:Lcom/htc/fusion/fx/FxTimelineControl;

.field mContainer:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;

.field mContext:Landroid/content/Context;

.field mCount:I

.field private mDoHide:Z

.field mDragItem:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

.field private mHandler:Landroid/os/Handler;

.field private mHideName:Z

.field mIcon:Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field mNameTL:Lcom/htc/fusion/fx/FxTimelineControl;

.field mNameTxt:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field mNum99Txt:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field mNum99Txt2:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field mNumTL:Lcom/htc/fusion/fx/FxTimelineControl;

.field mNumTL2:Lcom/htc/fusion/fx/FxTimelineControl;

.field mNumTxt:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field mNumTxt2:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field mPendingUpdateCountUI:Z

.field mShortcutInfo:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;

.field private mTouchSlopSquare:I

.field mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;Lcom/htc/lockscreen/fusion/widget/IdleDragControl;Lcom/htc/fusion/fx/controls/FxDynamicImage;Lcom/htc/fusion/fx/controls/FxDynamicImage;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/controls/FxTextLabel;)V
    .locals 4
    .parameter "context"
    .parameter "container"
    .parameter "info"
    .parameter "dragItem"
    .parameter "icon"
    .parameter "animationicon"
    .parameter "numberTl"
    .parameter "numberTl2"
    .parameter "nameTl"
    .parameter "nameTxt"

    .prologue
    const/4 v3, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mCount:I

    .line 59
    iput-boolean v3, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mPendingUpdateCountUI:Z

    .line 60
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mVisible:Z

    .line 61
    iput-boolean v3, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mHideName:Z

    .line 62
    new-instance v1, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon$MyHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon$MyHandler;-><init>(Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon$1;)V

    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mHandler:Landroid/os/Handler;

    .line 410
    iput-boolean v3, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mDoHide:Z

    .line 73
    iput-object p1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mContainer:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;

    .line 76
    iput-object p3, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mShortcutInfo:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;

    .line 77
    check-cast p4, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    .end local p4
    iput-object p4, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mDragItem:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    .line 78
    iput-object p7, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mNumTL:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 79
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mNumTL:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mNumTL:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "textlabel.notification_num"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mNumTxt:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 81
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mNumTL:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "textlabel.notification_num99"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mNum99Txt:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 82
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mNumTL:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "notification_bubble"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mBubbleTL:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 84
    :cond_0
    iput-object p8, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mNumTL2:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 85
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mNumTL2:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_1

    .line 86
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mNumTL2:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "textlabel.notification_num"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mNumTxt2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 87
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mNumTL2:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "textlabel.notification_num99"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mNum99Txt2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 88
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mNumTL2:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "notification_bubble"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mBubbleTL2:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 90
    :cond_1
    iput-object p5, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mIcon:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 91
    iput-object p6, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mAnimationIcon:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 92
    iput-object p9, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mNameTL:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 93
    iput-object p10, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mNameTxt:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 94
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mNumTL2:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_2

    .line 95
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mNumTL2:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "fly_in"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mBubbleMarker:Lcom/htc/fusion/fx/Marker;

    .line 96
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mNumTL2:Lcom/htc/fusion/fx/FxTimelineControl;

    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mBubbleMarker:Lcom/htc/fusion/fx/Marker;

    iget v2, v2, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 98
    :cond_2
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    .line 99
    .local v0, touchslop:I
    mul-int v1, v0, v0

    iput v1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mTouchSlopSquare:I

    .line 100
    return-void
.end method

.method static synthetic access$100(Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->handleNameVisible(Z)V

    return-void
.end method

.method private handleNameVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 455
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mNameTL:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v0, :cond_1

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mHideName:Z

    if-eqz v0, :cond_2

    .line 459
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mNameTL:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 460
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mNameTL:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "Opacity_on"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 461
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mHideName:Z

    goto :goto_0

    .line 463
    :cond_2
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mHideName:Z

    if-nez v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mNameTL:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 465
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mNameTL:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "Opacity_off"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 466
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mHideName:Z

    goto :goto_0
.end method

.method private isApExist()Z
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mShortcutInfo:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;

    if-eqz v0, :cond_0

    .line 107
    const/4 v0, 0x1

    .line 110
    :goto_0
    return v0

    .line 109
    :cond_0
    const-string v0, "ShortcutIcon"

    const-string v1, "isApExist false"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateCount()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 171
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mNumTL:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 172
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mNumTL2:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mNumTL2:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 175
    :cond_0
    return-void
.end method


# virtual methods
.method public dragCancel()V
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mDragItem:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mDragItem:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->dragCancel()V

    .line 516
    :cond_0
    return-void
.end method

.method public equals(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)Z
    .locals 1
    .parameter "drag"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mDragItem:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mDragItem:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    invoke-virtual {v0, p1}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->equals(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)Z

    move-result v0

    .line 231
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mShortcutInfo:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mShortcutInfo:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 283
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mShortcutInfo:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mShortcutInfo:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 276
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 211
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mDragItem:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    invoke-virtual {v1}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->init()V

    .line 212
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mDragItem:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    invoke-virtual {v1, p0}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->setOnBackListener(Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnBackListener;)V

    .line 213
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mDragItem:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    invoke-virtual {v1, p0}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->setOnDragListener(Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnDragListener;)V

    .line 214
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mDragItem:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    invoke-virtual {v1, p0}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->setOnTouchListener(Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnTouchListener;)V

    .line 215
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->updateApInfoUI()V

    .line 216
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mNameTL:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mNameTL:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 218
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mNameTL:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "Opacity_on"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v0

    .line 219
    .local v0, mark:Lcom/htc/fusion/fx/Marker;
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mNameTL:Lcom/htc/fusion/fx/FxTimelineControl;

    iget v2, v0, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 221
    .end local v0           #mark:Lcom/htc/fusion/fx/Marker;
    :cond_0
    return-void
.end method

.method public onClick(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 486
    return-void
.end method

.method public onEndBack(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 434
    return-void
.end method

.method public onEndDrag(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;FFZ)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "unlock"

    .prologue
    .line 401
    if-eqz p4, :cond_0

    .line 407
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mContainer:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;

    invoke-virtual {v0, p0}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->onSphereReleased(Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;)V

    goto :goto_0
.end method

.method public onLongPress(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 491
    return-void
.end method

.method public onMoveDrag(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;FFZ)V
    .locals 3
    .parameter "arg0"
    .parameter "dx"
    .parameter "dy"
    .parameter "unlock"

    .prologue
    .line 414
    iget-boolean v1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mDoHide:Z

    if-nez v1, :cond_0

    .line 416
    mul-float v1, p2, p2

    mul-float v2, p3, p3

    add-float v0, v1, v2

    .line 417
    .local v0, move:F
    iget v1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mTouchSlopSquare:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 418
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mDoHide:Z

    .line 420
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mContainer:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;

    invoke-virtual {v1, p0}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->onSphereMoved(Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;)V

    .line 424
    .end local v0           #move:F
    :cond_0
    return-void
.end method

.method public onPress(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;FF)V
    .locals 1
    .parameter "drag"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 495
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mContainer:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;

    invoke-virtual {v0, p0}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->onSpherePressed(Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;)V

    .line 497
    return-void
.end method

.method public onRelease(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;FF)V
    .locals 0
    .parameter "drag"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 502
    return-void
.end method

.method public onResume(Z)V
    .locals 4
    .parameter "playPop"

    .prologue
    const/4 v3, 0x0

    .line 390
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mPendingUpdateCountUI:Z

    if-eqz v0, :cond_1

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    iget v0, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mCount:I

    if-lez v0, :cond_0

    if-eqz p1, :cond_0

    .line 394
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mNumTL:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "fly_in"

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZ)V

    goto :goto_0
.end method

.method public onStartBack(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 439
    return-void
.end method

.method public onStartDrag(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;FF)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 428
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mDoHide:Z

    .line 429
    return-void
.end method

.method public resetPosition()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 255
    invoke-direct {p0}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->isApExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {p0, v2}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->setVisible(Z)V

    .line 257
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mDragItem:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->reset()V

    .line 258
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->setNameVisible(ZJ)V

    .line 260
    :cond_0
    return-void
.end method

.method public resetShortcutInfo(Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 133
    monitor-enter p0

    .line 134
    if-eqz p1, :cond_1

    .line 136
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->isSameShortcut(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iput-object p1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mShortcutInfo:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;

    .line 138
    monitor-exit p0

    .line 143
    :goto_0
    return-void

    .line 140
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mShortcutInfo:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;

    .line 142
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setApInfo(Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    const/4 v1, 0x0

    .line 115
    iput-object p1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mShortcutInfo:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;

    .line 117
    invoke-direct {p0}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->isApExist()Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mDragItem:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    invoke-virtual {v0, v1}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->setVisible(Z)V

    .line 119
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mNameTL:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mNameTL:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mDragItem:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    iget-boolean v1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mVisible:Z

    invoke-virtual {v0, v1}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->setVisible(Z)V

    .line 125
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mNameTL:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mNameTL:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 128
    :cond_2
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->updateApInfoUI()V

    goto :goto_0
.end method

.method public setIconVisible(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 505
    const/4 v0, 0x0

    .line 506
    .local v0, goal:F
    if-eqz p1, :cond_0

    .line 507
    const/high16 v0, 0x3f80

    .line 509
    :cond_0
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mDragItem:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->setOpacity(FZ)V

    .line 510
    return-void
.end method

.method public setNameVisible(ZJ)V
    .locals 3
    .parameter "visible"
    .parameter "delay"

    .prologue
    const/4 v2, 0x1

    .line 442
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 443
    .local v0, msg:Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 444
    if-eqz p1, :cond_0

    .line 445
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 450
    :goto_0
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 451
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v0, p2, p3}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;J)V

    .line 452
    return-void

    .line 448
    :cond_0
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mVisible:Z

    .line 264
    invoke-direct {p0}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->isApExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mDragItem:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    invoke-virtual {v0, p1}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->setVisible(Z)V

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mDragItem:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->setVisible(Z)V

    goto :goto_0
.end method

.method public startApplication(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->isApExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mShortcutInfo:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;

    invoke-virtual {v0, v1}, Lcom/htc/idlescreen/base/IdleState;->startApplication(Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;)V

    .line 242
    :goto_0
    return-void

    .line 240
    :cond_0
    const-string v0, "ShortcutIcon"

    const-string v1, "startApplication no appInfo"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startApplication(Landroid/content/Context;J)V
    .locals 2
    .parameter "context"
    .parameter "delay"

    .prologue
    .line 245
    invoke-direct {p0}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->isApExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mShortcutInfo:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;

    invoke-virtual {v0, v1, p2, p3}, Lcom/htc/idlescreen/base/IdleState;->startApplication(Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;J)V

    .line 252
    :goto_0
    return-void

    .line 250
    :cond_0
    const-string v0, "ShortcutIcon"

    const-string v1, "startApplication no appInfo"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public uninit()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mDragItem:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->uninit()V

    .line 225
    return-void
.end method

.method public updateApInfoUI()V
    .locals 5

    .prologue
    .line 145
    const/4 v1, 0x0

    .line 146
    .local v1, iconDraw:Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mShortcutInfo:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;

    .line 148
    .local v2, info:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;
    if-eqz v2, :cond_1

    .line 149
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 156
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mIcon:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v3, v1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 157
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mDragItem:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    invoke-virtual {v3, v1}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->setFakeImage(Landroid/graphics/drawable/Drawable;)V

    .line 158
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mAnimationIcon:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-eqz v3, :cond_0

    .line 159
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mAnimationIcon:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v3, v1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->updateCount()V

    .line 167
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->updateName()V

    .line 168
    return-void

    .line 152
    :cond_1
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mDragItem:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->setVisible(Z)V

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public updateName()V
    .locals 2

    .prologue
    .line 380
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mNameTL:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mNameTxt:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v1, :cond_1

    .line 381
    const-string v0, ""

    .line 382
    .local v0, label:Ljava/lang/String;
    invoke-direct {p0}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->isApExist()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 383
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mShortcutInfo:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;

    invoke-virtual {v1}, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 385
    :cond_0
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mNameTxt:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 387
    .end local v0           #label:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public updateShortcutInfo(Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 287
    monitor-enter p0

    .line 288
    :try_start_0
    iput-object p1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->mShortcutInfo:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;

    .line 289
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->updateApInfoUI()V

    .line 290
    monitor-exit p0

    .line 305
    return-void

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
