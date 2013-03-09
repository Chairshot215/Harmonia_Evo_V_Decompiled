.class Lcom/google/android/talk/AnimatedAdapter2$ViewCache$CacheItem;
.super Ljava/lang/Object;
.source "AnimatedAdapter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/AnimatedAdapter2$ViewCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheItem"
.end annotation


# instance fields
.field mId:J

.field mView:Landroid/view/View;

.field mViewType:I

.field final synthetic this$1:Lcom/google/android/talk/AnimatedAdapter2$ViewCache;


# direct methods
.method constructor <init>(Lcom/google/android/talk/AnimatedAdapter2$ViewCache;Landroid/view/View;JI)V
    .locals 0
    .parameter
    .parameter "v"
    .parameter "id"
    .parameter "viewType"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/google/android/talk/AnimatedAdapter2$ViewCache$CacheItem;->this$1:Lcom/google/android/talk/AnimatedAdapter2$ViewCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p2, p0, Lcom/google/android/talk/AnimatedAdapter2$ViewCache$CacheItem;->mView:Landroid/view/View;

    .line 181
    iput-wide p3, p0, Lcom/google/android/talk/AnimatedAdapter2$ViewCache$CacheItem;->mId:J

    .line 182
    iput p5, p0, Lcom/google/android/talk/AnimatedAdapter2$ViewCache$CacheItem;->mViewType:I

    .line 183
    return-void
.end method
