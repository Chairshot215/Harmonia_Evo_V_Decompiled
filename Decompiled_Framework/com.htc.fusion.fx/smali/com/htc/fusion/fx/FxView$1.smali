.class Lcom/htc/fusion/fx/FxView$1;
.super Ljava/lang/Object;
.source "FxView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fusion/fx/FxView;->playSoundEffect(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fusion/fx/FxView;

.field final synthetic val$soundConstant:I


# direct methods
.method constructor <init>(Lcom/htc/fusion/fx/FxView;I)V
    .locals 0

    iput-object p1, p0, Lcom/htc/fusion/fx/FxView$1;->this$0:Lcom/htc/fusion/fx/FxView;

    iput p2, p0, Lcom/htc/fusion/fx/FxView$1;->val$soundConstant:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/htc/fusion/fx/FxView$1;->this$0:Lcom/htc/fusion/fx/FxView;

    iget v1, p0, Lcom/htc/fusion/fx/FxView$1;->val$soundConstant:I

    #calls: Landroid/view/View;->playSoundEffect(I)V
    invoke-static {v0, v1}, Lcom/htc/fusion/fx/FxView;->access$001(Lcom/htc/fusion/fx/FxView;I)V

    return-void
.end method
