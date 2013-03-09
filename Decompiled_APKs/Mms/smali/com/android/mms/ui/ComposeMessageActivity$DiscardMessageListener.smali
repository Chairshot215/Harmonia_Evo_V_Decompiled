.class Lcom/android/mms/ui/ComposeMessageActivity$DiscardMessageListener;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DiscardMessageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2076
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$DiscardMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2076
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$DiscardMessageListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2079
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DiscardMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->discardTemporaryMessage()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4900(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 2081
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DiscardMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->isDiscard:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3802(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 2086
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2088
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DiscardMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$DiscardMessageListener$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$DiscardMessageListener$1;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$DiscardMessageListener;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2094
    return-void
.end method
