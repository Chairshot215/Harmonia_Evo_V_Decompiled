.class Lcom/s0up/goomanager/FlashActivity$3;
.super Ljava/lang/Object;
.source "FlashActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s0up/goomanager/FlashActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/s0up/goomanager/FlashActivity;


# direct methods
.method constructor <init>(Lcom/s0up/goomanager/FlashActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/s0up/goomanager/FlashActivity$3;->this$0:Lcom/s0up/goomanager/FlashActivity;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "item"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/s0up/goomanager/FlashActivity$3;->this$0:Lcom/s0up/goomanager/FlashActivity;

    #getter for: Lcom/s0up/goomanager/FlashActivity;->mFileNameAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v2}, Lcom/s0up/goomanager/FlashActivity;->access$5(Lcom/s0up/goomanager/FlashActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s0up/goomanager/FlashActivity$FileName;

    .line 70
    .local v0, fileName:Lcom/s0up/goomanager/FlashActivity$FileName;
    invoke-virtual {v0}, Lcom/s0up/goomanager/FlashActivity$FileName;->toggleChecked()V

    .line 71
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s0up/goomanager/FlashActivity$FileNameViewHolder;

    .line 72
    .local v1, viewHolder:Lcom/s0up/goomanager/FlashActivity$FileNameViewHolder;
    invoke-virtual {v1}, Lcom/s0up/goomanager/FlashActivity$FileNameViewHolder;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v0}, Lcom/s0up/goomanager/FlashActivity$FileName;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 73
    return-void
.end method
