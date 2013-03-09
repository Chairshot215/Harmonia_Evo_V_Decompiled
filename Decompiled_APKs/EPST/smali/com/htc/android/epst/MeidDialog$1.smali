.class Lcom/htc/android/epst/MeidDialog$1;
.super Ljava/lang/Object;
.source "MeidDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/epst/MeidDialog;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/MeidDialog;


# direct methods
.method constructor <init>(Lcom/htc/android/epst/MeidDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/htc/android/epst/MeidDialog$1;->this$0:Lcom/htc/android/epst/MeidDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/android/epst/MeidDialog$1;->this$0:Lcom/htc/android/epst/MeidDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/MeidDialog;->dismissDialog(I)V

    .line 90
    iget-object v0, p0, Lcom/htc/android/epst/MeidDialog$1;->this$0:Lcom/htc/android/epst/MeidDialog;

    invoke-virtual {v0}, Lcom/htc/android/epst/MeidDialog;->finish()V

    .line 91
    return-void
.end method
