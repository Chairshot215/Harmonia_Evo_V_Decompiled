.class Lcom/htc/android/mail/easclient/EASProgressDialog$1;
.super Ljava/lang/Object;
.source "EASProgressDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easclient/EASProgressDialog;->setDialog(Lcom/htc/android/mail/easclient/EASProgressDialog$DialogAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easclient/EASProgressDialog;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/EASProgressDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/htc/android/mail/easclient/EASProgressDialog$1;->this$0:Lcom/htc/android/mail/easclient/EASProgressDialog;

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
    .line 57
    const/16 v0, 0x54

    if-ne p2, v0, :cond_0

    .line 58
    const/4 v0, 0x1

    .line 60
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
