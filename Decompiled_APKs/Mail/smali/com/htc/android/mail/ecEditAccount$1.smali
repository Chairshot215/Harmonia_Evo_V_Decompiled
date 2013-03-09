.class Lcom/htc/android/mail/ecEditAccount$1;
.super Ljava/lang/Object;
.source "ecEditAccount.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ecEditAccount;->onCreate(Landroid/os/Bundle;)V
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
    .line 155
    iput-object p1, p0, Lcom/htc/android/mail/ecEditAccount$1;->this$0:Lcom/htc/android/mail/ecEditAccount;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount$1;->this$0:Lcom/htc/android/mail/ecEditAccount;

    #calls: Lcom/htc/android/mail/ecEditAccount;->btnFncL()V
    invoke-static {v0}, Lcom/htc/android/mail/ecEditAccount;->access$100(Lcom/htc/android/mail/ecEditAccount;)V

    .line 158
    return-void
.end method
