.class Lcom/htc/home/personalize/SkinPicker$1;
.super Ljava/lang/Object;
.source "SkinPicker.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/SkinPicker;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/SkinPicker;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/SkinPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/htc/home/personalize/SkinPicker$1;->this$0:Lcom/htc/home/personalize/SkinPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "nPos"
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
    .line 165
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker$1;->this$0:Lcom/htc/home/personalize/SkinPicker;

    #getter for: Lcom/htc/home/personalize/SkinPicker;->mSkinPickerAdapter:Lcom/htc/home/personalize/widget/SkinPickerAdapter;
    invoke-static {v0}, Lcom/htc/home/personalize/SkinPicker;->access$000(Lcom/htc/home/personalize/SkinPicker;)Lcom/htc/home/personalize/widget/SkinPickerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->getSkinListSize()I

    move-result v0

    if-lt p3, v0, :cond_0

    .line 167
    const-string v0, "SkinPicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the selected position is larger than skin list size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/home/personalize/SkinPicker$1;->this$0:Lcom/htc/home/personalize/SkinPicker;

    #getter for: Lcom/htc/home/personalize/SkinPicker;->mSkinPickerAdapter:Lcom/htc/home/personalize/widget/SkinPickerAdapter;
    invoke-static {v2}, Lcom/htc/home/personalize/SkinPicker;->access$000(Lcom/htc/home/personalize/SkinPicker;)Lcom/htc/home/personalize/widget/SkinPickerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->getSkinListSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker$1;->this$0:Lcom/htc/home/personalize/SkinPicker;

    const/4 v1, 0x1

    #setter for: Lcom/htc/home/personalize/SkinPicker;->mIsMenuItemNeedUpdate:Z
    invoke-static {v0, v1}, Lcom/htc/home/personalize/SkinPicker;->access$102(Lcom/htc/home/personalize/SkinPicker;Z)Z

    .line 172
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker$1;->this$0:Lcom/htc/home/personalize/SkinPicker;

    #setter for: Lcom/htc/home/personalize/SkinPicker;->mSelectedSkinId:I
    invoke-static {v0, p3}, Lcom/htc/home/personalize/SkinPicker;->access$202(Lcom/htc/home/personalize/SkinPicker;I)I

    .line 173
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker$1;->this$0:Lcom/htc/home/personalize/SkinPicker;

    #getter for: Lcom/htc/home/personalize/SkinPicker;->mIsDeleteMode:Z
    invoke-static {v0}, Lcom/htc/home/personalize/SkinPicker;->access$300(Lcom/htc/home/personalize/SkinPicker;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker$1;->this$0:Lcom/htc/home/personalize/SkinPicker;

    #getter for: Lcom/htc/home/personalize/SkinPicker;->mSkinPickerAdapter:Lcom/htc/home/personalize/widget/SkinPickerAdapter;
    invoke-static {v0}, Lcom/htc/home/personalize/SkinPicker;->access$000(Lcom/htc/home/personalize/SkinPicker;)Lcom/htc/home/personalize/widget/SkinPickerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/home/personalize/SkinPicker$1;->this$0:Lcom/htc/home/personalize/SkinPicker;

    #getter for: Lcom/htc/home/personalize/SkinPicker;->mSelectedSkinId:I
    invoke-static {v1}, Lcom/htc/home/personalize/SkinPicker;->access$200(Lcom/htc/home/personalize/SkinPicker;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->moveFocusToSkin(I)I

    .line 179
    :goto_1
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker$1;->this$0:Lcom/htc/home/personalize/SkinPicker;

    #getter for: Lcom/htc/home/personalize/SkinPicker;->mSkinPickerAdapter:Lcom/htc/home/personalize/widget/SkinPickerAdapter;
    invoke-static {v0}, Lcom/htc/home/personalize/SkinPicker;->access$000(Lcom/htc/home/personalize/SkinPicker;)Lcom/htc/home/personalize/widget/SkinPickerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->notifyDataSetChanged()V

    .line 180
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker$1;->this$0:Lcom/htc/home/personalize/SkinPicker;

    #calls: Lcom/htc/home/personalize/SkinPicker;->UpdateButton()V
    invoke-static {v0}, Lcom/htc/home/personalize/SkinPicker;->access$400(Lcom/htc/home/personalize/SkinPicker;)V

    goto :goto_0

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker$1;->this$0:Lcom/htc/home/personalize/SkinPicker;

    #getter for: Lcom/htc/home/personalize/SkinPicker;->mSkinPickerAdapter:Lcom/htc/home/personalize/widget/SkinPickerAdapter;
    invoke-static {v0}, Lcom/htc/home/personalize/SkinPicker;->access$000(Lcom/htc/home/personalize/SkinPicker;)Lcom/htc/home/personalize/widget/SkinPickerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/home/personalize/SkinPicker$1;->this$0:Lcom/htc/home/personalize/SkinPicker;

    #getter for: Lcom/htc/home/personalize/SkinPicker;->mSelectedSkinId:I
    invoke-static {v1}, Lcom/htc/home/personalize/SkinPicker;->access$200(Lcom/htc/home/personalize/SkinPicker;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->SwitchDeleteFlagForSkinItem(I)V

    goto :goto_1
.end method
