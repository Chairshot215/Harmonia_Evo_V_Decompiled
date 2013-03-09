.class Lcom/google/android/finsky/activities/PinEntryDialog$1;
.super Ljava/lang/Object;
.source "PinEntryDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/PinEntryDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/PinEntryDialog;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/PinEntryDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/google/android/finsky/activities/PinEntryDialog$1;->this$0:Lcom/google/android/finsky/activities/PinEntryDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 155
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 159
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/finsky/activities/PinEntryDialog$1;->this$0:Lcom/google/android/finsky/activities/PinEntryDialog;

    #calls: Lcom/google/android/finsky/activities/PinEntryDialog;->syncOkButtonState()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/PinEntryDialog;->access$000(Lcom/google/android/finsky/activities/PinEntryDialog;)V

    .line 151
    return-void
.end method
