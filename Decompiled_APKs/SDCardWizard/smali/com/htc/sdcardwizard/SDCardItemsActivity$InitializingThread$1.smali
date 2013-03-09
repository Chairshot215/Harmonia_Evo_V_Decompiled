.class Lcom/htc/sdcardwizard/SDCardItemsActivity$InitializingThread$1;
.super Ljava/lang/Object;
.source "SDCardItemsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sdcardwizard/SDCardItemsActivity$InitializingThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/sdcardwizard/SDCardItemsActivity$InitializingThread;


# direct methods
.method constructor <init>(Lcom/htc/sdcardwizard/SDCardItemsActivity$InitializingThread;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity$InitializingThread$1;->this$1:Lcom/htc/sdcardwizard/SDCardItemsActivity$InitializingThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity$InitializingThread$1;->this$1:Lcom/htc/sdcardwizard/SDCardItemsActivity$InitializingThread;

    iget-object v1, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity$InitializingThread$1;->this$1:Lcom/htc/sdcardwizard/SDCardItemsActivity$InitializingThread;

    iget-object v1, v1, Lcom/htc/sdcardwizard/SDCardItemsActivity$InitializingThread;->this$0:Lcom/htc/sdcardwizard/SDCardItemsActivity;

    #getter for: Lcom/htc/sdcardwizard/SDCardItemsActivity;->adapter:Lcom/htc/sdcardwizard/SDCardItemsAdapter;
    invoke-static {v1}, Lcom/htc/sdcardwizard/SDCardItemsActivity;->access$000(Lcom/htc/sdcardwizard/SDCardItemsActivity;)Lcom/htc/sdcardwizard/SDCardItemsAdapter;

    move-result-object v1

    #calls: Lcom/htc/sdcardwizard/SDCardItemsActivity$InitializingThread;->setListView(Lcom/htc/sdcardwizard/SDCardItemsAdapter;)V
    invoke-static {v0, v1}, Lcom/htc/sdcardwizard/SDCardItemsActivity$InitializingThread;->access$600(Lcom/htc/sdcardwizard/SDCardItemsActivity$InitializingThread;Lcom/htc/sdcardwizard/SDCardItemsAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    iget-object v0, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity$InitializingThread$1;->this$1:Lcom/htc/sdcardwizard/SDCardItemsActivity$InitializingThread;

    iget-object v0, v0, Lcom/htc/sdcardwizard/SDCardItemsActivity$InitializingThread;->this$0:Lcom/htc/sdcardwizard/SDCardItemsActivity;

    invoke-virtual {v0}, Lcom/htc/sdcardwizard/SDCardItemsActivity;->dismissWaitingDialog()V

    .line 209
    return-void

    .line 207
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity$InitializingThread$1;->this$1:Lcom/htc/sdcardwizard/SDCardItemsActivity$InitializingThread;

    iget-object v1, v1, Lcom/htc/sdcardwizard/SDCardItemsActivity$InitializingThread;->this$0:Lcom/htc/sdcardwizard/SDCardItemsActivity;

    invoke-virtual {v1}, Lcom/htc/sdcardwizard/SDCardItemsActivity;->dismissWaitingDialog()V

    throw v0
.end method
