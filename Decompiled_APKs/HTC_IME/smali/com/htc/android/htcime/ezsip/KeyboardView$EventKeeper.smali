.class public Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;
.super Ljava/lang/Object;
.source "KeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/ezsip/KeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EventKeeper"
.end annotation


# instance fields
.field public mDoFuncKey:Z

.field public mFirstMove:Z

.field public mIsFingerMoved:Z

.field public mLastDownBtnIndex:I

.field public mLastQPTime:J

.field public mLastSendKey:Z

.field public mMultitouchHappened:Z

.field public mShiftCehck:Z

.field final synthetic this$0:Lcom/htc/android/htcime/ezsip/KeyboardView;


# direct methods
.method protected constructor <init>(Lcom/htc/android/htcime/ezsip/KeyboardView;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3131
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->this$0:Lcom/htc/android/htcime/ezsip/KeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3135
    const/16 v0, 0xff

    iput v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastDownBtnIndex:I

    .line 3139
    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mMultitouchHappened:Z

    .line 3143
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mFirstMove:Z

    .line 3148
    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mIsFingerMoved:Z

    .line 3152
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mShiftCehck:Z

    .line 3157
    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastSendKey:Z

    .line 3159
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastQPTime:J

    .line 3163
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mDoFuncKey:Z

    return-void
.end method


# virtual methods
.method resetState()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3177
    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mMultitouchHappened:Z

    .line 3178
    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mFirstMove:Z

    .line 3179
    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mIsFingerMoved:Z

    .line 3180
    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mShiftCehck:Z

    .line 3181
    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mDoFuncKey:Z

    .line 3182
    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastSendKey:Z

    .line 3183
    return-void
.end method
