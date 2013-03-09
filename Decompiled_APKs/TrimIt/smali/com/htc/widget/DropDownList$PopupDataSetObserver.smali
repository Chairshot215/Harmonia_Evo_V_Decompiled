.class Lcom/htc/widget/DropDownList$PopupDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "DropDownList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/DropDownList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/DropDownList;


# direct methods
.method private constructor <init>(Lcom/htc/widget/DropDownList;)V
    .locals 0
    .parameter

    .prologue
    .line 1529
    iput-object p1, p0, Lcom/htc/widget/DropDownList$PopupDataSetObserver;->this$0:Lcom/htc/widget/DropDownList;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/DropDownList;Lcom/htc/widget/DropDownList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1529
    invoke-direct {p0, p1}, Lcom/htc/widget/DropDownList$PopupDataSetObserver;-><init>(Lcom/htc/widget/DropDownList;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 1532
    iget-object v0, p0, Lcom/htc/widget/DropDownList$PopupDataSetObserver;->this$0:Lcom/htc/widget/DropDownList;

    invoke-virtual {v0}, Lcom/htc/widget/DropDownList;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1534
    iget-object v0, p0, Lcom/htc/widget/DropDownList$PopupDataSetObserver;->this$0:Lcom/htc/widget/DropDownList;

    invoke-virtual {v0}, Lcom/htc/widget/DropDownList;->showDropDown()V

    .line 1550
    :cond_0
    :goto_0
    return-void

    .line 1535
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/DropDownList$PopupDataSetObserver;->this$0:Lcom/htc/widget/DropDownList;

    #getter for: Lcom/htc/widget/DropDownList;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v0}, Lcom/htc/widget/DropDownList;->access$1000(Lcom/htc/widget/DropDownList;)Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1541
    iget-object v0, p0, Lcom/htc/widget/DropDownList$PopupDataSetObserver;->this$0:Lcom/htc/widget/DropDownList;

    new-instance v1, Lcom/htc/widget/DropDownList$PopupDataSetObserver$1;

    invoke-direct {v1, p0}, Lcom/htc/widget/DropDownList$PopupDataSetObserver$1;-><init>(Lcom/htc/widget/DropDownList$PopupDataSetObserver;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/DropDownList;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 1556
    iget-object v0, p0, Lcom/htc/widget/DropDownList$PopupDataSetObserver;->this$0:Lcom/htc/widget/DropDownList;

    invoke-virtual {v0}, Lcom/htc/widget/DropDownList;->dismissDropDown()V

    .line 1557
    return-void
.end method
