.class Lcom/htc/android/htcime/ui/AddWordDialog$2;
.super Ljava/lang/Object;
.source "AddWordDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/ui/AddWordDialog;->keyboardTypeLayoutCheck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/ui/AddWordDialog;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/ui/AddWordDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/htc/android/htcime/ui/AddWordDialog$2;->this$0:Lcom/htc/android/htcime/ui/AddWordDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 182
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 188
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 184
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddWordDialog$2;->this$0:Lcom/htc/android/htcime/ui/AddWordDialog;

    invoke-virtual {v0, p2, p3}, Lcom/htc/android/htcime/ui/AddWordDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 186
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddWordDialog$2;->this$0:Lcom/htc/android/htcime/ui/AddWordDialog;

    invoke-virtual {v0, p2, p3}, Lcom/htc/android/htcime/ui/AddWordDialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
