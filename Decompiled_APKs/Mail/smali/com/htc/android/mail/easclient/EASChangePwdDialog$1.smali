.class Lcom/htc/android/mail/easclient/EASChangePwdDialog$1;
.super Ljava/lang/Object;
.source "EASChangePwdDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easclient/EASChangePwdDialog;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easclient/EASChangePwdDialog;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/EASChangePwdDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/htc/android/mail/easclient/EASChangePwdDialog$1;->this$0:Lcom/htc/android/mail/easclient/EASChangePwdDialog;

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
    .line 63
    packed-switch p2, :pswitch_data_0

    .line 69
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 66
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASChangePwdDialog$1;->this$0:Lcom/htc/android/mail/easclient/EASChangePwdDialog;

    invoke-virtual {v0}, Lcom/htc/android/mail/easclient/EASChangePwdDialog;->finish()V

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
