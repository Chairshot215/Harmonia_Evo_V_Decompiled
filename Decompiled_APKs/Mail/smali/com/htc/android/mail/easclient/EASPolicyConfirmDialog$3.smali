.class Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$3;
.super Ljava/lang/Object;
.source "EASPolicyConfirmDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$3;->this$0:Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 226
    const/16 v0, 0x54

    if-ne p2, v0, :cond_0

    .line 227
    const/4 v0, 0x1

    .line 229
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
