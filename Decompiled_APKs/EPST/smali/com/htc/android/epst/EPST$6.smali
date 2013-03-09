.class Lcom/htc/android/epst/EPST$6;
.super Ljava/lang/Object;
.source "EPST.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/epst/EPST;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/EPST;


# direct methods
.method constructor <init>(Lcom/htc/android/epst/EPST;)V
    .locals 0
    .parameter

    .prologue
    .line 494
    iput-object p1, p0, Lcom/htc/android/epst/EPST$6;->this$0:Lcom/htc/android/epst/EPST;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 498
    iget-object v0, p0, Lcom/htc/android/epst/EPST$6;->this$0:Lcom/htc/android/epst/EPST;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/EPST;->showDialog(I)V

    .line 501
    new-instance v0, Lcom/htc/android/epst/EPST$ValidationTask;

    iget-object v1, p0, Lcom/htc/android/epst/EPST$6;->this$0:Lcom/htc/android/epst/EPST;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/htc/android/epst/EPST$ValidationTask;-><init>(Lcom/htc/android/epst/EPST;Lcom/htc/android/epst/EPST$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/EPST$ValidationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 504
    return-void
.end method
