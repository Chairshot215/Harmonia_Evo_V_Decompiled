.class Lcom/google/android/finsky/activities/ReviewDialogListener$2;
.super Ljava/lang/Object;
.source "ReviewDialogListener.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/ReviewDialogListener;->onSaveReview(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/ReviewDialogListener;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/ReviewDialogListener;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/android/finsky/activities/ReviewDialogListener$2;->this$0:Lcom/google/android/finsky/activities/ReviewDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialogListener$2;->this$0:Lcom/google/android/finsky/activities/ReviewDialogListener;

    const v1, 0x7f07017d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/activities/ReviewDialogListener;->toast(II)V

    .line 70
    return-void
.end method
