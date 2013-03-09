.class Lcom/htc/sdcardwizard/SDCardItemsActivity$4;
.super Ljava/lang/Thread;
.source "SDCardItemsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sdcardwizard/SDCardItemsActivity;->deleteSelectedItems(Lcom/htc/sdcardwizard/handler/SDCardItems;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sdcardwizard/SDCardItemsActivity;

.field final synthetic val$items:Lcom/htc/sdcardwizard/handler/SDCardItems;


# direct methods
.method constructor <init>(Lcom/htc/sdcardwizard/SDCardItemsActivity;Lcom/htc/sdcardwizard/handler/SDCardItems;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity$4;->this$0:Lcom/htc/sdcardwizard/SDCardItemsActivity;

    iput-object p2, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity$4;->val$items:Lcom/htc/sdcardwizard/handler/SDCardItems;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity$4;->this$0:Lcom/htc/sdcardwizard/SDCardItemsActivity;

    #getter for: Lcom/htc/sdcardwizard/SDCardItemsActivity;->handler:Lcom/htc/sdcardwizard/handler/CasperHandler;
    invoke-static {v0}, Lcom/htc/sdcardwizard/SDCardItemsActivity;->access$300(Lcom/htc/sdcardwizard/SDCardItemsActivity;)Lcom/htc/sdcardwizard/handler/CasperHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity$4;->val$items:Lcom/htc/sdcardwizard/handler/SDCardItems;

    invoke-virtual {v0, v1}, Lcom/htc/sdcardwizard/handler/CasperHandler;->deleteItems(Lcom/htc/sdcardwizard/handler/SDCardItems;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    iget-object v0, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity$4;->this$0:Lcom/htc/sdcardwizard/SDCardItemsActivity;

    invoke-virtual {v0}, Lcom/htc/sdcardwizard/SDCardItemsActivity;->dismissWaitingDialog()V

    .line 136
    iget-object v0, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity$4;->this$0:Lcom/htc/sdcardwizard/SDCardItemsActivity;

    invoke-virtual {v0, v2}, Lcom/htc/sdcardwizard/SDCardItemsActivity;->setResult(I)V

    .line 137
    iget-object v0, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity$4;->this$0:Lcom/htc/sdcardwizard/SDCardItemsActivity;

    invoke-virtual {v0}, Lcom/htc/sdcardwizard/SDCardItemsActivity;->finish()V

    .line 139
    return-void

    .line 135
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity$4;->this$0:Lcom/htc/sdcardwizard/SDCardItemsActivity;

    invoke-virtual {v1}, Lcom/htc/sdcardwizard/SDCardItemsActivity;->dismissWaitingDialog()V

    .line 136
    iget-object v1, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity$4;->this$0:Lcom/htc/sdcardwizard/SDCardItemsActivity;

    invoke-virtual {v1, v2}, Lcom/htc/sdcardwizard/SDCardItemsActivity;->setResult(I)V

    .line 137
    iget-object v1, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity$4;->this$0:Lcom/htc/sdcardwizard/SDCardItemsActivity;

    invoke-virtual {v1}, Lcom/htc/sdcardwizard/SDCardItemsActivity;->finish()V

    throw v0
.end method
