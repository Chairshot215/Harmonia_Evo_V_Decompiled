.class public Lcom/android/mms/category/CategoryIcon;
.super Landroid/widget/ImageView;
.source "CategoryIcon.java"


# instance fields
.field private mCategory:Lcom/android/mms/category/Category;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method


# virtual methods
.method public setCategory(Lcom/android/mms/category/Category;)V
    .locals 1
    .parameter "category"

    .prologue
    .line 41
    sget-object v0, Lcom/android/mms/category/Category;->SECURE:Lcom/android/mms/category/Category;

    invoke-virtual {v0, p1}, Lcom/android/mms/category/Category;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/mms/category/CategoryIcon;->setVisibility(I)V

    .line 43
    return-void

    .line 41
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method
