.class Lcom/android/updater/ui/AcuConfirmActivity$1;
.super Ljava/lang/Object;
.source "AcuConfirmActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/updater/ui/AcuConfirmActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/updater/ui/AcuConfirmActivity;


# direct methods
.method constructor <init>(Lcom/android/updater/ui/AcuConfirmActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/updater/ui/AcuConfirmActivity$1;->this$0:Lcom/android/updater/ui/AcuConfirmActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "v"
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
    .line 142
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-nez p3, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/updater/ui/AcuConfirmActivity$1;->this$0:Lcom/android/updater/ui/AcuConfirmActivity;

    #getter for: Lcom/android/updater/ui/AcuConfirmActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/updater/ui/AcuConfirmActivity;->access$100(Lcom/android/updater/ui/AcuConfirmActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/updater/ui/AcuConfirmActivity$1;->this$0:Lcom/android/updater/ui/AcuConfirmActivity;

    #getter for: Lcom/android/updater/ui/AcuConfirmActivity;->mCurrentPosition:I
    invoke-static {v1}, Lcom/android/updater/ui/AcuConfirmActivity;->access$000(Lcom/android/updater/ui/AcuConfirmActivity;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 147
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/updater/ui/AcuConfirmActivity$1;->this$0:Lcom/android/updater/ui/AcuConfirmActivity;

    #setter for: Lcom/android/updater/ui/AcuConfirmActivity;->mCurrentPosition:I
    invoke-static {v0, p3}, Lcom/android/updater/ui/AcuConfirmActivity;->access$002(Lcom/android/updater/ui/AcuConfirmActivity;I)I

    goto :goto_0
.end method
