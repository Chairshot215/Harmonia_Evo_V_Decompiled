.class Lcom/htc/usage/widget/NumberPicker$3;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/usage/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/usage/widget/NumberPicker;


# direct methods
.method constructor <init>(Lcom/htc/usage/widget/NumberPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 604
    iput-object p1, p0, Lcom/htc/usage/widget/NumberPicker$3;->this$0:Lcom/htc/usage/widget/NumberPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 606
    iget-object v0, p0, Lcom/htc/usage/widget/NumberPicker$3;->this$0:Lcom/htc/usage/widget/NumberPicker;

    #getter for: Lcom/htc/usage/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/htc/usage/widget/NumberPicker;->access$000(Lcom/htc/usage/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 607
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x10202c7

    if-ne v0, v1, :cond_0

    .line 608
    iget-object v0, p0, Lcom/htc/usage/widget/NumberPicker$3;->this$0:Lcom/htc/usage/widget/NumberPicker;

    #calls: Lcom/htc/usage/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(Z)V
    invoke-static {v0, v2}, Lcom/htc/usage/widget/NumberPicker;->access$200(Lcom/htc/usage/widget/NumberPicker;Z)V

    .line 612
    :goto_0
    return v2

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/htc/usage/widget/NumberPicker$3;->this$0:Lcom/htc/usage/widget/NumberPicker;

    const/4 v1, 0x0

    #calls: Lcom/htc/usage/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(Z)V
    invoke-static {v0, v1}, Lcom/htc/usage/widget/NumberPicker;->access$200(Lcom/htc/usage/widget/NumberPicker;Z)V

    goto :goto_0
.end method
