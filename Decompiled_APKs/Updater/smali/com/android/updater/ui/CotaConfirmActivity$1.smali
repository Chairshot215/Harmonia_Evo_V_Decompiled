.class Lcom/android/updater/ui/CotaConfirmActivity$1;
.super Ljava/lang/Object;
.source "CotaConfirmActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/updater/ui/CotaConfirmActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/updater/ui/CotaConfirmActivity;


# direct methods
.method constructor <init>(Lcom/android/updater/ui/CotaConfirmActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/updater/ui/CotaConfirmActivity$1;->this$0:Lcom/android/updater/ui/CotaConfirmActivity;

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
    .line 101
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-nez p3, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/updater/ui/CotaConfirmActivity$1;->this$0:Lcom/android/updater/ui/CotaConfirmActivity;

    #getter for: Lcom/android/updater/ui/CotaConfirmActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/updater/ui/CotaConfirmActivity;->access$100(Lcom/android/updater/ui/CotaConfirmActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/updater/ui/CotaConfirmActivity$1;->this$0:Lcom/android/updater/ui/CotaConfirmActivity;

    #getter for: Lcom/android/updater/ui/CotaConfirmActivity;->mCurrentPosition:I
    invoke-static {v1}, Lcom/android/updater/ui/CotaConfirmActivity;->access$000(Lcom/android/updater/ui/CotaConfirmActivity;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 106
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/updater/ui/CotaConfirmActivity$1;->this$0:Lcom/android/updater/ui/CotaConfirmActivity;

    #setter for: Lcom/android/updater/ui/CotaConfirmActivity;->mCurrentPosition:I
    invoke-static {v0, p3}, Lcom/android/updater/ui/CotaConfirmActivity;->access$002(Lcom/android/updater/ui/CotaConfirmActivity;I)I

    goto :goto_0
.end method
