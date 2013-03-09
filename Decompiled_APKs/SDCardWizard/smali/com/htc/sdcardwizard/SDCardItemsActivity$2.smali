.class Lcom/htc/sdcardwizard/SDCardItemsActivity$2;
.super Ljava/lang/Object;
.source "SDCardItemsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sdcardwizard/SDCardItemsActivity;->initMoveToSdButton()V
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
    .line 99
    iput-object p1, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity$2;->this$0:Lcom/htc/sdcardwizard/SDCardItemsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 102
    iget-object v1, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity$2;->this$0:Lcom/htc/sdcardwizard/SDCardItemsActivity;

    #getter for: Lcom/htc/sdcardwizard/SDCardItemsActivity;->adapter:Lcom/htc/sdcardwizard/SDCardItemsAdapter;
    invoke-static {v1}, Lcom/htc/sdcardwizard/SDCardItemsActivity;->access$000(Lcom/htc/sdcardwizard/SDCardItemsActivity;)Lcom/htc/sdcardwizard/SDCardItemsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/sdcardwizard/SDCardItemsAdapter;->getDeletableItems()Lcom/htc/sdcardwizard/handler/SDCardItems;

    move-result-object v0

    .line 103
    .local v0, items:Lcom/htc/sdcardwizard/handler/SDCardItems;
    invoke-virtual {v0}, Lcom/htc/sdcardwizard/handler/SDCardItems;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity$2;->this$0:Lcom/htc/sdcardwizard/SDCardItemsActivity;

    #calls: Lcom/htc/sdcardwizard/SDCardItemsActivity;->moveSelectedItems(Lcom/htc/sdcardwizard/handler/SDCardItems;)V
    invoke-static {v1, v0}, Lcom/htc/sdcardwizard/SDCardItemsActivity;->access$100(Lcom/htc/sdcardwizard/SDCardItemsActivity;Lcom/htc/sdcardwizard/handler/SDCardItems;)V

    .line 106
    :cond_0
    return-void
.end method
