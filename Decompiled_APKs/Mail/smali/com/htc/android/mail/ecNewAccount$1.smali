.class Lcom/htc/android/mail/ecNewAccount$1;
.super Ljava/lang/Object;
.source "ecNewAccount.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ecNewAccount;->onCreate(Landroid/os/Bundle;)V
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
    .line 153
    iput-object p1, p0, Lcom/htc/android/mail/ecNewAccount$1;->this$0:Lcom/htc/android/mail/ecNewAccount;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount$1;->this$0:Lcom/htc/android/mail/ecNewAccount;

    #calls: Lcom/htc/android/mail/ecNewAccount;->btnFncL()V
    invoke-static {v0}, Lcom/htc/android/mail/ecNewAccount;->access$000(Lcom/htc/android/mail/ecNewAccount;)V

    .line 156
    return-void
.end method
