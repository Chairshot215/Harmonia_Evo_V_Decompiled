.class Lcom/htc/android/mail/ReadScreen$18;
.super Ljava/lang/Object;
.source "ReadScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ReadScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ReadScreen;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ReadScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 1474
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$18;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "buttonView"

    .prologue
    const/4 v7, 0x0

    .line 1476
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1478
    .local v2, mWeakViewContainer:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/view/ViewGroup;>;"
    if-nez v2, :cond_1

    .line 1507
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 1482
    .restart local p1
    :cond_1
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 1484
    .local v3, mainViewContainer:Landroid/view/ViewGroup;
    if-eqz v3, :cond_0

    .line 1488
    iget-object v5, p0, Lcom/htc/android/mail/ReadScreen$18;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget v5, v5, Lcom/htc/android/mail/ReadScreen;->sKEY_IS_SHOW_ALL:I

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1489
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1490
    .local v0, count:I
    const/4 v1, 0x2

    .local v1, i:I
    :goto_1
    add-int/lit8 v5, v0, -0x1

    if-ge v1, v5, :cond_2

    .line 1491
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1492
    .local v4, view:Landroid/view/View;
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1490
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1495
    .end local v4           #view:Landroid/view/View;
    :cond_2
    check-cast p1, Lcom/htc/android/mail/widget/HtcPhotoButton;

    .end local p1
    const v5, 0x7f0b012f

    invoke-virtual {p1, v5}, Lcom/htc/android/mail/widget/HtcPhotoButton;->setText(I)V

    .line 1496
    iget-object v5, p0, Lcom/htc/android/mail/ReadScreen$18;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget v5, v5, Lcom/htc/android/mail/ReadScreen;->sKEY_IS_SHOW_ALL:I

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, v7}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v3, v5, v6}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 1498
    .end local v0           #count:I
    .end local v1           #i:I
    .restart local p1
    :cond_3
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1499
    .restart local v0       #count:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    if-ge v1, v0, :cond_4

    .line 1500
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1501
    .restart local v4       #view:Landroid/view/View;
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1499
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1504
    .end local v4           #view:Landroid/view/View;
    :cond_4
    check-cast p1, Lcom/htc/android/mail/widget/HtcPhotoButton;

    .end local p1
    const v5, 0x7f0b0131

    invoke-virtual {p1, v5}, Lcom/htc/android/mail/widget/HtcPhotoButton;->setText(I)V

    .line 1505
    iget-object v5, p0, Lcom/htc/android/mail/ReadScreen$18;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget v5, v5, Lcom/htc/android/mail/ReadScreen;->sKEY_IS_SHOW_ALL:I

    new-instance v6, Ljava/lang/Boolean;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v3, v5, v6}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method
