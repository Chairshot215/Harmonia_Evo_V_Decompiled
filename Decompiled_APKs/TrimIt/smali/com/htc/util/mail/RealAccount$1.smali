.class Lcom/htc/util/mail/RealAccount$1;
.super Ljava/lang/Object;
.source "RealAccount.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/util/mail/RealAccount;->refreshFolderIdList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/util/mail/RealAccount;


# direct methods
.method constructor <init>(Lcom/htc/util/mail/RealAccount;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/htc/util/mail/RealAccount$1;->this$0:Lcom/htc/util/mail/RealAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/htc/util/mail/RealAccount$1;->this$0:Lcom/htc/util/mail/RealAccount;

    #calls: Lcom/htc/util/mail/RealAccount;->doRefreshFolderIdList()V
    invoke-static {v0}, Lcom/htc/util/mail/RealAccount;->access$000(Lcom/htc/util/mail/RealAccount;)V

    .line 270
    return-void
.end method
