.class Lcom/android/systemui/Nyandroid$Board$4;
.super Ljava/lang/Object;
.source "Nyandroid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/Nyandroid$Board;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/Nyandroid$Board;


# direct methods
.method constructor <init>(Lcom/android/systemui/Nyandroid$Board;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/Nyandroid$Board$4;->this$0:Lcom/android/systemui/Nyandroid$Board;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/Nyandroid$Board$4;->this$0:Lcom/android/systemui/Nyandroid$Board;

    #calls: Lcom/android/systemui/Nyandroid$Board;->reset()V
    invoke-static {v0}, Lcom/android/systemui/Nyandroid$Board;->access$000(Lcom/android/systemui/Nyandroid$Board;)V

    iget-object v0, p0, Lcom/android/systemui/Nyandroid$Board$4;->this$0:Lcom/android/systemui/Nyandroid$Board;

    iget-object v0, v0, Lcom/android/systemui/Nyandroid$Board;->mAnim:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->start()V

    return-void
.end method
