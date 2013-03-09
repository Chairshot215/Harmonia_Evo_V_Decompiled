.class public Lcom/google/android/talk/videochat/VideoAnimator$RectSize;
.super Ljava/lang/Object;
.source "VideoAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/VideoAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RectSize"
.end annotation


# instance fields
.field public h:I

.field public w:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 211
    invoke-direct {p0, v0, v0}, Lcom/google/android/talk/videochat/VideoAnimator$RectSize;-><init>(II)V

    .line 212
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "_w"
    .parameter "_h"

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput p1, p0, Lcom/google/android/talk/videochat/VideoAnimator$RectSize;->w:I

    .line 216
    iput p2, p0, Lcom/google/android/talk/videochat/VideoAnimator$RectSize;->h:I

    .line 217
    return-void
.end method
