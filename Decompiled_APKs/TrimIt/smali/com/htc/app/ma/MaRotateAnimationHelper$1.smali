.class Lcom/htc/app/ma/MaRotateAnimationHelper$1;
.super Landroid/view/OrientationEventListener;
.source "MaRotateAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/ma/MaRotateAnimationHelper;->onResume(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/ma/MaRotateAnimationHelper;


# direct methods
.method constructor <init>(Lcom/htc/app/ma/MaRotateAnimationHelper;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 214
    iput-object p1, p0, Lcom/htc/app/ma/MaRotateAnimationHelper$1;->this$0:Lcom/htc/app/ma/MaRotateAnimationHelper;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/htc/app/ma/MaRotateAnimationHelper$1;->this$0:Lcom/htc/app/ma/MaRotateAnimationHelper;

    #setter for: Lcom/htc/app/ma/MaRotateAnimationHelper;->mAngle:I
    invoke-static {v0, p1}, Lcom/htc/app/ma/MaRotateAnimationHelper;->access$002(Lcom/htc/app/ma/MaRotateAnimationHelper;I)I

    .line 218
    iget-object v0, p0, Lcom/htc/app/ma/MaRotateAnimationHelper$1;->this$0:Lcom/htc/app/ma/MaRotateAnimationHelper;

    #getter for: Lcom/htc/app/ma/MaRotateAnimationHelper;->mCurrOrientation:I
    invoke-static {v0}, Lcom/htc/app/ma/MaRotateAnimationHelper;->access$100(Lcom/htc/app/ma/MaRotateAnimationHelper;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 219
    iget-object v0, p0, Lcom/htc/app/ma/MaRotateAnimationHelper$1;->this$0:Lcom/htc/app/ma/MaRotateAnimationHelper;

    iget-object v1, p0, Lcom/htc/app/ma/MaRotateAnimationHelper$1;->this$0:Lcom/htc/app/ma/MaRotateAnimationHelper;

    #getter for: Lcom/htc/app/ma/MaRotateAnimationHelper;->mAngle:I
    invoke-static {v1}, Lcom/htc/app/ma/MaRotateAnimationHelper;->access$000(Lcom/htc/app/ma/MaRotateAnimationHelper;)I

    move-result v1

    #calls: Lcom/htc/app/ma/MaRotateAnimationHelper;->judgeDirectionIsLeft(I)Z
    invoke-static {v0, v1}, Lcom/htc/app/ma/MaRotateAnimationHelper;->access$200(Lcom/htc/app/ma/MaRotateAnimationHelper;I)Z

    .line 220
    :cond_0
    return-void
.end method
