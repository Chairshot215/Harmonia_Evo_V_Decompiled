.class Lcom/android/mms/ui/ComposeMessageActivity$80;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->setMultipleAddressTitle(Ljava/lang/String;)V
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
    .line 14389
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$80;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 14393
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$80;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTitleDropDown:Lcom/htc/widget/HeaderBarDropDown;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$13700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/htc/widget/HeaderBarDropDown;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HeaderBarDropDown;->show()V

    .line 14394
    return-void
.end method
