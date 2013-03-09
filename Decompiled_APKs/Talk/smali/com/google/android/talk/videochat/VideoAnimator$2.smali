.class Lcom/google/android/talk/videochat/VideoAnimator$2;
.super Ljava/lang/Object;
.source "VideoAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/videochat/VideoAnimator;->startAnimationsOnMainThread([Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/VideoAnimator;

.field final synthetic val$animators:[Landroid/animation/Animator;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/VideoAnimator;[Landroid/animation/Animator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 941
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoAnimator$2;->this$0:Lcom/google/android/talk/videochat/VideoAnimator;

    iput-object p2, p0, Lcom/google/android/talk/videochat/VideoAnimator$2;->val$animators:[Landroid/animation/Animator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 944
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoAnimator$2;->val$animators:[Landroid/animation/Animator;

    .local v1, arr$:[Landroid/animation/Animator;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 945
    .local v0, a:Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 944
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 947
    .end local v0           #a:Landroid/animation/Animator;
    :cond_0
    return-void
.end method
