.class Lcom/htc/appsharing/ShareViaImpActivity$SVIAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShareViaImpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/appsharing/ShareViaImpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SVIAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/appsharing/ShareViaImpActivity$SVIAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private mLoader:Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfoLoader;

.field final synthetic this$0:Lcom/htc/appsharing/ShareViaImpActivity;


# direct methods
.method public constructor <init>(Lcom/htc/appsharing/ShareViaImpActivity;Landroid/content/Context;Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfoLoader;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "loader"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/htc/appsharing/ShareViaImpActivity$SVIAdapter;->this$0:Lcom/htc/appsharing/ShareViaImpActivity;

    .line 201
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 203
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/appsharing/ShareViaImpActivity$SVIAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 204
    iput-object p3, p0, Lcom/htc/appsharing/ShareViaImpActivity$SVIAdapter;->mLoader:Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfoLoader;

    .line 205
    return-void
.end method

.method private newView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "parent"

    .prologue
    .line 238
    new-instance v1, Lcom/htc/appsharing/ShareViaImpActivity$SVIAdapter$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/appsharing/ShareViaImpActivity$SVIAdapter$ViewHolder;-><init>(Lcom/htc/appsharing/ShareViaImpActivity$SVIAdapter;Lcom/htc/appsharing/ShareViaImpActivity$1;)V

    .line 240
    .local v1, viewHolder:Lcom/htc/appsharing/ShareViaImpActivity$SVIAdapter$ViewHolder;
    iget-object v2, p0, Lcom/htc/appsharing/ShareViaImpActivity$SVIAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030003

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 242
    .local v0, view:Landroid/view/View;
    const v2, 0x7f080005

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/htc/appsharing/ShareViaImpActivity$SVIAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 243
    iget-object v2, v1, Lcom/htc/appsharing/ShareViaImpActivity$SVIAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 244
    const v2, 0x7f080006

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/htc/appsharing/ShareViaImpActivity$SVIAdapter$ViewHolder;->label:Landroid/widget/TextView;

    .line 246
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 248
    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/htc/appsharing/ShareViaImpActivity$SVIAdapter;->mLoader:Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfoLoader;

    invoke-virtual {v0}, Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfoLoader;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/htc/appsharing/ShareViaImpActivity$SVIAdapter;->mLoader:Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfoLoader;

    invoke-virtual {v0, p1}, Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfoLoader;->get(I)Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 219
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 224
    if-nez p2, :cond_0

    .line 225
    invoke-direct {p0, p3}, Lcom/htc/appsharing/ShareViaImpActivity$SVIAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 227
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/appsharing/ShareViaImpActivity$SVIAdapter$ViewHolder;

    .line 228
    .local v0, viewHolder:Lcom/htc/appsharing/ShareViaImpActivity$SVIAdapter$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/htc/appsharing/ShareViaImpActivity$SVIAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfo;

    .line 230
    .local v1, viewInfo:Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfo;
    iget-object v2, v0, Lcom/htc/appsharing/ShareViaImpActivity$SVIAdapter$ViewHolder;->label:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v2, v0, Lcom/htc/appsharing/ShareViaImpActivity$SVIAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, v1, Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 233
    return-object p2
.end method
