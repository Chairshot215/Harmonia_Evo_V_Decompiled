.class public Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ReviewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/adapters/ReviewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field reviewItemLayout:Lcom/google/android/finsky/layout/ReviewItemLayout;

.field reviewReplyLayout:Lcom/google/android/finsky/layout/ReviewReplyLayout;

.field reviewReplyStub:Landroid/view/ViewStub;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "convertView"

    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    const v0, 0x7f0801fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/ReviewItemLayout;

    iput-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->reviewItemLayout:Lcom/google/android/finsky/layout/ReviewItemLayout;

    .line 301
    const v0, 0x7f080209

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->reviewReplyStub:Landroid/view/ViewStub;

    .line 302
    const v0, 0x7f0801f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/ReviewReplyLayout;

    iput-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->reviewReplyLayout:Lcom/google/android/finsky/layout/ReviewReplyLayout;

    .line 304
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 305
    return-void
.end method
