.class Lcom/htc/sdcardwizard/SDCardItemsActivity$3;
.super Ljava/lang/Object;
.source "SDCardItemsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sdcardwizard/SDCardItemsActivity;->initDeleteButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sdcardwizard/SDCardItemsActivity;


# direct methods
.method constructor <init>(Lcom/htc/sdcardwizard/SDCardItemsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity$3;->this$0:Lcom/htc/sdcardwizard/SDCardItemsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 117
    iget-object v1, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity$3;->this$0:Lcom/htc/sdcardwizard/SDCardItemsActivity;

    #getter for: Lcom/htc/sdcardwizard/SDCardItemsActivity;->adapter:Lcom/htc/sdcardwizard/SDCardItemsAdapter;
    invoke-static {v1}, Lcom/htc/sdcardwizard/SDCardItemsActivity;->access$000(Lcom/htc/sdcardwizard/SDCardItemsActivity;)Lcom/htc/sdcardwizard/SDCardItemsAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity$3;->this$0:Lcom/htc/sdcardwizard/SDCardItemsActivity;

    #getter for: Lcom/htc/sdcardwizard/SDCardItemsActivity;->adapter:Lcom/htc/sdcardwizard/SDCardItemsAdapter;
    invoke-static {v1}, Lcom/htc/sdcardwizard/SDCardItemsActivity;->access$000(Lcom/htc/sdcardwizard/SDCardItemsActivity;)Lcom/htc/sdcardwizard/SDCardItemsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/sdcardwizard/SDCardItemsAdapter;->getDeletableItems()Lcom/htc/sdcardwizard/handler/SDCardItems;

    move-result-object v0

    .line 119
    .local v0, items:Lcom/htc/sdcardwizard/handler/SDCardItems;
    invoke-virtual {v0}, Lcom/htc/sdcardwizard/handler/SDCardItems;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity$3;->this$0:Lcom/htc/sdcardwizard/SDCardItemsActivity;

    #calls: Lcom/htc/sdcardwizard/SDCardItemsActivity;->deleteSelectedItems(Lcom/htc/sdcardwizard/handler/SDCardItems;)V
    invoke-static {v1, v0}, Lcom/htc/sdcardwizard/SDCardItemsActivity;->access$200(Lcom/htc/sdcardwizard/SDCardItemsActivity;Lcom/htc/sdcardwizard/handler/SDCardItems;)V

    .line 123
    .end local v0           #items:Lcom/htc/sdcardwizard/handler/SDCardItems;
    :cond_0
    return-void
.end method
