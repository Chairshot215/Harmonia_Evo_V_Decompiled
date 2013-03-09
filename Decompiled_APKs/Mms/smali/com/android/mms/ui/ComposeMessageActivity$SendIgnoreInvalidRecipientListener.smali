.class Lcom/android/mms/ui/ComposeMessageActivity$SendIgnoreInvalidRecipientListener;
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
    name = "SendIgnoreInvalidRecipientListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2122
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$SendIgnoreInvalidRecipientListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2122
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$SendIgnoreInvalidRecipientListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2125
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$SendIgnoreInvalidRecipientListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$SendIgnoreInvalidRecipientListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientList;->size()I

    move-result v1

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->exceedRecipientMaxNumber(I)Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5000(Lcom/android/mms/ui/ComposeMessageActivity;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2126
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$SendIgnoreInvalidRecipientListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->isSmsMode()Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5100(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2127
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$SendIgnoreInvalidRecipientListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->showExceedMaxRecipientToast()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5200(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 2136
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$SendIgnoreInvalidRecipientListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2138
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$SendIgnoreInvalidRecipientListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    .line 2142
    :cond_0
    return-void

    .line 2129
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$SendIgnoreInvalidRecipientListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->showExceedMMSRecipientToast()Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5300(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    goto :goto_0

    .line 2133
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$SendIgnoreInvalidRecipientListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->confirmNetworkBeforeSend()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5400(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto :goto_0
.end method
