.class Lcom/android/settings/wifi/EapErrorDialog$1;
.super Ljava/lang/Object;
.source "EapErrorDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/EapErrorDialog;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/EapErrorDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/EapErrorDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/settings/wifi/EapErrorDialog$1;->this$0:Lcom/android/settings/wifi/EapErrorDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 81
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/EapErrorDialog$1;->this$0:Lcom/android/settings/wifi/EapErrorDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/EapErrorDialog;->finish()V

    .line 83
    return-void
.end method
