.class Lcom/google/android/finsky/activities/ReviewDialog$1;
.super Ljava/lang/Object;
.source "ReviewDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/ReviewDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/ReviewDialog;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/ReviewDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/finsky/activities/ReviewDialog$1;->this$0:Lcom/google/android/finsky/activities/ReviewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 101
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 105
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialog$1;->this$0:Lcom/google/android/finsky/activities/ReviewDialog;

    #calls: Lcom/google/android/finsky/activities/ReviewDialog;->syncOkButtonState()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/ReviewDialog;->access$000(Lcom/google/android/finsky/activities/ReviewDialog;)V

    .line 97
    return-void
.end method
