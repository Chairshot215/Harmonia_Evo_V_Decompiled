.class Lcom/android/mms/ui/ComposeMessageActivity$65;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Lcom/android/mms/ui/StateWatcher$OnStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->initStateWatcher()V
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
    .line 12101
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$65;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Z)V
    .locals 2
    .parameter "state"

    .prologue
    .line 12103
    if-eqz p1, :cond_0

    .line 12104
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$65;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTopPanel:Landroid/view/View;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$12600(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12108
    :goto_0
    return-void

    .line 12106
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$65;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTopPanel:Landroid/view/View;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$12600(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
