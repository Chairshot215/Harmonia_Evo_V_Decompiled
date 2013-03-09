.class Lcom/android/phone/IccNetworkDepersonalizationPanel$2$2;
.super Ljava/lang/Object;
.source "IccNetworkDepersonalizationPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/IccNetworkDepersonalizationPanel$2;


# direct methods
.method constructor <init>(Lcom/android/phone/IccNetworkDepersonalizationPanel$2;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$2;->this$1:Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$2;->this$1:Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    iget-object v0, v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccNetworkDepersonalizationPanel;->mSubsidyType:I
    invoke-static {v0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$700(Lcom/android/phone/IccNetworkDepersonalizationPanel;)I

    move-result v0

    if-lez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$2;->this$1:Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    iget-object v0, v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    iget-object v1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$2;->this$1:Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    iget-object v1, v1, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccNetworkDepersonalizationPanel;->mUnlockWhich:I
    invoke-static {v1}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$800(Lcom/android/phone/IccNetworkDepersonalizationPanel;)I

    move-result v1

    #calls: Lcom/android/phone/IccNetworkDepersonalizationPanel;->setupHeaderText(I)V
    invoke-static {v0, v1}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$900(Lcom/android/phone/IccNetworkDepersonalizationPanel;I)V

    .line 173
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$2;->this$1:Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    iget-object v0, v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    #calls: Lcom/android/phone/IccNetworkDepersonalizationPanel;->hideAlert()V
    invoke-static {v0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$300(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    .line 174
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$2;->this$1:Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    iget-object v0, v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$000(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 175
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$2;->this$1:Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    iget-object v0, v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$000(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$2;->this$1:Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    iget-object v0, v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-virtual {v0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->dismiss()V

    goto :goto_0
.end method
