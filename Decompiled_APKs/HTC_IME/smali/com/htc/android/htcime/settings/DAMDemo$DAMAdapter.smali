.class public Lcom/htc/android/htcime/settings/DAMDemo$DAMAdapter;
.super Landroid/widget/BaseAdapter;
.source "DAMDemo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/settings/DAMDemo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DAMAdapter"
.end annotation


# instance fields
.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mItems:Ljava/util/List;

.field protected mLayout:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/htc/android/htcime/settings/DAMDemo;


# direct methods
.method public constructor <init>(Lcom/htc/android/htcime/settings/DAMDemo;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter "list"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/htc/android/htcime/settings/DAMDemo$DAMAdapter;->this$0:Lcom/htc/android/htcime/settings/DAMDemo;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/settings/DAMDemo$DAMAdapter;->mItems:Ljava/util/List;

    .line 141
    iput-object p2, p0, Lcom/htc/android/htcime/settings/DAMDemo$DAMAdapter;->mItems:Ljava/util/List;

    .line 142
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/htc/android/htcime/settings/DAMDemo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/android/htcime/settings/DAMDemo$DAMAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 143
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/android/htcime/settings/DAMDemo$DAMAdapter;->mItems:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/htc/android/htcime/settings/DAMDemo$DAMAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 149
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/htc/android/htcime/settings/DAMDemo$DAMAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 157
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 162
    if-eqz p2, :cond_0

    .line 163
    check-cast p2, Landroid/widget/LinearLayout;

    .end local p2
    iput-object p2, p0, Lcom/htc/android/htcime/settings/DAMDemo$DAMAdapter;->mLayout:Landroid/widget/LinearLayout;

    .line 169
    :goto_0
    iget-object v2, p0, Lcom/htc/android/htcime/settings/DAMDemo$DAMAdapter;->mLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0e0012

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 170
    .local v1, word:Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/settings/DAMDemo$DAMAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 171
    .local v0, file:Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object p2, p0, Lcom/htc/android/htcime/settings/DAMDemo$DAMAdapter;->mLayout:Landroid/widget/LinearLayout;

    .line 174
    .restart local p2
    return-object p2

    .line 165
    .end local v0           #file:Ljava/lang/String;
    .end local v1           #word:Landroid/widget/TextView;
    :cond_0
    iget-object v2, p0, Lcom/htc/android/htcime/settings/DAMDemo$DAMAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030060

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/htc/android/htcime/settings/DAMDemo$DAMAdapter;->mLayout:Landroid/widget/LinearLayout;

    goto :goto_0
.end method
