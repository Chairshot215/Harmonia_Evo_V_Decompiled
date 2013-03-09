.class Lcom/google/android/talk/videochat/VideoAnimator$Position;
.super Ljava/lang/Object;
.source "VideoAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/VideoAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Position"
.end annotation


# instance fields
.field x:I

.field y:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "_x"
    .parameter "_y"

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput p1, p0, Lcom/google/android/talk/videochat/VideoAnimator$Position;->x:I

    .line 202
    iput p2, p0, Lcom/google/android/talk/videochat/VideoAnimator$Position;->y:I

    .line 203
    return-void
.end method
