.class Lcom/google/android/finsky/activities/ReviewDialog$2;
.super Ljava/lang/Object;
.source "ReviewDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/ReviewDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/ReviewDialog;

.field final synthetic val$docId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/ReviewDialog;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/google/android/finsky/activities/ReviewDialog$2;->this$0:Lcom/google/android/finsky/activities/ReviewDialog;

    iput-object p2, p0, Lcom/google/android/finsky/activities/ReviewDialog$2;->val$docId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 196
    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewDialog$2;->this$0:Lcom/google/android/finsky/activities/ReviewDialog;

    #calls: Lcom/google/android/finsky/activities/ReviewDialog;->getListener()Lcom/google/android/finsky/activities/ReviewDialog$Listener;
    invoke-static {v1}, Lcom/google/android/finsky/activities/ReviewDialog;->access$100(Lcom/google/android/finsky/activities/ReviewDialog;)Lcom/google/android/finsky/activities/ReviewDialog$Listener;

    move-result-object v0

    .line 197
    .local v0, l:Lcom/google/android/finsky/activities/ReviewDialog$Listener;
    if-eqz v0, :cond_0

    .line 198
    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewDialog$2;->this$0:Lcom/google/android/finsky/activities/ReviewDialog;

    #calls: Lcom/google/android/finsky/activities/ReviewDialog;->isDeletingReview()Z
    invoke-static {v1}, Lcom/google/android/finsky/activities/ReviewDialog;->access$200(Lcom/google/android/finsky/activities/ReviewDialog;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewDialog$2;->val$docId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewDialog$2;->this$0:Lcom/google/android/finsky/activities/ReviewDialog;

    #getter for: Lcom/google/android/finsky/activities/ReviewDialog;->mPreviousReviewId:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/finsky/activities/ReviewDialog;->access$300(Lcom/google/android/finsky/activities/ReviewDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/activities/ReviewDialog$Listener;->onDeleteReview(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewDialog$2;->val$docId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewDialog$2;->this$0:Lcom/google/android/finsky/activities/ReviewDialog;

    #calls: Lcom/google/android/finsky/activities/ReviewDialog;->getUserRating()I
    invoke-static {v2}, Lcom/google/android/finsky/activities/ReviewDialog;->access$400(Lcom/google/android/finsky/activities/ReviewDialog;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/finsky/activities/ReviewDialog$2;->this$0:Lcom/google/android/finsky/activities/ReviewDialog;

    #calls: Lcom/google/android/finsky/activities/ReviewDialog;->getUserTitle()Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/finsky/activities/ReviewDialog;->access$500(Lcom/google/android/finsky/activities/ReviewDialog;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/activities/ReviewDialog$2;->this$0:Lcom/google/android/finsky/activities/ReviewDialog;

    #calls: Lcom/google/android/finsky/activities/ReviewDialog;->getUserComment()Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/finsky/activities/ReviewDialog;->access$600(Lcom/google/android/finsky/activities/ReviewDialog;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/activities/ReviewDialog$2;->this$0:Lcom/google/android/finsky/activities/ReviewDialog;

    #getter for: Lcom/google/android/finsky/activities/ReviewDialog;->mUserProfile:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;
    invoke-static {v5}, Lcom/google/android/finsky/activities/ReviewDialog;->access$700(Lcom/google/android/finsky/activities/ReviewDialog;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/finsky/activities/ReviewDialog$2;->this$0:Lcom/google/android/finsky/activities/ReviewDialog;

    #getter for: Lcom/google/android/finsky/activities/ReviewDialog;->mReviewIsPublic:Z
    invoke-static {v6}, Lcom/google/android/finsky/activities/ReviewDialog;->access$800(Lcom/google/android/finsky/activities/ReviewDialog;)Z

    move-result v6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/finsky/activities/ReviewDialog$Listener;->onSaveReview(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;Z)V

    goto :goto_0
.end method
