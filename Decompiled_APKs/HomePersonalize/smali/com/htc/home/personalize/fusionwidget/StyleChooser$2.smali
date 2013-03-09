.class Lcom/htc/home/personalize/fusionwidget/StyleChooser$2;
.super Ljava/lang/Object;
.source "StyleChooser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/fusionwidget/StyleChooser;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/fusionwidget/StyleChooser;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/fusionwidget/StyleChooser;)V
    .locals 0
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$2;->this$0:Lcom/htc/home/personalize/fusionwidget/StyleChooser;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$2;->this$0:Lcom/htc/home/personalize/fusionwidget/StyleChooser;

    iget-object v1, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$2;->this$0:Lcom/htc/home/personalize/fusionwidget/StyleChooser;

    #getter for: Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mCurrentPosition:I
    invoke-static {v1}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->access$100(Lcom/htc/home/personalize/fusionwidget/StyleChooser;)I

    move-result v1

    #calls: Lcom/htc/home/personalize/fusionwidget/StyleChooser;->choose(I)V
    invoke-static {v0, v1}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->access$300(Lcom/htc/home/personalize/fusionwidget/StyleChooser;I)V

    .line 395
    return-void
.end method
