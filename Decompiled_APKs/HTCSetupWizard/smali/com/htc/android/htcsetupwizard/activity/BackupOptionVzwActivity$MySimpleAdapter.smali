.class Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity$MySimpleAdapter;
.super Landroid/widget/SimpleAdapter;
.source "BackupOptionVzwActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MySimpleAdapter"
.end annotation


# instance fields
.field map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mbNoSummary:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 1
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
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .prologue
    .line 280
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity$MySimpleAdapter;->mbNoSummary:Z

    .line 278
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity$MySimpleAdapter;->map:Ljava/util/HashMap;

    .line 281
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parentView"

    .prologue
    const/4 v8, 0x0

    .line 285
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 286
    .local v5, v:Landroid/view/View;
    const v6, 0x1020016

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 287
    .local v4, title:Landroid/widget/TextView;
    if-eqz v4, :cond_0

    iget-boolean v6, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity$MySimpleAdapter;->mbNoSummary:Z

    if-eqz v6, :cond_0

    .line 288
    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    .local v2, marginParams:Landroid/view/ViewGroup$MarginLayoutParams;
    const/16 v6, 0xe

    const/4 v7, 0x4

    invoke-virtual {v2, v6, v7, v8, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 291
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 292
    .local v1, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    .end local v1           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2           #marginParams:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    const v6, 0x1020010

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 296
    .local v3, summary:Landroid/widget/TextView;
    if-eqz v3, :cond_1

    iget-boolean v6, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity$MySimpleAdapter;->mbNoSummary:Z

    if-eqz v6, :cond_1

    .line 297
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 300
    :cond_1
    const/high16 v6, 0x101

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 301
    .local v0, image:Landroid/widget/ImageView;
    if-eqz v0, :cond_2

    iget-boolean v6, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity$MySimpleAdapter;->mbNoSummary:Z

    if-eqz v6, :cond_2

    .line 303
    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    .restart local v2       #marginParams:Landroid/view/ViewGroup$MarginLayoutParams;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 306
    .restart local v1       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xb

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 307
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    .end local v1           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2           #marginParams:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    return-object v5
.end method

.method public setNoSummary()V
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity$MySimpleAdapter;->mbNoSummary:Z

    return-void
.end method
