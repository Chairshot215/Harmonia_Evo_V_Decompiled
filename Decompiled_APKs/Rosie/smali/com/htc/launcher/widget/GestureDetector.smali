.class public Lcom/htc/launcher/widget/GestureDetector;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/launcher/widget/GestureDetector$OnMultiTouchListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static localLOGV:Z


# instance fields
.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIsMultiTouchMode:Z

.field private final mListener:Lcom/htc/launcher/widget/GestureDetector$OnMultiTouchListener;

.field private mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mOnScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mScaleFactor:F

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/launcher/widget/GestureDetector;->localLOGV:Z

    .line 35
    const-class v0, Lcom/htc/launcher/widget/GestureDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/launcher/widget/GestureDetector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/launcher/widget/GestureDetector$OnMultiTouchListener;)V
    .locals 2
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 91
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/widget/GestureDetector;->mIsMultiTouchMode:Z

    .line 58
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/launcher/widget/GestureDetector;->mScaleFactor:F

    .line 157
    new-instance v0, Lcom/htc/launcher/widget/GestureDetector$1;

    invoke-direct {v0, p0}, Lcom/htc/launcher/widget/GestureDetector$1;-><init>(Lcom/htc/launcher/widget/GestureDetector;)V

    iput-object v0, p0, Lcom/htc/launcher/widget/GestureDetector;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 219
    new-instance v0, Lcom/htc/launcher/widget/GestureDetector$2;

    invoke-direct {v0, p0}, Lcom/htc/launcher/widget/GestureDetector$2;-><init>(Lcom/htc/launcher/widget/GestureDetector;)V

    iput-object v0, p0, Lcom/htc/launcher/widget/GestureDetector;->mOnScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 92
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "MultiTouchDetector"

    const-string v1, "MultiTouchDetector v0.36"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    iput-object p2, p0, Lcom/htc/launcher/widget/GestureDetector;->mListener:Lcom/htc/launcher/widget/GestureDetector$OnMultiTouchListener;

    .line 94
    invoke-direct {p0, p1}, Lcom/htc/launcher/widget/GestureDetector;->init(Landroid/content/Context;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/launcher/widget/GestureDetector$OnMultiTouchListener;Landroid/os/Handler;)V
    .locals 2
    .parameter "context"
    .parameter "listener"
    .parameter "handler"

    .prologue
    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/widget/GestureDetector;->mIsMultiTouchMode:Z

    .line 58
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/launcher/widget/GestureDetector;->mScaleFactor:F

    .line 157
    new-instance v0, Lcom/htc/launcher/widget/GestureDetector$1;

    invoke-direct {v0, p0}, Lcom/htc/launcher/widget/GestureDetector$1;-><init>(Lcom/htc/launcher/widget/GestureDetector;)V

    iput-object v0, p0, Lcom/htc/launcher/widget/GestureDetector;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 219
    new-instance v0, Lcom/htc/launcher/widget/GestureDetector$2;

    invoke-direct {v0, p0}, Lcom/htc/launcher/widget/GestureDetector$2;-><init>(Lcom/htc/launcher/widget/GestureDetector;)V

    iput-object v0, p0, Lcom/htc/launcher/widget/GestureDetector;->mOnScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 77
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "MultiTouchDetector"

    const-string v1, "MultiTouchDetectorv v0.36"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    iput-object p2, p0, Lcom/htc/launcher/widget/GestureDetector;->mListener:Lcom/htc/launcher/widget/GestureDetector$OnMultiTouchListener;

    .line 79
    invoke-direct {p0, p1}, Lcom/htc/launcher/widget/GestureDetector;->init(Landroid/content/Context;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/launcher/widget/GestureDetector$OnMultiTouchListener;Z)V
    .locals 3
    .parameter "context"
    .parameter "listener"
    .parameter "bAccelerate"

    .prologue
    .line 96
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/widget/GestureDetector;->mIsMultiTouchMode:Z

    .line 58
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/launcher/widget/GestureDetector;->mScaleFactor:F

    .line 157
    new-instance v0, Lcom/htc/launcher/widget/GestureDetector$1;

    invoke-direct {v0, p0}, Lcom/htc/launcher/widget/GestureDetector$1;-><init>(Lcom/htc/launcher/widget/GestureDetector;)V

    iput-object v0, p0, Lcom/htc/launcher/widget/GestureDetector;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 219
    new-instance v0, Lcom/htc/launcher/widget/GestureDetector$2;

    invoke-direct {v0, p0}, Lcom/htc/launcher/widget/GestureDetector$2;-><init>(Lcom/htc/launcher/widget/GestureDetector;)V

    iput-object v0, p0, Lcom/htc/launcher/widget/GestureDetector;->mOnScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 97
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "MultiTouchDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MultiTouchDetector v0.36,bAccelerate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    iput-object p2, p0, Lcom/htc/launcher/widget/GestureDetector;->mListener:Lcom/htc/launcher/widget/GestureDetector$OnMultiTouchListener;

    .line 99
    invoke-direct {p0, p1}, Lcom/htc/launcher/widget/GestureDetector;->init(Landroid/content/Context;)V

    .line 100
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/htc/launcher/widget/GestureDetector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/launcher/widget/GestureDetector;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/htc/launcher/widget/GestureDetector;->mIsMultiTouchMode:Z

    return v0
.end method

.method static synthetic access$102(Lcom/htc/launcher/widget/GestureDetector;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/htc/launcher/widget/GestureDetector;->mIsMultiTouchMode:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/launcher/widget/GestureDetector;)Lcom/htc/launcher/widget/GestureDetector$OnMultiTouchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/launcher/widget/GestureDetector;->mListener:Lcom/htc/launcher/widget/GestureDetector$OnMultiTouchListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/launcher/widget/GestureDetector;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/htc/launcher/widget/GestureDetector;->mScaleFactor:F

    return v0
.end method

.method static synthetic access$332(Lcom/htc/launcher/widget/GestureDetector;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iget v0, p0, Lcom/htc/launcher/widget/GestureDetector;->mScaleFactor:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/htc/launcher/widget/GestureDetector;->mScaleFactor:F

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 104
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/htc/launcher/widget/GestureDetector;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/htc/launcher/widget/GestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    .line 105
    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/htc/launcher/widget/GestureDetector;->mOnScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/htc/launcher/widget/GestureDetector;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 107
    iget-object v0, p0, Lcom/htc/launcher/widget/GestureDetector;->mListener:Lcom/htc/launcher/widget/GestureDetector$OnMultiTouchListener;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "OnMultiTouchListener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelGesture()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 151
    iget-object v8, p0, Lcom/htc/launcher/widget/GestureDetector;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x3

    const/4 v7, 0x0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 155
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v4, 0x0

    .line 121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 123
    .local v0, action:I
    iget-object v2, p0, Lcom/htc/launcher/widget/GestureDetector;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 124
    iget-object v2, p0, Lcom/htc/launcher/widget/GestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 125
    const/4 v1, 0x0

    .line 127
    .local v1, handled:Z
    packed-switch v0, :pswitch_data_0

    .line 146
    :goto_0
    :pswitch_0
    return v1

    .line 129
    :pswitch_1
    iput-boolean v4, p0, Lcom/htc/launcher/widget/GestureDetector;->mIsMultiTouchMode:Z

    goto :goto_0

    .line 135
    :pswitch_2
    sget-boolean v2, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/launcher/widget/GestureDetector;->TAG:Ljava/lang/String;

    const-string v3, "ACTION_UP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    iput-boolean v4, p0, Lcom/htc/launcher/widget/GestureDetector;->mIsMultiTouchMode:Z

    .line 137
    iget-object v2, p0, Lcom/htc/launcher/widget/GestureDetector;->mListener:Lcom/htc/launcher/widget/GestureDetector$OnMultiTouchListener;

    invoke-interface {v2, p1}, Lcom/htc/launcher/widget/GestureDetector$OnMultiTouchListener;->onActionUp(Landroid/view/MotionEvent;)Z

    .line 138
    const/high16 v2, 0x3f80

    iput v2, p0, Lcom/htc/launcher/widget/GestureDetector;->mScaleFactor:F

    goto :goto_0

    .line 141
    :pswitch_3
    sget-boolean v2, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/htc/launcher/widget/GestureDetector;->TAG:Ljava/lang/String;

    const-string v3, "ACTION_CANCEL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_1
    iput-boolean v4, p0, Lcom/htc/launcher/widget/GestureDetector;->mIsMultiTouchMode:Z

    .line 143
    iget-object v2, p0, Lcom/htc/launcher/widget/GestureDetector;->mListener:Lcom/htc/launcher/widget/GestureDetector$OnMultiTouchListener;

    invoke-interface {v2, p1}, Lcom/htc/launcher/widget/GestureDetector$OnMultiTouchListener;->onActionCancel(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
