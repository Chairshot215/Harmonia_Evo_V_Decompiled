.class Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter$1;
.super Ljava/lang/Object;
.source "BrowserSnapshotPage.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter$1;->this$0:Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 242
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter$1;->this$0:Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;

    const-wide/16 v1, 0x0

    #setter for: Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;->mAnimateId:J
    invoke-static {v0, v1, v2}, Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;->access$002(Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;J)J

    .line 237
    iget-object v0, p0, Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter$1;->this$0:Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;

    const/4 v1, 0x0

    #setter for: Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;->mAnimationTarget:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;->access$102(Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;Landroid/view/View;)Landroid/view/View;

    .line 238
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 232
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 228
    return-void
.end method
