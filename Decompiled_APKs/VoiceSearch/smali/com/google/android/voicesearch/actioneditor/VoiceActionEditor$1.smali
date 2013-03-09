.class Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor$1;
.super Ljava/lang/Object;
.source "VoiceActionEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->initAccountSelector()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor$1;->this$0:Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 98
    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor$1;->this$0:Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;

    #getter for: Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAccounts:[Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->access$000(Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 117
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor$1;->this$0:Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor$1;->this$0:Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;

    #getter for: Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAccounts:[Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->access$000(Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/voicesearch/actioneditor/AccountsPopup;->createAlternatesPopup(Landroid/content/Context;[Ljava/lang/String;)Lcom/google/android/voicesearch/actioneditor/AccountsPopup;

    move-result-object v0

    .line 102
    .local v0, popup:Lcom/google/android/voicesearch/actioneditor/AccountsPopup;
    new-instance v2, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor$1$1;

    invoke-direct {v2, p0}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor$1$1;-><init>(Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor$1;)V

    invoke-virtual {v0, v2}, Lcom/google/android/voicesearch/actioneditor/AccountsPopup;->setListener(Lcom/google/android/voicesearch/actioneditor/AccountsPopup$Listener;)V

    move-object v1, p1

    .line 112
    check-cast v1, Landroid/widget/TextView;

    .line 113
    .local v1, text:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor$1;->this$0:Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->getPopupManager()Lcom/google/android/voicesearch/actioneditor/PopupManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/voicesearch/actioneditor/PopupManager;->setupPopup(Lcom/google/android/voicesearch/actioneditor/ArrowPopup;)V

    .line 114
    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor$1;->this$0:Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->getPopupManager()Lcom/google/android/voicesearch/actioneditor/PopupManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/google/android/voicesearch/actioneditor/AccountsPopup;->getTextSelectionPopupPoint(Landroid/widget/TextView;II)Landroid/graphics/Point;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/google/android/voicesearch/actioneditor/PopupManager;->showPopup(Lcom/google/android/voicesearch/actioneditor/ArrowPopup;Landroid/graphics/Point;)V

    goto :goto_0
.end method
