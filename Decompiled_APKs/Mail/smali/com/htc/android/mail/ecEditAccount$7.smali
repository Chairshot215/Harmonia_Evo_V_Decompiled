.class Lcom/htc/android/mail/ecEditAccount$7;
.super Ljava/lang/Object;
.source "ecEditAccount.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ecEditAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ecEditAccount;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ecEditAccount;)V
    .locals 0
    .parameter

    .prologue
    .line 703
    iput-object p1, p0, Lcom/htc/android/mail/ecEditAccount$7;->this$0:Lcom/htc/android/mail/ecEditAccount;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 705
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount$7;->this$0:Lcom/htc/android/mail/ecEditAccount;

    #calls: Lcom/htc/android/mail/ecEditAccount;->doUpdateAccount()V
    invoke-static {v0}, Lcom/htc/android/mail/ecEditAccount;->access$800(Lcom/htc/android/mail/ecEditAccount;)V

    .line 706
    return-void
.end method
