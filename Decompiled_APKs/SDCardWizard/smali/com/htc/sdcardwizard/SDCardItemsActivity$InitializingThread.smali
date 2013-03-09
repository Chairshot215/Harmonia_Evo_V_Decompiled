.class final Lcom/htc/sdcardwizard/SDCardItemsActivity$InitializingThread;
.super Ljava/lang/Thread;
.source "SDCardItemsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdcardwizard/SDCardItemsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InitializingThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sdcardwizard/SDCardItemsActivity;


# direct methods
.method public constructor <init>(Lcom/htc/sdcardwizard/SDCardItemsActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity$InitializingThread;->this$0:Lcom/htc/sdcardwizard/SDCardItemsActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 193
    const v0, 0x7f040041

    invoke-virtual {p1, v0}, Lcom/htc/sdcardwizard/SDCardItemsActivity;->showWaitingDialog(I)V

    .line 194
    return-void
.end method

.method static synthetic access$600(Lcom/htc/sdcardwizard/SDCardItemsActivity$InitializingThread;Lcom/htc/sdcardwizard/SDCardItemsAdapter;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/htc/sdcardwizard/SDCardItemsActivity$InitializingThread;->setListView(Lcom/htc/sdcardwizard/SDCardItemsAdapter;)V

    return-void
.end method

.method private getSelectItem()Lcom/htc/sdcardwizard/handler/SDCardItem;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 214
    iget-object v0, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity$InitializingThread;->this$0:Lcom/htc/sdcardwizard/SDCardItemsActivity;

    #getter for: Lcom/htc/sdcardwizard/SDCardItemsActivity;->handler:Lcom/htc/sdcardwizard/handler/CasperHandler;
    invoke-static {v0}, Lcom/htc/sdcardwizard/SDCardItemsActivity;->access$300(Lcom/htc/sdcardwizard/SDCardItemsActivity;)Lcom/htc/sdcardwizard/handler/CasperHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sdcardwizard/handler/CasperHandler;->getSelectAllIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 215
    .local v6, icon:Landroid/graphics/drawable/Drawable;
    new-instance v0, Lcom/htc/sdcardwizard/handler/SDCardItem;

    iget-object v2, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity$InitializingThread;->this$0:Lcom/htc/sdcardwizard/SDCardItemsActivity;

    #getter for: Lcom/htc/sdcardwizard/SDCardItemsActivity;->handler:Lcom/htc/sdcardwizard/handler/CasperHandler;
    invoke-static {v2}, Lcom/htc/sdcardwizard/SDCardItemsActivity;->access$300(Lcom/htc/sdcardwizard/SDCardItemsActivity;)Lcom/htc/sdcardwizard/handler/CasperHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/sdcardwizard/handler/CasperHandler;->getSelectAllCaption()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    move-object v3, v1

    invoke-direct/range {v0 .. v6}, Lcom/htc/sdcardwizard/handler/SDCardItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private setListView(Lcom/htc/sdcardwizard/SDCardItemsAdapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    .line 219
    iget-object v1, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity$InitializingThread;->this$0:Lcom/htc/sdcardwizard/SDCardItemsActivity;

    const v2, 0x7f060001

    invoke-virtual {v1, v2}, Lcom/htc/sdcardwizard/SDCardItemsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListView;

    .line 220
    .local v0, listView:Lcom/htc/widget/HtcListView;
    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 222
    new-instance v1, Lcom/htc/sdcardwizard/SDCardItemsActivity$InitializingThread$2;

    invoke-direct {v1, p0, p1}, Lcom/htc/sdcardwizard/SDCardItemsActivity$InitializingThread$2;-><init>(Lcom/htc/sdcardwizard/SDCardItemsActivity$InitializingThread;Lcom/htc/sdcardwizard/SDCardItemsAdapter;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 232
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 198
    iget-object v7, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity$InitializingThread;->this$0:Lcom/htc/sdcardwizard/SDCardItemsActivity;

    new-instance v0, Lcom/htc/sdcardwizard/SDCardItemsAdapter;

    iget-object v1, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity$InitializingThread;->this$0:Lcom/htc/sdcardwizard/SDCardItemsActivity;

    const v2, 0x7f060001

    iget-object v3, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity$InitializingThread;->this$0:Lcom/htc/sdcardwizard/SDCardItemsActivity;

    #getter for: Lcom/htc/sdcardwizard/SDCardItemsActivity;->deleteButton:Landroid/widget/Button;
    invoke-static {v3}, Lcom/htc/sdcardwizard/SDCardItemsActivity;->access$400(Lcom/htc/sdcardwizard/SDCardItemsActivity;)Landroid/widget/Button;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity$InitializingThread;->this$0:Lcom/htc/sdcardwizard/SDCardItemsActivity;

    #getter for: Lcom/htc/sdcardwizard/SDCardItemsActivity;->moveButton:Landroid/widget/Button;
    invoke-static {v4}, Lcom/htc/sdcardwizard/SDCardItemsActivity;->access$500(Lcom/htc/sdcardwizard/SDCardItemsActivity;)Landroid/widget/Button;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity$InitializingThread;->this$0:Lcom/htc/sdcardwizard/SDCardItemsActivity;

    #getter for: Lcom/htc/sdcardwizard/SDCardItemsActivity;->handler:Lcom/htc/sdcardwizard/handler/CasperHandler;
    invoke-static {v5}, Lcom/htc/sdcardwizard/SDCardItemsActivity;->access$300(Lcom/htc/sdcardwizard/SDCardItemsActivity;)Lcom/htc/sdcardwizard/handler/CasperHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/sdcardwizard/handler/CasperHandler;->getItems()Lcom/htc/sdcardwizard/handler/SDCardItems;

    move-result-object v5

    invoke-direct {p0}, Lcom/htc/sdcardwizard/SDCardItemsActivity$InitializingThread;->getSelectItem()Lcom/htc/sdcardwizard/handler/SDCardItem;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/htc/sdcardwizard/SDCardItemsAdapter;-><init>(Landroid/content/Context;ILandroid/widget/Button;Landroid/widget/Button;Lcom/htc/sdcardwizard/handler/SDCardItems;Lcom/htc/sdcardwizard/handler/SDCardItem;)V

    #setter for: Lcom/htc/sdcardwizard/SDCardItemsActivity;->adapter:Lcom/htc/sdcardwizard/SDCardItemsAdapter;
    invoke-static {v7, v0}, Lcom/htc/sdcardwizard/SDCardItemsActivity;->access$002(Lcom/htc/sdcardwizard/SDCardItemsActivity;Lcom/htc/sdcardwizard/SDCardItemsAdapter;)Lcom/htc/sdcardwizard/SDCardItemsAdapter;

    .line 200
    iget-object v0, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity$InitializingThread;->this$0:Lcom/htc/sdcardwizard/SDCardItemsActivity;

    new-instance v1, Lcom/htc/sdcardwizard/SDCardItemsActivity$InitializingThread$1;

    invoke-direct {v1, p0}, Lcom/htc/sdcardwizard/SDCardItemsActivity$InitializingThread$1;-><init>(Lcom/htc/sdcardwizard/SDCardItemsActivity$InitializingThread;)V

    invoke-virtual {v0, v1}, Lcom/htc/sdcardwizard/SDCardItemsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 211
    return-void
.end method
