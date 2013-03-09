.class Lcom/android/mms/ui/ComposeMessageActivity$51;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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
    .line 9904
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$51;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 9907
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportNGMGroupMessage()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$51;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$51;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 9908
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$51;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientList;->serialize()Ljava/lang/String;

    move-result-object v0

    .line 9909
    .local v0, address:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$51;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->startNewCompose(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10300(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;)V

    .line 9914
    .end local v0           #address:Ljava/lang/String;
    :goto_0
    return-void

    .line 9913
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$51;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->startNewCompose()V
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10400(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto :goto_0
.end method
