.class public Lcom/htc/idlescreen/base/widget/ReminderPanel;
.super Ljava/lang/Object;
.source "ReminderPanel.java"

# interfaces
.implements Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnDragListener;
.implements Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnBackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/idlescreen/base/widget/ReminderPanel$PanelCallback;
    }
.end annotation


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "ReminderPanel"


# instance fields
.field private mAnime:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected mBorder:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mCallback:Lcom/htc/idlescreen/base/widget/ReminderPanel$PanelCallback;

.field mDragControl:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

.field private mDragging:Z

.field private mIdleView:Lcom/htc/idlescreen/base/widget/IdleView;

.field protected mIndicator:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mIndictorPhotoImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field protected mInfo:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mPhotoBitmap:Landroid/graphics/Bitmap;

.field private mPhotoImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field protected mTimeline_notification:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected mTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mTouchSlopSquare:I


# direct methods
.method public constructor <init>(Lcom/htc/idlescreen/base/widget/IdleView;Lcom/htc/lockscreen/fusion/widget/IdleDragControl;Lcom/htc/fusion/fx/FxTimelineControl;)V
    .locals 3
    .parameter "idleView"
    .parameter "drag"
    .parameter "anime"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mDragging:Z

    .line 62
    check-cast p2, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    .end local p2
    iput-object p2, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mDragControl:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    .line 63
    iput-object p1, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mIdleView:Lcom/htc/idlescreen/base/widget/IdleView;

    .line 64
    iput-object p3, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mAnime:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 65
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mAnime:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mAnime:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "textlabel.notification"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 67
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mAnime:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "timeline.notification"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mTimeline_notification:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 68
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mAnime:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "textlabel.notification_event"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mInfo:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 69
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 72
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mAnime:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "timeline.notification_indicator"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mIndicator:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 73
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mAnime:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "dynamicimage.notification"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mIndictorPhotoImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 74
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mAnime:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "dynamicimage.incomingcallphoto"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mPhotoImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 75
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mAnime:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "timeline.incomingcall_border"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mBorder:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 76
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    .line 77
    .local v0, touchslop:I
    mul-int v1, v0, v0

    iput v1, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mTouchSlopSquare:I

    .line 79
    .end local v0           #touchslop:I
    :cond_0
    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mDragControl:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    invoke-virtual {v0, p0}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->setOnDragListener(Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnDragListener;)V

    .line 83
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mDragControl:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    invoke-virtual {v0, p0}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->setOnBackListener(Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnBackListener;)V

    .line 84
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mDragControl:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->init()V

    .line 86
    return-void
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mDragging:Z

    return v0
.end method

.method public onEndBack(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 104
    return-void
.end method

.method public onEndDrag(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;FFZ)Z
    .locals 3
    .parameter "arg0"
    .parameter "x"
    .parameter "y"
    .parameter "unlock"

    .prologue
    const/4 v2, 0x0

    .line 116
    iput-boolean v2, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mDragging:Z

    .line 117
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mDragControl:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->updateShortcutVisible(Z)V

    .line 119
    if-nez p4, :cond_0

    .line 120
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mCallback:Lcom/htc/idlescreen/base/widget/ReminderPanel$PanelCallback;

    invoke-interface {v0}, Lcom/htc/idlescreen/base/widget/ReminderPanel$PanelCallback;->onEndDrag()V

    .line 122
    :cond_0
    return v2
.end method

.method public onMoveDrag(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;FFZ)V
    .locals 3
    .parameter "arg0"
    .parameter "dx"
    .parameter "dy"
    .parameter "inDrop"

    .prologue
    .line 129
    mul-float v1, p2, p2

    mul-float v2, p3, p3

    add-float v0, v1, v2

    .line 130
    .local v0, move:F
    iget v1, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mTouchSlopSquare:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 131
    iget-boolean v1, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mDragging:Z

    if-nez v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mDragControl:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->updateShortcutVisible(Z)V

    .line 133
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mDragging:Z

    .line 137
    :cond_0
    return-void
.end method

.method public onStartBack(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 110
    return-void
.end method

.method public onStartDrag(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;FF)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 142
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mDragControl:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->reset()V

    .line 97
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mDragControl:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->updateShortcutVisible(Z)V

    .line 99
    return-void
.end method

.method public setCallback(Lcom/htc/idlescreen/base/widget/ReminderPanel$PanelCallback;)V
    .locals 0
    .parameter "panelCallback"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mCallback:Lcom/htc/idlescreen/base/widget/ReminderPanel$PanelCallback;

    .line 186
    return-void
.end method

.method public setEnable(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mDragControl:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->setEnable(Z)V

    .line 145
    return-void
.end method

.method public setIndictorPhoto(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "photo"

    .prologue
    .line 159
    if-eqz p1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mIndicator:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 161
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mIndictorPhotoImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 166
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mIndictorPhotoImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 164
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mIndicator:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public setIndictorPhoto(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "photo"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 169
    if-eqz p1, :cond_0

    .line 170
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mIndicator:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 171
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mBorder:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 172
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mIndictorPhotoImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 178
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mIndictorPhotoImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 175
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mBorder:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 176
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mIndicator:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public setInfo(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mInfo:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 194
    return-void
.end method

.method public setPhoto(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "photo"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mPhotoImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 153
    return-void
.end method

.method public setPhoto(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "photo"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mPhotoImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 157
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public setVisible(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mDragControl:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->setVisible(Z)V

    .line 148
    return-void
.end method

.method public uninit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mDragControl:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    invoke-virtual {v0, v1}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->setOnDragListener(Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnDragListener;)V

    .line 90
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mDragControl:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    invoke-virtual {v0, v1}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->setOnBackListener(Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnBackListener;)V

    .line 91
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/ReminderPanel;->mDragControl:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->uninit()V

    .line 93
    return-void
.end method
