.class Lcom/google/android/talk/fragments/ChatScreenFragment$4;
.super Ljava/lang/Object;
.source "ChatScreenFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment;->setupInputFieldAndSendButton(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1241
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$4;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 1244
    if-eqz p3, :cond_0

    .line 1245
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1246
    const/4 v0, 0x0

    .line 1251
    :goto_0
    return v0

    .line 1250
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$4;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    #calls: Lcom/google/android/talk/fragments/ChatScreenFragment;->sendMessage()V
    invoke-static {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$2600(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    .line 1251
    const/4 v0, 0x1

    goto :goto_0
.end method
