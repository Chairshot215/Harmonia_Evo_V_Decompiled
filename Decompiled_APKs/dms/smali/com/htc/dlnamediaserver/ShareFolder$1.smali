.class Lcom/htc/dlnamediaserver/ShareFolder$1;
.super Ljava/lang/Object;
.source "ShareFolder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/dlnamediaserver/ShareFolder;->StartLoadingPopup(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dlnamediaserver/ShareFolder;


# direct methods
.method constructor <init>(Lcom/htc/dlnamediaserver/ShareFolder;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/htc/dlnamediaserver/ShareFolder$1;->this$0:Lcom/htc/dlnamediaserver/ShareFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/dlnamediaserver/ShareFolder$1;->this$0:Lcom/htc/dlnamediaserver/ShareFolder;

    invoke-virtual {v0}, Lcom/htc/dlnamediaserver/ShareFolder;->finish()V

    .line 70
    return-void
.end method
