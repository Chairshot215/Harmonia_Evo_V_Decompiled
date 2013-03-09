.class public final Lcom/google/appinventor/components/runtime/LinearLayout;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/appinventor/components/runtime/Layout;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private final layoutManager:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/google/appinventor/components/runtime/LinearLayout;-><init>(Landroid/content/Context;ILjava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    if-nez p4, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "LinearLayout - preferredEmptyWidth and preferredEmptyHeight must be either both null or both not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/google/appinventor/components/runtime/LinearLayout$1;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/google/appinventor/components/runtime/LinearLayout$1;-><init>(Lcom/google/appinventor/components/runtime/LinearLayout;Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LinearLayout;->layoutManager:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LinearLayout;->layoutManager:Landroid/widget/LinearLayout;

    if-nez p2, :cond_3

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 5

    const/4 v4, -0x2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LinearLayout;->layoutManager:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getLayoutManager()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LinearLayout;->layoutManager:Landroid/widget/LinearLayout;

    return-object v0
.end method
