.class Lcom/google/android/talk/fragments/SetStatusFragment$4;
.super Landroid/widget/ArrayAdapter;
.source "SetStatusFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/SetStatusFragment;->makeAdapter(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/widget/ArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$inflater:Landroid/view/LayoutInflater;

.field final synthetic val$items:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/SetStatusFragment;Landroid/content/Context;ILjava/util/List;Ljava/util/ArrayList;Landroid/view/LayoutInflater;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 689
    .local p4, x2:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;>;"
    iput-object p1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$4;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    iput-object p5, p0, Lcom/google/android/talk/fragments/SetStatusFragment$4;->val$items:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/google/android/talk/fragments/SetStatusFragment$4;->val$inflater:Landroid/view/LayoutInflater;

    iput-object p7, p0, Lcom/google/android/talk/fragments/SetStatusFragment$4;->val$ctx:Landroid/content/Context;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 692
    iget-object v4, p0, Lcom/google/android/talk/fragments/SetStatusFragment$4;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;

    .line 694
    .local v0, item:Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;
    const v1, 0x7f04003c

    .line 695
    .local v1, resource:I
    iget-object v4, p0, Lcom/google/android/talk/fragments/SetStatusFragment$4;->val$inflater:Landroid/view/LayoutInflater;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 696
    .local v3, view:Landroid/view/View;
    const v4, 0x1020014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 697
    .local v2, t:Landroid/widget/TextView;
    iget-object v4, v0, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;->mStatus:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 699
    iget v4, v0, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;->mStatusResourceId:I

    if-eqz v4, :cond_0

    .line 700
    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 701
    iget-object v4, p0, Lcom/google/android/talk/fragments/SetStatusFragment$4;->val$ctx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v0, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;->mStatusResourceId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 707
    :cond_0
    return-object v3
.end method
