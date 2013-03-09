.class Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$6;
.super Ljava/lang/Object;
.source "EASPolicyConfirmDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->applyPolicy()V
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
    .line 310
    iput-object p1, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$6;->this$0:Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$6;->this$0:Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->showDialog(I)V

    .line 313
    return-void
.end method
