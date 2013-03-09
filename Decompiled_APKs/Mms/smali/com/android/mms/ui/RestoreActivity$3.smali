.class Lcom/android/mms/ui/RestoreActivity$3;
.super Ljava/lang/Object;
.source "RestoreActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/RestoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/RestoreActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/RestoreActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/mms/ui/RestoreActivity$3;->this$0:Lcom/android/mms/ui/RestoreActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
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
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 172
    iget-object v0, p0, Lcom/android/mms/ui/RestoreActivity$3;->this$0:Lcom/android/mms/ui/RestoreActivity;

    iget-object v0, v0, Lcom/android/mms/ui/RestoreActivity;->mSelectedItems:Ljava/util/Set;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/android/mms/ui/RestoreActivity$3;->this$0:Lcom/android/mms/ui/RestoreActivity;

    iget-object v0, v0, Lcom/android/mms/ui/RestoreActivity;->mSelectedItems:Ljava/util/Set;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 174
    iget-object v0, p0, Lcom/android/mms/ui/RestoreActivity$3;->this$0:Lcom/android/mms/ui/RestoreActivity;

    iget-object v0, v0, Lcom/android/mms/ui/RestoreActivity;->mSelectedItems:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/mms/ui/RestoreActivity$3;->this$0:Lcom/android/mms/ui/RestoreActivity;

    #getter for: Lcom/android/mms/ui/RestoreActivity;->mPositiveButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/mms/ui/RestoreActivity;->access$300(Lcom/android/mms/ui/RestoreActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 176
    iget-object v0, p0, Lcom/android/mms/ui/RestoreActivity$3;->this$0:Lcom/android/mms/ui/RestoreActivity;

    #getter for: Lcom/android/mms/ui/RestoreActivity;->mPositiveButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/mms/ui/RestoreActivity;->access$300(Lcom/android/mms/ui/RestoreActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusable(Z)V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/RestoreActivity$3;->this$0:Lcom/android/mms/ui/RestoreActivity;

    iget-object v0, v0, Lcom/android/mms/ui/RestoreActivity;->mSelectedItems:Ljava/util/Set;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v0, p0, Lcom/android/mms/ui/RestoreActivity$3;->this$0:Lcom/android/mms/ui/RestoreActivity;

    #getter for: Lcom/android/mms/ui/RestoreActivity;->mPositiveButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/mms/ui/RestoreActivity;->access$300(Lcom/android/mms/ui/RestoreActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 181
    iget-object v0, p0, Lcom/android/mms/ui/RestoreActivity$3;->this$0:Lcom/android/mms/ui/RestoreActivity;

    #getter for: Lcom/android/mms/ui/RestoreActivity;->mPositiveButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/mms/ui/RestoreActivity;->access$300(Lcom/android/mms/ui/RestoreActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setFocusable(Z)V

    goto :goto_0
.end method
