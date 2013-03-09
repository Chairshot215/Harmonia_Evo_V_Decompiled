.class Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor$1$1;
.super Ljava/lang/Object;
.source "VoiceActionEditor.java"

# interfaces
.implements Lcom/google/android/voicesearch/actioneditor/AccountsPopup$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor$1;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor$1;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor$1$1;->this$1:Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/google/android/voicesearch/actioneditor/AccountsPopup;I)V
    .locals 2
    .parameter "view"
    .parameter "which"

    .prologue
    .line 105
    invoke-virtual {p1}, Lcom/google/android/voicesearch/actioneditor/AccountsPopup;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 106
    .local v0, account:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor$1$1;->this$1:Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor$1;

    iget-object v1, v1, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor$1;->this$0:Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;

    #getter for: Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAction:Lcom/google/android/voicesearch/actions/MultislotVoiceAction;
    invoke-static {v1}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->access$100(Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;)Lcom/google/android/voicesearch/actions/MultislotVoiceAction;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->setAccount(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor$1$1;->this$1:Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor$1;

    iget-object v1, v1, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor$1;->this$0:Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;

    #calls: Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->forwardAccountToSlot(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->access$200(Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor$1$1;->this$1:Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor$1;

    iget-object v1, v1, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor$1;->this$0:Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;

    #getter for: Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mSelectedAccount:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->access$300(Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor$1$1;->this$1:Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor$1;

    iget-object v1, v1, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor$1;->this$0:Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;

    #getter for: Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;
    invoke-static {v1}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->access$400(Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;)Lcom/google/android/voicesearch/util/AccountHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/voicesearch/util/AccountHelper;->setLastUsedGmailAccount(Ljava/lang/String;)V

    .line 110
    return-void
.end method
