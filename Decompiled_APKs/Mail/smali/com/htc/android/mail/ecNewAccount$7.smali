.class Lcom/htc/android/mail/ecNewAccount$7;
.super Ljava/lang/Object;
.source "ecNewAccount.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ecNewAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ecNewAccount;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ecNewAccount;)V
    .locals 0
    .parameter

    .prologue
    .line 532
    iput-object p1, p0, Lcom/htc/android/mail/ecNewAccount$7;->this$0:Lcom/htc/android/mail/ecNewAccount;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 534
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount$7;->this$0:Lcom/htc/android/mail/ecNewAccount;

    #calls: Lcom/htc/android/mail/ecNewAccount;->doSaveAccount()V
    invoke-static {v0}, Lcom/htc/android/mail/ecNewAccount;->access$400(Lcom/htc/android/mail/ecNewAccount;)V

    .line 535
    return-void
.end method
