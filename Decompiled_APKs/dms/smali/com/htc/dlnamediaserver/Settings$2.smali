.class Lcom/htc/dlnamediaserver/Settings$2;
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
    .line 204
    iput-object p1, p0, Lcom/htc/dlnamediaserver/Settings$2;->this$0:Lcom/htc/dlnamediaserver/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/htc/dlnamediaserver/Settings$2;->this$0:Lcom/htc/dlnamediaserver/Settings;

    const v1, 0x7f070003

    invoke-virtual {v0, v1}, Lcom/htc/dlnamediaserver/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/htc/dlnamediaserver/Settings$2;->this$0:Lcom/htc/dlnamediaserver/Settings;

    #calls: Lcom/htc/dlnamediaserver/Settings;->Start()V
    invoke-static {v0}, Lcom/htc/dlnamediaserver/Settings;->access$200(Lcom/htc/dlnamediaserver/Settings;)V

    .line 210
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/htc/dlnamediaserver/Settings$2;->this$0:Lcom/htc/dlnamediaserver/Settings;

    #calls: Lcom/htc/dlnamediaserver/Settings;->Stop()V
    invoke-static {v0}, Lcom/htc/dlnamediaserver/Settings;->access$300(Lcom/htc/dlnamediaserver/Settings;)V

    goto :goto_0
.end method
