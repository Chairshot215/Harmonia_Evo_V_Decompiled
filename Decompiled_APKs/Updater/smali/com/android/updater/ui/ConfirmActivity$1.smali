.class Lcom/android/updater/ui/ConfirmActivity$1;
.super Ljava/lang/Object;
.source "ConfirmActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/updater/ui/ConfirmActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/updater/ui/ConfirmActivity;


# direct methods
.method constructor <init>(Lcom/android/updater/ui/ConfirmActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/updater/ui/ConfirmActivity$1;->this$0:Lcom/android/updater/ui/ConfirmActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 150
    if-nez p3, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/updater/ui/ConfirmActivity$1;->this$0:Lcom/android/updater/ui/ConfirmActivity;

    #getter for: Lcom/android/updater/ui/ConfirmActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/updater/ui/ConfirmActivity;->access$100(Lcom/android/updater/ui/ConfirmActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/updater/ui/ConfirmActivity$1;->this$0:Lcom/android/updater/ui/ConfirmActivity;

    #getter for: Lcom/android/updater/ui/ConfirmActivity;->mCurrentPosition:I
    invoke-static {v1}, Lcom/android/updater/ui/ConfirmActivity;->access$000(Lcom/android/updater/ui/ConfirmActivity;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 155
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/updater/ui/ConfirmActivity$1;->this$0:Lcom/android/updater/ui/ConfirmActivity;

    #setter for: Lcom/android/updater/ui/ConfirmActivity;->mCurrentPosition:I
    invoke-static {v0, p3}, Lcom/android/updater/ui/ConfirmActivity;->access$002(Lcom/android/updater/ui/ConfirmActivity;I)I

    goto :goto_0
.end method
