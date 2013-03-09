.class Lcom/android/mms/ui/ComposeMessageActivity$77;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->setAddressNamePhoto(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 14306
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$77;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
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
    .line 14311
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$77;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->showContactDialog(I)V
    invoke-static {v0, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$12200(Lcom/android/mms/ui/ComposeMessageActivity;I)V

    .line 14312
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$77;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTitleDropDown:Lcom/htc/widget/HeaderBarDropDown;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$13700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/htc/widget/HeaderBarDropDown;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HeaderBarDropDown;->dismiss()V

    .line 14313
    return-void
.end method
