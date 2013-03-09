.class Lcom/google/android/talk/RosterListAdapter$1;
.super Lcom/google/android/talk/RosterListAdapter$Bind;
.source "RosterListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/RosterListAdapter;->makeSearchMergeItem(II)Lcom/google/android/talk/RosterListAdapter$MergeItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/RosterListAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/talk/RosterListAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 339
    iput-object p1, p0, Lcom/google/android/talk/RosterListAdapter$1;->this$0:Lcom/google/android/talk/RosterListAdapter;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/talk/RosterListAdapter$Bind;-><init>(Lcom/google/android/talk/RosterListAdapter;Lcom/google/android/talk/RosterListAdapter$1;)V

    return-void
.end method


# virtual methods
.method public bind(Lcom/google/android/talk/RosterListAdapter$MergeItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 369
    return-void
.end method

.method public onInflate(Lcom/google/android/talk/RosterListAdapter$MergeItem;)V
    .locals 9
    .parameter "item"

    .prologue
    .line 341
    #getter for: Lcom/google/android/talk/RosterListAdapter$MergeItem;->mView:Landroid/view/View;
    invoke-static {p1}, Lcom/google/android/talk/RosterListAdapter$MergeItem;->access$1500(Lcom/google/android/talk/RosterListAdapter$MergeItem;)Landroid/view/View;

    move-result-object v3

    .line 342
    .local v3, v:Landroid/view/View;
    new-instance v4, Lcom/google/android/talk/RosterListAdapter$1$1;

    invoke-direct {v4, p0}, Lcom/google/android/talk/RosterListAdapter$1$1;-><init>(Lcom/google/android/talk/RosterListAdapter$1;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    const v4, 0x7f10000b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 358
    .local v1, tv1:Landroid/widget/TextView;
    const v4, 0x7f10007b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 359
    .local v2, tv2:Landroid/widget/TextView;
    const v4, 0x7f0c00bc

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 360
    iget-object v4, p0, Lcom/google/android/talk/RosterListAdapter$1;->this$0:Lcom/google/android/talk/RosterListAdapter;

    #getter for: Lcom/google/android/talk/RosterListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/google/android/talk/RosterListAdapter;->access$1400(Lcom/google/android/talk/RosterListAdapter;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c00bd

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/talk/RosterListAdapter$1;->this$0:Lcom/google/android/talk/RosterListAdapter;

    #getter for: Lcom/google/android/talk/RosterListAdapter;->mSearchString:Ljava/lang/String;
    invoke-static {v8}, Lcom/google/android/talk/RosterListAdapter;->access$2000(Lcom/google/android/talk/RosterListAdapter;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    const v4, 0x7f100080

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0200a1

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 364
    const v4, 0x7f100072

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 365
    .local v0, iv:Landroid/widget/ImageView;
    const v4, 0x7f020061

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 366
    invoke-virtual {p0, p1}, Lcom/google/android/talk/RosterListAdapter$1;->indent(Lcom/google/android/talk/RosterListAdapter$MergeItem;)V

    .line 367
    return-void
.end method
