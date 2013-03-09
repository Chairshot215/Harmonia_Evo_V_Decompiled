.class Lcom/htc/home/personalize/catechooser/CategoryChooser$1;
.super Ljava/lang/Object;
.source "CategoryChooser.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/catechooser/CategoryChooser;->initPhase1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/catechooser/CategoryChooser;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/catechooser/CategoryChooser;)V
    .locals 0
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser$1;->this$0:Lcom/htc/home/personalize/catechooser/CategoryChooser;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "arg1"
    .parameter "pos"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 268
    .local p1, arg0:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iget-object v0, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser$1;->this$0:Lcom/htc/home/personalize/catechooser/CategoryChooser;

    #calls: Lcom/htc/home/personalize/catechooser/CategoryChooser;->choose(I)V
    invoke-static {v0, p3}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->access$000(Lcom/htc/home/personalize/catechooser/CategoryChooser;I)V

    .line 269
    return-void
.end method
