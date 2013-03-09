.class Lcom/htc/android/mail/easclient/EASSetting$10$1;
.super Ljava/lang/Object;
.source "EASSetting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easclient/EASSetting$10;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/easclient/EASSetting$10;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/EASSetting$10;)V
    .locals 0
    .parameter

    .prologue
    .line 1600
    iput-object p1, p0, Lcom/htc/android/mail/easclient/EASSetting$10$1;->this$1:Lcom/htc/android/mail/easclient/EASSetting$10;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1602
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting$10$1;->this$1:Lcom/htc/android/mail/easclient/EASSetting$10;

    iget-object v0, v0, Lcom/htc/android/mail/easclient/EASSetting$10;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    #getter for: Lcom/htc/android/mail/easclient/EASSetting;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v0}, Lcom/htc/android/mail/easclient/EASSetting;->access$2300(Lcom/htc/android/mail/easclient/EASSetting;)Lcom/htc/android/mail/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->commitMailboxChanges()V

    .line 1603
    return-void
.end method
