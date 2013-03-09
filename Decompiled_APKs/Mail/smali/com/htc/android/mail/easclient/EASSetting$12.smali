.class Lcom/htc/android/mail/easclient/EASSetting$12;
.super Ljava/lang/Object;
.source "EASSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easclient/EASSetting;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easclient/EASSetting;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/EASSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 1628
    iput-object p1, p0, Lcom/htc/android/mail/easclient/EASSetting$12;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 1630
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting$12;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/easclient/EASSetting;->removeDialog(I)V

    .line 1631
    return-void
.end method
