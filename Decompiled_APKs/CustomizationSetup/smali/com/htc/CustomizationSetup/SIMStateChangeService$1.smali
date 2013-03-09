.class Lcom/htc/CustomizationSetup/SIMStateChangeService$1;
.super Ljava/lang/Thread;
.source "SIMStateChangeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/CustomizationSetup/SIMStateChangeService;->onStart(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/CustomizationSetup/SIMStateChangeService;


# direct methods
.method constructor <init>(Lcom/htc/CustomizationSetup/SIMStateChangeService;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService$1;->this$0:Lcom/htc/CustomizationSetup/SIMStateChangeService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService$1;->this$0:Lcom/htc/CustomizationSetup/SIMStateChangeService;

    #calls: Lcom/htc/CustomizationSetup/SIMStateChangeService;->doSimChangeService()V
    invoke-static {v0}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->access$000(Lcom/htc/CustomizationSetup/SIMStateChangeService;)V

    .line 165
    return-void
.end method
