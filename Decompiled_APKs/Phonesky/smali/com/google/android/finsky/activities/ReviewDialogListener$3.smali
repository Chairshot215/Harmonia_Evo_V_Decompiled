.class Lcom/google/android/finsky/activities/ReviewDialogListener$3;
.super Ljava/lang/Object;
.source "ReviewDialogListener.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/ReviewDialogListener;->onDeleteReview(Ljava/lang/String;Ljava/lang/String;)V
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


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/ReviewDialogListener;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/android/finsky/activities/ReviewDialogListener$3;->this$0:Lcom/google/android/finsky/activities/ReviewDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;)V
    .locals 5
    .parameter "response"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialogListener$3;->this$0:Lcom/google/android/finsky/activities/ReviewDialogListener;

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x0

    #calls: Lcom/google/android/finsky/activities/ReviewDialogListener;->updateUserReview(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/activities/ReviewDialogListener;->access$000(Lcom/google/android/finsky/activities/ReviewDialogListener;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;)V

    .line 86
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    check-cast p1, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/ReviewDialogListener$3;->onResponse(Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;)V

    return-void
.end method
