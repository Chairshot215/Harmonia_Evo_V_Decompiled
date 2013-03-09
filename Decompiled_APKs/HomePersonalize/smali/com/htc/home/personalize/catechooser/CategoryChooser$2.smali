.class Lcom/htc/home/personalize/catechooser/CategoryChooser$2;
.super Ljava/lang/Object;
.source "CategoryChooser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 278
    iput-object p1, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser$2;->this$0:Lcom/htc/home/personalize/catechooser/CategoryChooser;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    const/16 v2, 0x8

    .line 282
    iget-object v0, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser$2;->this$0:Lcom/htc/home/personalize/catechooser/CategoryChooser;

    const v1, 0x7f0b0029

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser$2;->this$0:Lcom/htc/home/personalize/catechooser/CategoryChooser;

    const v1, 0x7f0b002a

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser$2;->this$0:Lcom/htc/home/personalize/catechooser/CategoryChooser;

    const v1, 0x7f0b002b

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser$2;->this$0:Lcom/htc/home/personalize/catechooser/CategoryChooser;

    #calls: Lcom/htc/home/personalize/catechooser/CategoryChooser;->askDB2Load()V
    invoke-static {v0}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->access$100(Lcom/htc/home/personalize/catechooser/CategoryChooser;)V

    .line 286
    return-void
.end method
