.class public final Lcom/google/appinventor/components/runtime/util/RuntimeErrorAlert;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alert(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v1, "RuntimeErrorAlert"

    const-string v2, "in alert"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    move-object v1, v0

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/google/appinventor/components/runtime/util/RuntimeErrorAlert$1;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/util/RuntimeErrorAlert$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p3, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    if-nez p1, :cond_0

    const-class v2, Lcom/google/appinventor/components/runtime/util/RuntimeErrorAlert;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "No error message available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    const-class v2, Lcom/google/appinventor/components/runtime/util/RuntimeErrorAlert;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
