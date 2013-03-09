.class Lcom/htc/htccompressviewer/CompressViewer$AccountSelectedListener;
.super Ljava/lang/Object;
.source "CompressViewer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccompressviewer/CompressViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountSelectedListener"
.end annotation


# instance fields
.field private final mAccountList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mUnzipPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/htccompressviewer/CompressViewer;


# direct methods
.method public constructor <init>(Lcom/htc/htccompressviewer/CompressViewer;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter
    .parameter "unzipPath"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 810
    .local p3, accountList:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    iput-object p1, p0, Lcom/htc/htccompressviewer/CompressViewer$AccountSelectedListener;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 812
    iput-object p2, p0, Lcom/htc/htccompressviewer/CompressViewer$AccountSelectedListener;->mContext:Landroid/content/Context;

    .line 813
    iput-object p3, p0, Lcom/htc/htccompressviewer/CompressViewer$AccountSelectedListener;->mAccountList:Ljava/util/List;

    .line 814
    iput-object p4, p0, Lcom/htc/htccompressviewer/CompressViewer$AccountSelectedListener;->mUnzipPath:Ljava/lang/String;

    .line 815
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 835
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 836
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 819
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 821
    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer$AccountSelectedListener;->mAccountList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 822
    .local v0, account:Landroid/accounts/Account;
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/htc/htccompressviewer/CompressViewer$AccountSelectedListener;->mUnzipPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 823
    .local v2, path:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 824
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 825
    const-string v3, "text/x-vcard"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 826
    if-eqz v0, :cond_0

    .line 827
    const-string v3, "account_name"

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 828
    const-string v3, "account_type"

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 830
    :cond_0
    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer$AccountSelectedListener;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 831
    return-void
.end method
