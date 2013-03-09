.class Lcom/htc/home/personalize/SkinPicker$5;
.super Ljava/lang/Object;
.source "SkinPicker.java"

# interfaces
.implements Lcom/htc/widget/DeckControl$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/SkinPicker;
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
    .line 666
    iput-object p1, p0, Lcom/htc/home/personalize/SkinPicker$5;->this$0:Lcom/htc/home/personalize/SkinPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 668
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker$5;->this$0:Lcom/htc/home/personalize/SkinPicker;

    #getter for: Lcom/htc/home/personalize/SkinPicker;->mIsDeleteMode:Z
    invoke-static {v0}, Lcom/htc/home/personalize/SkinPicker;->access$300(Lcom/htc/home/personalize/SkinPicker;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 670
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker$5;->this$0:Lcom/htc/home/personalize/SkinPicker;

    #getter for: Lcom/htc/home/personalize/SkinPicker;->mSkinPickerAdapter:Lcom/htc/home/personalize/widget/SkinPickerAdapter;
    invoke-static {v0}, Lcom/htc/home/personalize/SkinPicker;->access$000(Lcom/htc/home/personalize/SkinPicker;)Lcom/htc/home/personalize/widget/SkinPickerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/home/personalize/SkinPicker$5;->this$0:Lcom/htc/home/personalize/SkinPicker;

    #getter for: Lcom/htc/home/personalize/SkinPicker;->mSelectedSkinId:I
    invoke-static {v1}, Lcom/htc/home/personalize/SkinPicker;->access$200(Lcom/htc/home/personalize/SkinPicker;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->SwitchDeleteFlagForSkinItem(I)V

    .line 671
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker$5;->this$0:Lcom/htc/home/personalize/SkinPicker;

    #getter for: Lcom/htc/home/personalize/SkinPicker;->mSkinPickerAdapter:Lcom/htc/home/personalize/widget/SkinPickerAdapter;
    invoke-static {v0}, Lcom/htc/home/personalize/SkinPicker;->access$000(Lcom/htc/home/personalize/SkinPicker;)Lcom/htc/home/personalize/widget/SkinPickerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->notifyUpdateItem(I)V

    .line 672
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker$5;->this$0:Lcom/htc/home/personalize/SkinPicker;

    #calls: Lcom/htc/home/personalize/SkinPicker;->UpdateButton()V
    invoke-static {v0}, Lcom/htc/home/personalize/SkinPicker;->access$400(Lcom/htc/home/personalize/SkinPicker;)V

    .line 687
    :goto_0
    return-void

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker$5;->this$0:Lcom/htc/home/personalize/SkinPicker;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/SkinPicker;->showDialog(I)V

    .line 675
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker$5;->this$0:Lcom/htc/home/personalize/SkinPicker;

    #getter for: Lcom/htc/home/personalize/SkinPicker;->mSkinPickerAdapter:Lcom/htc/home/personalize/widget/SkinPickerAdapter;
    invoke-static {v0}, Lcom/htc/home/personalize/SkinPicker;->access$000(Lcom/htc/home/personalize/SkinPicker;)Lcom/htc/home/personalize/widget/SkinPickerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/home/personalize/SkinPicker$5;->this$0:Lcom/htc/home/personalize/SkinPicker;

    #getter for: Lcom/htc/home/personalize/SkinPicker;->mSelectedSkinId:I
    invoke-static {v1}, Lcom/htc/home/personalize/SkinPicker;->access$200(Lcom/htc/home/personalize/SkinPicker;)I

    move-result v1

    new-instance v2, Lcom/htc/home/personalize/SkinPicker$5$1;

    invoke-direct {v2, p0}, Lcom/htc/home/personalize/SkinPicker$5$1;-><init>(Lcom/htc/home/personalize/SkinPicker$5;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->applySkinPackage(ILcom/htc/home/personalize/widget/SkinPickerAdapter$ApplySkinListener;)V

    goto :goto_0
.end method
