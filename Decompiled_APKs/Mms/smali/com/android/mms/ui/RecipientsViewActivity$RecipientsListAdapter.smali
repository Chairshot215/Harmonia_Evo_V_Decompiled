.class public Lcom/android/mms/ui/RecipientsViewActivity$RecipientsListAdapter;
.super Landroid/widget/SimpleAdapter;
.source "RecipientsViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/RecipientsViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecipientsListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/RecipientsViewActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/RecipientsViewActivity;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 6
    .parameter
    .parameter "context"
    .parameter
    .parameter "resource"
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p3, data:Ljava/util/List;,"Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    iput-object p1, p0, Lcom/android/mms/ui/RecipientsViewActivity$RecipientsListAdapter;->this$0:Lcom/android/mms/ui/RecipientsViewActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 66
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 67
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    #setter for: Lcom/android/mms/ui/RecipientsViewActivity;->mListHeight:I
    invoke-static {p1, v0}, Lcom/android/mms/ui/RecipientsViewActivity;->access$002(Lcom/android/mms/ui/RecipientsViewActivity;I)I

    .line 68
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 72
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 73
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 74
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/android/mms/ui/RecipientsViewActivity$RecipientsListAdapter;->this$0:Lcom/android/mms/ui/RecipientsViewActivity;

    #getter for: Lcom/android/mms/ui/RecipientsViewActivity;->mSingleLine:[Z
    invoke-static {v3}, Lcom/android/mms/ui/RecipientsViewActivity;->access$100(Lcom/android/mms/ui/RecipientsViewActivity;)[Z

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/RecipientsViewActivity$RecipientsListAdapter;->this$0:Lcom/android/mms/ui/RecipientsViewActivity;

    #getter for: Lcom/android/mms/ui/RecipientsViewActivity;->mSingleLine:[Z
    invoke-static {v3}, Lcom/android/mms/ui/RecipientsViewActivity;->access$100(Lcom/android/mms/ui/RecipientsViewActivity;)[Z

    move-result-object v3

    array-length v3, v3

    if-ge p1, v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/RecipientsViewActivity$RecipientsListAdapter;->this$0:Lcom/android/mms/ui/RecipientsViewActivity;

    #getter for: Lcom/android/mms/ui/RecipientsViewActivity;->mSingleLine:[Z
    invoke-static {v3}, Lcom/android/mms/ui/RecipientsViewActivity;->access$100(Lcom/android/mms/ui/RecipientsViewActivity;)[Z

    move-result-object v3

    aget-boolean v3, v3, p1

    if-eqz v3, :cond_1

    .line 75
    iget-object v3, p0, Lcom/android/mms/ui/RecipientsViewActivity$RecipientsListAdapter;->this$0:Lcom/android/mms/ui/RecipientsViewActivity;

    #getter for: Lcom/android/mms/ui/RecipientsViewActivity;->mListHeight:I
    invoke-static {v3}, Lcom/android/mms/ui/RecipientsViewActivity;->access$000(Lcom/android/mms/ui/RecipientsViewActivity;)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 80
    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    const v3, 0x7f0e0053

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 84
    .local v1, text_2:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/mms/ui/RecipientsViewActivity$RecipientsListAdapter;->this$0:Lcom/android/mms/ui/RecipientsViewActivity;

    #getter for: Lcom/android/mms/ui/RecipientsViewActivity;->mStatusDate:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/mms/ui/RecipientsViewActivity;->access$200(Lcom/android/mms/ui/RecipientsViewActivity;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/RecipientsViewActivity$RecipientsListAdapter;->this$0:Lcom/android/mms/ui/RecipientsViewActivity;

    #getter for: Lcom/android/mms/ui/RecipientsViewActivity;->mStatusDate:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/mms/ui/RecipientsViewActivity;->access$200(Lcom/android/mms/ui/RecipientsViewActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_0

    .line 85
    iget-object v3, p0, Lcom/android/mms/ui/RecipientsViewActivity$RecipientsListAdapter;->this$0:Lcom/android/mms/ui/RecipientsViewActivity;

    #getter for: Lcom/android/mms/ui/RecipientsViewActivity;->mStatusDate:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/mms/ui/RecipientsViewActivity;->access$200(Lcom/android/mms/ui/RecipientsViewActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 95
    return-object v2

    .line 78
    .end local v1           #text_2:Landroid/widget/TextView;
    :cond_1
    const/4 v3, -0x2

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method
