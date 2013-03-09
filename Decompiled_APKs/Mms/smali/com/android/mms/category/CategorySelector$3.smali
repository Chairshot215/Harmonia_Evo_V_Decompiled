.class Lcom/android/mms/category/CategorySelector$3;
.super Ljava/lang/Object;
.source "CategorySelector.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


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
    .line 159
    iput-object p1, p0, Lcom/android/mms/category/CategorySelector$3;->this$0:Lcom/android/mms/category/CategorySelector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 161
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 172
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 163
    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/category/CategorySelector$3;->this$0:Lcom/android/mms/category/CategorySelector;

    sget-object v2, Lcom/android/mms/category/Category;->GENERAL:Lcom/android/mms/category/Category;

    invoke-virtual {v1, v2}, Lcom/android/mms/category/CategorySelector;->switchTo(Lcom/android/mms/category/Category;)V

    goto :goto_0

    .line 166
    :pswitch_1
    iget-object v1, p0, Lcom/android/mms/category/CategorySelector$3;->this$0:Lcom/android/mms/category/CategorySelector;

    sget-object v2, Lcom/android/mms/category/Category;->SECURE:Lcom/android/mms/category/Category;

    invoke-virtual {v1, v2}, Lcom/android/mms/category/CategorySelector;->switchTo(Lcom/android/mms/category/Category;)V

    goto :goto_0

    .line 169
    :pswitch_2
    iget-object v1, p0, Lcom/android/mms/category/CategorySelector$3;->this$0:Lcom/android/mms/category/CategorySelector;

    sget-object v2, Lcom/android/mms/category/Category;->BLOCKED:Lcom/android/mms/category/Category;

    invoke-virtual {v1, v2}, Lcom/android/mms/category/CategorySelector;->switchTo(Lcom/android/mms/category/Category;)V

    goto :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
