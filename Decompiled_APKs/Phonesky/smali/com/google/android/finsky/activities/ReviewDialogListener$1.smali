.class Lcom/google/android/finsky/activities/ReviewDialogListener$1;
.super Ljava/lang/Object;
.source "ReviewDialogListener.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/ReviewDialogListener;->onSaveReview(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/ReviewDialogListener;

.field final synthetic val$comment:Ljava/lang/String;

.field final synthetic val$rating:I

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$userProfile:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/ReviewDialogListener;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/android/finsky/activities/ReviewDialogListener$1;->this$0:Lcom/google/android/finsky/activities/ReviewDialogListener;

    iput p2, p0, Lcom/google/android/finsky/activities/ReviewDialogListener$1;->val$rating:I

    iput-object p3, p0, Lcom/google/android/finsky/activities/ReviewDialogListener$1;->val$title:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/finsky/activities/ReviewDialogListener$1;->val$comment:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/finsky/activities/ReviewDialogListener$1;->val$userProfile:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;)V
    .locals 5
    .parameter "response"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialogListener$1;->this$0:Lcom/google/android/finsky/activities/ReviewDialogListener;

    iget v1, p0, Lcom/google/android/finsky/activities/ReviewDialogListener$1;->val$rating:I

    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewDialogListener$1;->val$title:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/activities/ReviewDialogListener$1;->val$comment:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/finsky/activities/ReviewDialogListener$1;->val$userProfile:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;

    #calls: Lcom/google/android/finsky/activities/ReviewDialogListener;->updateUserReview(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/activities/ReviewDialogListener;->access$000(Lcom/google/android/finsky/activities/ReviewDialogListener;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;)V

    .line 65
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    check-cast p1, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/ReviewDialogListener$1;->onResponse(Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;)V

    return-void
.end method
