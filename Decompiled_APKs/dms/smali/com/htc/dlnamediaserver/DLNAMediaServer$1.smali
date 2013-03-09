.class Lcom/htc/dlnamediaserver/DLNAMediaServer$1;
.super Ljava/lang/Object;
.source "DLNAMediaServer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/dlnamediaserver/DLNAMediaServer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dlnamediaserver/DLNAMediaServer;


# direct methods
.method constructor <init>(Lcom/htc/dlnamediaserver/DLNAMediaServer;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/htc/dlnamediaserver/DLNAMediaServer$1;->this$0:Lcom/htc/dlnamediaserver/DLNAMediaServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServer$1;->this$0:Lcom/htc/dlnamediaserver/DLNAMediaServer;

    #calls: Lcom/htc/dlnamediaserver/DLNAMediaServer;->Settings()V
    invoke-static {v0}, Lcom/htc/dlnamediaserver/DLNAMediaServer;->access$000(Lcom/htc/dlnamediaserver/DLNAMediaServer;)V

    .line 89
    return-void
.end method
