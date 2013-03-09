.class public Lcom/android/mms/util/ViewCache$preload_set;
.super Ljava/lang/Object;
.source "ViewCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/ViewCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "preload_set"
.end annotation


# instance fields
.field public mCode:I

.field public mLayoutId:I

.field public mTimes:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .parameter "code"
    .parameter "LayoutView"
    .parameter "i"

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Lcom/android/mms/util/ViewCache$preload_set;->mCode:I

    .line 64
    iput p2, p0, Lcom/android/mms/util/ViewCache$preload_set;->mLayoutId:I

    .line 65
    iput p3, p0, Lcom/android/mms/util/ViewCache$preload_set;->mTimes:I

    .line 66
    return-void
.end method
