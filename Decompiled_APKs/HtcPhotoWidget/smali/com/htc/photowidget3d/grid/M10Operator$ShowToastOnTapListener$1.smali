.class Lcom/htc/photowidget3d/grid/M10Operator$ShowToastOnTapListener$1;
.super Ljava/lang/Object;
.source "M10Operator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/photowidget3d/grid/M10Operator$ShowToastOnTapListener;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/photowidget3d/grid/M10Operator$ShowToastOnTapListener;

.field final synthetic val$strErrorMsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/photowidget3d/grid/M10Operator$ShowToastOnTapListener;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 686
    iput-object p1, p0, Lcom/htc/photowidget3d/grid/M10Operator$ShowToastOnTapListener$1;->this$1:Lcom/htc/photowidget3d/grid/M10Operator$ShowToastOnTapListener;

    iput-object p2, p0, Lcom/htc/photowidget3d/grid/M10Operator$ShowToastOnTapListener$1;->val$strErrorMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 690
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator$ShowToastOnTapListener$1;->this$1:Lcom/htc/photowidget3d/grid/M10Operator$ShowToastOnTapListener;

    iget-object v0, v0, Lcom/htc/photowidget3d/grid/M10Operator$ShowToastOnTapListener;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    iget-object v0, v0, Lcom/htc/photowidget3d/grid/M10Operator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator$ShowToastOnTapListener$1;->val$strErrorMsg:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 691
    return-void
.end method
