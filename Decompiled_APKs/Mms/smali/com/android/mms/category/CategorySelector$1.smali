.class Lcom/android/mms/category/CategorySelector$1;
.super Ljava/lang/Object;
.source "CategorySelector.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/category/CategorySelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/category/CategorySelector;


# direct methods
.method constructor <init>(Lcom/android/mms/category/CategorySelector;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/mms/category/CategorySelector$1;->this$0:Lcom/android/mms/category/CategorySelector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    .line 122
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/mms/category/CategorySelector$1;->this$0:Lcom/android/mms/category/CategorySelector;

    #getter for: Lcom/android/mms/category/CategorySelector;->mdropdownlist:Lcom/htc/widget/DropDownList;
    invoke-static {v0}, Lcom/android/mms/category/CategorySelector;->access$000(Lcom/android/mms/category/CategorySelector;)Lcom/htc/widget/DropDownList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/mms/category/CategorySelector$1;->this$0:Lcom/android/mms/category/CategorySelector;

    #getter for: Lcom/android/mms/category/CategorySelector;->mdropdownlist:Lcom/htc/widget/DropDownList;
    invoke-static {v0}, Lcom/android/mms/category/CategorySelector;->access$000(Lcom/android/mms/category/CategorySelector;)Lcom/htc/widget/DropDownList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/DropDownList;->dismissDropDown()V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/mms/category/CategorySelector$1;->this$0:Lcom/android/mms/category/CategorySelector;

    #getter for: Lcom/android/mms/category/CategorySelector;->mHeaderBarDropDown:Lcom/htc/widget/HeaderBarDropDown;
    invoke-static {v0}, Lcom/android/mms/category/CategorySelector;->access$100(Lcom/android/mms/category/CategorySelector;)Lcom/htc/widget/HeaderBarDropDown;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/android/mms/category/CategorySelector$1;->this$0:Lcom/android/mms/category/CategorySelector;

    #getter for: Lcom/android/mms/category/CategorySelector;->mHeaderBarDropDown:Lcom/htc/widget/HeaderBarDropDown;
    invoke-static {v0}, Lcom/android/mms/category/CategorySelector;->access$100(Lcom/android/mms/category/CategorySelector;)Lcom/htc/widget/HeaderBarDropDown;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HeaderBarDropDown;->dismiss()V

    .line 126
    :cond_1
    packed-switch p3, :pswitch_data_0

    .line 139
    :goto_0
    return-void

    .line 129
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/category/CategorySelector$1;->this$0:Lcom/android/mms/category/CategorySelector;

    sget-object v1, Lcom/android/mms/category/Category;->GENERAL:Lcom/android/mms/category/Category;

    invoke-virtual {v0, v1}, Lcom/android/mms/category/CategorySelector;->switchTo(Lcom/android/mms/category/Category;)V

    goto :goto_0

    .line 132
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/category/CategorySelector$1;->this$0:Lcom/android/mms/category/CategorySelector;

    sget-object v1, Lcom/android/mms/category/Category;->SECURE:Lcom/android/mms/category/Category;

    invoke-virtual {v0, v1}, Lcom/android/mms/category/CategorySelector;->switchTo(Lcom/android/mms/category/Category;)V

    goto :goto_0

    .line 135
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/category/CategorySelector$1;->this$0:Lcom/android/mms/category/CategorySelector;

    sget-object v1, Lcom/android/mms/category/Category;->BLOCKED:Lcom/android/mms/category/Category;

    invoke-virtual {v0, v1}, Lcom/android/mms/category/CategorySelector;->switchTo(Lcom/android/mms/category/Category;)V

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
