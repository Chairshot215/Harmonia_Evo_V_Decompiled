.class Lcom/android/dmportread/DMPortActivity$4$2$1$1;
.super Ljava/lang/Object;
.source "DMPortActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dmportread/DMPortActivity$4$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/android/dmportread/DMPortActivity$4$2$1;


# direct methods
.method constructor <init>(Lcom/android/dmportread/DMPortActivity$4$2$1;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/dmportread/DMPortActivity$4$2$1$1;->this$3:Lcom/android/dmportread/DMPortActivity$4$2$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 246
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/dmportread/DMPortActivity$4$2$1$1;->this$3:Lcom/android/dmportread/DMPortActivity$4$2$1;

    iget-object v1, v1, Lcom/android/dmportread/DMPortActivity$4$2$1;->this$2:Lcom/android/dmportread/DMPortActivity$4$2;

    iget-object v1, v1, Lcom/android/dmportread/DMPortActivity$4$2;->this$1:Lcom/android/dmportread/DMPortActivity$4;

    iget-object v1, v1, Lcom/android/dmportread/DMPortActivity$4;->this$0:Lcom/android/dmportread/DMPortActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Successful"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Diag enabled"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Dismiss"

    new-instance v2, Lcom/android/dmportread/DMPortActivity$4$2$1$1$1;

    invoke-direct {v2, p0}, Lcom/android/dmportread/DMPortActivity$4$2$1$1$1;-><init>(Lcom/android/dmportread/DMPortActivity$4$2$1$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 254
    return-void
.end method
