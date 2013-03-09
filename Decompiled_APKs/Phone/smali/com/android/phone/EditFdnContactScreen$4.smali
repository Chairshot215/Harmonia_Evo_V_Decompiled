.class Lcom/android/phone/EditFdnContactScreen$4;
.super Ljava/lang/Object;
.source "EditFdnContactScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EditFdnContactScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EditFdnContactScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/EditFdnContactScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 604
    iput-object p1, p0, Lcom/android/phone/EditFdnContactScreen$4;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$4;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mPinFieldContainer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$000(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 609
    :cond_1
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$4;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$100(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 612
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$4;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mDataBusy:Z
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$200(Lcom/android/phone/EditFdnContactScreen;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$4;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #calls: Lcom/android/phone/EditFdnContactScreen;->authenticatePin2()V
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$300(Lcom/android/phone/EditFdnContactScreen;)V

    goto :goto_0

    .line 617
    :cond_2
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$4;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mCancelBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$400(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$4;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-virtual {v0}, Lcom/android/phone/EditFdnContactScreen;->finish()V

    goto :goto_0
.end method
