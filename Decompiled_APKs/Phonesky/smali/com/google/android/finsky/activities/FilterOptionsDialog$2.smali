.class Lcom/google/android/finsky/activities/FilterOptionsDialog$2;
.super Ljava/lang/Object;
.source "FilterOptionsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/FilterOptionsDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/FilterOptionsDialog;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/FilterOptionsDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/google/android/finsky/activities/FilterOptionsDialog$2;->this$0:Lcom/google/android/finsky/activities/FilterOptionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 60
    iget-object v1, p0, Lcom/google/android/finsky/activities/FilterOptionsDialog$2;->this$0:Lcom/google/android/finsky/activities/FilterOptionsDialog;

    #calls: Lcom/google/android/finsky/activities/FilterOptionsDialog;->getListener()Lcom/google/android/finsky/activities/FilterOptionsDialog$Listener;
    invoke-static {v1}, Lcom/google/android/finsky/activities/FilterOptionsDialog;->access$100(Lcom/google/android/finsky/activities/FilterOptionsDialog;)Lcom/google/android/finsky/activities/FilterOptionsDialog$Listener;

    move-result-object v0

    .line 61
    .local v0, l:Lcom/google/android/finsky/activities/FilterOptionsDialog$Listener;
    if-eqz v0, :cond_0

    .line 62
    iget-object v1, p0, Lcom/google/android/finsky/activities/FilterOptionsDialog$2;->this$0:Lcom/google/android/finsky/activities/FilterOptionsDialog;

    #getter for: Lcom/google/android/finsky/activities/FilterOptionsDialog;->mChecked:[Z
    invoke-static {v1}, Lcom/google/android/finsky/activities/FilterOptionsDialog;->access$000(Lcom/google/android/finsky/activities/FilterOptionsDialog;)[Z

    move-result-object v1

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    iget-object v2, p0, Lcom/google/android/finsky/activities/FilterOptionsDialog$2;->this$0:Lcom/google/android/finsky/activities/FilterOptionsDialog;

    #getter for: Lcom/google/android/finsky/activities/FilterOptionsDialog;->mChecked:[Z
    invoke-static {v2}, Lcom/google/android/finsky/activities/FilterOptionsDialog;->access$000(Lcom/google/android/finsky/activities/FilterOptionsDialog;)[Z

    move-result-object v2

    const/4 v3, 0x1

    aget-boolean v2, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/activities/FilterOptionsDialog$Listener;->onReviewFilterChanged(ZZ)V

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/FilterOptionsDialog$2;->this$0:Lcom/google/android/finsky/activities/FilterOptionsDialog;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/FilterOptionsDialog;->dismiss()V

    .line 65
    return-void
.end method
