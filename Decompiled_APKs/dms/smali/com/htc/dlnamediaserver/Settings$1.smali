.class Lcom/htc/dlnamediaserver/Settings$1;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/dlnamediaserver/Settings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dlnamediaserver/Settings;


# direct methods
.method constructor <init>(Lcom/htc/dlnamediaserver/Settings;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/htc/dlnamediaserver/Settings$1;->this$0:Lcom/htc/dlnamediaserver/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/htc/dlnamediaserver/Settings$1;->this$0:Lcom/htc/dlnamediaserver/Settings;

    #calls: Lcom/htc/dlnamediaserver/Settings;->ShareFolder()V
    invoke-static {v0}, Lcom/htc/dlnamediaserver/Settings;->access$100(Lcom/htc/dlnamediaserver/Settings;)V

    .line 196
    return-void
.end method
