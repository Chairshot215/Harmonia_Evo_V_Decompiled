.class Lcom/google/android/location/ConfirmAlertActivity$1;
.super Ljava/lang/Object;
.source "ConfirmAlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/location/ConfirmAlertActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/location/ConfirmAlertActivity;


# direct methods
.method constructor <init>(Lcom/google/android/location/ConfirmAlertActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/android/location/ConfirmAlertActivity$1;->this$0:Lcom/google/android/location/ConfirmAlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/location/ConfirmAlertActivity$1;->this$0:Lcom/google/android/location/ConfirmAlertActivity;

    invoke-virtual {v0}, Lcom/google/android/location/ConfirmAlertActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/google/android/location/ConfirmAlertActivity$1;->this$0:Lcom/google/android/location/ConfirmAlertActivity;

    invoke-virtual {v0}, Lcom/google/android/location/ConfirmAlertActivity;->finish()V

    .line 52
    :cond_0
    return-void
.end method
