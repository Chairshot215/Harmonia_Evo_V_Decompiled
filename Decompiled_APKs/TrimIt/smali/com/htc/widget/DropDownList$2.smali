.class Lcom/htc/widget/DropDownList$2;
.super Ljava/lang/Object;
.source "DropDownList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/DropDownList;->setupDropDownList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/DropDownList;


# direct methods
.method constructor <init>(Lcom/htc/widget/DropDownList;)V
    .locals 0
    .parameter

    .prologue
    .line 1272
    iput-object p1, p0, Lcom/htc/widget/DropDownList$2;->this$0:Lcom/htc/widget/DropDownList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1275
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v1, -0x1

    if-eq p3, v1, :cond_0

    .line 1276
    iget-object v1, p0, Lcom/htc/widget/DropDownList$2;->this$0:Lcom/htc/widget/DropDownList;

    #getter for: Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;
    invoke-static {v1}, Lcom/htc/widget/DropDownList;->access$600(Lcom/htc/widget/DropDownList;)Lcom/htc/widget/DropDownList$DropDownListView;

    move-result-object v0

    .line 1277
    .local v0, dropDownList:Lcom/htc/widget/DropDownList$DropDownListView;
    if-eqz v0, :cond_0

    .line 1278
    const/4 v1, 0x0

    #setter for: Lcom/htc/widget/DropDownList$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Lcom/htc/widget/DropDownList$DropDownListView;->access$402(Lcom/htc/widget/DropDownList$DropDownListView;Z)Z

    .line 1281
    .end local v0           #dropDownList:Lcom/htc/widget/DropDownList$DropDownListView;
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1284
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
