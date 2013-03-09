.class Lcom/android/phone/DataUnavailableDialog$1;
.super Ljava/lang/Object;
.source "DataUnavailableDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/DataUnavailableDialog;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/DataUnavailableDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/DataUnavailableDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/phone/DataUnavailableDialog$1;->this$0:Lcom/android/phone/DataUnavailableDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/DataUnavailableDialog$1;->this$0:Lcom/android/phone/DataUnavailableDialog;

    const/16 v1, 0x1b5c

    invoke-virtual {v0, v1}, Lcom/android/phone/DataUnavailableDialog;->dismissDialog(I)V

    .line 47
    iget-object v0, p0, Lcom/android/phone/DataUnavailableDialog$1;->this$0:Lcom/android/phone/DataUnavailableDialog;

    invoke-virtual {v0}, Lcom/android/phone/DataUnavailableDialog;->finish()V

    .line 48
    return-void
.end method
