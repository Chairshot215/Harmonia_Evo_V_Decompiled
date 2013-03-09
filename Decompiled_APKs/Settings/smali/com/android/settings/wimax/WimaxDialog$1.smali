.class Lcom/android/settings/wimax/WimaxDialog$1;
.super Ljava/lang/Object;
.source "WimaxDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wimax/WimaxDialog;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wimax/WimaxDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wimax/WimaxDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/settings/wimax/WimaxDialog$1;->this$0:Lcom/android/settings/wimax/WimaxDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxDialog$1;->this$0:Lcom/android/settings/wimax/WimaxDialog;

    invoke-virtual {v0}, Lcom/android/settings/wimax/WimaxDialog;->finish()V

    .line 79
    return-void
.end method
