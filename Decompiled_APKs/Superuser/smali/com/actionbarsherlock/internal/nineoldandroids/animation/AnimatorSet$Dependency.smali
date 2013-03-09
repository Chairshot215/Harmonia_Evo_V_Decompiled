.class Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Dependency;
.super Ljava/lang/Object;


# static fields
.field static final AFTER:I = 0x1

.field static final WITH:I


# instance fields
.field public node:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

.field public rule:I


# direct methods
.method public constructor <init>(Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Dependency;->node:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    iput p2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Dependency;->rule:I

    return-void
.end method
