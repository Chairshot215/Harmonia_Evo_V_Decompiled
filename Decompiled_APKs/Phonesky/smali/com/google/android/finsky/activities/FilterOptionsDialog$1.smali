.class Lcom/google/android/finsky/activities/FilterOptionsDialog$1;
.super Ljava/lang/Object;
.source "FilterOptionsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


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
    .line 51
    iput-object p1, p0, Lcom/google/android/finsky/activities/FilterOptionsDialog$1;->this$0:Lcom/google/android/finsky/activities/FilterOptionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .parameter "dialog"
    .parameter "which"
    .parameter "isChecked"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/finsky/activities/FilterOptionsDialog$1;->this$0:Lcom/google/android/finsky/activities/FilterOptionsDialog;

    #getter for: Lcom/google/android/finsky/activities/FilterOptionsDialog;->mChecked:[Z
    invoke-static {v0}, Lcom/google/android/finsky/activities/FilterOptionsDialog;->access$000(Lcom/google/android/finsky/activities/FilterOptionsDialog;)[Z

    move-result-object v0

    aput-boolean p3, v0, p2

    .line 55
    return-void
.end method
