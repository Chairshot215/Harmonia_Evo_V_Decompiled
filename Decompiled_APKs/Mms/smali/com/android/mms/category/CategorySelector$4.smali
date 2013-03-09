.class Lcom/android/mms/category/CategorySelector$4;
.super Ljava/lang/Object;
.source "CategorySelector.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


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
    .line 176
    iput-object p1, p0, Lcom/android/mms/category/CategorySelector$4;->this$0:Lcom/android/mms/category/CategorySelector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 178
    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    .line 180
    const v0, 0x7f090299

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 182
    iget-object v0, p0, Lcom/android/mms/category/CategorySelector$4;->this$0:Lcom/android/mms/category/CategorySelector;

    iget-boolean v0, v0, Lcom/android/mms/category/CategorySelector;->mGeneralCategoryEnabled:Z

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/mms/category/CategorySelector$4;->this$0:Lcom/android/mms/category/CategorySelector;

    sget-object v1, Lcom/android/mms/category/Category;->GENERAL:Lcom/android/mms/category/Category;

    const/4 v2, 0x0

    const v3, 0x7f09029a

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/mms/category/CategorySelector;->buildCategoryMenuItem(Landroid/view/ContextMenu;Lcom/android/mms/category/Category;II)V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/android/mms/category/CategorySelector$4;->this$0:Lcom/android/mms/category/CategorySelector;

    iget-boolean v0, v0, Lcom/android/mms/category/CategorySelector;->mSecureCategoryEnabled:Z

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/android/mms/category/CategorySelector$4;->this$0:Lcom/android/mms/category/CategorySelector;

    sget-object v1, Lcom/android/mms/category/Category;->SECURE:Lcom/android/mms/category/Category;

    const/4 v2, 0x1

    const v3, 0x7f09029b

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/mms/category/CategorySelector;->buildCategoryMenuItem(Landroid/view/ContextMenu;Lcom/android/mms/category/Category;II)V

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/android/mms/category/CategorySelector$4;->this$0:Lcom/android/mms/category/CategorySelector;

    iget-boolean v0, v0, Lcom/android/mms/category/CategorySelector;->mBlockedCategoryEnabled:Z

    if-eqz v0, :cond_2

    .line 191
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportBlocklist()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 193
    iget-object v0, p0, Lcom/android/mms/category/CategorySelector$4;->this$0:Lcom/android/mms/category/CategorySelector;

    sget-object v1, Lcom/android/mms/category/Category;->BLOCKED:Lcom/android/mms/category/Category;

    const/4 v2, 0x2

    const v3, 0x7f090335

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/mms/category/CategorySelector;->buildCategoryMenuItem(Landroid/view/ContextMenu;Lcom/android/mms/category/Category;II)V

    .line 198
    :cond_2
    return-void
.end method
