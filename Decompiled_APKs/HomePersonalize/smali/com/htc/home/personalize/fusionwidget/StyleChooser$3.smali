.class Lcom/htc/home/personalize/fusionwidget/StyleChooser$3;
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
    .line 402
    iput-object p1, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$3;->this$0:Lcom/htc/home/personalize/fusionwidget/StyleChooser;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$3;->this$0:Lcom/htc/home/personalize/fusionwidget/StyleChooser;

    const v1, 0x4e81d

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->showDialog(I)V

    .line 405
    return-void
.end method
