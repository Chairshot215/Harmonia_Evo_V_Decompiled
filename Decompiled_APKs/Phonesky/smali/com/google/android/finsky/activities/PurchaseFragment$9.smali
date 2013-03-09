.class Lcom/google/android/finsky/activities/PurchaseFragment$9;
.super Ljava/lang/Object;
.source "PurchaseFragment.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/PurchaseFragment;->updateButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/PurchaseFragment;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1270
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseFragment$9;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "source"

    .prologue
    const/4 v3, 0x0

    .line 1273
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment$9;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/PurchaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02005e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1275
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1277
    return-object v0
.end method
