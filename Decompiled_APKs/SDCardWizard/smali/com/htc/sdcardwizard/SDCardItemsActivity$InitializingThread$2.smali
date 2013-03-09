.class Lcom/htc/sdcardwizard/SDCardItemsActivity$InitializingThread$2;
.super Ljava/lang/Object;
.source "SDCardItemsActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sdcardwizard/SDCardItemsActivity$InitializingThread;->setListView(Lcom/htc/sdcardwizard/SDCardItemsAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/sdcardwizard/SDCardItemsActivity$InitializingThread;

.field final synthetic val$adapter:Lcom/htc/sdcardwizard/SDCardItemsAdapter;


# direct methods
.method constructor <init>(Lcom/htc/sdcardwizard/SDCardItemsActivity$InitializingThread;Lcom/htc/sdcardwizard/SDCardItemsAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity$InitializingThread$2;->this$1:Lcom/htc/sdcardwizard/SDCardItemsActivity$InitializingThread;

    iput-object p2, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity$InitializingThread$2;->val$adapter:Lcom/htc/sdcardwizard/SDCardItemsAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "item"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 225
    .local p1, lv:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    if-nez p2, :cond_0

    .line 226
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null list item view."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity$InitializingThread$2;->val$adapter:Lcom/htc/sdcardwizard/SDCardItemsAdapter;

    invoke-virtual {v0, p2, p3}, Lcom/htc/sdcardwizard/SDCardItemsAdapter;->onItemClick(Landroid/view/View;I)V

    .line 229
    return-void
.end method
