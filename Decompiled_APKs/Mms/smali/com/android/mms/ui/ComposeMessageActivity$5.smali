.class Lcom/android/mms/ui/ComposeMessageActivity$5;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->scrollToLastRecipientButtonPosition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$bottom:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2780
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$5;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$5;->val$bottom:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2782
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$5;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mComposeScrollView:Lcom/android/mms/ui/ComposeMessageScrollView;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/ComposeMessageScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$5;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mComposeScrollView:Lcom/android/mms/ui/ComposeMessageScrollView;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/ComposeMessageScrollView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageScrollView;->getScrollX()I

    move-result v1

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$5;->val$bottom:I

    add-int/lit8 v2, v2, -0x1e

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageScrollView;->scrollTo(II)V

    .line 2783
    return-void
.end method
