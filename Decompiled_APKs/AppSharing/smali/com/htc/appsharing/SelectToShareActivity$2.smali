.class Lcom/htc/appsharing/SelectToShareActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "SelectToShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/appsharing/SelectToShareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/appsharing/SelectToShareActivity;


# direct methods
.method constructor <init>(Lcom/htc/appsharing/SelectToShareActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/htc/appsharing/SelectToShareActivity$2;->this$0:Lcom/htc/appsharing/SelectToShareActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/appsharing/SelectToShareActivity$2;->this$0:Lcom/htc/appsharing/SelectToShareActivity;

    #calls: Lcom/htc/appsharing/SelectToShareActivity;->onPackageChange(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/htc/appsharing/SelectToShareActivity;->access$100(Lcom/htc/appsharing/SelectToShareActivity;Landroid/content/Intent;)V

    .line 62
    return-void
.end method
