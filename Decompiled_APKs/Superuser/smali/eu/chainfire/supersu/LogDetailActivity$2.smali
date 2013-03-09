.class Leu/chainfire/supersu/LogDetailActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/LogDetailActivity;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/LogDetailActivity;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/supersu/LogDetailActivity$2;->a:Leu/chainfire/supersu/LogDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V
    .locals 6

    iget-object v0, p0, Leu/chainfire/supersu/LogDetailActivity$2;->a:Leu/chainfire/supersu/LogDetailActivity;

    invoke-static {v0}, Leu/chainfire/supersu/LogDetailActivity;->a(Leu/chainfire/supersu/LogDetailActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Leu/chainfire/supersu/LogDetailActivity;->a(Leu/chainfire/supersu/LogDetailActivity;I)V

    iget-object v0, p0, Leu/chainfire/supersu/LogDetailActivity$2;->a:Leu/chainfire/supersu/LogDetailActivity;

    invoke-static {v0}, Leu/chainfire/supersu/LogDetailActivity;->b(Leu/chainfire/supersu/LogDetailActivity;)V

    new-instance v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    const/4 v2, 0x0

    iget-object v3, p0, Leu/chainfire/supersu/LogDetailActivity$2;->a:Leu/chainfire/supersu/LogDetailActivity;

    const v4, 0x7f04002f

    invoke-virtual {v3, v4}, Leu/chainfire/supersu/LogDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public onAnimationRepeat(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V
    .locals 0

    return-void
.end method
