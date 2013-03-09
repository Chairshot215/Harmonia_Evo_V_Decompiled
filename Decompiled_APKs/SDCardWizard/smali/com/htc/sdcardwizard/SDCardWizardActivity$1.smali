.class Lcom/htc/sdcardwizard/SDCardWizardActivity$1;
.super Ljava/lang/Object;
.source "SDCardWizardActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sdcardwizard/SDCardWizardActivity;->setListView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sdcardwizard/SDCardWizardActivity;

.field final synthetic val$listView:Lcom/htc/widget/HtcListView;


# direct methods
.method constructor <init>(Lcom/htc/sdcardwizard/SDCardWizardActivity;Lcom/htc/widget/HtcListView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity$1;->this$0:Lcom/htc/sdcardwizard/SDCardWizardActivity;

    iput-object p2, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity$1;->val$listView:Lcom/htc/widget/HtcListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
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
    .line 115
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    invoke-static {}, Lcom/htc/sdcardwizard/SDCardWizardActivity;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "listView.onItemClick: position="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v2, 0x0

    .line 117
    .local v2, item:Lcom/htc/sdcardwizard/CategoryItem;
    iget-object v3, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity$1;->val$listView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListView;->getHeaderViewsCount()I

    move-result v1

    .line 118
    .local v1, headerItemsCount:I
    if-ge p3, v1, :cond_1

    .line 119
    iget-object v3, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity$1;->this$0:Lcom/htc/sdcardwizard/SDCardWizardActivity;

    #getter for: Lcom/htc/sdcardwizard/SDCardWizardActivity;->headerAdapter:Lcom/htc/sdcardwizard/SDCardWizardActivity$ListHeaderAdapter;
    invoke-static {v3}, Lcom/htc/sdcardwizard/SDCardWizardActivity;->access$100(Lcom/htc/sdcardwizard/SDCardWizardActivity;)Lcom/htc/sdcardwizard/SDCardWizardActivity$ListHeaderAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/htc/sdcardwizard/SDCardWizardActivity$ListHeaderAdapter;->getItem(I)Lcom/htc/sdcardwizard/CategoryItem;

    move-result-object v2

    .line 124
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/htc/sdcardwizard/CategoryItem;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    iget-object v3, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity$1;->this$0:Lcom/htc/sdcardwizard/SDCardWizardActivity;

    iget-object v4, v2, Lcom/htc/sdcardwizard/CategoryItem;->categoryID:Lcom/htc/sdcardwizard/handler/CategoryID;

    invoke-static {v3, v4}, Lcom/htc/sdcardwizard/handler/SDCardHandlerFactory;->getHandler(Landroid/app/Activity;Lcom/htc/sdcardwizard/handler/CategoryID;)Lcom/htc/sdcardwizard/handler/SDCardHandler;

    move-result-object v0

    .line 127
    .local v0, handler:Lcom/htc/sdcardwizard/handler/SDCardHandler;
    iget-object v3, v2, Lcom/htc/sdcardwizard/CategoryItem;->storage:Lcom/htc/sdcardwizard/CategoryItem$Storage;

    invoke-virtual {v0, v3}, Lcom/htc/sdcardwizard/handler/SDCardHandler;->setStorageType(Lcom/htc/sdcardwizard/CategoryItem$Storage;)V

    .line 128
    invoke-virtual {v0, p3}, Lcom/htc/sdcardwizard/handler/SDCardHandler;->showDeleteScreen(I)V

    .line 130
    .end local v0           #handler:Lcom/htc/sdcardwizard/handler/SDCardHandler;
    :cond_0
    return-void

    .line 121
    :cond_1
    iget-object v3, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity$1;->this$0:Lcom/htc/sdcardwizard/SDCardWizardActivity;

    #getter for: Lcom/htc/sdcardwizard/SDCardWizardActivity;->adapter:Lcom/htc/sdcardwizard/CategoryItemsAdapter;
    invoke-static {v3}, Lcom/htc/sdcardwizard/SDCardWizardActivity;->access$200(Lcom/htc/sdcardwizard/SDCardWizardActivity;)Lcom/htc/sdcardwizard/CategoryItemsAdapter;

    move-result-object v3

    sub-int v4, p3, v1

    invoke-virtual {v3, v4}, Lcom/htc/sdcardwizard/CategoryItemsAdapter;->getItem(I)Lcom/htc/sdcardwizard/CategoryItem;

    move-result-object v2

    goto :goto_0
.end method
